; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/radeon/radeon_legacy_encoders.c_pt.bc'
source_filename = "../drivers/gpu/drm/radeon/radeon_legacy_encoders.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.backlight_ops = type { i32, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.drm_encoder_funcs = type { ptr, ptr, ptr, ptr }
%struct.drm_encoder_helper_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.atomic_t = type { i32 }
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
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.drm_open_hash = type { ptr, i8 }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.anon.88 = type { i32, ptr }
%struct.radeon_device = type { ptr, ptr, ptr, ptr, %struct.rw_semaphore, %union.radeon_asic_config, i32, i32, i32, i32, i32, i32, i32, ptr, i8, i16, ptr, i32, i32, %struct.spinlock, %struct.spinlock, %struct.spinlock, %struct.spinlock, %struct.spinlock, %struct.spinlock, %struct.spinlock, %struct.spinlock, %struct.spinlock, %struct.spinlock, %struct.spinlock, %struct.spinlock, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, i32, %struct.radeon_clock, %struct.radeon_mc, %struct.radeon_gart, %struct.radeon_mode_info, %struct.radeon_scratch, %struct.radeon_doorbell, %struct.radeon_mman, [8 x %struct.radeon_fence_driver], %struct.wait_queue_head, i64, %struct.mutex, [8 x %struct.radeon_ring], i8, %struct.radeon_sa_manager, %struct.radeon_irq, ptr, %struct.radeon_gem, %struct.radeon_pm, %struct.radeon_uvd, %struct.radeon_vce, [8 x i32], %struct.radeon_wb, %struct.radeon_dummy_page, i8, i8, i8, i8, i8, i8, [8 x %struct.radeon_surface_reg], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, %struct.r600_vram_scratch, i32, %struct.r600_ih, %struct.radeon_rlc, %struct.radeon_mec, %struct.delayed_work, %struct.work_struct, %struct.work_struct, i32, %struct.mutex, i8, i8, %struct.r600_audio, %struct.notifier_block, ptr, ptr, [16 x ptr], %struct.radeon_vm_manager, %struct.mutex, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.radeon_atif, %struct.radeon_atcs, %struct.mutex, i32, i32, %struct.dev_pm_domain, i8, i32, i64, i64 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%union.radeon_asic_config = type { %struct.cik_asic }
%struct.cik_asic = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [32 x i32], [16 x i32], i32 }
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
%struct.ttm_pool = type { ptr, i8, i8, [3 x %struct.anon.91] }
%struct.anon.91 = type { [12 x %struct.ttm_pool_type] }
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
%struct.r600_audio = type { i8, [7 x %struct.r600_audio_pin], i32, ptr, ptr, ptr }
%struct.r600_audio_pin = type { i32, i32, i32, i8, i8, i32, i8, i32 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.radeon_vm_manager = type { [16 x ptr], i32, i32, i64, i8, [16 x i32] }
%struct.atomic64_t = type { i64 }
%struct.radeon_atif = type { %struct.radeon_atif_notifications, %struct.radeon_atif_functions, %struct.radeon_atif_notification_cfg, ptr }
%struct.radeon_atif_notifications = type { i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.radeon_atif_functions = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.radeon_atif_notification_cfg = type { i8, i32 }
%struct.radeon_atcs = type { %struct.radeon_atcs_functions }
%struct.radeon_atcs_functions = type { i8, i8, i8, i8 }
%struct.dev_pm_domain = type { %struct.dev_pm_ops, ptr, ptr, ptr, ptr, ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.radeon_encoder = type { %struct.drm_encoder, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.drm_display_mode, ptr, i32, i8, i16, ptr, i32, i8, i32, i8 }
%struct.drm_encoder = type { ptr, %struct.list_head, %struct.drm_mode_object, ptr, i32, i32, i32, i32, ptr, %struct.list_head, ptr, ptr }
%struct.drm_mode_object = type { i32, i32, ptr, %struct.kref, ptr }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }
%struct.radeon_encoder_atom_dig = type { i8, i8, i32, i32, i16, i32, %struct.drm_display_mode, ptr, i32, i8, i32, ptr, ptr, i32 }
%struct.radeon_encoder_lvds = type { i16, i8, i8, i8, i16, i8, i16, i8, i32, %struct.drm_display_mode, ptr, i32, i8 }
%struct.backlight_properties = type { i32, i32, i32, i32, i32, i32, i32 }
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
%struct.radeon_backlight_privdata = type { ptr, i8 }
%struct.backlight_device = type { %struct.backlight_properties, %struct.mutex, %struct.mutex, ptr, %struct.notifier_block, %struct.list_head, %struct.device, [32 x i8], i32 }
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
%struct.radeon_crtc = type { %struct.drm_crtc, i32, i8, i8, i8, i32, ptr, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, %union.dfixed, %union.dfixed, %struct.drm_display_mode, i32, ptr, ptr, i32, %struct.radeon_atom_ss, i8, i32, i32, i32, i32, i32, ptr, ptr, i32, i32, i32, i32, %struct.drm_display_mode, i32 }
%struct.drm_crtc = type { ptr, ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, ptr, ptr, i32, i32, i32, i8, %struct.drm_display_mode, %struct.drm_display_mode, i32, i32, ptr, i32, ptr, ptr, %struct.drm_object_properties, ptr, ptr, %struct.list_head, %struct.spinlock, ptr, %struct.drm_crtc_crc, i32, %struct.spinlock, i32, [32 x i8], ptr }
%struct.drm_crtc_crc = type { %struct.spinlock, ptr, i8, i8, ptr, i32, i32, i32, %struct.wait_queue_head }
%struct.radeon_atom_ss = type { i16, i16, i8, i16, i8, i8, i8, i16, i16 }
%struct.radeon_tmds_pll = type { i32, i32 }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.87, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.87 = type { ptr }
%struct.radeon_encoder_tv_dac = type { i32, i32, i32, i32, i32, i32, i32, i8, i32, %struct.radeon_tv_regs }
%struct.radeon_tv_regs = type { i32, i32, i32, i32, i32, [32 x i16], [32 x i16] }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }

@.str = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Memory allocation failed\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"radeon_bl%d\00", [20 x i8] zeroinitializer }, align 32
@radeon_backlight_ops = internal constant { %struct.backlight_ops, [16 x i8] } { %struct.backlight_ops { i32 0, ptr @radeon_legacy_backlight_update_status, ptr @radeon_legacy_backlight_get_brightness, ptr null }, [16 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Backlight registration failed\0A\00", [33 x i8] zeroinitializer }, align 32
@radeon_legacy_backlight_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 451, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\016[drm] radeon legacy LVDS backlight initialized\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"radeon_legacy_backlight_init\00", [35 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"drivers/gpu/drm/radeon/radeon_legacy_encoders.c\00", [48 x i8] zeroinitializer }, align 32
@radeon_legacy_backlight_init._entry_ptr = internal global ptr @radeon_legacy_backlight_init._entry, section ".printk_index", align 4
@radeon_legacy_lvds_enc_funcs = internal constant { %struct.drm_encoder_funcs, [16 x i8] } { %struct.drm_encoder_funcs { ptr null, ptr @radeon_lvds_enc_destroy, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@radeon_legacy_lvds_helper_funcs = internal constant { %struct.drm_encoder_helper_funcs, [44 x i8] } { %struct.drm_encoder_helper_funcs { ptr @radeon_legacy_lvds_dpms, ptr null, ptr @radeon_legacy_mode_fixup, ptr @radeon_legacy_lvds_prepare, ptr @radeon_legacy_lvds_commit, ptr @radeon_legacy_lvds_mode_set, ptr null, ptr null, ptr null, ptr null, ptr @radeon_legacy_encoder_disable, ptr null, ptr null }, [44 x i8] zeroinitializer }, align 32
@radeon_legacy_tmds_int_enc_funcs = internal constant { %struct.drm_encoder_funcs, [16 x i8] } { %struct.drm_encoder_funcs { ptr null, ptr @radeon_enc_destroy, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@radeon_legacy_tmds_int_helper_funcs = internal constant { %struct.drm_encoder_helper_funcs, [44 x i8] } { %struct.drm_encoder_helper_funcs { ptr @radeon_legacy_tmds_int_dpms, ptr null, ptr @radeon_legacy_mode_fixup, ptr @radeon_legacy_tmds_int_prepare, ptr @radeon_legacy_tmds_int_commit, ptr @radeon_legacy_tmds_int_mode_set, ptr null, ptr null, ptr null, ptr null, ptr @radeon_legacy_encoder_disable, ptr null, ptr null }, [44 x i8] zeroinitializer }, align 32
@radeon_legacy_primary_dac_enc_funcs = internal constant { %struct.drm_encoder_funcs, [16 x i8] } { %struct.drm_encoder_funcs { ptr null, ptr @radeon_enc_destroy, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@radeon_legacy_primary_dac_helper_funcs = internal constant { %struct.drm_encoder_helper_funcs, [44 x i8] } { %struct.drm_encoder_helper_funcs { ptr @radeon_legacy_primary_dac_dpms, ptr null, ptr @radeon_legacy_mode_fixup, ptr @radeon_legacy_primary_dac_prepare, ptr @radeon_legacy_primary_dac_commit, ptr @radeon_legacy_primary_dac_mode_set, ptr null, ptr @radeon_legacy_primary_dac_detect, ptr null, ptr null, ptr @radeon_legacy_encoder_disable, ptr null, ptr null }, [44 x i8] zeroinitializer }, align 32
@radeon_legacy_tv_dac_enc_funcs = internal constant { %struct.drm_encoder_funcs, [16 x i8] } { %struct.drm_encoder_funcs { ptr null, ptr @radeon_enc_destroy, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@radeon_legacy_tv_dac_helper_funcs = internal constant { %struct.drm_encoder_helper_funcs, [44 x i8] } { %struct.drm_encoder_helper_funcs { ptr @radeon_legacy_tv_dac_dpms, ptr null, ptr @radeon_legacy_mode_fixup, ptr @radeon_legacy_tv_dac_prepare, ptr @radeon_legacy_tv_dac_commit, ptr @radeon_legacy_tv_dac_mode_set, ptr null, ptr @radeon_legacy_tv_dac_detect, ptr null, ptr null, ptr @radeon_legacy_encoder_disable, ptr null, ptr null }, [44 x i8] zeroinitializer }, align 32
@radeon_legacy_tmds_ext_enc_funcs = internal constant { %struct.drm_encoder_funcs, [16 x i8] } { %struct.drm_encoder_funcs { ptr null, ptr @radeon_ext_tmds_enc_destroy, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@radeon_legacy_tmds_ext_helper_funcs = internal constant { %struct.drm_encoder_helper_funcs, [44 x i8] } { %struct.drm_encoder_helper_funcs { ptr @radeon_legacy_tmds_ext_dpms, ptr null, ptr @radeon_legacy_mode_fixup, ptr @radeon_legacy_tmds_ext_prepare, ptr @radeon_legacy_tmds_ext_commit, ptr @radeon_legacy_tmds_ext_mode_set, ptr null, ptr null, ptr null, ptr null, ptr @radeon_legacy_encoder_disable, ptr null, ptr null }, [44 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\00", [30 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@radeon_legacy_backlight_exit._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.5, i32 487, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\016[drm] radeon legacy LVDS backlight unloaded\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"radeon_legacy_backlight_exit\00", [35 x i8] zeroinitializer }, align 32
@radeon_legacy_backlight_exit._entry_ptr = internal global ptr @radeon_legacy_backlight_exit._entry, section ".printk_index", align 4
@.str.9 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"bios LVDS_GEN_CNTL: 0x%x\0A\00", [38 x i8] zeroinitializer }, align 32
@radeon_legacy_tv_dac_detect._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.5, i32 1572, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\016[drm] not detecting due to %08x\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"radeon_legacy_tv_dac_detect\00", [36 x i8] zeroinitializer }, align 32
@radeon_legacy_tv_dac_detect._entry_ptr = internal global ptr @radeon_legacy_tv_dac_detect._entry, section ".printk_index", align 4
@.str.12 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"S-video TV connection detected\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Composite TV connection detected\0A\00", [62 x i8] zeroinitializer }, align 32
@kgdb_active = external dso_local global %struct.atomic_t, align 4
@switch.table.radeon_legacy_primary_dac_detect = internal constant { [17 x i32], [60 x i8] } { [17 x i32] [i32 109808, i32 109808, i32 109808, i32 109808, i32 98544, i32 109808, i32 109808, i32 109808, i32 112368, i32 112368, i32 112368, i32 112368, i32 112368, i32 112368, i32 112368, i32 112368, i32 112368], [60 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.14 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 255]
@__sancov_gen_cov_switch_values.15 = internal global [7 x i64] [i64 5, i64 8, i64 1, i64 2, i64 4, i64 5, i64 11]
@__sancov_gen_cov_switch_values.16 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.17 = internal global [13 x i64] [i64 11, i64 32, i64 0, i64 5, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15, i64 16, i64 17]
@__sancov_gen_cov_switch_values.18 = internal global [12 x i64] [i64 10, i64 32, i64 5, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15, i64 16, i64 17]
@__sancov_gen_cov_switch_values.19 = internal global [12 x i64] [i64 10, i64 32, i64 5, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15, i64 16, i64 17]
@__sancov_gen_cov_switch_values.20 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.21 = internal global [12 x i64] [i64 10, i64 32, i64 5, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15, i64 16, i64 17]
@__sancov_gen_cov_switch_values.22 = internal global [12 x i64] [i64 10, i64 32, i64 5, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15, i64 16, i64 17]
@__sancov_gen_cov_switch_values.23 = internal global [4 x i64] [i64 2, i64 16, i64 20830, i64 22889]
@__sancov_gen_cov_switch_values.24 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.25 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.26 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4]
@__sancov_gen_cov_switch_values.27 = internal global [12 x i64] [i64 10, i64 32, i64 5, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15, i64 16, i64 17]
@__sancov_gen_cov_switch_values.28 = internal global [12 x i64] [i64 10, i64 32, i64 5, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15, i64 16, i64 17]
@__sancov_gen_cov_switch_values.29 = internal global [12 x i64] [i64 10, i64 32, i64 5, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15, i64 16, i64 17]
@__sancov_gen_cov_switch_values.30 = internal global [12 x i64] [i64 10, i64 32, i64 5, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15, i64 16, i64 17]
@__sancov_gen_cov_switch_values.31 = internal global [5 x i64] [i64 3, i64 32, i64 5, i64 6, i64 9]
@__sancov_gen_cov_switch_values.32 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.33 = internal global [12 x i64] [i64 10, i64 32, i64 5, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15, i64 16, i64 17]
@__sancov_gen_cov_switch_values.34 = internal global [12 x i64] [i64 10, i64 32, i64 5, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15, i64 16, i64 17]
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 394, i32 3 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 402, i32 4 }
@___asan_gen_.41 = private unnamed_addr constant [21 x i8] c"radeon_backlight_ops\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 367, i32 35 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 406, i32 3 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 451, i32 2 }
@___asan_gen_.59 = private unnamed_addr constant [29 x i8] c"radeon_legacy_lvds_enc_funcs\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 516, i32 39 }
@___asan_gen_.62 = private unnamed_addr constant [32 x i8] c"radeon_legacy_lvds_helper_funcs\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 271, i32 46 }
@___asan_gen_.65 = private unnamed_addr constant [33 x i8] c"radeon_legacy_tmds_int_enc_funcs\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 892, i32 39 }
@___asan_gen_.68 = private unnamed_addr constant [36 x i8] c"radeon_legacy_tmds_int_helper_funcs\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 882, i32 46 }
@___asan_gen_.71 = private unnamed_addr constant [36 x i8] c"radeon_legacy_primary_dac_enc_funcs\00", align 1
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 728, i32 39 }
@___asan_gen_.74 = private unnamed_addr constant [39 x i8] c"radeon_legacy_primary_dac_helper_funcs\00", align 1
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 717, i32 46 }
@___asan_gen_.77 = private unnamed_addr constant [31 x i8] c"radeon_legacy_tv_dac_enc_funcs\00", align 1
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 1694, i32 39 }
@___asan_gen_.80 = private unnamed_addr constant [34 x i8] c"radeon_legacy_tv_dac_helper_funcs\00", align 1
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 1683, i32 46 }
@___asan_gen_.83 = private unnamed_addr constant [33 x i8] c"radeon_legacy_tmds_ext_enc_funcs\00", align 1
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 1035, i32 39 }
@___asan_gen_.86 = private unnamed_addr constant [36 x i8] c"radeon_legacy_tmds_ext_helper_funcs\00", align 1
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 1025, i32 46 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 63, i32 2 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 487, i32 3 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 210, i32 4 }
@___asan_gen_.104 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 1572, i32 3 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 1429, i32 3 }
@___asan_gen_.116 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.117 = private constant [51 x i8] c"../drivers/gpu/drm/radeon/radeon_legacy_encoders.c\00", align 1
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 1432, i32 3 }
@___asan_gen_.119 = private unnamed_addr constant [46 x i8] c"switch.table.radeon_legacy_primary_dac_detect\00", align 1
@llvm.compiler.used = appending global [32 x ptr] [ptr @radeon_legacy_backlight_exit._entry, ptr @radeon_legacy_backlight_exit._entry_ptr, ptr @radeon_legacy_backlight_init._entry, ptr @radeon_legacy_backlight_init._entry_ptr, ptr @radeon_legacy_tv_dac_detect._entry, ptr @radeon_legacy_tv_dac_detect._entry_ptr, ptr @.str, ptr @.str.1, ptr @radeon_backlight_ops, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @radeon_legacy_lvds_enc_funcs, ptr @radeon_legacy_lvds_helper_funcs, ptr @radeon_legacy_tmds_int_enc_funcs, ptr @radeon_legacy_tmds_int_helper_funcs, ptr @radeon_legacy_primary_dac_enc_funcs, ptr @radeon_legacy_primary_dac_helper_funcs, ptr @radeon_legacy_tv_dac_enc_funcs, ptr @radeon_legacy_tv_dac_helper_funcs, ptr @radeon_legacy_tmds_ext_enc_funcs, ptr @radeon_legacy_tmds_ext_helper_funcs, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @switch.table.radeon_legacy_primary_dac_detect], section "llvm.metadata"
@0 = internal global [29 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radeon_backlight_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radeon_legacy_backlight_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radeon_legacy_lvds_enc_funcs to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radeon_legacy_lvds_helper_funcs to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radeon_legacy_tmds_int_enc_funcs to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radeon_legacy_tmds_int_helper_funcs to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radeon_legacy_primary_dac_enc_funcs to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radeon_legacy_primary_dac_helper_funcs to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radeon_legacy_tv_dac_enc_funcs to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radeon_legacy_tv_dac_helper_funcs to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radeon_legacy_tmds_ext_enc_funcs to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radeon_legacy_tmds_ext_helper_funcs to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radeon_legacy_backlight_exit._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radeon_legacy_tv_dac_detect._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.radeon_legacy_primary_dac_detect to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i8 @radeon_legacy_get_backlight_level(ptr nocapture noundef readonly %radeon_encoder) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %radeon_encoder to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %radeon_encoder, align 4
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_private, align 4
  %rmmio.i = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 31
  %4 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 720
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !62
  %7 = lshr i32 %6, 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !63
  %conv = trunc i32 %7 to i8
  ret i8 %conv
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @radeon_legacy_set_backlight_level(ptr noundef %radeon_encoder, i8 noundef zeroext %level) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %enc_priv = getelementptr inbounds %struct.radeon_encoder, ptr %radeon_encoder, i32 0, i32 12
  %0 = ptrtoint ptr %enc_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %enc_priv, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end22_crit_edge, label %if.then

entry.if.end22_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end22

if.then:                                          ; preds = %entry
  %2 = ptrtoint ptr %radeon_encoder to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %radeon_encoder, align 4
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev_private, align 4
  %is_atom_bios = getelementptr inbounds %struct.radeon_device, ptr %5, i32 0, i32 14
  %6 = ptrtoint ptr %is_atom_bios to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %is_atom_bios, align 4, !range !64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool2.not = icmp eq i8 %7, 0
  br i1 %tobool2.not, label %if.else9, label %if.then3

if.then3:                                         ; preds = %if.then
  %backlight_level = getelementptr inbounds %struct.radeon_encoder_atom_dig, ptr %1, i32 0, i32 9
  %8 = ptrtoint ptr %backlight_level to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %backlight_level, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %cmp.not = icmp eq i8 %9, 0
  br i1 %cmp.not, label %if.then3.if.end22.sink.split_crit_edge, label %if.then6

if.then3.if.end22.sink.split_crit_edge:           ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end22.sink.split

if.then6:                                         ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #10
  %dpms_mode7 = getelementptr inbounds %struct.radeon_encoder_atom_dig, ptr %1, i32 0, i32 8
  br label %if.end22.sink.split.sink.split

if.else9:                                         ; preds = %if.then
  %backlight_level12 = getelementptr inbounds %struct.radeon_encoder_lvds, ptr %1, i32 0, i32 12
  %10 = ptrtoint ptr %backlight_level12 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %backlight_level12, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %cmp14.not = icmp eq i8 %11, 0
  br i1 %cmp14.not, label %if.else9.if.end22.sink.split_crit_edge, label %if.then16

if.else9.if.end22.sink.split_crit_edge:           ; preds = %if.else9
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end22.sink.split

if.then16:                                        ; preds = %if.else9
  call void @__sanitizer_cov_trace_pc() #10
  %dpms_mode17 = getelementptr inbounds %struct.radeon_encoder_lvds, ptr %1, i32 0, i32 11
  br label %if.end22.sink.split.sink.split

if.end22.sink.split.sink.split:                   ; preds = %if.then16, %if.then6
  %dpms_mode17.sink = phi ptr [ %dpms_mode17, %if.then16 ], [ %dpms_mode7, %if.then6 ]
  %backlight_level.sink.ph = phi ptr [ %backlight_level12, %if.then16 ], [ %backlight_level, %if.then6 ]
  %12 = ptrtoint ptr %dpms_mode17.sink to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %dpms_mode17.sink, align 4
  br label %if.end22.sink.split

if.end22.sink.split:                              ; preds = %if.end22.sink.split.sink.split, %if.else9.if.end22.sink.split_crit_edge, %if.then3.if.end22.sink.split_crit_edge
  %backlight_level.sink = phi ptr [ %backlight_level, %if.then3.if.end22.sink.split_crit_edge ], [ %backlight_level12, %if.else9.if.end22.sink.split_crit_edge ], [ %backlight_level.sink.ph, %if.end22.sink.split.sink.split ]
  %dpms_mode.2.ph = phi i32 [ 3, %if.then3.if.end22.sink.split_crit_edge ], [ 3, %if.else9.if.end22.sink.split_crit_edge ], [ %13, %if.end22.sink.split.sink.split ]
  %14 = ptrtoint ptr %backlight_level.sink to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %level, ptr %backlight_level.sink, align 4
  br label %if.end22

if.end22:                                         ; preds = %if.end22.sink.split, %entry.if.end22_crit_edge
  %dpms_mode.2 = phi i32 [ 0, %entry.if.end22_crit_edge ], [ %dpms_mode.2.ph, %if.end22.sink.split ]
  tail call fastcc void @radeon_legacy_lvds_update(ptr noundef %radeon_encoder, i32 noundef %dpms_mode.2)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @radeon_legacy_lvds_update(ptr noundef %encoder, i32 noundef %mode) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %encoder to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %encoder, align 4
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_private, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.6) #8
  %rmmio.i = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 31
  %4 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 720
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !62
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !63
  %shr = lshr i32 %7, 8
  %conv = trunc i32 %shr to i8
  %enc_priv = getelementptr inbounds %struct.radeon_encoder, ptr %encoder, i32 0, i32 12
  %8 = ptrtoint ptr %enc_priv to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %enc_priv, align 4
  %tobool.not = icmp eq ptr %9, null
  br i1 %tobool.not, label %entry.if.end20_crit_edge, label %if.then

entry.if.end20_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end20

if.then:                                          ; preds = %entry
  %is_atom_bios = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 14
  %10 = ptrtoint ptr %is_atom_bios to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %is_atom_bios, align 4, !range !64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool2.not = icmp eq i8 %11, 0
  br i1 %tobool2.not, label %if.else, label %if.then3

if.then3:                                         ; preds = %if.then
  %panel_pwr_delay5 = getelementptr inbounds %struct.radeon_encoder_atom_dig, ptr %9, i32 0, i32 4
  %12 = ptrtoint ptr %panel_pwr_delay5 to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %panel_pwr_delay5, align 4
  %conv6 = zext i16 %13 to i32
  %bl_dev = getelementptr inbounds %struct.radeon_encoder_atom_dig, ptr %9, i32 0, i32 7
  %14 = ptrtoint ptr %bl_dev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %bl_dev, align 4
  %tobool7.not = icmp eq ptr %15, null
  br i1 %tobool7.not, label %if.then3.if.end20_crit_edge, label %if.then8

if.then3.if.end20_crit_edge:                      ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end20

if.then8:                                         ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #10
  %backlight_level9 = getelementptr inbounds %struct.radeon_encoder_atom_dig, ptr %9, i32 0, i32 9
  br label %if.end20.sink.split

if.else:                                          ; preds = %if.then
  %panel_pwr_delay12 = getelementptr inbounds %struct.radeon_encoder_lvds, ptr %9, i32 0, i32 1
  %16 = ptrtoint ptr %panel_pwr_delay12 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %panel_pwr_delay12, align 2
  %conv13 = zext i8 %17 to i32
  %bl_dev14 = getelementptr inbounds %struct.radeon_encoder_lvds, ptr %9, i32 0, i32 10
  %18 = ptrtoint ptr %bl_dev14 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %bl_dev14, align 4
  %tobool15.not = icmp eq ptr %19, null
  br i1 %tobool15.not, label %if.else.if.end20_crit_edge, label %if.then16

if.else.if.end20_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end20

if.then16:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %backlight_level17 = getelementptr inbounds %struct.radeon_encoder_lvds, ptr %9, i32 0, i32 12
  br label %if.end20.sink.split

if.end20.sink.split:                              ; preds = %if.then16, %if.then8
  %backlight_level17.sink = phi ptr [ %backlight_level17, %if.then16 ], [ %backlight_level9, %if.then8 ]
  %panel_pwr_delay.0.ph = phi i32 [ %conv13, %if.then16 ], [ %conv6, %if.then8 ]
  %20 = ptrtoint ptr %backlight_level17.sink to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %backlight_level17.sink, align 4
  br label %if.end20

if.end20:                                         ; preds = %if.end20.sink.split, %if.else.if.end20_crit_edge, %if.then3.if.end20_crit_edge, %entry.if.end20_crit_edge
  %panel_pwr_delay.0 = phi i32 [ 2000, %entry.if.end20_crit_edge ], [ %conv6, %if.then3.if.end20_crit_edge ], [ %conv13, %if.else.if.end20_crit_edge ], [ %panel_pwr_delay.0.ph, %if.end20.sink.split ]
  %backlight_level.2 = phi i8 [ %conv, %entry.if.end20_crit_edge ], [ %conv, %if.then3.if.end20_crit_edge ], [ %conv, %if.else.if.end20_crit_edge ], [ %21, %if.end20.sink.split ]
  %connector_table = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 44, i32 2
  %22 = ptrtoint ptr %connector_table to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %connector_table, align 4
  %.off = add i32 %23, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %.off)
  %switch = icmp ult i32 %.off, 4
  %24 = zext i32 %mode to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values)
  switch i32 %mode, label %if.end20.sw.epilog_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %if.end20.sw.bb66_crit_edge
    i32 2, label %if.end20.sw.bb66_crit_edge270
    i32 3, label %if.end20.sw.bb66_crit_edge271
  ]

if.end20.sw.bb66_crit_edge271:                    ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb66

if.end20.sw.bb66_crit_edge270:                    ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb66

if.end20.sw.bb66_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb66

if.end20.sw.epilog_crit_edge:                     ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end20
  %25 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i223 = getelementptr i8, ptr %26, i32 3336
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i223) #8, !srcloc !62
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !63
  %28 = or i32 %27, 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !65
  tail call void @arm_heavy_mb() #8
  %29 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i227 = getelementptr i8, ptr %30, i32 3336
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i227, i32 %28) #8, !srcloc !66
  %31 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i231 = getelementptr i8, ptr %32, i32 724
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i231) #8, !srcloc !62
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !63
  %34 = or i32 %33, 256
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !65
  tail call void @arm_heavy_mb() #8
  %35 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i235 = getelementptr i8, ptr %36, i32 724
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i235, i32 %34) #8, !srcloc !66
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %37 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %37(i32 noundef 214748000) #8
  %38 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i239 = getelementptr i8, ptr %39, i32 724
  %40 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i239) #8, !srcloc !62
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !63
  %41 = and i32 %40, -513
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !65
  tail call void @arm_heavy_mb() #8
  %42 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i243 = getelementptr i8, ptr %43, i32 724
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i243, i32 %41) #8, !srcloc !66
  %and43 = and i32 %7, -851844
  %conv44 = zext i8 %backlight_level.2 to i32
  %shl = shl nuw nsw i32 %conv44, 8
  %or45 = or i32 %shl, %and43
  %spec.select.v = select i1 %switch, i32 852097, i32 786561
  %spec.select = or i32 %or45, %spec.select.v
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %panel_pwr_delay.0)
  %tobool64.not266 = icmp eq i32 %panel_pwr_delay.0, 0
  br i1 %tobool64.not266, label %sw.bb.cond.end65_crit_edge, label %sw.bb.while.body_crit_edge

sw.bb.while.body_crit_edge:                       ; preds = %sw.bb
  br label %while.body

sw.bb.cond.end65_crit_edge:                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end65

while.body:                                       ; preds = %while.body.while.body_crit_edge, %sw.bb.while.body_crit_edge
  %__ms.0267 = phi i32 [ %dec, %while.body.while.body_crit_edge ], [ %panel_pwr_delay.0, %sw.bb.while.body_crit_edge ]
  %dec = add nsw i32 %__ms.0267, -1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %44 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %44(i32 noundef 214748000) #8
  %tobool64.not = icmp eq i32 %dec, 0
  br i1 %tobool64.not, label %while.body.cond.end65_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

while.body.cond.end65_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end65

cond.end65:                                       ; preds = %while.body.cond.end65_crit_edge, %sw.bb.cond.end65_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !65
  tail call void @arm_heavy_mb() #8
  %45 = tail call i32 @llvm.bswap.i32(i32 %spec.select) #8
  %46 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i247 = getelementptr i8, ptr %47, i32 720
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i247, i32 %45) #8, !srcloc !66
  br label %sw.epilog

sw.bb66:                                          ; preds = %if.end20.sw.bb66_crit_edge, %if.end20.sw.bb66_crit_edge270, %if.end20.sw.bb66_crit_edge271
  %pll_rreg = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 34
  %48 = ptrtoint ptr %pll_rreg to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %pll_rreg, align 8
  %call67 = tail call i32 %49(ptr noundef %3, i32 noundef 45) #8
  %50 = ptrtoint ptr %pll_rreg to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %pll_rreg, align 8
  %call69 = tail call i32 %51(ptr noundef %3, i32 noundef 45) #8
  %and70 = and i32 %call69, -16385
  %pll_wreg = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 35
  %52 = ptrtoint ptr %pll_wreg to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %pll_wreg, align 4
  tail call void %53(ptr noundef %3, i32 noundef 45, i32 noundef %and70) #8
  %or72 = or i32 %7, 2
  br i1 %switch, label %if.then74, label %if.else77

if.then74:                                        ; preds = %sw.bb66
  call void @__sanitizer_cov_trace_pc() #10
  %and75 = and i32 %or72, -65537
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !65
  tail call void @arm_heavy_mb() #8
  %54 = tail call i32 @llvm.bswap.i32(i32 %and75) #8
  %55 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i251 = getelementptr i8, ptr %56, i32 720
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i251, i32 %54) #8, !srcloc !66
  br label %if.end79

if.else77:                                        ; preds = %sw.bb66
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !65
  tail call void @arm_heavy_mb() #8
  %57 = tail call i32 @llvm.bswap.i32(i32 %or72) #8
  %58 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i255 = getelementptr i8, ptr %59, i32 720
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i255, i32 %57) #8, !srcloc !66
  br label %if.end79

if.end79:                                         ; preds = %if.else77, %if.then74
  %.sink = phi i32 [ -786562, %if.else77 ], [ -65666, %if.then74 ]
  %and78 = and i32 %or72, %.sink
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %panel_pwr_delay.0)
  %tobool101.not262 = icmp eq i32 %panel_pwr_delay.0, 0
  br i1 %tobool101.not262, label %while.cond125.preheader.thread, label %if.end79.while.body102_crit_edge

if.end79.while.body102_crit_edge:                 ; preds = %if.end79
  br label %while.body102

while.body102:                                    ; preds = %while.body102.while.body102_crit_edge, %if.end79.while.body102_crit_edge
  %__ms98.0263 = phi i32 [ %dec100, %while.body102.while.body102_crit_edge ], [ %panel_pwr_delay.0, %if.end79.while.body102_crit_edge ]
  %dec100 = add nsw i32 %__ms98.0263, -1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %60 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %60(i32 noundef 214748000) #8
  %tobool101.not = icmp eq i32 %dec100, 0
  br i1 %tobool101.not, label %while.cond125.preheader, label %while.body102.while.body102_crit_edge

while.body102.while.body102_crit_edge:            ; preds = %while.body102
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body102

while.cond125.preheader.thread:                   ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !65
  tail call void @arm_heavy_mb() #8
  %61 = tail call i32 @llvm.bswap.i32(i32 %and78) #8
  %62 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i259.c268 = getelementptr i8, ptr %63, i32 720
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i259.c268, i32 %61) #8, !srcloc !66
  %64 = ptrtoint ptr %pll_wreg to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %pll_wreg, align 4
  tail call void %65(ptr noundef %3, i32 noundef 45, i32 noundef %call67) #8
  br label %sw.epilog

while.cond125.preheader:                          ; preds = %while.body102
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !65
  tail call void @arm_heavy_mb() #8
  %66 = tail call i32 @llvm.bswap.i32(i32 %and78) #8
  %67 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i259 = getelementptr i8, ptr %68, i32 720
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i259, i32 %66) #8, !srcloc !66
  %69 = ptrtoint ptr %pll_wreg to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %pll_wreg, align 4
  tail call void %70(ptr noundef %3, i32 noundef 45, i32 noundef %call67) #8
  br i1 %tobool101.not262, label %while.cond125.preheader.sw.epilog_crit_edge, label %while.cond125.preheader.while.body128_crit_edge

while.cond125.preheader.while.body128_crit_edge:  ; preds = %while.cond125.preheader
  br label %while.body128

while.cond125.preheader.sw.epilog_crit_edge:      ; preds = %while.cond125.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

while.body128:                                    ; preds = %while.body128.while.body128_crit_edge, %while.cond125.preheader.while.body128_crit_edge
  %__ms124.0265 = phi i32 [ %dec126, %while.body128.while.body128_crit_edge ], [ %panel_pwr_delay.0, %while.cond125.preheader.while.body128_crit_edge ]
  %dec126 = add nsw i32 %__ms124.0265, -1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %71 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %71(i32 noundef 214748000) #8
  %tobool127.not = icmp eq i32 %dec126, 0
  br i1 %tobool127.not, label %while.body128.sw.epilog_crit_edge, label %while.body128.while.body128_crit_edge

while.body128.while.body128_crit_edge:            ; preds = %while.body128
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body128

while.body128.sw.epilog_crit_edge:                ; preds = %while.body128
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.epilog:                                        ; preds = %while.body128.sw.epilog_crit_edge, %while.cond125.preheader.sw.epilog_crit_edge, %while.cond125.preheader.thread, %cond.end65, %if.end20.sw.epilog_crit_edge
  %is_atom_bios131 = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 14
  %72 = ptrtoint ptr %is_atom_bios131 to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %is_atom_bios131, align 4, !range !64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %73)
  %tobool132.not = icmp eq i8 %73, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mode)
  %cmp138 = icmp eq i32 %mode, 0
  br i1 %tobool132.not, label %if.else137, label %if.then133

if.then133:                                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @radeon_atombios_encoder_dpms_scratch_regs(ptr noundef %encoder, i1 noundef zeroext %cmp138) #8
  br label %if.end142

if.else137:                                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @radeon_combios_encoder_dpms_scratch_regs(ptr noundef %encoder, i1 noundef zeroext %cmp138) #8
  br label %if.end142

if.end142:                                        ; preds = %if.else137, %if.then133
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @radeon_legacy_backlight_init(ptr noundef %radeon_encoder, ptr nocapture noundef readonly %drm_connector) local_unnamed_addr #0 align 64 {
entry:
  %props = alloca %struct.backlight_properties, align 4
  %bl_name = alloca [16 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %radeon_encoder to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %radeon_encoder, align 4
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_private, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %props) #8
  %4 = getelementptr inbounds %struct.backlight_properties, ptr %props, i32 0, i32 1
  %5 = getelementptr inbounds %struct.backlight_properties, ptr %props, i32 0, i32 4
  %6 = call ptr @memset(ptr %props, i32 255, i32 28)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %bl_name) #8
  %enc_priv = getelementptr inbounds %struct.radeon_encoder, ptr %radeon_encoder, i32 0, i32 12
  %7 = call ptr @memset(ptr %bl_name, i32 255, i32 16)
  %8 = ptrtoint ptr %enc_priv to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %enc_priv, align 4
  %tobool.not = icmp eq ptr %9, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %10 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %10, i32 noundef 3264, i32 noundef 8) #11
  %tobool2.not = icmp eq ptr %call7.i, null
  br i1 %tobool2.not, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str) #8
  br label %error

if.end4:                                          ; preds = %if.end
  %11 = call ptr @memset(ptr %props, i32 0, i32 28)
  %12 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 255, ptr %4, align 4
  %13 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 1, ptr %5, align 4
  %primary = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 6
  %14 = ptrtoint ptr %primary to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %primary, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %15, align 4
  %call5 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %bl_name, i32 noundef 16, ptr noundef nonnull @.str.1, i32 noundef %17)
  %kdev = getelementptr inbounds %struct.drm_connector, ptr %drm_connector, i32 0, i32 1
  %18 = ptrtoint ptr %kdev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %kdev, align 4
  %call7 = call ptr @backlight_device_register(ptr noundef nonnull %bl_name, ptr noundef %19, ptr noundef nonnull %call7.i, ptr noundef nonnull @radeon_backlight_ops, ptr noundef nonnull %props) #8
  %cmp.i = icmp ugt ptr %call7, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then9, label %if.end10

if.then9:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.2) #8
  br label %error

if.end10:                                         ; preds = %if.end4
  %20 = ptrtoint ptr %call7.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %radeon_encoder, ptr %call7.i, align 8
  %rmmio.i = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 31
  %21 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %22, i32 720
  %23 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !62
  %24 = lshr i32 %23, 16
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !63
  %trunc = trunc i32 %24 to i8
  %25 = zext i8 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %25, ptr @__sancov_gen_cov_switch_values.14)
  switch i8 %trunc, label %if.else20 [
    i8 0, label %if.end10.if.end36_crit_edge
    i8 -1, label %if.then18
  ]

if.end10.if.end36_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end36

if.then18:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end36

if.else20:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  %family = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 6
  %26 = ptrtoint ptr %family to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %family, align 4
  %switch.tableidx = add i32 %27, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %switch.tableidx)
  %28 = icmp ugt i32 %switch.tableidx, 8
  %switch.cast = trunc i32 %switch.tableidx to i9
  %switch.downshift = lshr i9 214, %switch.cast
  %29 = and i9 %switch.downshift, 1
  %30 = sext i9 %29 to i16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %30)
  %switch.masked = icmp ne i9 %29, 0
  %31 = select i1 %28, i1 true, i1 %switch.masked
  %conv33 = zext i1 %31 to i8
  br label %if.end36

if.end36:                                         ; preds = %if.else20, %if.then18, %if.end10.if.end36_crit_edge
  %.sink = phi i8 [ 0, %if.then18 ], [ %conv33, %if.else20 ], [ 1, %if.end10.if.end36_crit_edge ]
  %negative19 = getelementptr inbounds %struct.radeon_backlight_privdata, ptr %call7.i, i32 0, i32 1
  %32 = ptrtoint ptr %negative19 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %.sink, ptr %negative19, align 4
  %is_atom_bios = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 14
  %33 = ptrtoint ptr %is_atom_bios to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %is_atom_bios, align 4, !range !64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %tobool37.not = icmp eq i8 %34, 0
  %35 = ptrtoint ptr %enc_priv to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %enc_priv, align 4
  %bl_dev43 = getelementptr inbounds %struct.radeon_encoder_lvds, ptr %36, i32 0, i32 10
  %bl_dev = getelementptr inbounds %struct.radeon_encoder_atom_dig, ptr %36, i32 0, i32 7
  %bl_dev43.sink = select i1 %tobool37.not, ptr %bl_dev43, ptr %bl_dev
  %37 = ptrtoint ptr %bl_dev43.sink to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %call7, ptr %bl_dev43.sink, align 4
  %driver_data.i.i.i = getelementptr inbounds %struct.backlight_device, ptr %call7, i32 0, i32 6, i32 8
  %38 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %driver_data.i.i.i, align 4
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %39, align 4
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %41, align 4
  %dev_private.i = getelementptr inbounds %struct.drm_device, ptr %43, i32 0, i32 5
  %44 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %dev_private.i, align 4
  %rmmio.i.i = getelementptr inbounds %struct.radeon_device, ptr %45, i32 0, i32 31
  %46 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %47, i32 720
  %48 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #8, !srcloc !62
  %49 = lshr i32 %48, 16
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !63
  %negative.i = getelementptr inbounds %struct.radeon_backlight_privdata, ptr %39, i32 0, i32 1
  %50 = ptrtoint ptr %negative.i to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %negative.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %51)
  %tobool.not.i = icmp eq i8 %51, 0
  %conv4.i = and i32 %49, 255
  %sub.i = xor i32 %conv4.i, 255
  %cond.i = select i1 %tobool.not.i, i32 %conv4.i, i32 %sub.i
  %52 = ptrtoint ptr %call7 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %cond.i, ptr %call7, align 8
  %power = getelementptr inbounds %struct.backlight_properties, ptr %call7, i32 0, i32 2
  %53 = ptrtoint ptr %power to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 0, ptr %power, align 8
  %update_lock.i = getelementptr inbounds %struct.backlight_device, ptr %call7, i32 0, i32 1
  call void @mutex_lock_nested(ptr noundef %update_lock.i, i32 noundef 0) #8
  %ops.i = getelementptr inbounds %struct.backlight_device, ptr %call7, i32 0, i32 3
  %54 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %ops.i, align 4
  %tobool.not.i82 = icmp eq ptr %55, null
  br i1 %tobool.not.i82, label %if.end36.backlight_update_status.exit_crit_edge, label %land.lhs.true.i

if.end36.backlight_update_status.exit_crit_edge:  ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #10
  br label %backlight_update_status.exit

land.lhs.true.i:                                  ; preds = %if.end36
  %update_status.i = getelementptr inbounds %struct.backlight_ops, ptr %55, i32 0, i32 1
  %56 = ptrtoint ptr %update_status.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %update_status.i, align 4
  %tobool2.not.i = icmp eq ptr %57, null
  br i1 %tobool2.not.i, label %land.lhs.true.i.backlight_update_status.exit_crit_edge, label %if.then.i

land.lhs.true.i.backlight_update_status.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %backlight_update_status.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  %call.i = call i32 %57(ptr noundef %call7) #8
  br label %backlight_update_status.exit

backlight_update_status.exit:                     ; preds = %if.then.i, %land.lhs.true.i.backlight_update_status.exit_crit_edge, %if.end36.backlight_update_status.exit_crit_edge
  call void @mutex_unlock(ptr noundef %update_lock.i) #8
  %call49 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3) #12
  %bl_encoder = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 44, i32 20
  %58 = ptrtoint ptr %bl_encoder to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %radeon_encoder, ptr %bl_encoder, align 4
  br label %cleanup

error:                                            ; preds = %if.then9, %if.then3
  call void @kfree(ptr noundef %call7.i) #8
  br label %cleanup

cleanup:                                          ; preds = %error, %backlight_update_status.exit, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %bl_name) #8
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %props) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_err(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @backlight_device_register(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @radeon_legacy_backlight_get_brightness(ptr nocapture noundef readonly %bd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.backlight_device, ptr %bd, i32 0, i32 6, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %5, i32 0, i32 5
  %6 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev_private, align 4
  %rmmio.i = getelementptr inbounds %struct.radeon_device, ptr %7, i32 0, i32 31
  %8 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %9, i32 720
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !62
  %11 = lshr i32 %10, 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !63
  %negative = getelementptr inbounds %struct.radeon_backlight_privdata, ptr %1, i32 0, i32 1
  %12 = ptrtoint ptr %negative to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %negative, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool.not = icmp eq i8 %13, 0
  %conv4 = and i32 %11, 255
  %sub = xor i32 %conv4, 255
  %cond = select i1 %tobool.not, i32 %conv4, i32 %sub
  ret i32 %cond
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @radeon_add_legacy_encoder(ptr noundef %dev, i32 noundef %encoder_enum, i32 noundef %supported_device) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_private, align 4
  %encoder_list = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 30, i32 16
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry
  %.pn.in = phi ptr [ %encoder_list, %entry ], [ %.pn, %for.body.for.cond_crit_edge ]
  %2 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn = load ptr, ptr %.pn.in, align 4
  %cmp.not = icmp eq ptr %.pn, %encoder_list
  br i1 %cmp.not, label %for.end, label %for.body

for.body:                                         ; preds = %for.cond
  %encoder_enum6 = getelementptr i8, ptr %.pn, i32 68
  %3 = ptrtoint ptr %encoder_enum6 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %encoder_enum6, align 4
  %cmp7 = icmp eq i32 %4, %encoder_enum
  br i1 %cmp7, label %if.then, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %devices = getelementptr i8, ptr %.pn, i32 76
  %5 = ptrtoint ptr %devices to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %devices, align 4
  %or = or i32 %6, %supported_device
  store i32 %or, ptr %devices, align 4
  br label %cleanup

for.end:                                          ; preds = %for.cond
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %7 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %7, i32 noundef 3520, i32 noundef 256) #11
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %for.end.cleanup_crit_edge, label %if.end14

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end14:                                         ; preds = %for.end
  %flags = getelementptr inbounds %struct.radeon_device, ptr %1, i32 0, i32 7
  %8 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %flags, align 8
  %and = and i32 %9, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool15.not = icmp eq i32 %and, 0
  %spec.select = select i1 %tobool15.not, i32 3, i32 1
  %10 = getelementptr inbounds %struct.drm_encoder, ptr %call7.i.i, i32 0, i32 6
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %spec.select, ptr %10, align 4
  %enc_priv = getelementptr inbounds %struct.radeon_encoder, ptr %call7.i.i, i32 0, i32 12
  %12 = ptrtoint ptr %enc_priv to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %enc_priv, align 8
  %encoder_enum19 = getelementptr inbounds %struct.radeon_encoder, ptr %call7.i.i, i32 0, i32 1
  %13 = ptrtoint ptr %encoder_enum19 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %encoder_enum, ptr %encoder_enum19, align 8
  %and20 = and i32 %encoder_enum, 255
  %encoder_id = getelementptr inbounds %struct.radeon_encoder, ptr %call7.i.i, i32 0, i32 2
  %14 = ptrtoint ptr %encoder_id to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %and20, ptr %encoder_id, align 4
  %devices21 = getelementptr inbounds %struct.radeon_encoder, ptr %call7.i.i, i32 0, i32 3
  %15 = ptrtoint ptr %devices21 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %supported_device, ptr %devices21, align 8
  %rmx_type = getelementptr inbounds %struct.radeon_encoder, ptr %call7.i.i, i32 0, i32 7
  %16 = ptrtoint ptr %rmx_type to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %rmx_type, align 8
  %trunc = trunc i32 %encoder_enum to i8
  %17 = zext i8 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.15)
  switch i8 %trunc, label %if.end14.cleanup_crit_edge [
    i8 1, label %sw.bb
    i8 2, label %sw.bb34
    i8 4, label %sw.bb38
    i8 5, label %sw.bb49
    i8 11, label %sw.bb60
  ]

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb:                                            ; preds = %if.end14
  %18 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 1, ptr %10, align 4
  %call24 = tail call i32 (ptr, ptr, ptr, i32, ptr, ...) @drm_encoder_init(ptr noundef %dev, ptr noundef nonnull %call7.i.i, ptr noundef nonnull @radeon_legacy_lvds_enc_funcs, i32 noundef 3, ptr noundef null) #8
  %helper_private.i = getelementptr inbounds %struct.drm_encoder, ptr %call7.i.i, i32 0, i32 11
  %19 = ptrtoint ptr %helper_private.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @radeon_legacy_lvds_helper_funcs, ptr %helper_private.i, align 4
  %is_atom_bios = getelementptr inbounds %struct.radeon_device, ptr %1, i32 0, i32 14
  %20 = ptrtoint ptr %is_atom_bios to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %is_atom_bios, align 4, !range !64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool25.not = icmp eq i8 %21, 0
  br i1 %tobool25.not, label %if.else29, label %if.then26

if.then26:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  %call27 = tail call ptr @radeon_atombios_get_lvds_info(ptr noundef nonnull %call7.i.i) #8
  br label %if.end32

if.else29:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  %call30 = tail call ptr @radeon_combios_get_lvds_info(ptr noundef nonnull %call7.i.i) #8
  br label %if.end32

if.end32:                                         ; preds = %if.else29, %if.then26
  %storemerge = phi ptr [ %call30, %if.else29 ], [ %call27, %if.then26 ]
  %22 = ptrtoint ptr %enc_priv to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %storemerge, ptr %enc_priv, align 8
  %23 = ptrtoint ptr %rmx_type to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 1, ptr %rmx_type, align 8
  br label %cleanup

sw.bb34:                                          ; preds = %if.end14
  %call35 = tail call i32 (ptr, ptr, ptr, i32, ptr, ...) @drm_encoder_init(ptr noundef %dev, ptr noundef nonnull %call7.i.i, ptr noundef nonnull @radeon_legacy_tmds_int_enc_funcs, i32 noundef 2, ptr noundef null) #8
  %helper_private.i125 = getelementptr inbounds %struct.drm_encoder, ptr %call7.i.i, i32 0, i32 11
  %24 = ptrtoint ptr %helper_private.i125 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr @radeon_legacy_tmds_int_helper_funcs, ptr %helper_private.i125, align 4
  %25 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %call7.i.i, align 8
  %dev_private.i = getelementptr inbounds %struct.drm_device, ptr %26, i32 0, i32 5
  %27 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev_private.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %29 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %29, i32 noundef 3520, i32 noundef 32) #11
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %sw.bb34.radeon_legacy_get_tmds_info.exit_crit_edge, label %if.end.i

sw.bb34.radeon_legacy_get_tmds_info.exit_crit_edge: ; preds = %sw.bb34
  call void @__sanitizer_cov_trace_pc() #10
  br label %radeon_legacy_get_tmds_info.exit

if.end.i:                                         ; preds = %sw.bb34
  %is_atom_bios.i = getelementptr inbounds %struct.radeon_device, ptr %28, i32 0, i32 14
  %30 = ptrtoint ptr %is_atom_bios.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %is_atom_bios.i, align 4, !range !64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool2.not.i = icmp eq i8 %31, 0
  br i1 %tobool2.not.i, label %if.end7.i, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  %call4.i = tail call zeroext i1 @radeon_atombios_get_tmds_info(ptr noundef nonnull %call7.i.i, ptr noundef nonnull %call7.i.i.i) #8
  br i1 %call4.i, label %if.then3.i.radeon_legacy_get_tmds_info.exit_crit_edge, label %if.then3.i.if.then9.i_crit_edge

if.then3.i.if.then9.i_crit_edge:                  ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then9.i

if.then3.i.radeon_legacy_get_tmds_info.exit_crit_edge: ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %radeon_legacy_get_tmds_info.exit

if.end7.i:                                        ; preds = %if.end.i
  %call5.i = tail call zeroext i1 @radeon_legacy_get_tmds_info_from_combios(ptr noundef nonnull %call7.i.i, ptr noundef nonnull %call7.i.i.i) #8
  br i1 %call5.i, label %if.end7.i.radeon_legacy_get_tmds_info.exit_crit_edge, label %if.end7.i.if.then9.i_crit_edge

if.end7.i.if.then9.i_crit_edge:                   ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then9.i

if.end7.i.radeon_legacy_get_tmds_info.exit_crit_edge: ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %radeon_legacy_get_tmds_info.exit

if.then9.i:                                       ; preds = %if.end7.i.if.then9.i_crit_edge, %if.then3.i.if.then9.i_crit_edge
  %call10.i = tail call zeroext i1 @radeon_legacy_get_tmds_info_from_table(ptr noundef nonnull %call7.i.i, ptr noundef nonnull %call7.i.i.i) #8
  br label %radeon_legacy_get_tmds_info.exit

radeon_legacy_get_tmds_info.exit:                 ; preds = %if.then9.i, %if.end7.i.radeon_legacy_get_tmds_info.exit_crit_edge, %if.then3.i.radeon_legacy_get_tmds_info.exit_crit_edge, %sw.bb34.radeon_legacy_get_tmds_info.exit_crit_edge
  %32 = ptrtoint ptr %enc_priv to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %call7.i.i.i, ptr %enc_priv, align 8
  br label %cleanup

sw.bb38:                                          ; preds = %if.end14
  %call39 = tail call i32 (ptr, ptr, ptr, i32, ptr, ...) @drm_encoder_init(ptr noundef %dev, ptr noundef nonnull %call7.i.i, ptr noundef nonnull @radeon_legacy_primary_dac_enc_funcs, i32 noundef 1, ptr noundef null) #8
  %helper_private.i126 = getelementptr inbounds %struct.drm_encoder, ptr %call7.i.i, i32 0, i32 11
  %33 = ptrtoint ptr %helper_private.i126 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr @radeon_legacy_primary_dac_helper_funcs, ptr %helper_private.i126, align 4
  %is_atom_bios40 = getelementptr inbounds %struct.radeon_device, ptr %1, i32 0, i32 14
  %34 = ptrtoint ptr %is_atom_bios40 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %is_atom_bios40, align 4, !range !64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %tobool41.not = icmp eq i8 %35, 0
  br i1 %tobool41.not, label %if.else45, label %if.then42

if.then42:                                        ; preds = %sw.bb38
  call void @__sanitizer_cov_trace_pc() #10
  %call43 = tail call ptr @radeon_atombios_get_primary_dac_info(ptr noundef nonnull %call7.i.i) #8
  %36 = ptrtoint ptr %enc_priv to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %call43, ptr %enc_priv, align 8
  br label %cleanup

if.else45:                                        ; preds = %sw.bb38
  call void @__sanitizer_cov_trace_pc() #10
  %call46 = tail call ptr @radeon_combios_get_primary_dac_info(ptr noundef nonnull %call7.i.i) #8
  %37 = ptrtoint ptr %enc_priv to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %call46, ptr %enc_priv, align 8
  br label %cleanup

sw.bb49:                                          ; preds = %if.end14
  %call50 = tail call i32 (ptr, ptr, ptr, i32, ptr, ...) @drm_encoder_init(ptr noundef %dev, ptr noundef nonnull %call7.i.i, ptr noundef nonnull @radeon_legacy_tv_dac_enc_funcs, i32 noundef 4, ptr noundef null) #8
  %helper_private.i127 = getelementptr inbounds %struct.drm_encoder, ptr %call7.i.i, i32 0, i32 11
  %38 = ptrtoint ptr %helper_private.i127 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr @radeon_legacy_tv_dac_helper_funcs, ptr %helper_private.i127, align 4
  %is_atom_bios51 = getelementptr inbounds %struct.radeon_device, ptr %1, i32 0, i32 14
  %39 = ptrtoint ptr %is_atom_bios51 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %is_atom_bios51, align 4, !range !64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %40)
  %tobool52.not = icmp eq i8 %40, 0
  br i1 %tobool52.not, label %if.else56, label %if.then53

if.then53:                                        ; preds = %sw.bb49
  call void @__sanitizer_cov_trace_pc() #10
  %call54 = tail call ptr @radeon_atombios_get_tv_dac_info(ptr noundef nonnull %call7.i.i) #8
  %41 = ptrtoint ptr %enc_priv to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %call54, ptr %enc_priv, align 8
  br label %cleanup

if.else56:                                        ; preds = %sw.bb49
  call void @__sanitizer_cov_trace_pc() #10
  %call57 = tail call ptr @radeon_combios_get_tv_dac_info(ptr noundef nonnull %call7.i.i) #8
  %42 = ptrtoint ptr %enc_priv to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %call57, ptr %enc_priv, align 8
  br label %cleanup

sw.bb60:                                          ; preds = %if.end14
  %call61 = tail call i32 (ptr, ptr, ptr, i32, ptr, ...) @drm_encoder_init(ptr noundef %dev, ptr noundef nonnull %call7.i.i, ptr noundef nonnull @radeon_legacy_tmds_ext_enc_funcs, i32 noundef 2, ptr noundef null) #8
  %helper_private.i128 = getelementptr inbounds %struct.drm_encoder, ptr %call7.i.i, i32 0, i32 11
  %43 = ptrtoint ptr %helper_private.i128 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr @radeon_legacy_tmds_ext_helper_funcs, ptr %helper_private.i128, align 4
  %is_atom_bios62 = getelementptr inbounds %struct.radeon_device, ptr %1, i32 0, i32 14
  %44 = ptrtoint ptr %is_atom_bios62 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %is_atom_bios62, align 4, !range !64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %45)
  %tobool63.not = icmp eq i8 %45, 0
  br i1 %tobool63.not, label %if.then64, label %sw.bb60.cleanup_crit_edge

sw.bb60.cleanup_crit_edge:                        ; preds = %sw.bb60
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then64:                                        ; preds = %sw.bb60
  %46 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %call7.i.i, align 8
  %dev_private.i129 = getelementptr inbounds %struct.drm_device, ptr %47, i32 0, i32 5
  %48 = ptrtoint ptr %dev_private.i129 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %dev_private.i129, align 4
  %is_atom_bios.i130 = getelementptr inbounds %struct.radeon_device, ptr %49, i32 0, i32 14
  %50 = ptrtoint ptr %is_atom_bios.i130 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %is_atom_bios.i130, align 4, !range !64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %51)
  %tobool.not.i131 = icmp eq i8 %51, 0
  br i1 %tobool.not.i131, label %if.end.i134, label %if.then64.radeon_legacy_get_ext_tmds_info.exit_crit_edge

if.then64.radeon_legacy_get_ext_tmds_info.exit_crit_edge: ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #10
  br label %radeon_legacy_get_ext_tmds_info.exit

if.end.i134:                                      ; preds = %if.then64
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %52 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i132 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %52, i32 noundef 3520, i32 noundef 12) #11
  %tobool2.not.i133 = icmp eq ptr %call7.i.i.i132, null
  br i1 %tobool2.not.i133, label %if.end.i134.radeon_legacy_get_ext_tmds_info.exit_crit_edge, label %if.end4.i

if.end.i134.radeon_legacy_get_ext_tmds_info.exit_crit_edge: ; preds = %if.end.i134
  call void @__sanitizer_cov_trace_pc() #10
  br label %radeon_legacy_get_ext_tmds_info.exit

if.end4.i:                                        ; preds = %if.end.i134
  %call5.i135 = tail call zeroext i1 @radeon_legacy_get_ext_tmds_info_from_combios(ptr noundef nonnull %call7.i.i, ptr noundef nonnull %call7.i.i.i132) #8
  br i1 %call5.i135, label %if.end4.i.radeon_legacy_get_ext_tmds_info.exit_crit_edge, label %if.then7.i

if.end4.i.radeon_legacy_get_ext_tmds_info.exit_crit_edge: ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %radeon_legacy_get_ext_tmds_info.exit

if.then7.i:                                       ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #10
  %call8.i = tail call zeroext i1 @radeon_legacy_get_ext_tmds_info_from_table(ptr noundef nonnull %call7.i.i, ptr noundef nonnull %call7.i.i.i132) #8
  br label %radeon_legacy_get_ext_tmds_info.exit

radeon_legacy_get_ext_tmds_info.exit:             ; preds = %if.then7.i, %if.end4.i.radeon_legacy_get_ext_tmds_info.exit_crit_edge, %if.end.i134.radeon_legacy_get_ext_tmds_info.exit_crit_edge, %if.then64.radeon_legacy_get_ext_tmds_info.exit_crit_edge
  %retval.0.i = phi ptr [ null, %if.then64.radeon_legacy_get_ext_tmds_info.exit_crit_edge ], [ null, %if.end.i134.radeon_legacy_get_ext_tmds_info.exit_crit_edge ], [ %call7.i.i.i132, %if.then7.i ], [ %call7.i.i.i132, %if.end4.i.radeon_legacy_get_ext_tmds_info.exit_crit_edge ]
  %53 = ptrtoint ptr %enc_priv to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %retval.0.i, ptr %enc_priv, align 8
  br label %cleanup

cleanup:                                          ; preds = %radeon_legacy_get_ext_tmds_info.exit, %sw.bb60.cleanup_crit_edge, %if.else56, %if.then53, %if.else45, %if.then42, %radeon_legacy_get_tmds_info.exit, %if.end32, %if.end14.cleanup_crit_edge, %for.end.cleanup_crit_edge, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_encoder_init(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @radeon_atombios_get_lvds_info(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @radeon_combios_get_lvds_info(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @radeon_atombios_get_primary_dac_info(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @radeon_combios_get_primary_dac_info(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @radeon_atombios_get_tv_dac_info(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @radeon_combios_get_tv_dac_info(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @radeon_atombios_encoder_dpms_scratch_regs(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @radeon_combios_encoder_dpms_scratch_regs(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @radeon_legacy_backlight_update_status(ptr nocapture noundef readonly %bd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.backlight_device, ptr %bd, i32 0, i32 6, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %4 = ptrtoint ptr %bd to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %bd, align 8
  %6 = tail call i32 @llvm.smin.i32(i32 %5, i32 255) #8
  %7 = tail call i32 @llvm.smax.i32(i32 %6, i32 0) #8
  %8 = trunc i32 %7 to i8
  %negative.i = getelementptr inbounds %struct.radeon_backlight_privdata, ptr %1, i32 0, i32 1
  %9 = ptrtoint ptr %negative.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %negative.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool.not.i = icmp ne i8 %10, 0
  %11 = sext i1 %tobool.not.i to i8
  %spec.select.i = xor i8 %8, %11
  %enc_priv.i = getelementptr inbounds %struct.radeon_encoder, ptr %3, i32 0, i32 12
  %12 = ptrtoint ptr %enc_priv.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %enc_priv.i, align 4
  %tobool.not.i3 = icmp eq ptr %13, null
  br i1 %tobool.not.i3, label %entry.radeon_legacy_set_backlight_level.exit_crit_edge, label %if.then.i

entry.radeon_legacy_set_backlight_level.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %radeon_legacy_set_backlight_level.exit

if.then.i:                                        ; preds = %entry
  %14 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %3, align 4
  %dev_private.i = getelementptr inbounds %struct.drm_device, ptr %15, i32 0, i32 5
  %16 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev_private.i, align 4
  %is_atom_bios.i = getelementptr inbounds %struct.radeon_device, ptr %17, i32 0, i32 14
  %18 = ptrtoint ptr %is_atom_bios.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %is_atom_bios.i, align 4, !range !64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool2.not.i = icmp eq i8 %19, 0
  br i1 %tobool2.not.i, label %if.else9.i, label %if.then3.i

if.then3.i:                                       ; preds = %if.then.i
  %backlight_level.i = getelementptr inbounds %struct.radeon_encoder_atom_dig, ptr %13, i32 0, i32 9
  %20 = ptrtoint ptr %backlight_level.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %backlight_level.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %cmp.not.i = icmp eq i8 %21, 0
  br i1 %cmp.not.i, label %if.then3.i.if.end22.sink.split.i_crit_edge, label %if.then6.i

if.then3.i.if.end22.sink.split.i_crit_edge:       ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end22.sink.split.i

if.then6.i:                                       ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #10
  %dpms_mode7.i = getelementptr inbounds %struct.radeon_encoder_atom_dig, ptr %13, i32 0, i32 8
  br label %if.end22.sink.split.sink.split.i

if.else9.i:                                       ; preds = %if.then.i
  %backlight_level12.i = getelementptr inbounds %struct.radeon_encoder_lvds, ptr %13, i32 0, i32 12
  %22 = ptrtoint ptr %backlight_level12.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %backlight_level12.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %cmp14.not.i = icmp eq i8 %23, 0
  br i1 %cmp14.not.i, label %if.else9.i.if.end22.sink.split.i_crit_edge, label %if.then16.i

if.else9.i.if.end22.sink.split.i_crit_edge:       ; preds = %if.else9.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end22.sink.split.i

if.then16.i:                                      ; preds = %if.else9.i
  call void @__sanitizer_cov_trace_pc() #10
  %dpms_mode17.i = getelementptr inbounds %struct.radeon_encoder_lvds, ptr %13, i32 0, i32 11
  br label %if.end22.sink.split.sink.split.i

if.end22.sink.split.sink.split.i:                 ; preds = %if.then16.i, %if.then6.i
  %dpms_mode17.sink.i = phi ptr [ %dpms_mode17.i, %if.then16.i ], [ %dpms_mode7.i, %if.then6.i ]
  %backlight_level.sink.ph.i = phi ptr [ %backlight_level12.i, %if.then16.i ], [ %backlight_level.i, %if.then6.i ]
  %24 = ptrtoint ptr %dpms_mode17.sink.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %dpms_mode17.sink.i, align 4
  br label %if.end22.sink.split.i

if.end22.sink.split.i:                            ; preds = %if.end22.sink.split.sink.split.i, %if.else9.i.if.end22.sink.split.i_crit_edge, %if.then3.i.if.end22.sink.split.i_crit_edge
  %backlight_level.sink.i = phi ptr [ %backlight_level.i, %if.then3.i.if.end22.sink.split.i_crit_edge ], [ %backlight_level12.i, %if.else9.i.if.end22.sink.split.i_crit_edge ], [ %backlight_level.sink.ph.i, %if.end22.sink.split.sink.split.i ]
  %dpms_mode.2.ph.i = phi i32 [ 3, %if.then3.i.if.end22.sink.split.i_crit_edge ], [ 3, %if.else9.i.if.end22.sink.split.i_crit_edge ], [ %25, %if.end22.sink.split.sink.split.i ]
  %26 = ptrtoint ptr %backlight_level.sink.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %spec.select.i, ptr %backlight_level.sink.i, align 4
  br label %radeon_legacy_set_backlight_level.exit

radeon_legacy_set_backlight_level.exit:           ; preds = %if.end22.sink.split.i, %entry.radeon_legacy_set_backlight_level.exit_crit_edge
  %dpms_mode.2.i = phi i32 [ 0, %entry.radeon_legacy_set_backlight_level.exit_crit_edge ], [ %dpms_mode.2.ph.i, %if.end22.sink.split.i ]
  tail call fastcc void @radeon_legacy_lvds_update(ptr noundef %3, i32 noundef %dpms_mode.2.i) #8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @radeon_lvds_enc_destroy(ptr noundef %encoder) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %enc_priv = getelementptr inbounds %struct.radeon_encoder, ptr %encoder, i32 0, i32 12
  %0 = ptrtoint ptr %enc_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %enc_priv, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.end.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.end.i:                                         ; preds = %entry
  %bl_dev8.i = getelementptr inbounds %struct.radeon_encoder_lvds, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %bl_dev8.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bl_dev8.i, align 4
  store ptr null, ptr %bl_dev8.i, align 4
  %tobool11.not.i = icmp eq ptr %3, null
  br i1 %tobool11.not.i, label %if.end.i.radeon_legacy_backlight_exit.exit_crit_edge, label %if.then12.i

if.end.i.radeon_legacy_backlight_exit.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %radeon_legacy_backlight_exit.exit

if.then12.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %driver_data.i.i.i = getelementptr inbounds %struct.backlight_device, ptr %3, i32 0, i32 6, i32 8
  %4 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i.i, align 4
  tail call void @backlight_device_unregister(ptr noundef nonnull %3) #8
  tail call void @kfree(ptr noundef %5) #8
  %call13.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7) #12
  br label %radeon_legacy_backlight_exit.exit

radeon_legacy_backlight_exit.exit:                ; preds = %if.then12.i, %if.end.i.radeon_legacy_backlight_exit.exit_crit_edge
  %6 = ptrtoint ptr %enc_priv to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %enc_priv, align 4
  tail call void @kfree(ptr noundef %7) #8
  br label %if.end

if.end:                                           ; preds = %radeon_legacy_backlight_exit.exit, %entry.if.end_crit_edge
  tail call void @drm_encoder_cleanup(ptr noundef %encoder) #8
  tail call void @kfree(ptr noundef %encoder) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_encoder_cleanup(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @backlight_device_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @radeon_legacy_lvds_dpms(ptr noundef %encoder, i32 noundef %mode) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %encoder to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %encoder, align 4
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_private, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.6) #8
  %enc_priv = getelementptr inbounds %struct.radeon_encoder, ptr %encoder, i32 0, i32 12
  %4 = ptrtoint ptr %enc_priv to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %enc_priv, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.if.end7_crit_edge, label %if.then

entry.if.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %is_atom_bios = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 14
  %6 = ptrtoint ptr %is_atom_bios to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %is_atom_bios, align 4, !range !64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool1.not = icmp eq i8 %7, 0
  %dpms_mode = getelementptr inbounds %struct.radeon_encoder_atom_dig, ptr %5, i32 0, i32 8
  %dpms_mode6 = getelementptr inbounds %struct.radeon_encoder_lvds, ptr %5, i32 0, i32 11
  %dpms_mode.sink = select i1 %tobool1.not, ptr %dpms_mode6, ptr %dpms_mode
  %8 = ptrtoint ptr %dpms_mode.sink to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %mode, ptr %dpms_mode.sink, align 4
  br label %if.end7

if.end7:                                          ; preds = %if.then, %entry.if.end7_crit_edge
  tail call fastcc void @radeon_legacy_lvds_update(ptr noundef %encoder, i32 noundef %mode)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @radeon_legacy_mode_fixup(ptr noundef %encoder, ptr nocapture noundef readnone %mode, ptr noundef %adjusted_mode) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @radeon_encoder_set_active_device(ptr noundef %encoder) #8
  tail call void @drm_mode_set_crtcinfo(ptr noundef %adjusted_mode, i32 noundef 0) #8
  %active_device = getelementptr inbounds %struct.radeon_encoder, ptr %encoder, i32 0, i32 4
  %0 = ptrtoint ptr %active_device to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %active_device, align 4
  %and = and i32 %1, 34
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @radeon_panel_mode_fixup(ptr noundef %encoder, ptr noundef %adjusted_mode) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i1 true
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @radeon_legacy_lvds_prepare(ptr noundef %encoder) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %encoder to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %encoder, align 4
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_private, align 4
  %is_atom_bios = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 14
  %4 = ptrtoint ptr %is_atom_bios to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %is_atom_bios, align 4, !range !64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @radeon_atom_output_lock(ptr noundef %encoder, i1 noundef zeroext true) #8
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @radeon_combios_output_lock(ptr noundef %encoder, i1 noundef zeroext true) #8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.6) #8
  %enc_priv.i = getelementptr inbounds %struct.radeon_encoder, ptr %encoder, i32 0, i32 12
  %6 = ptrtoint ptr %enc_priv.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %enc_priv.i, align 4
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %if.end.radeon_legacy_lvds_dpms.exit_crit_edge, label %if.then.i

if.end.radeon_legacy_lvds_dpms.exit_crit_edge:    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %radeon_legacy_lvds_dpms.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %dpms_mode.i = getelementptr inbounds %struct.radeon_encoder_atom_dig, ptr %7, i32 0, i32 8
  %8 = ptrtoint ptr %dpms_mode.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 3, ptr %dpms_mode.i, align 4
  br label %radeon_legacy_lvds_dpms.exit

radeon_legacy_lvds_dpms.exit:                     ; preds = %if.then.i, %if.end.radeon_legacy_lvds_dpms.exit_crit_edge
  tail call fastcc void @radeon_legacy_lvds_update(ptr noundef %encoder, i32 noundef 3) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @radeon_legacy_lvds_commit(ptr noundef %encoder) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %encoder to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %encoder, align 4
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_private, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.6) #8
  %enc_priv.i = getelementptr inbounds %struct.radeon_encoder, ptr %encoder, i32 0, i32 12
  %4 = ptrtoint ptr %enc_priv.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %enc_priv.i, align 4
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %entry.radeon_legacy_lvds_dpms.exit_crit_edge, label %if.then.i

entry.radeon_legacy_lvds_dpms.exit_crit_edge:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %radeon_legacy_lvds_dpms.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dpms_mode.i = getelementptr inbounds %struct.radeon_encoder_atom_dig, ptr %5, i32 0, i32 8
  %6 = ptrtoint ptr %dpms_mode.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %dpms_mode.i, align 4
  br label %radeon_legacy_lvds_dpms.exit

radeon_legacy_lvds_dpms.exit:                     ; preds = %if.then.i, %entry.radeon_legacy_lvds_dpms.exit_crit_edge
  tail call fastcc void @radeon_legacy_lvds_update(ptr noundef %encoder, i32 noundef 0) #8
  %is_atom_bios = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 14
  %7 = ptrtoint ptr %is_atom_bios to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %is_atom_bios, align 4, !range !64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not = icmp eq i8 %8, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %radeon_legacy_lvds_dpms.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @radeon_atom_output_lock(ptr noundef %encoder, i1 noundef zeroext false) #8
  br label %if.end

if.else:                                          ; preds = %radeon_legacy_lvds_dpms.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @radeon_combios_output_lock(ptr noundef %encoder, i1 noundef zeroext false) #8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @radeon_legacy_lvds_mode_set(ptr noundef %encoder, ptr nocapture noundef readnone %mode, ptr nocapture noundef readonly %adjusted_mode) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %encoder to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %encoder, align 4
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_private, align 4
  %crtc = getelementptr inbounds %struct.drm_encoder, ptr %encoder, i32 0, i32 8
  %4 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %crtc, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.6) #8
  %rmmio.i = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 31
  %6 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %7, i32 724
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !62
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !63
  %and = and i32 %9, -65537
  %10 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i227 = getelementptr i8, ptr %11, i32 748
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i227) #8, !srcloc !62
  %13 = tail call i32 @llvm.bswap.i32(i32 %12) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !63
  %is_atom_bios = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 14
  %14 = ptrtoint ptr %is_atom_bios to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %is_atom_bios, align 4, !range !64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool.not = icmp eq i8 %15, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %16 = ptrtoint ptr %adjusted_mode to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %adjusted_mode, align 4
  %pixel_clock = getelementptr inbounds %struct.radeon_encoder, ptr %encoder, i32 0, i32 6
  %18 = ptrtoint ptr %pixel_clock to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %pixel_clock, align 4
  tail call void @atombios_digital_setup(ptr noundef %encoder, i32 noundef 1) #8
  %19 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i231 = getelementptr i8, ptr %20, i32 720
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i231) #8, !srcloc !62
  %22 = tail call i32 @llvm.bswap.i32(i32 %21) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !63
  br label %if.end17

if.else:                                          ; preds = %entry
  %enc_priv = getelementptr inbounds %struct.radeon_encoder, ptr %encoder, i32 0, i32 12
  %23 = ptrtoint ptr %enc_priv to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %enc_priv, align 4
  %tobool7.not = icmp eq ptr %24, null
  br i1 %tobool7.not, label %if.else15, label %if.then8

if.then8:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %lvds_gen_cntl9 = getelementptr inbounds %struct.radeon_encoder_lvds, ptr %24, i32 0, i32 8
  %25 = ptrtoint ptr %lvds_gen_cntl9 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %lvds_gen_cntl9, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.9, i32 noundef %26) #8
  %27 = ptrtoint ptr %lvds_gen_cntl9 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %lvds_gen_cntl9, align 4
  %and11 = and i32 %13, -16711681
  %panel_digon_delay = getelementptr inbounds %struct.radeon_encoder_lvds, ptr %24, i32 0, i32 2
  %29 = ptrtoint ptr %panel_digon_delay to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %panel_digon_delay, align 1
  %conv = zext i8 %30 to i32
  %shl = shl nuw nsw i32 %conv, 16
  %panel_blon_delay = getelementptr inbounds %struct.radeon_encoder_lvds, ptr %24, i32 0, i32 3
  %31 = ptrtoint ptr %panel_blon_delay to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %panel_blon_delay, align 4
  %conv12 = zext i8 %32 to i32
  %shl13 = shl nuw nsw i32 %conv12, 20
  %or = or i32 %shl, %and11
  %or14 = or i32 %or, %shl13
  br label %if.end17

if.else15:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %33 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i235 = getelementptr i8, ptr %34, i32 720
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i235) #8, !srcloc !62
  %36 = tail call i32 @llvm.bswap.i32(i32 %35) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !63
  br label %if.end17

if.end17:                                         ; preds = %if.else15, %if.then8, %if.then
  %lvds_gen_cntl.1 = phi i32 [ %22, %if.then ], [ %28, %if.then8 ], [ %36, %if.else15 ]
  %lvds_ss_gen_cntl.1 = phi i32 [ %13, %if.then ], [ %or14, %if.then8 ], [ %13, %if.else15 ]
  %or18 = and i32 %lvds_gen_cntl.1, -524484
  %and19 = or i32 %or18, 2
  %family = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 6
  %37 = ptrtoint ptr %family to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %family, align 4
  %.off = add i32 %38, -9
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %.off)
  %switch = icmp ult i32 %.off, 9
  %and53 = and i32 %9, -851969
  %spec.select219 = select i1 %switch, i32 %and53, i32 %and
  %crtc_id = getelementptr inbounds %struct.radeon_crtc, ptr %5, i32 0, i32 1
  %39 = ptrtoint ptr %crtc_id to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %crtc_id, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %cmp55 = icmp eq i32 %40, 0
  br i1 %cmp55, label %if.then57, label %if.else102

if.then57:                                        ; preds = %if.end17
  br i1 %switch, label %if.then93, label %if.else99

if.then93:                                        ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #10
  %rmx_type = getelementptr inbounds %struct.radeon_encoder, ptr %encoder, i32 0, i32 7
  %41 = ptrtoint ptr %rmx_type to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %rmx_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %cmp94.not = icmp eq i32 %42, 0
  %or97 = or i32 %spec.select219, 524288
  %spec.select = select i1 %cmp94.not, i32 %spec.select219, i32 %or97
  br label %if.end143

if.else99:                                        ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #10
  %and100 = and i32 %and19, -8913090
  br label %if.end143

if.else102:                                       ; preds = %if.end17
  br i1 %switch, label %if.then138, label %if.else140

if.then138:                                       ; preds = %if.else102
  call void @__sanitizer_cov_trace_pc() #10
  %or139 = or i32 %spec.select219, 262144
  br label %if.end143

if.else140:                                       ; preds = %if.else102
  call void @__sanitizer_cov_trace_pc() #10
  %or141 = or i32 %or18, 8388610
  br label %if.end143

if.end143:                                        ; preds = %if.else140, %if.then138, %if.else99, %if.then93
  %lvds_pll_cntl.1 = phi i32 [ %and, %if.else99 ], [ %or139, %if.then138 ], [ %and, %if.else140 ], [ %spec.select, %if.then93 ]
  %lvds_gen_cntl.2 = phi i32 [ %and100, %if.else99 ], [ %and19, %if.then138 ], [ %or141, %if.else140 ], [ %and19, %if.then93 ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !65
  tail call void @arm_heavy_mb() #8
  %43 = tail call i32 @llvm.bswap.i32(i32 %lvds_gen_cntl.2) #8
  %44 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i239 = getelementptr i8, ptr %45, i32 720
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i239, i32 %43) #8, !srcloc !66
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !65
  tail call void @arm_heavy_mb() #8
  %46 = tail call i32 @llvm.bswap.i32(i32 %lvds_pll_cntl.1) #8
  %47 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i243 = getelementptr i8, ptr %48, i32 724
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i243, i32 %46) #8, !srcloc !66
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !65
  tail call void @arm_heavy_mb() #8
  %49 = tail call i32 @llvm.bswap.i32(i32 %lvds_ss_gen_cntl.1) #8
  %50 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i247 = getelementptr i8, ptr %51, i32 748
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i247, i32 %49) #8, !srcloc !66
  %52 = ptrtoint ptr %family to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %family, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %53)
  %cmp145 = icmp eq i32 %53, 15
  br i1 %cmp145, label %if.then147, label %if.end143.if.end148_crit_edge

if.end143.if.end148_crit_edge:                    ; preds = %if.end143
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end148

if.then147:                                       ; preds = %if.end143
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !65
  tail call void @arm_heavy_mb() #8
  %54 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i251 = getelementptr i8, ptr %55, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i251, i32 0) #8, !srcloc !66
  br label %if.end148

if.end148:                                        ; preds = %if.then147, %if.end143.if.end148_crit_edge
  %56 = ptrtoint ptr %is_atom_bios to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %is_atom_bios, align 4, !range !64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %57)
  %tobool150.not = icmp eq i8 %57, 0
  %58 = ptrtoint ptr %crtc_id to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %crtc_id, align 8
  br i1 %tobool150.not, label %if.else153, label %if.then151

if.then151:                                       ; preds = %if.end148
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @radeon_atombios_encoder_crtc_scratch_regs(ptr noundef %encoder, i32 noundef %59) #8
  br label %if.end155

if.else153:                                       ; preds = %if.end148
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @radeon_combios_encoder_crtc_scratch_regs(ptr noundef %encoder, i32 noundef %59) #8
  br label %if.end155

if.end155:                                        ; preds = %if.else153, %if.then151
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @radeon_legacy_encoder_disable(ptr noundef %encoder) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %helper_private = getelementptr inbounds %struct.drm_encoder, ptr %encoder, i32 0, i32 11
  %0 = ptrtoint ptr %helper_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %helper_private, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  tail call void %3(ptr noundef %encoder, i32 noundef 3) #8
  %active_device = getelementptr inbounds %struct.radeon_encoder, ptr %encoder, i32 0, i32 4
  %4 = ptrtoint ptr %active_device to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %active_device, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @radeon_encoder_set_active_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_mode_set_crtcinfo(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @radeon_panel_mode_fixup(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @radeon_atom_output_lock(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @radeon_combios_output_lock(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @atombios_digital_setup(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @radeon_atombios_encoder_crtc_scratch_regs(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @radeon_combios_encoder_crtc_scratch_regs(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @radeon_enc_destroy(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @radeon_legacy_tmds_int_dpms(ptr noundef %encoder, i32 noundef %mode) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %encoder to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %encoder, align 4
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_private, align 4
  %rmmio.i = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 31
  %4 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 644
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !62
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !63
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.6) #8
  %8 = zext i32 %mode to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.16)
  switch i32 %mode, label %entry.sw.epilog_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %entry.sw.bb2_crit_edge
    i32 2, label %entry.sw.bb2_crit_edge19
    i32 3, label %entry.sw.bb2_crit_edge20
  ]

entry.sw.bb2_crit_edge20:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb2

entry.sw.bb2_crit_edge19:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb2

entry.sw.bb2_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb2

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %or = or i32 %7, 5
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry.sw.bb2_crit_edge, %entry.sw.bb2_crit_edge19, %entry.sw.bb2_crit_edge20
  %and = and i32 %7, -6
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb2, %sw.bb, %entry.sw.epilog_crit_edge
  %fp_gen_cntl.0 = phi i32 [ %7, %entry.sw.epilog_crit_edge ], [ %and, %sw.bb2 ], [ %or, %sw.bb ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !65
  tail call void @arm_heavy_mb() #8
  %9 = tail call i32 @llvm.bswap.i32(i32 %fp_gen_cntl.0) #8
  %10 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i18 = getelementptr i8, ptr %11, i32 644
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i18, i32 %9) #8, !srcloc !66
  %is_atom_bios = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 14
  %12 = ptrtoint ptr %is_atom_bios to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %is_atom_bios, align 4, !range !64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool.not = icmp eq i8 %13, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mode)
  %cmp4 = icmp eq i32 %mode, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @radeon_atombios_encoder_dpms_scratch_regs(ptr noundef %encoder, i1 noundef zeroext %cmp4) #8
  br label %if.end

if.else:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @radeon_combios_encoder_dpms_scratch_regs(ptr noundef %encoder, i1 noundef zeroext %cmp4) #8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @radeon_legacy_tmds_int_prepare(ptr noundef %encoder) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %encoder to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %encoder, align 4
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_private, align 4
  %is_atom_bios = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 14
  %4 = ptrtoint ptr %is_atom_bios to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %is_atom_bios, align 4, !range !64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @radeon_atom_output_lock(ptr noundef %encoder, i1 noundef zeroext true) #8
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @radeon_combios_output_lock(ptr noundef %encoder, i1 noundef zeroext true) #8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %6 = ptrtoint ptr %encoder to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %encoder, align 4
  %dev_private.i = getelementptr inbounds %struct.drm_device, ptr %7, i32 0, i32 5
  %8 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev_private.i, align 4
  %rmmio.i.i = getelementptr inbounds %struct.radeon_device, ptr %9, i32 0, i32 31
  %10 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %11, i32 644
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #8, !srcloc !62
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !63
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.6) #8
  %13 = and i32 %12, -83886081
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !65
  tail call void @arm_heavy_mb() #8
  %14 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i18.i = getelementptr i8, ptr %15, i32 644
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i18.i, i32 %13) #8, !srcloc !66
  %is_atom_bios.i = getelementptr inbounds %struct.radeon_device, ptr %9, i32 0, i32 14
  %16 = ptrtoint ptr %is_atom_bios.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %is_atom_bios.i, align 4, !range !64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool.not.i = icmp eq i8 %17, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @radeon_atombios_encoder_dpms_scratch_regs(ptr noundef %encoder, i1 noundef zeroext false) #8
  br label %radeon_legacy_tmds_int_dpms.exit

if.else.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @radeon_combios_encoder_dpms_scratch_regs(ptr noundef %encoder, i1 noundef zeroext false) #8
  br label %radeon_legacy_tmds_int_dpms.exit

radeon_legacy_tmds_int_dpms.exit:                 ; preds = %if.else.i, %if.then.i
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @radeon_legacy_tmds_int_commit(ptr noundef %encoder) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %encoder to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %encoder, align 4
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_private, align 4
  %rmmio.i.i = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 31
  %4 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %5, i32 644
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #8, !srcloc !62
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !63
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.6) #8
  %7 = or i32 %6, 83886080
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !65
  tail call void @arm_heavy_mb() #8
  %8 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i18.i = getelementptr i8, ptr %9, i32 644
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i18.i, i32 %7) #8, !srcloc !66
  %is_atom_bios.i = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 14
  %10 = ptrtoint ptr %is_atom_bios.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %is_atom_bios.i, align 4, !range !64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.not.i = icmp eq i8 %11, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @radeon_atombios_encoder_dpms_scratch_regs(ptr noundef %encoder, i1 noundef zeroext true) #8
  br label %radeon_legacy_tmds_int_dpms.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @radeon_combios_encoder_dpms_scratch_regs(ptr noundef %encoder, i1 noundef zeroext true) #8
  br label %radeon_legacy_tmds_int_dpms.exit

radeon_legacy_tmds_int_dpms.exit:                 ; preds = %if.else.i, %if.then.i
  %12 = ptrtoint ptr %is_atom_bios.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %is_atom_bios.i, align 4, !range !64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool.not = icmp eq i8 %13, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %radeon_legacy_tmds_int_dpms.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @radeon_atom_output_lock(ptr noundef %encoder, i1 noundef zeroext true) #8
  br label %if.end

if.else:                                          ; preds = %radeon_legacy_tmds_int_dpms.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @radeon_combios_output_lock(ptr noundef %encoder, i1 noundef zeroext true) #8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @radeon_legacy_tmds_int_mode_set(ptr noundef %encoder, ptr nocapture noundef readonly %mode, ptr nocapture noundef readnone %adjusted_mode) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %encoder to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %encoder, align 4
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_private, align 4
  %crtc = getelementptr inbounds %struct.drm_encoder, ptr %encoder, i32 0, i32 8
  %4 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %crtc, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.6) #8
  %rmmio.i = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 31
  %6 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %7, i32 680
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !62
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !63
  %and = and i32 %9, 1048575
  %family = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 6
  %10 = ptrtoint ptr %family to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %family, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %11)
  %cmp = icmp eq i32 %11, 8
  %xor274 = or i32 %and, 4194304
  %xor6 = xor i32 %9, 4194304
  %tmp5.0 = select i1 %cmp, i32 %xor274, i32 %and
  %tmds_pll_cntl.0 = select i1 %cmp, i32 %xor6, i32 %9
  %enc_priv = getelementptr inbounds %struct.radeon_encoder, ptr %encoder, i32 0, i32 12
  %12 = ptrtoint ptr %enc_priv to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %enc_priv, align 4
  %tobool.not = icmp eq ptr %13, null
  br i1 %tobool.not, label %entry.if.end21_crit_edge, label %for.body.preheader

entry.if.end21_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end21

for.body.preheader:                               ; preds = %entry
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %13, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp10 = icmp eq i32 %15, 0
  br i1 %cmp10, label %for.body.preheader.if.end21_crit_edge, label %if.end12

for.body.preheader.if.end21_crit_edge:            ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end21

if.end12:                                         ; preds = %for.body.preheader
  %16 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %mode, align 4
  %div = sdiv i32 %17, 10
  call void @__sanitizer_cov_trace_cmp4(i32 %div, i32 %15)
  %cmp16 = icmp ult i32 %div, %15
  br i1 %cmp16, label %if.end12.if.then17_crit_edge, label %for.inc

if.end12.if.then17_crit_edge:                     ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then17

if.then17:                                        ; preds = %if.end12.3.if.then17_crit_edge, %if.end12.2.if.then17_crit_edge, %if.end12.1.if.then17_crit_edge, %if.end12.if.then17_crit_edge
  %i.0296.lcssa297 = phi i32 [ 0, %if.end12.if.then17_crit_edge ], [ 1, %if.end12.1.if.then17_crit_edge ], [ 2, %if.end12.2.if.then17_crit_edge ], [ 3, %if.end12.3.if.then17_crit_edge ]
  %value = getelementptr [4 x %struct.radeon_tmds_pll], ptr %13, i32 0, i32 %i.0296.lcssa297, i32 1
  %18 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %value, align 4
  br label %if.end21

for.inc:                                          ; preds = %if.end12
  %arrayidx.1 = getelementptr [4 x %struct.radeon_tmds_pll], ptr %13, i32 0, i32 1
  %20 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp10.1 = icmp eq i32 %21, 0
  br i1 %cmp10.1, label %for.inc.if.end21_crit_edge, label %if.end12.1

for.inc.if.end21_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end21

if.end12.1:                                       ; preds = %for.inc
  %22 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %mode, align 4
  %div.1 = sdiv i32 %23, 10
  call void @__sanitizer_cov_trace_cmp4(i32 %div.1, i32 %21)
  %cmp16.1 = icmp ult i32 %div.1, %21
  br i1 %cmp16.1, label %if.end12.1.if.then17_crit_edge, label %for.inc.1

if.end12.1.if.then17_crit_edge:                   ; preds = %if.end12.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then17

for.inc.1:                                        ; preds = %if.end12.1
  %arrayidx.2 = getelementptr [4 x %struct.radeon_tmds_pll], ptr %13, i32 0, i32 2
  %24 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx.2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp10.2 = icmp eq i32 %25, 0
  br i1 %cmp10.2, label %for.inc.1.if.end21_crit_edge, label %if.end12.2

for.inc.1.if.end21_crit_edge:                     ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end21

if.end12.2:                                       ; preds = %for.inc.1
  %26 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %mode, align 4
  %div.2 = sdiv i32 %27, 10
  call void @__sanitizer_cov_trace_cmp4(i32 %div.2, i32 %25)
  %cmp16.2 = icmp ult i32 %div.2, %25
  br i1 %cmp16.2, label %if.end12.2.if.then17_crit_edge, label %for.inc.2

if.end12.2.if.then17_crit_edge:                   ; preds = %if.end12.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then17

for.inc.2:                                        ; preds = %if.end12.2
  %arrayidx.3 = getelementptr [4 x %struct.radeon_tmds_pll], ptr %13, i32 0, i32 3
  %28 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx.3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %cmp10.3 = icmp eq i32 %29, 0
  br i1 %cmp10.3, label %for.inc.2.if.end21_crit_edge, label %if.end12.3

for.inc.2.if.end21_crit_edge:                     ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end21

if.end12.3:                                       ; preds = %for.inc.2
  %30 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %mode, align 4
  %div.3 = sdiv i32 %31, 10
  call void @__sanitizer_cov_trace_cmp4(i32 %div.3, i32 %29)
  %cmp16.3 = icmp ult i32 %div.3, %29
  br i1 %cmp16.3, label %if.end12.3.if.then17_crit_edge, label %if.end12.3.if.end21_crit_edge

if.end12.3.if.end21_crit_edge:                    ; preds = %if.end12.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end21

if.end12.3.if.then17_crit_edge:                   ; preds = %if.end12.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then17

if.end21:                                         ; preds = %if.end12.3.if.end21_crit_edge, %for.inc.2.if.end21_crit_edge, %for.inc.1.if.end21_crit_edge, %for.inc.if.end21_crit_edge, %if.then17, %for.body.preheader.if.end21_crit_edge, %entry.if.end21_crit_edge
  %tmp5.2 = phi i32 [ %tmp5.0, %entry.if.end21_crit_edge ], [ %19, %if.then17 ], [ %tmp5.0, %if.end12.3.if.end21_crit_edge ], [ %tmp5.0, %for.inc.2.if.end21_crit_edge ], [ %tmp5.0, %for.inc.1.if.end21_crit_edge ], [ %tmp5.0, %for.inc.if.end21_crit_edge ], [ %tmp5.0, %for.body.preheader.if.end21_crit_edge ]
  %.off = add i32 %11, -8
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %.off)
  %switch = icmp ult i32 %.off, 10
  call void @__sanitizer_cov_trace_const_cmp4(i32 1048576, i32 %tmp5.2)
  %tobool52.not = icmp ult i32 %tmp5.2, 1048576
  %or.cond = select i1 %switch, i1 %tobool52.not, i1 false
  %and54 = and i32 %tmds_pll_cntl.0, -1048576
  %or = select i1 %or.cond, i32 %and54, i32 0
  %tmds_pll_cntl.1 = or i32 %or, %tmp5.2
  %32 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i278 = getelementptr i8, ptr %33, i32 676
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i278) #8, !srcloc !62
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !63
  %35 = and i32 %34, -50331649
  %36 = tail call i32 @llvm.bswap.i32(i32 %35)
  %37 = ptrtoint ptr %family to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %family, align 4
  %39 = zext i32 %38 to i64
  call void @__sanitizer_cov_trace_switch(i64 %39, ptr @__sancov_gen_cov_switch_values.17)
  switch i32 %38, label %if.else94 [
    i32 5, label %if.end21.if.end96_crit_edge
    i32 0, label %if.end21.if.end96_crit_edge298
    i32 9, label %if.end21.if.end96_crit_edge299
    i32 11, label %if.end21.if.end96_crit_edge300
    i32 10, label %if.end21.if.end96_crit_edge301
    i32 12, label %if.end21.if.end96_crit_edge302
    i32 13, label %if.end21.if.end96_crit_edge303
    i32 14, label %if.end21.if.end96_crit_edge304
    i32 15, label %if.end21.if.end96_crit_edge305
    i32 16, label %if.end21.if.end96_crit_edge306
    i32 17, label %if.end21.if.end96_crit_edge307
  ]

if.end21.if.end96_crit_edge307:                   ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end96

if.end21.if.end96_crit_edge306:                   ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end96

if.end21.if.end96_crit_edge305:                   ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end96

if.end21.if.end96_crit_edge304:                   ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end96

if.end21.if.end96_crit_edge303:                   ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end96

if.end21.if.end96_crit_edge302:                   ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end96

if.end21.if.end96_crit_edge301:                   ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end96

if.end21.if.end96_crit_edge300:                   ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end96

if.end21.if.end96_crit_edge299:                   ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end96

if.end21.if.end96_crit_edge298:                   ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end96

if.end21.if.end96_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end96

if.else94:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #10
  %or95 = or i32 %36, 1
  br label %if.end96

if.end96:                                         ; preds = %if.else94, %if.end21.if.end96_crit_edge, %if.end21.if.end96_crit_edge298, %if.end21.if.end96_crit_edge299, %if.end21.if.end96_crit_edge300, %if.end21.if.end96_crit_edge301, %if.end21.if.end96_crit_edge302, %if.end21.if.end96_crit_edge303, %if.end21.if.end96_crit_edge304, %if.end21.if.end96_crit_edge305, %if.end21.if.end96_crit_edge306, %if.end21.if.end96_crit_edge307
  %tmds_transmitter_cntl.0 = phi i32 [ %or95, %if.else94 ], [ %36, %if.end21.if.end96_crit_edge ], [ %36, %if.end21.if.end96_crit_edge298 ], [ %36, %if.end21.if.end96_crit_edge299 ], [ %36, %if.end21.if.end96_crit_edge300 ], [ %36, %if.end21.if.end96_crit_edge301 ], [ %36, %if.end21.if.end96_crit_edge302 ], [ %36, %if.end21.if.end96_crit_edge303 ], [ %36, %if.end21.if.end96_crit_edge304 ], [ %36, %if.end21.if.end96_crit_edge305 ], [ %36, %if.end21.if.end96_crit_edge306 ], [ %36, %if.end21.if.end96_crit_edge307 ]
  %40 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i282 = getelementptr i8, ptr %41, i32 644
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i282) #8, !srcloc !62
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !63
  %43 = and i32 %42, -218167046
  %44 = tail call i32 @llvm.bswap.i32(i32 %43)
  %or101 = or i32 %44, 196616
  %crtc_id = getelementptr inbounds %struct.radeon_crtc, ptr %5, i32 0, i32 1
  %45 = ptrtoint ptr %crtc_id to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %crtc_id, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %cmp102 = icmp eq i32 %46, 0
  %47 = ptrtoint ptr %family to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %family, align 4
  br i1 %cmp102, label %if.then103, label %if.else144

if.then103:                                       ; preds = %if.end96
  %49 = zext i32 %48 to i64
  call void @__sanitizer_cov_trace_switch(i64 %49, ptr @__sancov_gen_cov_switch_values.18)
  switch i32 %48, label %if.else141 [
    i32 9, label %if.then103.if.then133_crit_edge
    i32 11, label %if.then103.if.then133_crit_edge308
    i32 10, label %if.then103.if.then133_crit_edge309
    i32 12, label %if.then103.if.then133_crit_edge310
    i32 13, label %if.then103.if.then133_crit_edge311
    i32 14, label %if.then103.if.then133_crit_edge312
    i32 15, label %if.then103.if.then133_crit_edge313
    i32 16, label %if.then103.if.then133_crit_edge314
    i32 17, label %if.then103.if.then133_crit_edge315
    i32 5, label %if.then103.if.then133_crit_edge316
  ]

if.then103.if.then133_crit_edge316:               ; preds = %if.then103
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then133

if.then103.if.then133_crit_edge315:               ; preds = %if.then103
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then133

if.then103.if.then133_crit_edge314:               ; preds = %if.then103
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then133

if.then103.if.then133_crit_edge313:               ; preds = %if.then103
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then133

if.then103.if.then133_crit_edge312:               ; preds = %if.then103
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then133

if.then103.if.then133_crit_edge311:               ; preds = %if.then103
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then133

if.then103.if.then133_crit_edge310:               ; preds = %if.then103
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then133

if.then103.if.then133_crit_edge309:               ; preds = %if.then103
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then133

if.then103.if.then133_crit_edge308:               ; preds = %if.then103
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then133

if.then103.if.then133_crit_edge:                  ; preds = %if.then103
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then133

if.then133:                                       ; preds = %if.then103.if.then133_crit_edge, %if.then103.if.then133_crit_edge308, %if.then103.if.then133_crit_edge309, %if.then103.if.then133_crit_edge310, %if.then103.if.then133_crit_edge311, %if.then103.if.then133_crit_edge312, %if.then103.if.then133_crit_edge313, %if.then103.if.then133_crit_edge314, %if.then103.if.then133_crit_edge315, %if.then103.if.then133_crit_edge316
  %and134 = and i32 %or101, -99879942
  %rmx_type = getelementptr inbounds %struct.radeon_encoder, ptr %encoder, i32 0, i32 7
  %50 = ptrtoint ptr %rmx_type to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %rmx_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %cmp135.not = icmp eq i32 %51, 0
  %or137 = or i32 %and134, 2048
  %spec.select = select i1 %cmp135.not, i32 %and134, i32 %or137
  br label %if.end180

if.else141:                                       ; preds = %if.then103
  call void @__sanitizer_cov_trace_pc() #10
  %and142 = and i32 %or101, -99885062
  br label %if.end180

if.else144:                                       ; preds = %if.end96
  %52 = zext i32 %48 to i64
  call void @__sanitizer_cov_trace_switch(i64 %52, ptr @__sancov_gen_cov_switch_values.19)
  switch i32 %48, label %if.else177 [
    i32 9, label %if.else144.if.then174_crit_edge
    i32 11, label %if.else144.if.then174_crit_edge317
    i32 10, label %if.else144.if.then174_crit_edge318
    i32 12, label %if.else144.if.then174_crit_edge319
    i32 13, label %if.else144.if.then174_crit_edge320
    i32 14, label %if.else144.if.then174_crit_edge321
    i32 15, label %if.else144.if.then174_crit_edge322
    i32 16, label %if.else144.if.then174_crit_edge323
    i32 17, label %if.else144.if.then174_crit_edge324
    i32 5, label %if.else144.if.then174_crit_edge325
  ]

if.else144.if.then174_crit_edge325:               ; preds = %if.else144
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then174

if.else144.if.then174_crit_edge324:               ; preds = %if.else144
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then174

if.else144.if.then174_crit_edge323:               ; preds = %if.else144
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then174

if.else144.if.then174_crit_edge322:               ; preds = %if.else144
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then174

if.else144.if.then174_crit_edge321:               ; preds = %if.else144
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then174

if.else144.if.then174_crit_edge320:               ; preds = %if.else144
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then174

if.else144.if.then174_crit_edge319:               ; preds = %if.else144
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then174

if.else144.if.then174_crit_edge318:               ; preds = %if.else144
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then174

if.else144.if.then174_crit_edge317:               ; preds = %if.else144
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then174

if.else144.if.then174_crit_edge:                  ; preds = %if.else144
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then174

if.then174:                                       ; preds = %if.else144.if.then174_crit_edge, %if.else144.if.then174_crit_edge317, %if.else144.if.then174_crit_edge318, %if.else144.if.then174_crit_edge319, %if.else144.if.then174_crit_edge320, %if.else144.if.then174_crit_edge321, %if.else144.if.then174_crit_edge322, %if.else144.if.then174_crit_edge323, %if.else144.if.then174_crit_edge324, %if.else144.if.then174_crit_edge325
  %and175 = and i32 %or101, -99879942
  %or176 = or i32 %and175, 1024
  br label %if.end180

if.else177:                                       ; preds = %if.else144
  call void @__sanitizer_cov_trace_pc() #10
  %or178 = or i32 %44, 204808
  br label %if.end180

if.end180:                                        ; preds = %if.else177, %if.then174, %if.else141, %if.then133
  %fp_gen_cntl.0 = phi i32 [ %and142, %if.else141 ], [ %or176, %if.then174 ], [ %or178, %if.else177 ], [ %spec.select, %if.then133 ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !65
  tail call void @arm_heavy_mb() #8
  %53 = tail call i32 @llvm.bswap.i32(i32 %tmds_pll_cntl.1) #8
  %54 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i286 = getelementptr i8, ptr %55, i32 680
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i286, i32 %53) #8, !srcloc !66
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !65
  tail call void @arm_heavy_mb() #8
  %56 = tail call i32 @llvm.bswap.i32(i32 %tmds_transmitter_cntl.0) #8
  %57 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i290 = getelementptr i8, ptr %58, i32 676
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i290, i32 %56) #8, !srcloc !66
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !65
  tail call void @arm_heavy_mb() #8
  %59 = tail call i32 @llvm.bswap.i32(i32 %fp_gen_cntl.0) #8
  %60 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i294 = getelementptr i8, ptr %61, i32 644
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i294, i32 %59) #8, !srcloc !66
  %is_atom_bios = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 14
  %62 = ptrtoint ptr %is_atom_bios to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %is_atom_bios, align 4, !range !64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %63)
  %tobool181.not = icmp eq i8 %63, 0
  %64 = ptrtoint ptr %crtc_id to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %crtc_id, align 8
  br i1 %tobool181.not, label %if.else184, label %if.then182

if.then182:                                       ; preds = %if.end180
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @radeon_atombios_encoder_crtc_scratch_regs(ptr noundef %encoder, i32 noundef %65) #8
  br label %if.end186

if.else184:                                       ; preds = %if.end180
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @radeon_combios_encoder_crtc_scratch_regs(ptr noundef %encoder, i32 noundef %65) #8
  br label %if.end186

if.end186:                                        ; preds = %if.else184, %if.then182
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @radeon_atombios_get_tmds_info(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @radeon_legacy_get_tmds_info_from_combios(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @radeon_legacy_get_tmds_info_from_table(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @radeon_legacy_primary_dac_dpms(ptr noundef %encoder, i32 noundef %mode) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %encoder to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %encoder, align 4
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_private, align 4
  %rmmio.i = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 31
  %4 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 84
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !62
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !63
  %8 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i37 = getelementptr i8, ptr %9, i32 88
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i37) #8, !srcloc !62
  %11 = tail call i32 @llvm.bswap.i32(i32 %10) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !63
  %12 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i41 = getelementptr i8, ptr %13, i32 3332
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i41) #8, !srcloc !62
  %15 = tail call i32 @llvm.bswap.i32(i32 %14) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !63
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.6) #8
  %16 = zext i32 %mode to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.20)
  switch i32 %mode, label %entry.sw.epilog_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %entry.sw.bb5_crit_edge
    i32 2, label %entry.sw.bb5_crit_edge54
    i32 3, label %entry.sw.bb5_crit_edge55
  ]

entry.sw.bb5_crit_edge55:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb5

entry.sw.bb5_crit_edge54:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb5

entry.sw.bb5_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb5

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %or = or i32 %7, 32768
  %and = and i32 %11, -32769
  %and4 = and i32 %15, -458753
  br label %sw.epilog

sw.bb5:                                           ; preds = %entry.sw.bb5_crit_edge, %entry.sw.bb5_crit_edge54, %entry.sw.bb5_crit_edge55
  %and6 = and i32 %7, -32769
  %or7 = or i32 %11, 32768
  %or8 = or i32 %15, 458752
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb5, %sw.bb, %entry.sw.epilog_crit_edge
  %crtc_ext_cntl.0 = phi i32 [ %7, %entry.sw.epilog_crit_edge ], [ %and6, %sw.bb5 ], [ %or, %sw.bb ]
  %dac_cntl.0 = phi i32 [ %11, %entry.sw.epilog_crit_edge ], [ %or7, %sw.bb5 ], [ %and, %sw.bb ]
  %dac_macro_cntl.0 = phi i32 [ %15, %entry.sw.epilog_crit_edge ], [ %or8, %sw.bb5 ], [ %and4, %sw.bb ]
  %flags = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 7
  %17 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %flags, align 8
  %and9 = and i32 %18, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool.not = icmp eq i32 %and9, 0
  br i1 %tobool.not, label %if.then, label %sw.epilog.if.end_crit_edge

sw.epilog.if.end_crit_edge:                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !65
  tail call void @arm_heavy_mb() #8
  %19 = tail call i32 @llvm.bswap.i32(i32 %crtc_ext_cntl.0) #8
  %20 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i45 = getelementptr i8, ptr %21, i32 84
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i45, i32 %19) #8, !srcloc !66
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.epilog.if.end_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !65
  tail call void @arm_heavy_mb() #8
  %22 = tail call i32 @llvm.bswap.i32(i32 %dac_cntl.0) #8
  %23 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i49 = getelementptr i8, ptr %24, i32 88
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i49, i32 %22) #8, !srcloc !66
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !65
  tail call void @arm_heavy_mb() #8
  %25 = tail call i32 @llvm.bswap.i32(i32 %dac_macro_cntl.0) #8
  %26 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i53 = getelementptr i8, ptr %27, i32 3332
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i53, i32 %25) #8, !srcloc !66
  %is_atom_bios = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 14
  %28 = ptrtoint ptr %is_atom_bios to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %is_atom_bios, align 4, !range !64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool10.not = icmp eq i8 %29, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mode)
  %cmp13 = icmp eq i32 %mode, 0
  br i1 %tobool10.not, label %if.else, label %if.then11

if.then11:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @radeon_atombios_encoder_dpms_scratch_regs(ptr noundef %encoder, i1 noundef zeroext %cmp13) #8
  br label %if.end16

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @radeon_combios_encoder_dpms_scratch_regs(ptr noundef %encoder, i1 noundef zeroext %cmp13) #8
  br label %if.end16

if.end16:                                         ; preds = %if.else, %if.then11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @radeon_legacy_primary_dac_prepare(ptr noundef %encoder) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %encoder to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %encoder, align 4
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_private, align 4
  %is_atom_bios = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 14
  %4 = ptrtoint ptr %is_atom_bios to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %is_atom_bios, align 4, !range !64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @radeon_atom_output_lock(ptr noundef %encoder, i1 noundef zeroext true) #8
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @radeon_combios_output_lock(ptr noundef %encoder, i1 noundef zeroext true) #8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  tail call void @radeon_legacy_primary_dac_dpms(ptr noundef %encoder, i32 noundef 3)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @radeon_legacy_primary_dac_commit(ptr noundef %encoder) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %encoder to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %encoder, align 4
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_private, align 4
  tail call void @radeon_legacy_primary_dac_dpms(ptr noundef %encoder, i32 noundef 0)
  %is_atom_bios = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 14
  %4 = ptrtoint ptr %is_atom_bios to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %is_atom_bios, align 4, !range !64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @radeon_atom_output_lock(ptr noundef %encoder, i1 noundef zeroext false) #8
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @radeon_combios_output_lock(ptr noundef %encoder, i1 noundef zeroext false) #8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @radeon_legacy_primary_dac_mode_set(ptr noundef %encoder, ptr nocapture noundef readnone %mode, ptr nocapture noundef readnone %adjusted_mode) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %encoder to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %encoder, align 4
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_private, align 4
  %crtc = getelementptr inbounds %struct.drm_encoder, ptr %encoder, i32 0, i32 8
  %4 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %crtc, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.6) #8
  %crtc_id = getelementptr inbounds %struct.radeon_crtc, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %crtc_id to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %crtc_id, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp = icmp eq i32 %7, 0
  %family = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 6
  %8 = ptrtoint ptr %family to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %family, align 4
  br i1 %cmp, label %if.then, label %if.else35

if.then:                                          ; preds = %entry
  %10 = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.21)
  switch i32 %9, label %if.else [
    i32 5, label %if.then.if.then32_crit_edge
    i32 9, label %if.then.if.then32_crit_edge180
    i32 11, label %if.then.if.then32_crit_edge181
    i32 10, label %if.then.if.then32_crit_edge182
    i32 12, label %if.then.if.then32_crit_edge183
    i32 13, label %if.then.if.then32_crit_edge184
    i32 14, label %if.then.if.then32_crit_edge185
    i32 15, label %if.then.if.then32_crit_edge186
    i32 16, label %if.then.if.then32_crit_edge187
    i32 17, label %if.then.if.then32_crit_edge188
  ]

if.then.if.then32_crit_edge188:                   ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then32

if.then.if.then32_crit_edge187:                   ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then32

if.then.if.then32_crit_edge186:                   ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then32

if.then.if.then32_crit_edge185:                   ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then32

if.then.if.then32_crit_edge184:                   ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then32

if.then.if.then32_crit_edge183:                   ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then32

if.then.if.then32_crit_edge182:                   ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then32

if.then.if.then32_crit_edge181:                   ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then32

if.then.if.then32_crit_edge180:                   ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then32

if.then.if.then32_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then32

if.then32:                                        ; preds = %if.then.if.then32_crit_edge, %if.then.if.then32_crit_edge180, %if.then.if.then32_crit_edge181, %if.then.if.then32_crit_edge182, %if.then.if.then32_crit_edge183, %if.then.if.then32_crit_edge184, %if.then.if.then32_crit_edge185, %if.then.if.then32_crit_edge186, %if.then.if.then32_crit_edge187, %if.then.if.then32_crit_edge188
  %rmmio.i = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 31
  %11 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %12, i32 3428
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !62
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !63
  %14 = and i32 %13, -50331649
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !65
  tail call void @arm_heavy_mb() #8
  %15 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i139 = getelementptr i8, ptr %16, i32 3428
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i139, i32 %14) #8, !srcloc !66
  br label %if.end72

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %rmmio.i142 = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 31
  %17 = ptrtoint ptr %rmmio.i142 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %rmmio.i142, align 4
  %add.ptr.i143 = getelementptr i8, ptr %18, i32 124
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i143) #8, !srcloc !62
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !63
  %20 = and i32 %19, -16777217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !65
  tail call void @arm_heavy_mb() #8
  %21 = ptrtoint ptr %rmmio.i142 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %rmmio.i142, align 4
  %add.ptr.i147 = getelementptr i8, ptr %22, i32 124
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i147, i32 %20) #8, !srcloc !66
  br label %if.end72

if.else35:                                        ; preds = %entry
  %23 = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %23, ptr @__sancov_gen_cov_switch_values.22)
  switch i32 %9, label %if.else68 [
    i32 5, label %if.else35.if.then65_crit_edge
    i32 9, label %if.else35.if.then65_crit_edge189
    i32 11, label %if.else35.if.then65_crit_edge190
    i32 10, label %if.else35.if.then65_crit_edge191
    i32 12, label %if.else35.if.then65_crit_edge192
    i32 13, label %if.else35.if.then65_crit_edge193
    i32 14, label %if.else35.if.then65_crit_edge194
    i32 15, label %if.else35.if.then65_crit_edge195
    i32 16, label %if.else35.if.then65_crit_edge196
    i32 17, label %if.else35.if.then65_crit_edge197
  ]

if.else35.if.then65_crit_edge197:                 ; preds = %if.else35
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then65

if.else35.if.then65_crit_edge196:                 ; preds = %if.else35
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then65

if.else35.if.then65_crit_edge195:                 ; preds = %if.else35
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then65

if.else35.if.then65_crit_edge194:                 ; preds = %if.else35
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then65

if.else35.if.then65_crit_edge193:                 ; preds = %if.else35
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then65

if.else35.if.then65_crit_edge192:                 ; preds = %if.else35
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then65

if.else35.if.then65_crit_edge191:                 ; preds = %if.else35
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then65

if.else35.if.then65_crit_edge190:                 ; preds = %if.else35
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then65

if.else35.if.then65_crit_edge189:                 ; preds = %if.else35
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then65

if.else35.if.then65_crit_edge:                    ; preds = %if.else35
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then65

if.then65:                                        ; preds = %if.else35.if.then65_crit_edge, %if.else35.if.then65_crit_edge189, %if.else35.if.then65_crit_edge190, %if.else35.if.then65_crit_edge191, %if.else35.if.then65_crit_edge192, %if.else35.if.then65_crit_edge193, %if.else35.if.then65_crit_edge194, %if.else35.if.then65_crit_edge195, %if.else35.if.then65_crit_edge196, %if.else35.if.then65_crit_edge197
  %rmmio.i150 = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 31
  %24 = ptrtoint ptr %rmmio.i150 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %rmmio.i150, align 4
  %add.ptr.i151 = getelementptr i8, ptr %25, i32 3428
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i151) #8, !srcloc !62
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !63
  %27 = and i32 %26, -50331649
  %28 = or i32 %27, 16777216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !65
  tail call void @arm_heavy_mb() #8
  %29 = ptrtoint ptr %rmmio.i150 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %rmmio.i150, align 4
  %add.ptr.i155 = getelementptr i8, ptr %30, i32 3428
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i155, i32 %28) #8, !srcloc !66
  br label %if.end72

if.else68:                                        ; preds = %if.else35
  call void @__sanitizer_cov_trace_pc() #10
  %rmmio.i158 = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 31
  %31 = ptrtoint ptr %rmmio.i158 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %rmmio.i158, align 4
  %add.ptr.i159 = getelementptr i8, ptr %32, i32 124
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i159) #8, !srcloc !62
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !63
  %34 = or i32 %33, 16777216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !65
  tail call void @arm_heavy_mb() #8
  %35 = ptrtoint ptr %rmmio.i158 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %rmmio.i158, align 4
  %add.ptr.i163 = getelementptr i8, ptr %36, i32 124
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i163, i32 %34) #8, !srcloc !66
  br label %if.end72

if.end72:                                         ; preds = %if.else68, %if.then65, %if.else, %if.then32
  %rmmio.i166 = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 31
  %37 = ptrtoint ptr %rmmio.i166 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %rmmio.i166, align 4
  %add.ptr.i167 = getelementptr i8, ptr %38, i32 88
  %39 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i167) #8, !srcloc !62
  %40 = lshr i32 %39, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !63
  %and74 = and i32 %40, 7
  %or76 = or i32 %and74, -16768768
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !65
  tail call void @arm_heavy_mb() #8
  %41 = tail call i32 @llvm.bswap.i32(i32 %or76) #8
  %42 = ptrtoint ptr %rmmio.i166 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %rmmio.i166, align 4
  %add.ptr.i171 = getelementptr i8, ptr %43, i32 88
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i171, i32 %41) #8, !srcloc !66
  %enc_priv = getelementptr inbounds %struct.radeon_encoder, ptr %encoder, i32 0, i32 12
  %44 = ptrtoint ptr %enc_priv to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %enc_priv, align 4
  %tobool.not = icmp eq ptr %45, null
  br i1 %tobool.not, label %if.else79, label %if.then77

if.then77:                                        ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #10
  %46 = ptrtoint ptr %45 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %45, align 4
  br label %if.end81

if.else79:                                        ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #10
  %48 = ptrtoint ptr %rmmio.i166 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %rmmio.i166, align 4
  %add.ptr.i175 = getelementptr i8, ptr %49, i32 3332
  %50 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i175) #8, !srcloc !62
  %51 = tail call i32 @llvm.bswap.i32(i32 %50) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !63
  br label %if.end81

if.end81:                                         ; preds = %if.else79, %if.then77
  %dac_macro_cntl.0 = phi i32 [ %47, %if.then77 ], [ %51, %if.else79 ]
  %or82 = or i32 %dac_macro_cntl.0, 458752
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !65
  tail call void @arm_heavy_mb() #8
  %52 = tail call i32 @llvm.bswap.i32(i32 %or82) #8
  %53 = ptrtoint ptr %rmmio.i166 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %rmmio.i166, align 4
  %add.ptr.i179 = getelementptr i8, ptr %54, i32 3332
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i179, i32 %52) #8, !srcloc !66
  %is_atom_bios = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 14
  %55 = ptrtoint ptr %is_atom_bios to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %is_atom_bios, align 4, !range !64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %56)
  %tobool83.not = icmp eq i8 %56, 0
  %57 = ptrtoint ptr %crtc_id to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %crtc_id, align 8
  br i1 %tobool83.not, label %if.else86, label %if.then84

if.then84:                                        ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @radeon_atombios_encoder_crtc_scratch_regs(ptr noundef %encoder, i32 noundef %58) #8
  br label %if.end88

if.else86:                                        ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @radeon_combios_encoder_crtc_scratch_regs(ptr noundef %encoder, i32 noundef %58) #8
  br label %if.end88

if.end88:                                         ; preds = %if.else86, %if.then84
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @radeon_legacy_primary_dac_detect(ptr nocapture noundef readonly %encoder, ptr nocapture noundef readnone %connector) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %encoder to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %encoder, align 4
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_private, align 4
  %pdev = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pdev, align 8
  %device = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 8
  %6 = ptrtoint ptr %device to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %device, align 2
  %8 = zext i16 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.23)
  switch i16 %7, label %if.end [
    i16 20830, label %entry.cleanup_crit_edge
    i16 22889, label %entry.cleanup_crit_edge203
  ]

entry.cleanup_crit_edge203:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %pll_rreg = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 34
  %9 = ptrtoint ptr %pll_rreg to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pll_rreg, align 8
  %call = tail call i32 %10(ptr noundef %3, i32 noundef 8) #8
  %rmmio.i = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 31
  %11 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %12, i32 84
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !62
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !63
  %14 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i158 = getelementptr i8, ptr %15, i32 640
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i158) #8, !srcloc !62
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !63
  %17 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i162 = getelementptr i8, ptr %18, i32 88
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i162) #8, !srcloc !62
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !63
  %20 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i166 = getelementptr i8, ptr %21, i32 3332
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i166) #8, !srcloc !62
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !63
  %and = and i32 %call, -193
  %pll_wreg = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 35
  %23 = ptrtoint ptr %pll_wreg to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %pll_wreg, align 4
  tail call void %24(ptr noundef %3, i32 noundef 8, i32 noundef %and) #8
  %25 = or i32 %13, 8388608
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !65
  tail call void @arm_heavy_mb() #8
  %26 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i170 = getelementptr i8, ptr %27, i32 84
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i170, i32 %25) #8, !srcloc !66
  %family = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 6
  %28 = ptrtoint ptr %family to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %family, align 4
  %switch.tableidx = add i32 %29, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %switch.tableidx)
  %30 = icmp ult i32 %switch.tableidx, 17
  br i1 %30, label %switch.lookup, label %if.end.if.end85_crit_edge

if.end.if.end85_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end85

switch.lookup:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %switch.gep = getelementptr inbounds [17 x i32], ptr @switch.table.radeon_legacy_primary_dac_detect, i32 0, i32 %switch.tableidx
  %31 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %31)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %if.end85

if.end85:                                         ; preds = %switch.lookup, %if.end.if.end85_crit_edge
  %tmp.1 = phi i32 [ %switch.load, %switch.lookup ], [ 98544, %if.end.if.end85_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !65
  tail call void @arm_heavy_mb() #8
  %32 = tail call i32 @llvm.bswap.i32(i32 %tmp.1) #8
  %33 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i174 = getelementptr i8, ptr %34, i32 640
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i174, i32 %32) #8, !srcloc !66
  %35 = and i32 %19, -192937985
  %36 = or i32 %35, 167772160
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !65
  tail call void @arm_heavy_mb() #8
  %37 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i178 = getelementptr i8, ptr %38, i32 88
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i178, i32 %36) #8, !srcloc !66
  %39 = and i32 %22, -1793
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !65
  tail call void @arm_heavy_mb() #8
  %40 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i182 = getelementptr i8, ptr %41, i32 3332
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i182, i32 %39) #8, !srcloc !66
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %42 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %42(i32 noundef 429496000) #8
  %43 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i186 = getelementptr i8, ptr %44, i32 88
  %45 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i186) #8, !srcloc !62
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !63
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %45)
  %tobool91.not = icmp sgt i32 %45, -1
  %spec.select = select i1 %tobool91.not, i32 2, i32 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !65
  tail call void @arm_heavy_mb() #8
  %46 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i190 = getelementptr i8, ptr %47, i32 88
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i190, i32 %19) #8, !srcloc !66
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !65
  tail call void @arm_heavy_mb() #8
  %48 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i194 = getelementptr i8, ptr %49, i32 3332
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i194, i32 %22) #8, !srcloc !66
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !65
  tail call void @arm_heavy_mb() #8
  %50 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i198 = getelementptr i8, ptr %51, i32 640
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i198, i32 %16) #8, !srcloc !66
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !65
  tail call void @arm_heavy_mb() #8
  %52 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i202 = getelementptr i8, ptr %53, i32 84
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i202, i32 %13) #8, !srcloc !66
  %54 = ptrtoint ptr %pll_wreg to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %pll_wreg, align 4
  tail call void %55(ptr noundef %3, i32 noundef 8, i32 noundef %call) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end85, %entry.cleanup_crit_edge, %entry.cleanup_crit_edge203
  %retval.0 = phi i32 [ %spec.select, %if.end85 ], [ 1, %entry.cleanup_crit_edge ], [ 1, %entry.cleanup_crit_edge203 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @radeon_legacy_tv_dac_dpms(ptr noundef %encoder, i32 noundef %mode) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %encoder to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %encoder, align 4
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_private, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.6) #8
  %active_device = getelementptr inbounds %struct.radeon_encoder, ptr %encoder, i32 0, i32 4
  %4 = ptrtoint ptr %active_device to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %active_device, align 4
  %and = and i32 %5, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %family = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 6
  %6 = ptrtoint ptr %family to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %family, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %7)
  %cmp = icmp eq i32 %7, 5
  %rmmio.i = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 31
  %8 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %rmmio.i, align 4
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr.i = getelementptr i8, ptr %9, i32 648
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !62
  %11 = tail call i32 @llvm.bswap.i32(i32 %10) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !63
  br label %if.end9

if.else:                                          ; preds = %entry
  br i1 %tobool.not, label %if.else6, label %if.then4

if.then4:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr.i125 = getelementptr i8, ptr %9, i32 2048
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i125) #8, !srcloc !62
  %13 = tail call i32 @llvm.bswap.i32(i32 %12) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !63
  br label %if.end

if.else6:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr.i129 = getelementptr i8, ptr %9, i32 1016
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i129) #8, !srcloc !62
  %15 = tail call i32 @llvm.bswap.i32(i32 %14) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !63
  br label %if.end

if.end:                                           ; preds = %if.else6, %if.then4
  %crtc2_gen_cntl.0 = phi i32 [ 0, %if.then4 ], [ %15, %if.else6 ]
  %tv_master_cntl.0 = phi i32 [ %13, %if.then4 ], [ 0, %if.else6 ]
  %rmmio.i132 = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 31
  %16 = ptrtoint ptr %rmmio.i132 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %rmmio.i132, align 4
  %add.ptr.i133 = getelementptr i8, ptr %17, i32 2188
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i133) #8, !srcloc !62
  %19 = tail call i32 @llvm.bswap.i32(i32 %18) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !63
  br label %if.end9

if.end9:                                          ; preds = %if.end, %if.then
  %fp2_gen_cntl.0 = phi i32 [ %11, %if.then ], [ 0, %if.end ]
  %crtc2_gen_cntl.1 = phi i32 [ 0, %if.then ], [ %crtc2_gen_cntl.0, %if.end ]
  %tv_dac_cntl.0 = phi i32 [ 0, %if.then ], [ %19, %if.end ]
  %tv_master_cntl.1 = phi i32 [ 0, %if.then ], [ %tv_master_cntl.0, %if.end ]
  %20 = zext i32 %mode to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values.24)
  switch i32 %mode, label %if.end9.sw.epilog_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %if.end9.sw.bb33_crit_edge
    i32 2, label %if.end9.sw.bb33_crit_edge156
    i32 3, label %if.end9.sw.bb33_crit_edge157
  ]

if.end9.sw.bb33_crit_edge157:                     ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb33

if.end9.sw.bb33_crit_edge156:                     ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb33

if.end9.sw.bb33_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb33

if.end9.sw.epilog_crit_edge:                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end9
  %21 = ptrtoint ptr %family to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %family, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %22)
  %cmp11 = icmp eq i32 %22, 5
  br i1 %cmp11, label %if.then12, label %if.else13

if.then12:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  %or = or i32 %fp2_gen_cntl.0, 33554436
  br label %if.then61

if.else13:                                        ; preds = %sw.bb
  %or18 = or i32 %crtc2_gen_cntl.1, 128
  %crtc2_gen_cntl.2 = select i1 %tobool.not, i32 %or18, i32 %crtc2_gen_cntl.1
  %23 = shl nuw i32 %and, 29
  %24 = or i32 %tv_master_cntl.1, %23
  %.off = add i32 %22, -13
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.off)
  %switch = icmp ult i32 %.off, 3
  br i1 %switch, label %if.then27, label %if.else29

if.then27:                                        ; preds = %if.else13
  call void @__sanitizer_cov_trace_pc() #10
  %and28 = and i32 %tv_dac_cntl.0, -234881089
  br label %sw.epilog

if.else29:                                        ; preds = %if.else13
  call void @__sanitizer_cov_trace_pc() #10
  %and30 = and i32 %tv_dac_cntl.0, -117440577
  br label %sw.epilog

sw.bb33:                                          ; preds = %if.end9.sw.bb33_crit_edge, %if.end9.sw.bb33_crit_edge156, %if.end9.sw.bb33_crit_edge157
  %25 = ptrtoint ptr %family to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %family, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %26)
  %cmp35 = icmp eq i32 %26, 5
  br i1 %cmp35, label %if.then36, label %if.else38

if.then36:                                        ; preds = %sw.bb33
  call void @__sanitizer_cov_trace_pc() #10
  %and37 = and i32 %fp2_gen_cntl.0, -33554437
  br label %if.then61

if.else38:                                        ; preds = %sw.bb33
  %and41 = and i32 %tv_master_cntl.1, 2147483647
  %and43 = and i32 %crtc2_gen_cntl.1, -129
  %crtc2_gen_cntl.3 = select i1 %tobool.not, i32 %and43, i32 %crtc2_gen_cntl.1
  %tv_master_cntl.3 = select i1 %tobool.not, i32 %tv_master_cntl.1, i32 %and41
  %.off120 = add i32 %26, -13
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.off120)
  %switch121 = icmp ult i32 %.off120, 3
  br i1 %switch121, label %if.then53, label %if.else55

if.then53:                                        ; preds = %if.else38
  call void @__sanitizer_cov_trace_pc() #10
  %or54 = or i32 %tv_dac_cntl.0, 234881088
  br label %sw.epilog

if.else55:                                        ; preds = %if.else38
  call void @__sanitizer_cov_trace_pc() #10
  %or56 = or i32 %tv_dac_cntl.0, 117440576
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.else55, %if.then53, %if.else29, %if.then27, %if.end9.sw.epilog_crit_edge
  %crtc2_gen_cntl.4.ph = phi i32 [ %crtc2_gen_cntl.2, %if.else29 ], [ %crtc2_gen_cntl.2, %if.then27 ], [ %crtc2_gen_cntl.3, %if.else55 ], [ %crtc2_gen_cntl.3, %if.then53 ], [ %crtc2_gen_cntl.1, %if.end9.sw.epilog_crit_edge ]
  %tv_dac_cntl.1.ph = phi i32 [ %and30, %if.else29 ], [ %and28, %if.then27 ], [ %or56, %if.else55 ], [ %or54, %if.then53 ], [ %tv_dac_cntl.0, %if.end9.sw.epilog_crit_edge ]
  %tv_master_cntl.4.ph = phi i32 [ %24, %if.else29 ], [ %24, %if.then27 ], [ %tv_master_cntl.3, %if.else55 ], [ %tv_master_cntl.3, %if.then53 ], [ %tv_master_cntl.1, %if.end9.sw.epilog_crit_edge ]
  %27 = ptrtoint ptr %family to i32
  call void @__asan_load4_noabort(i32 %27)
  %.pr = load i32, ptr %family, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %.pr)
  %cmp60 = icmp eq i32 %.pr, 5
  br i1 %cmp60, label %sw.epilog.if.then61_crit_edge, label %if.else62

sw.epilog.if.then61_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then61

if.then61:                                        ; preds = %sw.epilog.if.then61_crit_edge, %if.then36, %if.then12
  %fp2_gen_cntl.1155 = phi i32 [ %fp2_gen_cntl.0, %sw.epilog.if.then61_crit_edge ], [ %or, %if.then12 ], [ %and37, %if.then36 ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !65
  tail call void @arm_heavy_mb() #8
  %28 = tail call i32 @llvm.bswap.i32(i32 %fp2_gen_cntl.1155) #8
  %rmmio.i136 = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 31
  %29 = ptrtoint ptr %rmmio.i136 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %rmmio.i136, align 4
  %add.ptr.i137 = getelementptr i8, ptr %30, i32 648
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i137, i32 %28) #8, !srcloc !66
  br label %if.end71

if.else62:                                        ; preds = %sw.epilog
  br i1 %tobool.not, label %if.else65, label %if.then64

if.then64:                                        ; preds = %if.else62
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !65
  tail call void @arm_heavy_mb() #8
  %31 = tail call i32 @llvm.bswap.i32(i32 %tv_master_cntl.4.ph) #8
  %rmmio.i140 = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 31
  %32 = ptrtoint ptr %rmmio.i140 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %rmmio.i140, align 4
  %add.ptr.i141 = getelementptr i8, ptr %33, i32 2048
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i141, i32 %31) #8, !srcloc !66
  br label %if.end70

if.else65:                                        ; preds = %if.else62
  %flags = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 7
  %34 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %flags, align 8
  %and66 = and i32 %35, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and66)
  %tobool67.not = icmp eq i32 %and66, 0
  br i1 %tobool67.not, label %if.then68, label %if.else65.if.end70_crit_edge

if.else65.if.end70_crit_edge:                     ; preds = %if.else65
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end70

if.then68:                                        ; preds = %if.else65
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !65
  tail call void @arm_heavy_mb() #8
  %36 = tail call i32 @llvm.bswap.i32(i32 %crtc2_gen_cntl.4.ph) #8
  %rmmio.i144 = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 31
  %37 = ptrtoint ptr %rmmio.i144 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %rmmio.i144, align 4
  %add.ptr.i145 = getelementptr i8, ptr %38, i32 1016
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i145, i32 %36) #8, !srcloc !66
  br label %if.end70

if.end70:                                         ; preds = %if.then68, %if.else65.if.end70_crit_edge, %if.then64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !65
  tail call void @arm_heavy_mb() #8
  %39 = tail call i32 @llvm.bswap.i32(i32 %tv_dac_cntl.1.ph) #8
  %rmmio.i148 = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 31
  %40 = ptrtoint ptr %rmmio.i148 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %rmmio.i148, align 4
  %add.ptr.i149 = getelementptr i8, ptr %41, i32 2188
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i149, i32 %39) #8, !srcloc !66
  br label %if.end71

if.end71:                                         ; preds = %if.end70, %if.then61
  %is_atom_bios = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 14
  %42 = ptrtoint ptr %is_atom_bios to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %is_atom_bios, align 4, !range !64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %43)
  %tobool72.not = icmp eq i8 %43, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mode)
  %cmp78 = icmp eq i32 %mode, 0
  br i1 %tobool72.not, label %if.else77, label %if.then73

if.then73:                                        ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @radeon_atombios_encoder_dpms_scratch_regs(ptr noundef %encoder, i1 noundef zeroext %cmp78) #8
  br label %if.end81

if.else77:                                        ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @radeon_combios_encoder_dpms_scratch_regs(ptr noundef %encoder, i1 noundef zeroext %cmp78) #8
  br label %if.end81

if.end81:                                         ; preds = %if.else77, %if.then73
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @radeon_legacy_tv_dac_prepare(ptr noundef %encoder) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %encoder to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %encoder, align 4
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_private, align 4
  %is_atom_bios = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 14
  %4 = ptrtoint ptr %is_atom_bios to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %is_atom_bios, align 4, !range !64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @radeon_atom_output_lock(ptr noundef %encoder, i1 noundef zeroext true) #8
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @radeon_combios_output_lock(ptr noundef %encoder, i1 noundef zeroext true) #8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  tail call void @radeon_legacy_tv_dac_dpms(ptr noundef %encoder, i32 noundef 3)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @radeon_legacy_tv_dac_commit(ptr noundef %encoder) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %encoder to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %encoder, align 4
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_private, align 4
  tail call void @radeon_legacy_tv_dac_dpms(ptr noundef %encoder, i32 noundef 0)
  %is_atom_bios = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 14
  %4 = ptrtoint ptr %is_atom_bios to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %is_atom_bios, align 4, !range !64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @radeon_atom_output_lock(ptr noundef %encoder, i1 noundef zeroext true) #8
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @radeon_combios_output_lock(ptr noundef %encoder, i1 noundef zeroext true) #8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @radeon_legacy_tv_dac_mode_set(ptr noundef %encoder, ptr noundef %mode, ptr noundef %adjusted_mode) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %encoder to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %encoder, align 4
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_private, align 4
  %crtc = getelementptr inbounds %struct.drm_encoder, ptr %encoder, i32 0, i32 8
  %4 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %crtc, align 4
  %enc_priv = getelementptr inbounds %struct.radeon_encoder, ptr %encoder, i32 0, i32 12
  %6 = ptrtoint ptr %enc_priv to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %enc_priv, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.6) #8
  %active_device = getelementptr inbounds %struct.radeon_encoder, ptr %encoder, i32 0, i32 4
  %8 = ptrtoint ptr %active_device to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %active_device, align 4
  %and = and i32 %9, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %family = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 6
  %10 = ptrtoint ptr %family to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %family, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %11)
  %cmp.not = icmp eq i32 %11, 5
  br i1 %cmp.not, label %entry.if.then86_crit_edge, label %if.then

entry.if.then86_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then86

if.then:                                          ; preds = %entry
  %rmmio.i = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 31
  %12 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %13, i32 2188
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !62
  %15 = tail call i32 @llvm.bswap.i32(i32 %14) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !63
  %16 = ptrtoint ptr %family to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %family, align 4
  %.off = add i32 %17, -13
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.off)
  %switch = icmp ult i32 %.off, 3
  %tv_dac_cntl.0.v = select i1 %switch, i32 -536806148, i32 -134152964
  %tv_dac_cntl.0 = and i32 %tv_dac_cntl.0.v, %15
  %or = or i32 %tv_dac_cntl.0, 3
  br i1 %tobool.not, label %if.else43, label %if.then17

if.then17:                                        ; preds = %if.then
  %tv_std = getelementptr inbounds %struct.radeon_encoder_tv_dac, ptr %7, i32 0, i32 8
  %18 = ptrtoint ptr %tv_std to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %tv_std, align 4
  %20 = zext i32 %19 to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values.25)
  switch i32 %19, label %if.else30 [
    i32 0, label %if.then17.if.then28_crit_edge
    i32 4, label %if.then17.if.then28_crit_edge587
    i32 2, label %if.then17.if.then28_crit_edge588
    i32 3, label %if.then17.if.then28_crit_edge589
  ]

if.then17.if.then28_crit_edge589:                 ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then28

if.then17.if.then28_crit_edge588:                 ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then28

if.then17.if.then28_crit_edge587:                 ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then28

if.then17.if.then28_crit_edge:                    ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then28

if.then28:                                        ; preds = %if.then17.if.then28_crit_edge, %if.then17.if.then28_crit_edge587, %if.then17.if.then28_crit_edge588, %if.then17.if.then28_crit_edge589
  %ntsc_tvdac_adj = getelementptr inbounds %struct.radeon_encoder_tv_dac, ptr %7, i32 0, i32 1
  br label %if.end32

if.else30:                                        ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #10
  %pal_tvdac_adj = getelementptr inbounds %struct.radeon_encoder_tv_dac, ptr %7, i32 0, i32 2
  br label %if.end32

if.end32:                                         ; preds = %if.else30, %if.then28
  %.pn.in = phi ptr [ %ntsc_tvdac_adj, %if.then28 ], [ %pal_tvdac_adj, %if.else30 ]
  %21 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %21)
  %.pn = load i32, ptr %.pn.in, align 4
  %tv_dac_cntl.1 = or i32 %.pn, %or
  %22 = zext i32 %19 to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values.26)
  switch i32 %19, label %if.end32.if.end47_crit_edge [
    i32 0, label %if.end32.if.then38_crit_edge
    i32 4, label %if.end32.if.then38_crit_edge590
  ]

if.end32.if.then38_crit_edge590:                  ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then38

if.end32.if.then38_crit_edge:                     ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then38

if.end32.if.end47_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end47

if.then38:                                        ; preds = %if.end32.if.then38_crit_edge, %if.end32.if.then38_crit_edge590
  %or39 = or i32 %tv_dac_cntl.1, 256
  br label %if.end47

if.else43:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %23 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %7, align 4
  %or44 = or i32 %tv_dac_cntl.0, %24
  %or45 = or i32 %or44, 515
  br label %if.end47

if.end47:                                         ; preds = %if.else43, %if.then38, %if.end32.if.end47_crit_edge
  %tv_dac_cntl.2 = phi i32 [ %or39, %if.then38 ], [ %or45, %if.else43 ], [ %tv_dac_cntl.1, %if.end32.if.end47_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !65
  tail call void @arm_heavy_mb() #8
  %25 = tail call i32 @llvm.bswap.i32(i32 %tv_dac_cntl.2) #8
  %26 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i514 = getelementptr i8, ptr %27, i32 2188
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i514, i32 %25) #8, !srcloc !66
  %28 = ptrtoint ptr %family to i32
  call void @__asan_load4_noabort(i32 %28)
  %.pr = load i32, ptr %family, align 4
  %29 = zext i32 %.pr to i64
  call void @__sanitizer_cov_trace_switch(i64 %29, ptr @__sancov_gen_cov_switch_values.27)
  switch i32 %.pr, label %if.then81 [
    i32 9, label %if.end47.if.then74_crit_edge
    i32 11, label %if.end47.if.then74_crit_edge591
    i32 10, label %if.end47.if.then74_crit_edge592
    i32 12, label %if.end47.if.then74_crit_edge593
    i32 13, label %if.end47.if.then74_crit_edge594
    i32 14, label %if.end47.if.then74_crit_edge595
    i32 15, label %if.end47.if.then74_crit_edge596
    i32 16, label %if.end47.if.then74_crit_edge597
    i32 17, label %if.end47.if.then74_crit_edge598
    i32 5, label %if.end47.if.then86_crit_edge
  ]

if.end47.if.then86_crit_edge:                     ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then86

if.end47.if.then74_crit_edge598:                  ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then74

if.end47.if.then74_crit_edge597:                  ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then74

if.end47.if.then74_crit_edge596:                  ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then74

if.end47.if.then74_crit_edge595:                  ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then74

if.end47.if.then74_crit_edge594:                  ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then74

if.end47.if.then74_crit_edge593:                  ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then74

if.end47.if.then74_crit_edge592:                  ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then74

if.end47.if.then74_crit_edge591:                  ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then74

if.end47.if.then74_crit_edge:                     ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then74

if.then74:                                        ; preds = %if.end47.if.then74_crit_edge, %if.end47.if.then74_crit_edge591, %if.end47.if.then74_crit_edge592, %if.end47.if.then74_crit_edge593, %if.end47.if.then74_crit_edge594, %if.end47.if.then74_crit_edge595, %if.end47.if.then74_crit_edge596, %if.end47.if.then74_crit_edge597, %if.end47.if.then74_crit_edge598
  %30 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i518 = getelementptr i8, ptr %31, i32 412
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i518) #8, !srcloc !62
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !63
  %33 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i522 = getelementptr i8, ptr %34, i32 3428
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i522) #8, !srcloc !62
  %36 = tail call i32 @llvm.bswap.i32(i32 %35) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !63
  br label %if.end90

if.then81:                                        ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #10
  %37 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i526 = getelementptr i8, ptr %38, i32 3348
  %39 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i526) #8, !srcloc !62
  %40 = tail call i32 @llvm.bswap.i32(i32 %39) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !63
  br label %if.end90

if.then86:                                        ; preds = %if.end47.if.then86_crit_edge, %entry.if.then86_crit_edge
  %rmmio.i529 = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 31
  %41 = ptrtoint ptr %rmmio.i529 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %rmmio.i529, align 4
  %add.ptr.i530 = getelementptr i8, ptr %42, i32 648
  %43 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i530) #8, !srcloc !62
  %44 = tail call i32 @llvm.bswap.i32(i32 %43) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !63
  br label %if.end90

if.end90:                                         ; preds = %if.then86, %if.then81, %if.then74
  %gpiopad_a.0 = phi i32 [ 1, %if.then74 ], [ 0, %if.then81 ], [ 0, %if.then86 ]
  %disp_output_cntl.0 = phi i32 [ %36, %if.then74 ], [ 0, %if.then81 ], [ 0, %if.then86 ]
  %disp_hw_debug.0 = phi i32 [ 0, %if.then74 ], [ %40, %if.then81 ], [ 0, %if.then86 ]
  %fp2_gen_cntl.0 = phi i32 [ 0, %if.then74 ], [ 0, %if.then81 ], [ %44, %if.then86 ]
  %45 = ptrtoint ptr %family to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %family, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %46)
  %cmp92 = icmp ugt i32 %46, 4
  br i1 %cmp92, label %if.then93, label %if.end90.if.end95_crit_edge

if.end90.if.end95_crit_edge:                      ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end95

if.then93:                                        ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #10
  %rmmio.i533 = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 31
  %47 = ptrtoint ptr %rmmio.i533 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %rmmio.i533, align 4
  %add.ptr.i534 = getelementptr i8, ptr %48, i32 3436
  %49 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i534) #8, !srcloc !62
  %50 = tail call i32 @llvm.bswap.i32(i32 %49) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !63
  br label %if.end95

if.end95:                                         ; preds = %if.then93, %if.end90.if.end95_crit_edge
  %disp_tv_out_cntl.0 = phi i32 [ %50, %if.then93 ], [ 0, %if.end90.if.end95_crit_edge ]
  %rmmio.i557 = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 31
  %51 = ptrtoint ptr %rmmio.i557 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %rmmio.i557, align 4
  br i1 %tobool.not, label %if.else210, label %if.then97

if.then97:                                        ; preds = %if.end95
  %add.ptr.i538 = getelementptr i8, ptr %52, i32 88
  %53 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i538) #8, !srcloc !62
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !63
  %54 = and i32 %53, -262145
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !65
  tail call void @arm_heavy_mb() #8
  %55 = ptrtoint ptr %rmmio.i557 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %rmmio.i557, align 4
  %add.ptr.i542 = getelementptr i8, ptr %56, i32 88
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i542, i32 %54) #8, !srcloc !66
  %57 = ptrtoint ptr %family to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %family, align 4
  %.off505 = add i32 %58, -9
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %.off505)
  %switch506 = icmp ult i32 %.off505, 9
  br i1 %switch506, label %if.then126, label %if.then97.if.end129_crit_edge

if.then97.if.end129_crit_edge:                    ; preds = %if.then97
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end129

if.then126:                                       ; preds = %if.then97
  call void @__sanitizer_cov_trace_pc() #10
  %59 = ptrtoint ptr %rmmio.i557 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %rmmio.i557, align 4
  %add.ptr.i546 = getelementptr i8, ptr %60, i32 412
  %61 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i546) #8, !srcloc !62
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !63
  br label %if.end129

if.end129:                                        ; preds = %if.then126, %if.then97.if.end129_crit_edge
  %gpiopad_a.1 = phi i32 [ 0, %if.then126 ], [ %gpiopad_a.0, %if.then97.if.end129_crit_edge ]
  %62 = ptrtoint ptr %rmmio.i557 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %rmmio.i557, align 4
  %add.ptr.i550 = getelementptr i8, ptr %63, i32 124
  %64 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i550) #8, !srcloc !62
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !63
  %65 = and i32 %64, -33554433
  %crtc_id = getelementptr inbounds %struct.radeon_crtc, ptr %5, i32 0, i32 1
  %66 = ptrtoint ptr %crtc_id to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %crtc_id, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %67)
  %cmp132 = icmp eq i32 %67, 0
  %68 = ptrtoint ptr %family to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %family, align 4
  %.off507 = add i32 %69, -9
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %.off507)
  %switch508 = icmp ult i32 %.off507, 9
  %and161 = and i32 %disp_output_cntl.0, -65549
  %or162 = or i32 %and161, 65536
  %disp_output_cntl.1 = select i1 %switch508, i32 %or162, i32 %disp_output_cntl.0
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %69)
  %cmp165 = icmp ugt i32 %69, 4
  br i1 %cmp132, label %if.then133, label %if.else171

if.then133:                                       ; preds = %if.end129
  br i1 %cmp165, label %if.then166, label %if.else168

if.then166:                                       ; preds = %if.then133
  call void @__sanitizer_cov_trace_pc() #10
  %and167 = and i32 %disp_tv_out_cntl.0, -65537
  br label %if.end209

if.else168:                                       ; preds = %if.then133
  call void @__sanitizer_cov_trace_pc() #10
  %or169 = or i32 %disp_hw_debug.0, 32
  br label %if.end209

if.else171:                                       ; preds = %if.end129
  br i1 %cmp165, label %if.then204, label %if.else206

if.then204:                                       ; preds = %if.else171
  call void @__sanitizer_cov_trace_pc() #10
  %or205 = or i32 %disp_tv_out_cntl.0, 65536
  br label %if.end209

if.else206:                                       ; preds = %if.else171
  call void @__sanitizer_cov_trace_pc() #10
  %and207 = and i32 %disp_hw_debug.0, -33
  br label %if.end209

if.end209:                                        ; preds = %if.else206, %if.then204, %if.else168, %if.then166
  %disp_hw_debug.1 = phi i32 [ %disp_hw_debug.0, %if.then166 ], [ %or169, %if.else168 ], [ %disp_hw_debug.0, %if.then204 ], [ %and207, %if.else206 ]
  %disp_tv_out_cntl.1 = phi i32 [ %and167, %if.then166 ], [ %disp_tv_out_cntl.0, %if.else168 ], [ %or205, %if.then204 ], [ %disp_tv_out_cntl.0, %if.else206 ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !65
  tail call void @arm_heavy_mb() #8
  %70 = ptrtoint ptr %rmmio.i557 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %rmmio.i557, align 4
  %add.ptr.i554 = getelementptr i8, ptr %71, i32 124
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i554, i32 %65) #8, !srcloc !66
  br label %if.end295

if.else210:                                       ; preds = %if.end95
  %add.ptr.i558 = getelementptr i8, ptr %52, i32 124
  %72 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i558) #8, !srcloc !62
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !63
  %73 = or i32 %72, 33554432
  %crtc_id213 = getelementptr inbounds %struct.radeon_crtc, ptr %5, i32 0, i32 1
  %74 = ptrtoint ptr %crtc_id213 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %crtc_id213, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %75)
  %cmp214 = icmp eq i32 %75, 0
  %76 = ptrtoint ptr %family to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %family, align 4
  br i1 %cmp214, label %if.then215, label %if.else254

if.then215:                                       ; preds = %if.else210
  %78 = zext i32 %77 to i64
  call void @__sanitizer_cov_trace_switch(i64 %78, ptr @__sancov_gen_cov_switch_values.28)
  switch i32 %77, label %if.else250 [
    i32 9, label %if.then215.if.then242_crit_edge
    i32 11, label %if.then215.if.then242_crit_edge599
    i32 10, label %if.then215.if.then242_crit_edge600
    i32 12, label %if.then215.if.then242_crit_edge601
    i32 13, label %if.then215.if.then242_crit_edge602
    i32 14, label %if.then215.if.then242_crit_edge603
    i32 15, label %if.then215.if.then242_crit_edge604
    i32 16, label %if.then215.if.then242_crit_edge605
    i32 17, label %if.then215.if.then242_crit_edge606
    i32 5, label %if.then248
  ]

if.then215.if.then242_crit_edge606:               ; preds = %if.then215
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then242

if.then215.if.then242_crit_edge605:               ; preds = %if.then215
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then242

if.then215.if.then242_crit_edge604:               ; preds = %if.then215
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then242

if.then215.if.then242_crit_edge603:               ; preds = %if.then215
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then242

if.then215.if.then242_crit_edge602:               ; preds = %if.then215
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then242

if.then215.if.then242_crit_edge601:               ; preds = %if.then215
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then242

if.then215.if.then242_crit_edge600:               ; preds = %if.then215
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then242

if.then215.if.then242_crit_edge599:               ; preds = %if.then215
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then242

if.then215.if.then242_crit_edge:                  ; preds = %if.then215
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then242

if.then242:                                       ; preds = %if.then215.if.then242_crit_edge, %if.then215.if.then242_crit_edge599, %if.then215.if.then242_crit_edge600, %if.then215.if.then242_crit_edge601, %if.then215.if.then242_crit_edge602, %if.then215.if.then242_crit_edge603, %if.then215.if.then242_crit_edge604, %if.then215.if.then242_crit_edge605, %if.then215.if.then242_crit_edge606
  %and243 = and i32 %disp_output_cntl.0, -13
  br label %if.end294

if.then248:                                       ; preds = %if.then215
  call void @__sanitizer_cov_trace_pc() #10
  %and249 = and i32 %fp2_gen_cntl.0, -67111937
  br label %if.end294

if.else250:                                       ; preds = %if.then215
  call void @__sanitizer_cov_trace_pc() #10
  %or251 = or i32 %disp_hw_debug.0, 32
  br label %if.end294

if.else254:                                       ; preds = %if.else210
  %79 = zext i32 %77 to i64
  call void @__sanitizer_cov_trace_switch(i64 %79, ptr @__sancov_gen_cov_switch_values.29)
  switch i32 %77, label %if.else290 [
    i32 9, label %if.else254.if.then281_crit_edge
    i32 11, label %if.else254.if.then281_crit_edge607
    i32 10, label %if.else254.if.then281_crit_edge608
    i32 12, label %if.else254.if.then281_crit_edge609
    i32 13, label %if.else254.if.then281_crit_edge610
    i32 14, label %if.else254.if.then281_crit_edge611
    i32 15, label %if.else254.if.then281_crit_edge612
    i32 16, label %if.else254.if.then281_crit_edge613
    i32 17, label %if.else254.if.then281_crit_edge614
    i32 5, label %if.then287
  ]

if.else254.if.then281_crit_edge614:               ; preds = %if.else254
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then281

if.else254.if.then281_crit_edge613:               ; preds = %if.else254
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then281

if.else254.if.then281_crit_edge612:               ; preds = %if.else254
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then281

if.else254.if.then281_crit_edge611:               ; preds = %if.else254
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then281

if.else254.if.then281_crit_edge610:               ; preds = %if.else254
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then281

if.else254.if.then281_crit_edge609:               ; preds = %if.else254
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then281

if.else254.if.then281_crit_edge608:               ; preds = %if.else254
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then281

if.else254.if.then281_crit_edge607:               ; preds = %if.else254
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then281

if.else254.if.then281_crit_edge:                  ; preds = %if.else254
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then281

if.then281:                                       ; preds = %if.else254.if.then281_crit_edge, %if.else254.if.then281_crit_edge607, %if.else254.if.then281_crit_edge608, %if.else254.if.then281_crit_edge609, %if.else254.if.then281_crit_edge610, %if.else254.if.then281_crit_edge611, %if.else254.if.then281_crit_edge612, %if.else254.if.then281_crit_edge613, %if.else254.if.then281_crit_edge614
  %and282 = and i32 %disp_output_cntl.0, -13
  %or283 = or i32 %and282, 4
  br label %if.end294

if.then287:                                       ; preds = %if.else254
  call void @__sanitizer_cov_trace_pc() #10
  %and288 = and i32 %fp2_gen_cntl.0, -67111937
  %or289 = or i32 %and288, 1024
  br label %if.end294

if.else290:                                       ; preds = %if.else254
  call void @__sanitizer_cov_trace_pc() #10
  %and291 = and i32 %disp_hw_debug.0, -33
  br label %if.end294

if.end294:                                        ; preds = %if.else290, %if.then287, %if.then281, %if.else250, %if.then248, %if.then242
  %disp_output_cntl.4 = phi i32 [ %and243, %if.then242 ], [ %disp_output_cntl.0, %if.then248 ], [ %disp_output_cntl.0, %if.else250 ], [ %or283, %if.then281 ], [ %disp_output_cntl.0, %if.then287 ], [ %disp_output_cntl.0, %if.else290 ]
  %disp_hw_debug.2 = phi i32 [ %disp_hw_debug.0, %if.then242 ], [ %disp_hw_debug.0, %if.then248 ], [ %or251, %if.else250 ], [ %disp_hw_debug.0, %if.then281 ], [ %disp_hw_debug.0, %if.then287 ], [ %and291, %if.else290 ]
  %fp2_gen_cntl.1 = phi i32 [ %fp2_gen_cntl.0, %if.then242 ], [ %and249, %if.then248 ], [ %fp2_gen_cntl.0, %if.else250 ], [ %fp2_gen_cntl.0, %if.then281 ], [ %or289, %if.then287 ], [ %fp2_gen_cntl.0, %if.else290 ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !65
  tail call void @arm_heavy_mb() #8
  %80 = ptrtoint ptr %rmmio.i557 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %rmmio.i557, align 4
  %add.ptr.i562 = getelementptr i8, ptr %81, i32 124
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i562, i32 %73) #8, !srcloc !66
  br label %if.end295

if.end295:                                        ; preds = %if.end294, %if.end209
  %gpiopad_a.2 = phi i32 [ %gpiopad_a.1, %if.end209 ], [ %gpiopad_a.0, %if.end294 ]
  %disp_output_cntl.5 = phi i32 [ %disp_output_cntl.1, %if.end209 ], [ %disp_output_cntl.4, %if.end294 ]
  %disp_hw_debug.3 = phi i32 [ %disp_hw_debug.1, %if.end209 ], [ %disp_hw_debug.2, %if.end294 ]
  %fp2_gen_cntl.2 = phi i32 [ %fp2_gen_cntl.0, %if.end209 ], [ %fp2_gen_cntl.1, %if.end294 ]
  %disp_tv_out_cntl.2 = phi i32 [ %disp_tv_out_cntl.1, %if.end209 ], [ %disp_tv_out_cntl.0, %if.end294 ]
  %82 = ptrtoint ptr %family to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %family, align 4
  %84 = zext i32 %83 to i64
  call void @__sanitizer_cov_trace_switch(i64 %84, ptr @__sancov_gen_cov_switch_values.30)
  switch i32 %83, label %if.then330 [
    i32 9, label %if.end295.do.body_crit_edge
    i32 11, label %if.end295.do.body_crit_edge615
    i32 10, label %if.end295.do.body_crit_edge616
    i32 12, label %if.end295.do.body_crit_edge617
    i32 13, label %if.end295.do.body_crit_edge618
    i32 14, label %if.end295.do.body_crit_edge619
    i32 15, label %if.end295.do.body_crit_edge620
    i32 16, label %if.end295.do.body_crit_edge621
    i32 17, label %if.end295.do.body_crit_edge622
    i32 5, label %if.then334
  ]

if.end295.do.body_crit_edge622:                   ; preds = %if.end295
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

if.end295.do.body_crit_edge621:                   ; preds = %if.end295
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

if.end295.do.body_crit_edge620:                   ; preds = %if.end295
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

if.end295.do.body_crit_edge619:                   ; preds = %if.end295
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

if.end295.do.body_crit_edge618:                   ; preds = %if.end295
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

if.end295.do.body_crit_edge617:                   ; preds = %if.end295
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

if.end295.do.body_crit_edge616:                   ; preds = %if.end295
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

if.end295.do.body_crit_edge615:                   ; preds = %if.end295
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

if.end295.do.body_crit_edge:                      ; preds = %if.end295
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

do.body:                                          ; preds = %if.end295.do.body_crit_edge, %if.end295.do.body_crit_edge615, %if.end295.do.body_crit_edge616, %if.end295.do.body_crit_edge617, %if.end295.do.body_crit_edge618, %if.end295.do.body_crit_edge619, %if.end295.do.body_crit_edge620, %if.end295.do.body_crit_edge621, %if.end295.do.body_crit_edge622
  %rmmio.i565 = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 31
  %85 = ptrtoint ptr %rmmio.i565 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %rmmio.i565, align 4
  %add.ptr.i566 = getelementptr i8, ptr %86, i32 412
  %87 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i566) #8, !srcloc !62
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !63
  %88 = and i32 %87, -16777217
  %89 = tail call i32 @llvm.bswap.i32(i32 %88)
  %or326 = or i32 %89, %gpiopad_a.2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !65
  tail call void @arm_heavy_mb() #8
  %90 = tail call i32 @llvm.bswap.i32(i32 %or326) #8
  %91 = ptrtoint ptr %rmmio.i565 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %rmmio.i565, align 4
  %add.ptr.i570 = getelementptr i8, ptr %92, i32 412
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i570, i32 %90) #8, !srcloc !66
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !65
  tail call void @arm_heavy_mb() #8
  %93 = tail call i32 @llvm.bswap.i32(i32 %disp_output_cntl.5) #8
  %94 = ptrtoint ptr %rmmio.i565 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %rmmio.i565, align 4
  %add.ptr.i574 = getelementptr i8, ptr %95, i32 3428
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i574, i32 %93) #8, !srcloc !66
  br label %if.end337

if.then330:                                       ; preds = %if.end295
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !65
  tail call void @arm_heavy_mb() #8
  %96 = tail call i32 @llvm.bswap.i32(i32 %disp_hw_debug.3) #8
  %rmmio.i577 = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 31
  %97 = ptrtoint ptr %rmmio.i577 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %rmmio.i577, align 4
  %add.ptr.i578 = getelementptr i8, ptr %98, i32 3348
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i578, i32 %96) #8, !srcloc !66
  br label %if.end337

if.then334:                                       ; preds = %if.end295
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !65
  tail call void @arm_heavy_mb() #8
  %99 = tail call i32 @llvm.bswap.i32(i32 %fp2_gen_cntl.2) #8
  %rmmio.i581 = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 31
  %100 = ptrtoint ptr %rmmio.i581 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %rmmio.i581, align 4
  %add.ptr.i582 = getelementptr i8, ptr %101, i32 648
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i582, i32 %99) #8, !srcloc !66
  br label %if.end337

if.end337:                                        ; preds = %if.then334, %if.then330, %do.body
  %102 = ptrtoint ptr %family to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %family, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %103)
  %cmp339 = icmp ugt i32 %103, 4
  br i1 %cmp339, label %if.then340, label %if.end337.if.end341_crit_edge

if.end337.if.end341_crit_edge:                    ; preds = %if.end337
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end341

if.then340:                                       ; preds = %if.end337
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !65
  tail call void @arm_heavy_mb() #8
  %104 = tail call i32 @llvm.bswap.i32(i32 %disp_tv_out_cntl.2) #8
  %rmmio.i585 = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 31
  %105 = ptrtoint ptr %rmmio.i585 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %rmmio.i585, align 4
  %add.ptr.i586 = getelementptr i8, ptr %106, i32 3436
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i586, i32 %104) #8, !srcloc !66
  br label %if.end341

if.end341:                                        ; preds = %if.then340, %if.end337.if.end341_crit_edge
  br i1 %tobool.not, label %if.end341.if.end344_crit_edge, label %if.then343

if.end341.if.end344_crit_edge:                    ; preds = %if.end341
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end344

if.then343:                                       ; preds = %if.end341
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @radeon_legacy_tv_mode_set(ptr noundef %encoder, ptr noundef %mode, ptr noundef %adjusted_mode) #8
  br label %if.end344

if.end344:                                        ; preds = %if.then343, %if.end341.if.end344_crit_edge
  %is_atom_bios = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 14
  %107 = ptrtoint ptr %is_atom_bios to i32
  call void @__asan_load1_noabort(i32 %107)
  %108 = load i8, ptr %is_atom_bios, align 4, !range !64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %108)
  %tobool345.not = icmp eq i8 %108, 0
  %crtc_id349 = getelementptr inbounds %struct.radeon_crtc, ptr %5, i32 0, i32 1
  %109 = ptrtoint ptr %crtc_id349 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %crtc_id349, align 8
  br i1 %tobool345.not, label %if.else348, label %if.then346

if.then346:                                       ; preds = %if.end344
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @radeon_atombios_encoder_crtc_scratch_regs(ptr noundef %encoder, i32 noundef %110) #8
  br label %if.end350

if.else348:                                       ; preds = %if.end344
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @radeon_combios_encoder_crtc_scratch_regs(ptr noundef %encoder, i32 noundef %110) #8
  br label %if.end350

if.end350:                                        ; preds = %if.else348, %if.then346
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @radeon_legacy_tv_dac_detect(ptr nocapture noundef readonly %encoder, ptr nocapture noundef readonly %connector) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %encoder to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %encoder, align 4
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_private, align 4
  %enc_priv = getelementptr inbounds %struct.radeon_encoder, ptr %encoder, i32 0, i32 12
  %4 = ptrtoint ptr %enc_priv to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %enc_priv, align 4
  %crtc_list = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 30, i32 20
  %6 = ptrtoint ptr %crtc_list to i32
  call void @__asan_load4_noabort(i32 %6)
  %.pn585 = load ptr, ptr %crtc_list, align 4
  %cmp.not587 = icmp eq ptr %.pn585, %crtc_list
  br i1 %cmp.not587, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %crtc12 = getelementptr inbounds %struct.drm_encoder, ptr %encoder, i32 0, i32 8
  br label %for.body

for.body:                                         ; preds = %for.inc.critedge.for.body_crit_edge, %for.body.lr.ph
  %.pn588 = phi ptr [ %.pn585, %for.body.lr.ph ], [ %.pn, %for.inc.critedge.for.body_crit_edge ]
  %crtc.0589 = getelementptr i8, ptr %.pn588, i32 -8
  %crtc_id = getelementptr i8, ptr %.pn588, i32 984
  %7 = ptrtoint ptr %crtc_id to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %crtc_id, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %8)
  %cmp11 = icmp eq i32 %8, 1
  br i1 %cmp11, label %land.lhs.true, label %for.body.for.inc.critedge_crit_edge

for.body.for.inc.critedge_crit_edge:              ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.critedge

land.lhs.true:                                    ; preds = %for.body
  %enabled = getelementptr i8, ptr %.pn588, i32 160
  %9 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %enabled, align 8, !range !64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool.not = icmp eq i8 %10, 0
  br i1 %tobool.not, label %land.lhs.true.for.inc.critedge_crit_edge, label %if.then

land.lhs.true.for.inc.critedge_crit_edge:         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.critedge

if.then:                                          ; preds = %land.lhs.true
  %11 = ptrtoint ptr %crtc12 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %crtc12, align 4
  %cmp13.not = icmp eq ptr %12, %crtc.0589
  br i1 %cmp13.not, label %if.then.for.inc.critedge_crit_edge, label %if.then.cleanup270_crit_edge

if.then.cleanup270_crit_edge:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup270

if.then.for.inc.critedge_crit_edge:               ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.critedge

for.inc.critedge:                                 ; preds = %if.then.for.inc.critedge_crit_edge, %land.lhs.true.for.inc.critedge_crit_edge, %for.body.for.inc.critedge_crit_edge
  %13 = ptrtoint ptr %.pn588 to i32
  call void @__asan_load4_noabort(i32 %13)
  %.pn = load ptr, ptr %.pn588, align 4
  %cmp.not = icmp eq ptr %.pn, %crtc_list
  br i1 %cmp.not, label %for.inc.critedge.for.end_crit_edge, label %for.inc.critedge.for.body_crit_edge

for.inc.critedge.for.body_crit_edge:              ; preds = %for.inc.critedge
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc.critedge.for.end_crit_edge:               ; preds = %for.inc.critedge
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %for.inc.critedge.for.end_crit_edge, %entry.for.end_crit_edge
  %connector_type = getelementptr inbounds %struct.drm_connector, ptr %connector, i32 0, i32 10
  %14 = ptrtoint ptr %connector_type to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %connector_type, align 8
  %16 = zext i32 %15 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.31)
  switch i32 %15, label %if.end40 [
    i32 6, label %for.end.if.then27_crit_edge
    i32 5, label %for.end.if.then27_crit_edge596
    i32 9, label %for.end.if.then27_crit_edge597
  ]

for.end.if.then27_crit_edge597:                   ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then27

for.end.if.then27_crit_edge596:                   ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then27

for.end.if.then27_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then27

if.then27:                                        ; preds = %for.end.if.then27_crit_edge, %for.end.if.then27_crit_edge596, %for.end.if.then27_crit_edge597
  %active_device = getelementptr inbounds %struct.radeon_encoder, ptr %encoder, i32 0, i32 4
  %17 = ptrtoint ptr %active_device to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %active_device, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool28.not = icmp ne i32 %18, 0
  %and = and i32 %18, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool31.not = icmp eq i32 %and, 0
  %or.cond = and i1 %tobool28.not, %tobool31.not
  br i1 %or.cond, label %if.then27.cleanup270_crit_edge, label %if.end33

if.then27.cleanup270_crit_edge:                   ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup270

if.end33:                                         ; preds = %if.then27
  %family.i = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 6
  %19 = ptrtoint ptr %family.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %family.i, align 4
  %.off.i = add i32 %20, -9
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %.off.i)
  %switch.i = icmp ult i32 %.off.i, 9
  %rmmio.i.i.i = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 31
  %21 = ptrtoint ptr %rmmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %rmmio.i.i.i, align 4
  br i1 %switch.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %if.end33
  %add.ptr.i.i.i = getelementptr i8, ptr %22, i32 412
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #8, !srcloc !62
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !63
  %24 = ptrtoint ptr %rmmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %rmmio.i.i.i, align 4
  %add.ptr.i4.i.i = getelementptr i8, ptr %25, i32 124
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i4.i.i) #8, !srcloc !62
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !63
  %27 = ptrtoint ptr %rmmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %rmmio.i.i.i, align 4
  %add.ptr.i8.i.i = getelementptr i8, ptr %28, i32 1016
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i8.i.i) #8, !srcloc !62
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !63
  %30 = ptrtoint ptr %rmmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %rmmio.i.i.i, align 4
  %add.ptr.i12.i.i = getelementptr i8, ptr %31, i32 640
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i12.i.i) #8, !srcloc !62
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !63
  %33 = ptrtoint ptr %rmmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %rmmio.i.i.i, align 4
  %add.ptr.i16.i.i = getelementptr i8, ptr %34, i32 2188
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i16.i.i) #8, !srcloc !62
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !63
  %36 = ptrtoint ptr %rmmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %rmmio.i.i.i, align 4
  %add.ptr.i20.i.i = getelementptr i8, ptr %37, i32 3428
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i20.i.i) #8, !srcloc !62
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !63
  %39 = ptrtoint ptr %rmmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %rmmio.i.i.i, align 4
  %add.ptr.i24.i.i = getelementptr i8, ptr %40, i32 412
  %41 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i24.i.i) #8, !srcloc !62
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !63
  %42 = and i32 %41, -16777217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !65
  tail call void @arm_heavy_mb() #8
  %43 = ptrtoint ptr %rmmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %rmmio.i.i.i, align 4
  %add.ptr.i28.i.i = getelementptr i8, ptr %44, i32 412
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i28.i.i, i32 %42) #8, !srcloc !66
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !65
  tail call void @arm_heavy_mb() #8
  %45 = ptrtoint ptr %rmmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %rmmio.i.i.i, align 4
  %add.ptr.i32.i.i = getelementptr i8, ptr %46, i32 124
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i32.i.i, i32 33554432) #8, !srcloc !66
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !65
  tail call void @arm_heavy_mb() #8
  %47 = ptrtoint ptr %rmmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %rmmio.i.i.i, align 4
  %add.ptr.i36.i.i = getelementptr i8, ptr %48, i32 1016
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i36.i.i, i32 -1073741824) #8, !srcloc !66
  %49 = and i32 %38, -201326593
  %50 = or i32 %49, 67108864
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !65
  tail call void @arm_heavy_mb() #8
  %51 = ptrtoint ptr %rmmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %rmmio.i.i.i, align 4
  %add.ptr.i40.i.i = getelementptr i8, ptr %52, i32 3428
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i40.i.i, i32 %50) #8, !srcloc !66
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !65
  tail call void @arm_heavy_mb() #8
  %53 = ptrtoint ptr %rmmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %rmmio.i.i.i, align 4
  %add.ptr.i44.i.i = getelementptr i8, ptr %54, i32 640
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i44.i.i, i32 -1007943680) #8, !srcloc !66
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !65
  tail call void @arm_heavy_mb() #8
  %55 = ptrtoint ptr %rmmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %rmmio.i.i.i, align 4
  %add.ptr.i48.i.i = getelementptr i8, ptr %56, i32 2188
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i48.i.i, i32 92160) #8, !srcloc !66
  %57 = ptrtoint ptr %rmmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %rmmio.i.i.i, align 4
  %add.ptr.i52.i.i = getelementptr i8, ptr %58, i32 2188
  %59 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i52.i.i) #8, !srcloc !62
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !63
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %60 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %60(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %61 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %61(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %62 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %62(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %63 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %63(i32 noundef 214748000) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !65
  tail call void @arm_heavy_mb() #8
  %64 = ptrtoint ptr %rmmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %rmmio.i.i.i, align 4
  %add.ptr.i56.i.i = getelementptr i8, ptr %65, i32 2188
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i56.i.i, i32 318859264) #8, !srcloc !66
  %66 = ptrtoint ptr %rmmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %rmmio.i.i.i, align 4
  %add.ptr.i60.i.i = getelementptr i8, ptr %67, i32 2188
  %68 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i60.i.i) #8, !srcloc !62
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !63
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %69 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %69(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %70 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %70(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %71 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %71(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %72 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %72(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %73 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %73(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %74 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %74(i32 noundef 214748000) #8
  %75 = ptrtoint ptr %rmmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %rmmio.i.i.i, align 4
  %add.ptr.i64.i.i = getelementptr i8, ptr %76, i32 2188
  %77 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i64.i.i) #8, !srcloc !62
  %78 = tail call i32 @llvm.bswap.i32(i32 %77) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !63
  %and19.i.i = and i32 %78, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19.i.i)
  %cmp.not.i.i = icmp eq i32 %and19.i.i, 0
  br i1 %cmp.not.i.i, label %if.else.i.i, label %if.then.i.if.end23.sink.split.i.i_crit_edge

if.then.i.if.end23.sink.split.i.i_crit_edge:      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end23.sink.split.i.i

if.else.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %78)
  %cmp21.not.i.i = icmp sgt i32 %78, -1
  br i1 %cmp21.not.i.i, label %if.else.i.i.r300_legacy_tv_detect.exit.i_crit_edge, label %if.else.i.i.if.end23.sink.split.i.i_crit_edge

if.else.i.i.if.end23.sink.split.i.i_crit_edge:    ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end23.sink.split.i.i

if.else.i.i.r300_legacy_tv_detect.exit.i_crit_edge: ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %r300_legacy_tv_detect.exit.i

if.end23.sink.split.i.i:                          ; preds = %if.else.i.i.if.end23.sink.split.i.i_crit_edge, %if.then.i.if.end23.sink.split.i.i_crit_edge
  %.str.13.sink.i.i = phi ptr [ @.str.12, %if.then.i.if.end23.sink.split.i.i_crit_edge ], [ @.str.13, %if.else.i.i.if.end23.sink.split.i.i_crit_edge ]
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull %.str.13.sink.i.i) #8
  br label %r300_legacy_tv_detect.exit.i

r300_legacy_tv_detect.exit.i:                     ; preds = %if.end23.sink.split.i.i, %if.else.i.i.r300_legacy_tv_detect.exit.i_crit_edge
  %found.0.off0.i.i = phi i1 [ false, %if.else.i.i.r300_legacy_tv_detect.exit.i_crit_edge ], [ true, %if.end23.sink.split.i.i ]
  %79 = lshr i32 %23, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !65
  tail call void @arm_heavy_mb() #8
  %80 = ptrtoint ptr %rmmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %rmmio.i.i.i, align 4
  %add.ptr.i68.i.i = getelementptr i8, ptr %81, i32 2188
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i68.i.i, i32 %35) #8, !srcloc !66
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !65
  tail call void @arm_heavy_mb() #8
  %82 = ptrtoint ptr %rmmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %rmmio.i.i.i, align 4
  %add.ptr.i72.i.i = getelementptr i8, ptr %83, i32 640
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i72.i.i, i32 %32) #8, !srcloc !66
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !65
  tail call void @arm_heavy_mb() #8
  %84 = ptrtoint ptr %rmmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %rmmio.i.i.i, align 4
  %add.ptr.i76.i.i = getelementptr i8, ptr %85, i32 1016
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i76.i.i, i32 %29) #8, !srcloc !66
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !65
  tail call void @arm_heavy_mb() #8
  %86 = ptrtoint ptr %rmmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %rmmio.i.i.i, align 4
  %add.ptr.i80.i.i = getelementptr i8, ptr %87, i32 3428
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i80.i.i, i32 %38) #8, !srcloc !66
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !65
  tail call void @arm_heavy_mb() #8
  %88 = ptrtoint ptr %rmmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %rmmio.i.i.i, align 4
  %add.ptr.i84.i.i = getelementptr i8, ptr %89, i32 124
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i84.i.i, i32 %26) #8, !srcloc !66
  %90 = ptrtoint ptr %rmmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %rmmio.i.i.i, align 4
  %add.ptr.i88.i.i = getelementptr i8, ptr %91, i32 412
  %92 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i88.i.i) #8, !srcloc !62
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !63
  %93 = and i32 %92, -16777217
  %94 = tail call i32 @llvm.bswap.i32(i32 %93) #8
  %and28.i.i = and i32 %79, 1
  %or29.i.i = or i32 %94, %and28.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !65
  tail call void @arm_heavy_mb() #8
  %95 = tail call i32 @llvm.bswap.i32(i32 %or29.i.i) #8
  %96 = ptrtoint ptr %rmmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %rmmio.i.i.i, align 4
  %add.ptr.i92.i.i = getelementptr i8, ptr %97, i32 412
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i92.i.i, i32 %95) #8, !srcloc !66
  br label %radeon_legacy_tv_detect.exit

if.end.i:                                         ; preds = %if.end33
  %add.ptr.i.i = getelementptr i8, ptr %22, i32 124
  %98 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #8, !srcloc !62
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !63
  %99 = ptrtoint ptr %rmmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %rmmio.i.i.i, align 4
  %add.ptr.i4.i = getelementptr i8, ptr %100, i32 2048
  %101 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i4.i) #8, !srcloc !62
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !63
  %102 = ptrtoint ptr %rmmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %rmmio.i.i.i, align 4
  %add.ptr.i8.i = getelementptr i8, ptr %103, i32 2188
  %104 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i8.i) #8, !srcloc !62
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !63
  %105 = ptrtoint ptr %rmmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %rmmio.i.i.i, align 4
  %add.ptr.i12.i = getelementptr i8, ptr %106, i32 224
  %107 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i12.i) #8, !srcloc !62
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !63
  %108 = ptrtoint ptr %rmmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %rmmio.i.i.i, align 4
  %add.ptr.i16.i = getelementptr i8, ptr %109, i32 2184
  %110 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i16.i) #8, !srcloc !62
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !63
  %111 = and i32 %98, -33554433
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !65
  tail call void @arm_heavy_mb() #8
  %112 = ptrtoint ptr %rmmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %rmmio.i.i.i, align 4
  %add.ptr.i20.i = getelementptr i8, ptr %113, i32 124
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i20.i, i32 %111) #8, !srcloc !66
  %114 = and i32 %101, -465961089
  %115 = or i32 %114, 301990016
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !65
  tail call void @arm_heavy_mb() #8
  %116 = ptrtoint ptr %rmmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %rmmio.i.i.i, align 4
  %add.ptr.i24.i = getelementptr i8, ptr %117, i32 2048
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i24.i, i32 %115) #8, !srcloc !66
  %118 = and i32 %107, 3840
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %118)
  %tobool.not.i = icmp eq i32 %118, 0
  %..i = select i1 %tobool.not.i, i32 8913171, i32 4718867
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !65
  tail call void @arm_heavy_mb() #8
  %119 = tail call i32 @llvm.bswap.i32(i32 %..i) #8
  %120 = ptrtoint ptr %rmmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %rmmio.i.i.i, align 4
  %add.ptr.i28.i = getelementptr i8, ptr %121, i32 2188
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i28.i, i32 %119) #8, !srcloc !66
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !65
  tail call void @arm_heavy_mb() #8
  %122 = ptrtoint ptr %rmmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %rmmio.i.i.i, align 4
  %add.ptr.i32.i = getelementptr i8, ptr %123, i32 2184
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i32.i, i32 1717963009) #8, !srcloc !66
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %124 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %124(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %125 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %125(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %126 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %126(i32 noundef 214748000) #8
  %127 = ptrtoint ptr %rmmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %rmmio.i.i.i, align 4
  %add.ptr.i36.i = getelementptr i8, ptr %128, i32 2188
  %129 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i36.i) #8, !srcloc !62
  %130 = tail call i32 @llvm.bswap.i32(i32 %129) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !63
  %and39.i = and i32 %130, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and39.i)
  %tobool40.not.i = icmp eq i32 %and39.i, 0
  br i1 %tobool40.not.i, label %if.else42.i, label %if.end.i.if.end47.sink.split.i_crit_edge

if.end.i.if.end47.sink.split.i_crit_edge:         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end47.sink.split.i

if.else42.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %130)
  %cmp44.not.i = icmp sgt i32 %130, -1
  br i1 %cmp44.not.i, label %if.else42.i.if.end47.i_crit_edge, label %if.else42.i.if.end47.sink.split.i_crit_edge

if.else42.i.if.end47.sink.split.i_crit_edge:      ; preds = %if.else42.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end47.sink.split.i

if.else42.i.if.end47.i_crit_edge:                 ; preds = %if.else42.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end47.i

if.end47.sink.split.i:                            ; preds = %if.else42.i.if.end47.sink.split.i_crit_edge, %if.end.i.if.end47.sink.split.i_crit_edge
  %.str.13.sink.i = phi ptr [ @.str.12, %if.end.i.if.end47.sink.split.i_crit_edge ], [ @.str.13, %if.else42.i.if.end47.sink.split.i_crit_edge ]
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull %.str.13.sink.i) #8
  br label %if.end47.i

if.end47.i:                                       ; preds = %if.end47.sink.split.i, %if.else42.i.if.end47.i_crit_edge
  %found.0.off0.i = phi i1 [ false, %if.else42.i.if.end47.i_crit_edge ], [ true, %if.end47.sink.split.i ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !65
  tail call void @arm_heavy_mb() #8
  %131 = ptrtoint ptr %rmmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %rmmio.i.i.i, align 4
  %add.ptr.i40.i = getelementptr i8, ptr %132, i32 2184
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i40.i, i32 %110) #8, !srcloc !66
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !65
  tail call void @arm_heavy_mb() #8
  %133 = ptrtoint ptr %rmmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %rmmio.i.i.i, align 4
  %add.ptr.i44.i = getelementptr i8, ptr %134, i32 2188
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i44.i, i32 %104) #8, !srcloc !66
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !65
  tail call void @arm_heavy_mb() #8
  %135 = ptrtoint ptr %rmmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %rmmio.i.i.i, align 4
  %add.ptr.i48.i = getelementptr i8, ptr %136, i32 2048
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i48.i, i32 %101) #8, !srcloc !66
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !65
  tail call void @arm_heavy_mb() #8
  %137 = ptrtoint ptr %rmmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %rmmio.i.i.i, align 4
  %add.ptr.i52.i = getelementptr i8, ptr %138, i32 124
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i52.i, i32 %98) #8, !srcloc !66
  br label %radeon_legacy_tv_detect.exit

radeon_legacy_tv_detect.exit:                     ; preds = %if.end47.i, %r300_legacy_tv_detect.exit.i
  %retval.0.i = phi i1 [ %found.0.off0.i.i, %r300_legacy_tv_detect.exit.i ], [ %found.0.off0.i, %if.end47.i ]
  %call.not = xor i1 %retval.0.i, true
  %tobool36.not = icmp eq ptr %5, null
  %or.cond420 = select i1 %call.not, i1 true, i1 %tobool36.not
  %found.0 = select i1 %or.cond420, i32 2, i32 1
  br label %cleanup270

if.end40:                                         ; preds = %for.end
  %active_device41 = getelementptr inbounds %struct.radeon_encoder, ptr %encoder, i32 0, i32 4
  %139 = ptrtoint ptr %active_device41 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %active_device41, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %140)
  %tobool42.not = icmp ne i32 %140, 0
  %and45 = and i32 %140, 17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and45)
  %tobool46.not = icmp eq i32 %and45, 0
  %or.cond421 = and i1 %tobool42.not, %tobool46.not
  br i1 %or.cond421, label %do.end, label %if.end51

do.end:                                           ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #10
  %call50 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i32 noundef %140) #12
  br label %cleanup270

if.end51:                                         ; preds = %if.end40
  %family = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 6
  %141 = ptrtoint ptr %family to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %family, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %142)
  %cmp52 = icmp eq i32 %142, 5
  br i1 %cmp52, label %if.then53, label %if.end57

if.then53:                                        ; preds = %if.end51
  %rmmio.i.i = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 31
  %143 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i.i434 = getelementptr i8, ptr %144, i32 104
  %145 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i434) #8, !srcloc !62
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !63
  %146 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i7.i = getelementptr i8, ptr %147, i32 648
  %148 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i7.i) #8, !srcloc !62
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !63
  %149 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i11.i = getelementptr i8, ptr %150, i32 3428
  %151 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i11.i) #8, !srcloc !62
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !63
  %152 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i15.i = getelementptr i8, ptr %153, i32 1016
  %154 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i15.i) #8, !srcloc !62
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !63
  %155 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i19.i = getelementptr i8, ptr %156, i32 3456
  %157 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i19.i) #8, !srcloc !62
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !63
  %158 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i23.i = getelementptr i8, ptr %159, i32 3460
  %160 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i23.i) #8, !srcloc !62
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !63
  %161 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i27.i = getelementptr i8, ptr %162, i32 3464
  %163 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i27.i) #8, !srcloc !62
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !63
  %164 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i31.i = getelementptr i8, ptr %165, i32 3468
  %166 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i31.i) #8, !srcloc !62
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !63
  %167 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i35.i = getelementptr i8, ptr %168, i32 3472
  %169 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i35.i) #8, !srcloc !62
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !63
  %170 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i39.i = getelementptr i8, ptr %171, i32 3480
  %172 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i39.i) #8, !srcloc !62
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !63
  %173 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i43.i = getelementptr i8, ptr %174, i32 768
  %175 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i43.i) #8, !srcloc !62
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !63
  %176 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i47.i = getelementptr i8, ptr %177, i32 776
  %178 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i47.i) #8, !srcloc !62
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !63
  %179 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i51.i = getelementptr i8, ptr %180, i32 772
  %181 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i51.i) #8, !srcloc !62
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !63
  %182 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i55.i = getelementptr i8, ptr %183, i32 780
  %184 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i55.i) #8, !srcloc !62
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !63
  %185 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i59.i = getelementptr i8, ptr %186, i32 104
  %187 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i59.i) #8, !srcloc !62
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !63
  %188 = and i32 %187, -16777217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !65
  tail call void @arm_heavy_mb() #8
  %189 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i63.i = getelementptr i8, ptr %190, i32 104
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i63.i, i32 %188) #8, !srcloc !66
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !65
  tail call void @arm_heavy_mb() #8
  %191 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i67.i = getelementptr i8, ptr %192, i32 648
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i67.i, i32 202113034) #8, !srcloc !66
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !65
  tail call void @arm_heavy_mb() #8
  %193 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i71.i = getelementptr i8, ptr %194, i32 3428
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i71.i, i32 301989888) #8, !srcloc !66
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !65
  tail call void @arm_heavy_mb() #8
  %195 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i75.i = getelementptr i8, ptr %196, i32 1016
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i75.i, i32 6) #8, !srcloc !66
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !65
  tail call void @arm_heavy_mb() #8
  %197 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i79.i = getelementptr i8, ptr %198, i32 3456
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i79.i, i32 0) #8, !srcloc !66
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !65
  tail call void @arm_heavy_mb() #8
  %199 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i83.i = getelementptr i8, ptr %200, i32 3460
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i83.i, i32 -268238848) #8, !srcloc !66
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !65
  tail call void @arm_heavy_mb() #8
  %201 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i87.i = getelementptr i8, ptr %202, i32 3464
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i87.i, i32 0) #8, !srcloc !66
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !65
  tail call void @arm_heavy_mb() #8
  %203 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i91.i = getelementptr i8, ptr %204, i32 3468
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i91.i, i32 -268238848) #8, !srcloc !66
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !65
  tail call void @arm_heavy_mb() #8
  %205 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i95.i = getelementptr i8, ptr %206, i32 3472
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i95.i, i32 0) #8, !srcloc !66
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !65
  tail call void @arm_heavy_mb() #8
  %207 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i99.i = getelementptr i8, ptr %208, i32 3480
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i99.i, i32 -268238848) #8, !srcloc !66
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !65
  tail call void @arm_heavy_mb() #8
  %209 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i103.i = getelementptr i8, ptr %210, i32 768
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i103.i, i32 134217729) #8, !srcloc !66
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !65
  tail call void @arm_heavy_mb() #8
  %211 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i107.i = getelementptr i8, ptr %212, i32 772
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i107.i, i32 524288) #8, !srcloc !66
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !65
  tail call void @arm_heavy_mb() #8
  %213 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i111.i = getelementptr i8, ptr %214, i32 776
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i111.i, i32 16779264) #8, !srcloc !66
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !65
  tail call void @arm_heavy_mb() #8
  %215 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i115.i = getelementptr i8, ptr %216, i32 780
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i115.i, i32 -2147483648) #8, !srcloc !66
  %217 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i119.i591 = getelementptr i8, ptr %218, i32 104
  %219 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i119.i591) #8, !srcloc !62
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !63
  %220 = and i32 %219, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %220)
  %tobool.not.not.i592 = icmp eq i32 %220, 0
  br i1 %tobool.not.not.i592, label %if.then53.if.end20.i_crit_edge, label %if.then53.radeon_legacy_ext_dac_detect.exit_crit_edge

if.then53.radeon_legacy_ext_dac_detect.exit_crit_edge: ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #10
  br label %radeon_legacy_ext_dac_detect.exit

if.then53.if.end20.i_crit_edge:                   ; preds = %if.then53
  br label %if.end20.i

for.body.i:                                       ; preds = %for.inc.i
  %221 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i119.i = getelementptr i8, ptr %222, i32 104
  %223 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i119.i) #8, !srcloc !62
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !63
  %224 = and i32 %223, 65536
  %tobool.not.not.i = icmp eq i32 %224, 0
  br i1 %tobool.not.not.i, label %for.body.i.if.end20.i_crit_edge, label %for.body.i.radeon_legacy_ext_dac_detect.exit.loopexit_crit_edge

for.body.i.radeon_legacy_ext_dac_detect.exit.loopexit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %radeon_legacy_ext_dac_detect.exit.loopexit

for.body.i.if.end20.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end20.i

if.end20.i:                                       ; preds = %for.body.i.if.end20.i_crit_edge, %if.then53.if.end20.i_crit_edge
  %i.0177.i593 = phi i32 [ %inc.i, %for.body.i.if.end20.i_crit_edge ], [ 0, %if.then53.if.end20.i_crit_edge ]
  %225 = tail call i32 @llvm.read_register.i32(metadata !52) #8
  %and.i.i.i.i = and i32 %225, -16384
  %226 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %226, i32 0, i32 1
  %227 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %228)
  %cmp.not.i.i435 = icmp eq i32 %228, 0
  br i1 %cmp.not.i.i435, label %lor.lhs.false.i.i, label %if.end20.i.if.then22.i_crit_edge

if.end20.i.if.then22.i_crit_edge:                 ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then22.i

lor.lhs.false.i.i:                                ; preds = %if.end20.i
  %229 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #8, !srcloc !67
  %and.i.i.i = and i32 %229, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i, label %lor.lhs.false.i.i.drm_can_sleep.exit.i_crit_edge, label %land.lhs.true.i.i

lor.lhs.false.i.i.drm_can_sleep.exit.i_crit_edge: ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %drm_can_sleep.exit.i

land.lhs.true.i.i:                                ; preds = %lor.lhs.false.i.i
  %230 = tail call i32 @llvm.read_register.i32(metadata !52) #8
  %and.i35.i.i = and i32 %230, -16384
  %231 = inttoptr i32 %and.i35.i.i to ptr
  %cpu.i.i = getelementptr inbounds %struct.thread_info, ptr %231, i32 0, i32 3
  %232 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load i32, ptr %cpu.i.i, align 4
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @kgdb_active, i32 noundef 4) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @kgdb_active to i32))
  %234 = load volatile i32, ptr @kgdb_active, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %233, i32 %234)
  %cmp13.i.i = icmp eq i32 %233, %234
  br i1 %cmp13.i.i, label %land.lhs.true.i.i.if.then22.i_crit_edge, label %land.lhs.true.i.i.drm_can_sleep.exit.i_crit_edge

land.lhs.true.i.i.drm_can_sleep.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %drm_can_sleep.exit.i

land.lhs.true.i.i.if.then22.i_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then22.i

drm_can_sleep.exit.i:                             ; preds = %land.lhs.true.i.i.drm_can_sleep.exit.i_crit_edge, %lor.lhs.false.i.i.drm_can_sleep.exit.i_crit_edge
  %235 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #8, !srcloc !67
  %and.i36.i.i = and i32 %235, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i36.i.i)
  %tobool34.not.i.i = icmp eq i32 %and.i36.i.i, 0
  br i1 %tobool34.not.i.i, label %if.else.i, label %drm_can_sleep.exit.i.if.then22.i_crit_edge

drm_can_sleep.exit.i.if.then22.i_crit_edge:       ; preds = %drm_can_sleep.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then22.i

if.then22.i:                                      ; preds = %drm_can_sleep.exit.i.if.then22.i_crit_edge, %land.lhs.true.i.i.if.then22.i_crit_edge, %if.end20.i.if.then22.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %236 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %236(i32 noundef 214748000) #8
  br label %for.inc.i

if.else.i:                                        ; preds = %drm_can_sleep.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @msleep(i32 noundef 1) #8
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.else.i, %if.then22.i
  %inc.i = add nuw nsw i32 %i.0177.i593, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 200, i32 %inc.i)
  %exitcond.not.i = icmp eq i32 %inc.i, 200
  br i1 %exitcond.not.i, label %for.inc.i.radeon_legacy_ext_dac_detect.exit.loopexit_crit_edge, label %for.body.i

for.inc.i.radeon_legacy_ext_dac_detect.exit.loopexit_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %radeon_legacy_ext_dac_detect.exit.loopexit

radeon_legacy_ext_dac_detect.exit.loopexit:       ; preds = %for.inc.i.radeon_legacy_ext_dac_detect.exit.loopexit_crit_edge, %for.body.i.radeon_legacy_ext_dac_detect.exit.loopexit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 199, i32 %i.0177.i593)
  %cmp.i.le = icmp ult i32 %i.0177.i593, 199
  %phi.sel = select i1 %cmp.i.le, i32 1, i32 2
  br label %radeon_legacy_ext_dac_detect.exit

radeon_legacy_ext_dac_detect.exit:                ; preds = %radeon_legacy_ext_dac_detect.exit.loopexit, %if.then53.radeon_legacy_ext_dac_detect.exit_crit_edge
  %cmp.lcssa.i = phi i32 [ 1, %if.then53.radeon_legacy_ext_dac_detect.exit_crit_edge ], [ %phi.sel, %radeon_legacy_ext_dac_detect.exit.loopexit ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !65
  tail call void @arm_heavy_mb() #8
  %237 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i123.i = getelementptr i8, ptr %238, i32 3456
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i123.i, i32 %157) #8, !srcloc !66
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !65
  tail call void @arm_heavy_mb() #8
  %239 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i127.i = getelementptr i8, ptr %240, i32 3460
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i127.i, i32 %160) #8, !srcloc !66
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !65
  tail call void @arm_heavy_mb() #8
  %241 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i131.i = getelementptr i8, ptr %242, i32 3464
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i131.i, i32 %163) #8, !srcloc !66
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !65
  tail call void @arm_heavy_mb() #8
  %243 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i135.i = getelementptr i8, ptr %244, i32 3468
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i135.i, i32 %166) #8, !srcloc !66
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !65
  tail call void @arm_heavy_mb() #8
  %245 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i139.i = getelementptr i8, ptr %246, i32 3472
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i139.i, i32 %169) #8, !srcloc !66
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !65
  tail call void @arm_heavy_mb() #8
  %247 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i143.i = getelementptr i8, ptr %248, i32 3480
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i143.i, i32 %172) #8, !srcloc !66
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !65
  tail call void @arm_heavy_mb() #8
  %249 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %249)
  %250 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i147.i = getelementptr i8, ptr %250, i32 768
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i147.i, i32 %175) #8, !srcloc !66
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !65
  tail call void @arm_heavy_mb() #8
  %251 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %251)
  %252 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i151.i = getelementptr i8, ptr %252, i32 776
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i151.i, i32 %178) #8, !srcloc !66
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !65
  tail call void @arm_heavy_mb() #8
  %253 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %253)
  %254 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i155.i = getelementptr i8, ptr %254, i32 772
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i155.i, i32 %181) #8, !srcloc !66
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !65
  tail call void @arm_heavy_mb() #8
  %255 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %255)
  %256 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i159.i = getelementptr i8, ptr %256, i32 780
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i159.i, i32 %184) #8, !srcloc !66
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !65
  tail call void @arm_heavy_mb() #8
  %257 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %257)
  %258 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i163.i = getelementptr i8, ptr %258, i32 1016
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i163.i, i32 %154) #8, !srcloc !66
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !65
  tail call void @arm_heavy_mb() #8
  %259 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %259)
  %260 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i167.i = getelementptr i8, ptr %260, i32 3428
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i167.i, i32 %151) #8, !srcloc !66
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !65
  tail call void @arm_heavy_mb() #8
  %261 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %261)
  %262 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i171.i = getelementptr i8, ptr %262, i32 648
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i171.i, i32 %148) #8, !srcloc !66
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !65
  tail call void @arm_heavy_mb() #8
  %263 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %263)
  %264 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i175.i = getelementptr i8, ptr %264, i32 104
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i175.i, i32 %145) #8, !srcloc !66
  br label %cleanup270

if.end57:                                         ; preds = %if.end51
  %pll_rreg = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 34
  %265 = ptrtoint ptr %pll_rreg to i32
  call void @__asan_load4_noabort(i32 %265)
  %266 = load ptr, ptr %pll_rreg, align 8
  %call58 = tail call i32 %266(ptr noundef %3, i32 noundef 45) #8
  %flags = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 7
  %267 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %267)
  %268 = load i32, ptr %flags, align 8
  %and59 = and i32 %268, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and59)
  %tobool60.not = icmp eq i32 %and59, 0
  br i1 %tobool60.not, label %if.else, label %if.then61

if.then61:                                        ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #10
  %rmmio.i = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 31
  %269 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %269)
  %270 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %270, i32 84
  %271 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !62
  %272 = tail call i32 @llvm.bswap.i32(i32 %271) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !63
  br label %if.end96

if.else:                                          ; preds = %if.end57
  %273 = ptrtoint ptr %family to i32
  call void @__asan_load4_noabort(i32 %273)
  %274 = load i32, ptr %family, align 4
  %.off = add i32 %274, -9
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %.off)
  %switch = icmp ult i32 %.off, 9
  %rmmio.i441 = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 31
  %275 = ptrtoint ptr %rmmio.i441 to i32
  call void @__asan_load4_noabort(i32 %275)
  %276 = load ptr, ptr %rmmio.i441, align 4
  br i1 %switch, label %if.then89, label %if.else92

if.then89:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr.i442 = getelementptr i8, ptr %276, i32 412
  %277 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i442) #8, !srcloc !62
  %278 = tail call i32 @llvm.bswap.i32(i32 %277) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !63
  %279 = ptrtoint ptr %rmmio.i441 to i32
  call void @__asan_load4_noabort(i32 %279)
  %280 = load ptr, ptr %rmmio.i441, align 4
  %add.ptr.i448 = getelementptr i8, ptr %280, i32 3428
  %281 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i448) #8, !srcloc !62
  %282 = tail call i32 @llvm.bswap.i32(i32 %281) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !63
  br label %if.end94

if.else92:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr.i454 = getelementptr i8, ptr %276, i32 3348
  %283 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i454) #8, !srcloc !62
  %284 = tail call i32 @llvm.bswap.i32(i32 %283) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !63
  br label %if.end94

if.end94:                                         ; preds = %if.else92, %if.then89
  %disp_hw_debug.0 = phi i32 [ 0, %if.then89 ], [ %284, %if.else92 ]
  %disp_output_cntl.0 = phi i32 [ %282, %if.then89 ], [ 0, %if.else92 ]
  %gpiopad_a.0 = phi i32 [ %278, %if.then89 ], [ 0, %if.else92 ]
  %rmmio.i459 = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 31
  %285 = ptrtoint ptr %rmmio.i459 to i32
  call void @__asan_load4_noabort(i32 %285)
  %286 = load ptr, ptr %rmmio.i459, align 4
  %add.ptr.i460 = getelementptr i8, ptr %286, i32 1016
  %287 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i460) #8, !srcloc !62
  %288 = tail call i32 @llvm.bswap.i32(i32 %287) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !63
  br label %if.end96

if.end96:                                         ; preds = %if.end94, %if.then61
  %crtc_ext_cntl.0 = phi i32 [ %272, %if.then61 ], [ 0, %if.end94 ]
  %disp_hw_debug.1 = phi i32 [ 0, %if.then61 ], [ %disp_hw_debug.0, %if.end94 ]
  %disp_output_cntl.1 = phi i32 [ 0, %if.then61 ], [ %disp_output_cntl.0, %if.end94 ]
  %gpiopad_a.1 = phi i32 [ 0, %if.then61 ], [ %gpiopad_a.0, %if.end94 ]
  %crtc2_gen_cntl.0 = phi i32 [ 0, %if.then61 ], [ %288, %if.end94 ]
  %rmmio.i465 = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 31
  %289 = ptrtoint ptr %rmmio.i465 to i32
  call void @__asan_load4_noabort(i32 %289)
  %290 = load ptr, ptr %rmmio.i465, align 4
  %add.ptr.i466 = getelementptr i8, ptr %290, i32 2188
  %291 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i466) #8, !srcloc !62
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !63
  %292 = ptrtoint ptr %rmmio.i465 to i32
  call void @__asan_load4_noabort(i32 %292)
  %293 = load ptr, ptr %rmmio.i465, align 4
  %add.ptr.i472 = getelementptr i8, ptr %293, i32 640
  %294 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i472) #8, !srcloc !62
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !63
  %295 = ptrtoint ptr %rmmio.i465 to i32
  call void @__asan_load4_noabort(i32 %295)
  %296 = load ptr, ptr %rmmio.i465, align 4
  %add.ptr.i478 = getelementptr i8, ptr %296, i32 124
  %297 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i478) #8, !srcloc !62
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !63
  %and100 = and i32 %call58, -193
  %pll_wreg = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 35
  %298 = ptrtoint ptr %pll_wreg to i32
  call void @__asan_load4_noabort(i32 %298)
  %299 = load ptr, ptr %pll_wreg, align 4
  tail call void %299(ptr noundef %3, i32 noundef 45, i32 noundef %and100) #8
  %300 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %300)
  %301 = load i32, ptr %flags, align 8
  %and102 = and i32 %301, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and102)
  %tobool103.not = icmp eq i32 %and102, 0
  br i1 %tobool103.not, label %if.else105, label %if.then104

if.then104:                                       ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #10
  %or = or i32 %crtc_ext_cntl.0, 32768
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !65
  tail call void @arm_heavy_mb() #8
  %302 = tail call i32 @llvm.bswap.i32(i32 %or) #8
  %303 = ptrtoint ptr %rmmio.i465 to i32
  call void @__asan_load4_noabort(i32 %303)
  %304 = load ptr, ptr %rmmio.i465, align 4
  %add.ptr.i484 = getelementptr i8, ptr %304, i32 84
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i484, i32 %302) #8, !srcloc !66
  br label %if.end146

if.else105:                                       ; preds = %if.end96
  %and106 = and i32 %crtc2_gen_cntl.0, -3969
  %or107 = or i32 %and106, 640
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !65
  tail call void @arm_heavy_mb() #8
  %305 = tail call i32 @llvm.bswap.i32(i32 %or107) #8
  %306 = ptrtoint ptr %rmmio.i465 to i32
  call void @__asan_load4_noabort(i32 %306)
  %307 = load ptr, ptr %rmmio.i465, align 4
  %add.ptr.i489 = getelementptr i8, ptr %307, i32 1016
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i489, i32 %305) #8, !srcloc !66
  %308 = ptrtoint ptr %family to i32
  call void @__asan_load4_noabort(i32 %308)
  %309 = load i32, ptr %family, align 4
  %.off424 = add i32 %309, -9
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %.off424)
  %switch425 = icmp ult i32 %.off424, 9
  br i1 %switch425, label %do.body135, label %if.else143

do.body135:                                       ; preds = %if.else105
  call void @__sanitizer_cov_trace_pc() #10
  %310 = ptrtoint ptr %rmmio.i465 to i32
  call void @__asan_load4_noabort(i32 %310)
  %311 = load ptr, ptr %rmmio.i465, align 4
  %add.ptr.i494 = getelementptr i8, ptr %311, i32 412
  %312 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i494) #8, !srcloc !62
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !63
  %313 = or i32 %312, 16777216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !65
  tail call void @arm_heavy_mb() #8
  %314 = ptrtoint ptr %rmmio.i465 to i32
  call void @__asan_load4_noabort(i32 %314)
  %315 = load ptr, ptr %rmmio.i465, align 4
  %add.ptr.i500 = getelementptr i8, ptr %315, i32 412
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i500, i32 %313) #8, !srcloc !66
  %and141 = and i32 %disp_output_cntl.1, -13
  %or142 = or i32 %and141, 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !65
  tail call void @arm_heavy_mb() #8
  %316 = tail call i32 @llvm.bswap.i32(i32 %or142) #8
  %317 = ptrtoint ptr %rmmio.i465 to i32
  call void @__asan_load4_noabort(i32 %317)
  %318 = load ptr, ptr %rmmio.i465, align 4
  %add.ptr.i505 = getelementptr i8, ptr %318, i32 3428
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i505, i32 %316) #8, !srcloc !66
  br label %if.end146

if.else143:                                       ; preds = %if.else105
  call void @__sanitizer_cov_trace_pc() #10
  %and144 = and i32 %disp_hw_debug.1, -33
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !65
  tail call void @arm_heavy_mb() #8
  %319 = tail call i32 @llvm.bswap.i32(i32 %and144) #8
  %320 = ptrtoint ptr %rmmio.i465 to i32
  call void @__asan_load4_noabort(i32 %320)
  %321 = load ptr, ptr %rmmio.i465, align 4
  %add.ptr.i510 = getelementptr i8, ptr %321, i32 3348
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i510, i32 %319) #8, !srcloc !66
  br label %if.end146

if.end146:                                        ; preds = %if.else143, %do.body135, %if.then104
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !65
  tail call void @arm_heavy_mb() #8
  %322 = ptrtoint ptr %rmmio.i465 to i32
  call void @__asan_load4_noabort(i32 %322)
  %323 = load ptr, ptr %rmmio.i465, align 4
  %add.ptr.i515 = getelementptr i8, ptr %323, i32 2188
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i515, i32 318898176) #8, !srcloc !66
  %324 = ptrtoint ptr %family to i32
  call void @__asan_load4_noabort(i32 %324)
  %325 = load i32, ptr %family, align 4
  %.off426 = add i32 %325, -9
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %.off426)
  %switch427 = icmp ult i32 %.off426, 9
  %spec.select428 = select i1 %switch427, i32 112323, i32 98499
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !65
  tail call void @arm_heavy_mb() #8
  %326 = tail call i32 @llvm.bswap.i32(i32 %spec.select428) #8
  %327 = ptrtoint ptr %rmmio.i465 to i32
  call void @__asan_load4_noabort(i32 %327)
  %328 = load ptr, ptr %rmmio.i465, align 4
  %add.ptr.i520 = getelementptr i8, ptr %328, i32 640
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i520, i32 %326) #8, !srcloc !66
  %329 = or i32 %297, -2113929216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !65
  tail call void @arm_heavy_mb() #8
  %330 = ptrtoint ptr %rmmio.i465 to i32
  call void @__asan_load4_noabort(i32 %330)
  %331 = load ptr, ptr %rmmio.i465, align 4
  %add.ptr.i525 = getelementptr i8, ptr %331, i32 124
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i525, i32 %329) #8, !srcloc !66
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %332 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %332(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %333 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %333(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %334 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %334(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %335 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %335(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %336 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %336(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %337 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %337(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %338 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %338(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %339 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %339(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %340 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %340(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %341 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %341(i32 noundef 214748000) #8
  %342 = ptrtoint ptr %family to i32
  call void @__asan_load4_noabort(i32 %342)
  %343 = load i32, ptr %family, align 4
  %.off429 = add i32 %343, -9
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %.off429)
  %switch430 = icmp ult i32 %.off429, 9
  %344 = ptrtoint ptr %rmmio.i465 to i32
  call void @__asan_load4_noabort(i32 %344)
  %345 = load ptr, ptr %rmmio.i465, align 4
  %add.ptr.i530 = getelementptr i8, ptr %345, i32 124
  %346 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i530) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8
  %. = select i1 %switch430, i32 262144, i32 524288
  %347 = and i32 %346, %.
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %347)
  %tobool222.not = icmp eq i32 %347, 0
  %spec.select423 = select i1 %tobool222.not, i32 2, i32 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !65
  tail call void @arm_heavy_mb() #8
  %348 = ptrtoint ptr %rmmio.i465 to i32
  call void @__asan_load4_noabort(i32 %348)
  %349 = load ptr, ptr %rmmio.i465, align 4
  %add.ptr.i542 = getelementptr i8, ptr %349, i32 124
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i542, i32 %297) #8, !srcloc !66
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !65
  tail call void @arm_heavy_mb() #8
  %350 = ptrtoint ptr %rmmio.i465 to i32
  call void @__asan_load4_noabort(i32 %350)
  %351 = load ptr, ptr %rmmio.i465, align 4
  %add.ptr.i547 = getelementptr i8, ptr %351, i32 640
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i547, i32 %294) #8, !srcloc !66
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !65
  tail call void @arm_heavy_mb() #8
  %352 = ptrtoint ptr %rmmio.i465 to i32
  call void @__asan_load4_noabort(i32 %352)
  %353 = load ptr, ptr %rmmio.i465, align 4
  %add.ptr.i552 = getelementptr i8, ptr %353, i32 2188
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i552, i32 %291) #8, !srcloc !66
  %354 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %354)
  %355 = load i32, ptr %flags, align 8
  %and227 = and i32 %355, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and227)
  %tobool228.not = icmp eq i32 %and227, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8
  tail call void @arm_heavy_mb() #8
  br i1 %tobool228.not, label %if.else230, label %if.then229

if.then229:                                       ; preds = %if.end146
  call void @__sanitizer_cov_trace_pc() #10
  %356 = tail call i32 @llvm.bswap.i32(i32 %crtc_ext_cntl.0) #8
  %357 = ptrtoint ptr %rmmio.i465 to i32
  call void @__asan_load4_noabort(i32 %357)
  %358 = load ptr, ptr %rmmio.i465, align 4
  %add.ptr.i557 = getelementptr i8, ptr %358, i32 84
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i557, i32 %356) #8, !srcloc !66
  br label %if.end268

if.else230:                                       ; preds = %if.end146
  %359 = tail call i32 @llvm.bswap.i32(i32 %crtc2_gen_cntl.0) #8
  %360 = ptrtoint ptr %rmmio.i465 to i32
  call void @__asan_load4_noabort(i32 %360)
  %361 = load ptr, ptr %rmmio.i465, align 4
  %add.ptr.i562 = getelementptr i8, ptr %361, i32 1016
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i562, i32 %359) #8, !srcloc !66
  %362 = ptrtoint ptr %family to i32
  call void @__asan_load4_noabort(i32 %362)
  %363 = load i32, ptr %family, align 4
  %.off431 = add i32 %363, -9
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %.off431)
  %switch432 = icmp ult i32 %.off431, 9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8
  tail call void @arm_heavy_mb() #8
  br i1 %switch432, label %if.then257, label %if.else266

if.then257:                                       ; preds = %if.else230
  call void @__sanitizer_cov_trace_pc() #10
  %364 = tail call i32 @llvm.bswap.i32(i32 %disp_output_cntl.1) #8
  %365 = ptrtoint ptr %rmmio.i465 to i32
  call void @__asan_load4_noabort(i32 %365)
  %366 = load ptr, ptr %rmmio.i465, align 4
  %add.ptr.i567 = getelementptr i8, ptr %366, i32 3428
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i567, i32 %364) #8, !srcloc !66
  %367 = ptrtoint ptr %rmmio.i465 to i32
  call void @__asan_load4_noabort(i32 %367)
  %368 = load ptr, ptr %rmmio.i465, align 4
  %add.ptr.i572 = getelementptr i8, ptr %368, i32 412
  %369 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i572) #8, !srcloc !62
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !63
  %370 = and i32 %369, -16777217
  %371 = tail call i32 @llvm.bswap.i32(i32 %370)
  %and262 = and i32 %gpiopad_a.1, 1
  %or263 = or i32 %371, %and262
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !65
  tail call void @arm_heavy_mb() #8
  %372 = tail call i32 @llvm.bswap.i32(i32 %or263) #8
  %373 = ptrtoint ptr %rmmio.i465 to i32
  call void @__asan_load4_noabort(i32 %373)
  %374 = load ptr, ptr %rmmio.i465, align 4
  %add.ptr.i578 = getelementptr i8, ptr %374, i32 412
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i578, i32 %372) #8, !srcloc !66
  br label %if.end268

if.else266:                                       ; preds = %if.else230
  call void @__sanitizer_cov_trace_pc() #10
  %375 = tail call i32 @llvm.bswap.i32(i32 %disp_hw_debug.1) #8
  %376 = ptrtoint ptr %rmmio.i465 to i32
  call void @__asan_load4_noabort(i32 %376)
  %377 = load ptr, ptr %rmmio.i465, align 4
  %add.ptr.i583 = getelementptr i8, ptr %377, i32 3348
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i583, i32 %375) #8, !srcloc !66
  br label %if.end268

if.end268:                                        ; preds = %if.else266, %if.then257, %if.then229
  %378 = ptrtoint ptr %pll_wreg to i32
  call void @__asan_load4_noabort(i32 %378)
  %379 = load ptr, ptr %pll_wreg, align 4
  tail call void %379(ptr noundef %3, i32 noundef 45, i32 noundef %call58) #8
  br label %cleanup270

cleanup270:                                       ; preds = %if.end268, %radeon_legacy_ext_dac_detect.exit, %do.end, %radeon_legacy_tv_detect.exit, %if.then27.cleanup270_crit_edge, %if.then.cleanup270_crit_edge
  %retval.3 = phi i32 [ %cmp.lcssa.i, %radeon_legacy_ext_dac_detect.exit ], [ %spec.select423, %if.end268 ], [ 2, %do.end ], [ %found.0, %radeon_legacy_tv_detect.exit ], [ 2, %if.then27.cleanup270_crit_edge ], [ 2, %if.then.cleanup270_crit_edge ]
  ret i32 %retval.3
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @radeon_legacy_tv_mode_set(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #7

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @radeon_ext_tmds_enc_destroy(ptr noundef %encoder) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %enc_priv = getelementptr inbounds %struct.radeon_encoder, ptr %encoder, i32 0, i32 12
  %0 = ptrtoint ptr %enc_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %enc_priv, align 4
  tail call void @kfree(ptr noundef %1) #8
  tail call void @drm_encoder_cleanup(ptr noundef %encoder) #8
  tail call void @kfree(ptr noundef %encoder) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @radeon_legacy_tmds_ext_dpms(ptr noundef %encoder, i32 noundef %mode) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %encoder to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %encoder, align 4
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_private, align 4
  %rmmio.i = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 31
  %4 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 648
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !62
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !63
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.6) #8
  %8 = zext i32 %mode to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.32)
  switch i32 %mode, label %entry.sw.epilog_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %entry.sw.bb2_crit_edge
    i32 2, label %entry.sw.bb2_crit_edge23
    i32 3, label %entry.sw.bb2_crit_edge24
  ]

entry.sw.bb2_crit_edge24:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb2

entry.sw.bb2_crit_edge23:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb2

entry.sw.bb2_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb2

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %and = and i32 %7, -33554439
  %or = or i32 %and, 33554436
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry.sw.bb2_crit_edge, %entry.sw.bb2_crit_edge23, %entry.sw.bb2_crit_edge24
  %or3 = and i32 %7, -33554439
  %and4 = or i32 %or3, 2
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb2, %sw.bb, %entry.sw.epilog_crit_edge
  %fp2_gen_cntl.0 = phi i32 [ %7, %entry.sw.epilog_crit_edge ], [ %and4, %sw.bb2 ], [ %or, %sw.bb ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !65
  tail call void @arm_heavy_mb() #8
  %9 = tail call i32 @llvm.bswap.i32(i32 %fp2_gen_cntl.0) #8
  %10 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i22 = getelementptr i8, ptr %11, i32 648
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i22, i32 %9) #8, !srcloc !66
  %is_atom_bios = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 14
  %12 = ptrtoint ptr %is_atom_bios to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %is_atom_bios, align 4, !range !64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool.not = icmp eq i8 %13, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mode)
  %cmp6 = icmp eq i32 %mode, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @radeon_atombios_encoder_dpms_scratch_regs(ptr noundef %encoder, i1 noundef zeroext %cmp6) #8
  br label %if.end

if.else:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @radeon_combios_encoder_dpms_scratch_regs(ptr noundef %encoder, i1 noundef zeroext %cmp6) #8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @radeon_legacy_tmds_ext_prepare(ptr noundef %encoder) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %encoder to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %encoder, align 4
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_private, align 4
  %is_atom_bios = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 14
  %4 = ptrtoint ptr %is_atom_bios to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %is_atom_bios, align 4, !range !64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @radeon_atom_output_lock(ptr noundef %encoder, i1 noundef zeroext true) #8
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @radeon_combios_output_lock(ptr noundef %encoder, i1 noundef zeroext true) #8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %6 = ptrtoint ptr %encoder to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %encoder, align 4
  %dev_private.i = getelementptr inbounds %struct.drm_device, ptr %7, i32 0, i32 5
  %8 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev_private.i, align 4
  %rmmio.i.i = getelementptr inbounds %struct.radeon_device, ptr %9, i32 0, i32 31
  %10 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %11, i32 648
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #8, !srcloc !62
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !63
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.6) #8
  %13 = and i32 %12, -100663299
  %14 = or i32 %13, 33554432
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !65
  tail call void @arm_heavy_mb() #8
  %15 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i22.i = getelementptr i8, ptr %16, i32 648
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i22.i, i32 %14) #8, !srcloc !66
  %is_atom_bios.i = getelementptr inbounds %struct.radeon_device, ptr %9, i32 0, i32 14
  %17 = ptrtoint ptr %is_atom_bios.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %is_atom_bios.i, align 4, !range !64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool.not.i = icmp eq i8 %18, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @radeon_atombios_encoder_dpms_scratch_regs(ptr noundef %encoder, i1 noundef zeroext false) #8
  br label %radeon_legacy_tmds_ext_dpms.exit

if.else.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @radeon_combios_encoder_dpms_scratch_regs(ptr noundef %encoder, i1 noundef zeroext false) #8
  br label %radeon_legacy_tmds_ext_dpms.exit

radeon_legacy_tmds_ext_dpms.exit:                 ; preds = %if.else.i, %if.then.i
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @radeon_legacy_tmds_ext_commit(ptr noundef %encoder) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %encoder to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %encoder, align 4
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_private, align 4
  %rmmio.i.i = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 31
  %4 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %5, i32 648
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #8, !srcloc !62
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !63
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.6) #8
  %7 = and i32 %6, -100663299
  %8 = or i32 %7, 67108866
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !65
  tail call void @arm_heavy_mb() #8
  %9 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i22.i = getelementptr i8, ptr %10, i32 648
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i22.i, i32 %8) #8, !srcloc !66
  %is_atom_bios.i = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 14
  %11 = ptrtoint ptr %is_atom_bios.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %is_atom_bios.i, align 4, !range !64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool.not.i = icmp eq i8 %12, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @radeon_atombios_encoder_dpms_scratch_regs(ptr noundef %encoder, i1 noundef zeroext true) #8
  br label %radeon_legacy_tmds_ext_dpms.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @radeon_combios_encoder_dpms_scratch_regs(ptr noundef %encoder, i1 noundef zeroext true) #8
  br label %radeon_legacy_tmds_ext_dpms.exit

radeon_legacy_tmds_ext_dpms.exit:                 ; preds = %if.else.i, %if.then.i
  %13 = ptrtoint ptr %is_atom_bios.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %is_atom_bios.i, align 4, !range !64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool.not = icmp eq i8 %14, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %radeon_legacy_tmds_ext_dpms.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @radeon_atom_output_lock(ptr noundef %encoder, i1 noundef zeroext false) #8
  br label %if.end

if.else:                                          ; preds = %radeon_legacy_tmds_ext_dpms.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @radeon_combios_output_lock(ptr noundef %encoder, i1 noundef zeroext false) #8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @radeon_legacy_tmds_ext_mode_set(ptr noundef %encoder, ptr nocapture noundef readnone %mode, ptr nocapture noundef readonly %adjusted_mode) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %encoder to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %encoder, align 4
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_private, align 4
  %crtc = getelementptr inbounds %struct.drm_encoder, ptr %encoder, i32 0, i32 8
  %4 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %crtc, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.6) #8
  %is_atom_bios = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 14
  %6 = ptrtoint ptr %is_atom_bios to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %is_atom_bios, align 4, !range !64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %8 = ptrtoint ptr %adjusted_mode to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %adjusted_mode, align 4
  %pixel_clock = getelementptr inbounds %struct.radeon_encoder, ptr %encoder, i32 0, i32 6
  %10 = ptrtoint ptr %pixel_clock to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %pixel_clock, align 4
  tail call void @atombios_dvo_setup(ptr noundef %encoder, i32 noundef 1) #8
  %rmmio.i = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 31
  %11 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %12, i32 648
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !62
  %14 = tail call i32 @llvm.bswap.i32(i32 %13) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !63
  br label %if.end49

if.else:                                          ; preds = %entry
  %rmmio.i219 = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 31
  %15 = ptrtoint ptr %rmmio.i219 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %rmmio.i219, align 4
  %add.ptr.i220 = getelementptr i8, ptr %16, i32 648
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i220) #8, !srcloc !62
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !63
  %18 = and i32 %17, -201326599
  %19 = tail call i32 @llvm.bswap.i32(i32 %18)
  %and = or i32 %19, 8
  %family = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 6
  %20 = ptrtoint ptr %family to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %family, align 4
  %.off = add i32 %21, -9
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %.off)
  %switch = icmp ult i32 %.off, 9
  br i1 %switch, label %if.then29, label %if.else.if.end45_crit_edge

if.else.if.end45_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end45

if.then29:                                        ; preds = %if.else
  %pdev = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 2
  %22 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %pdev, align 8
  %device = getelementptr inbounds %struct.pci_dev, ptr %23, i32 0, i32 8
  %24 = ptrtoint ptr %device to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %device, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 18512, i16 %25)
  %cmp30 = icmp eq i16 %25, 18512
  br i1 %cmp30, label %land.lhs.true, label %if.then29.if.else43_crit_edge

if.then29.if.else43_crit_edge:                    ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else43

land.lhs.true:                                    ; preds = %if.then29
  %subsystem_vendor = getelementptr inbounds %struct.pci_dev, ptr %23, i32 0, i32 9
  %26 = ptrtoint ptr %subsystem_vendor to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %subsystem_vendor, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 4136, i16 %27)
  %cmp34 = icmp eq i16 %27, 4136
  br i1 %cmp34, label %land.lhs.true36, label %land.lhs.true.if.else43_crit_edge

land.lhs.true.if.else43_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else43

land.lhs.true36:                                  ; preds = %land.lhs.true
  %subsystem_device = getelementptr inbounds %struct.pci_dev, ptr %23, i32 0, i32 10
  %28 = ptrtoint ptr %subsystem_device to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %subsystem_device, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 8193, i16 %29)
  %cmp39 = icmp eq i16 %29, 8193
  br i1 %cmp39, label %if.then41, label %land.lhs.true36.if.else43_crit_edge

land.lhs.true36.if.else43_crit_edge:              ; preds = %land.lhs.true36
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else43

if.then41:                                        ; preds = %land.lhs.true36
  call void @__sanitizer_cov_trace_pc() #10
  %or42 = or i32 %19, 268435464
  br label %if.end45

if.else43:                                        ; preds = %land.lhs.true36.if.else43_crit_edge, %land.lhs.true.if.else43_crit_edge, %if.then29.if.else43_crit_edge
  %or44 = or i32 %19, 272629768
  br label %if.end45

if.end45:                                         ; preds = %if.else43, %if.then41, %if.else.if.end45_crit_edge
  %fp2_gen_cntl.0 = phi i32 [ %or42, %if.then41 ], [ %or44, %if.else43 ], [ %and, %if.else.if.end45_crit_edge ]
  %call46 = tail call zeroext i1 @radeon_combios_external_tmds_setup(ptr noundef %encoder) #8
  br i1 %call46, label %if.end45.if.end49_crit_edge, label %if.then47

if.end45.if.end49_crit_edge:                      ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end49

if.then47:                                        ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @radeon_external_tmds_setup(ptr noundef %encoder) #8
  br label %if.end49

if.end49:                                         ; preds = %if.then47, %if.end45.if.end49_crit_edge, %if.then
  %fp2_gen_cntl.1 = phi i32 [ %14, %if.then ], [ %fp2_gen_cntl.0, %if.end45.if.end49_crit_edge ], [ %fp2_gen_cntl.0, %if.then47 ]
  %crtc_id = getelementptr inbounds %struct.radeon_crtc, ptr %5, i32 0, i32 1
  %30 = ptrtoint ptr %crtc_id to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %crtc_id, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %cmp50 = icmp eq i32 %31, 0
  %family53 = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 6
  %32 = ptrtoint ptr %family53 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %family53, align 4
  br i1 %cmp50, label %if.then52, label %if.else104

if.then52:                                        ; preds = %if.end49
  %34 = zext i32 %33 to i64
  call void @__sanitizer_cov_trace_switch(i64 %34, ptr @__sancov_gen_cov_switch_values.33)
  switch i32 %33, label %if.else101 [
    i32 5, label %if.then52.if.then92_crit_edge
    i32 9, label %if.then52.if.then92_crit_edge225
    i32 11, label %if.then52.if.then92_crit_edge226
    i32 10, label %if.then52.if.then92_crit_edge227
    i32 12, label %if.then52.if.then92_crit_edge228
    i32 13, label %if.then52.if.then92_crit_edge229
    i32 14, label %if.then52.if.then92_crit_edge230
    i32 15, label %if.then52.if.then92_crit_edge231
    i32 16, label %if.then52.if.then92_crit_edge232
    i32 17, label %if.then52.if.then92_crit_edge233
  ]

if.then52.if.then92_crit_edge233:                 ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then92

if.then52.if.then92_crit_edge232:                 ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then92

if.then52.if.then92_crit_edge231:                 ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then92

if.then52.if.then92_crit_edge230:                 ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then92

if.then52.if.then92_crit_edge229:                 ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then92

if.then52.if.then92_crit_edge228:                 ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then92

if.then52.if.then92_crit_edge227:                 ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then92

if.then52.if.then92_crit_edge226:                 ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then92

if.then52.if.then92_crit_edge225:                 ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then92

if.then52.if.then92_crit_edge:                    ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then92

if.then92:                                        ; preds = %if.then52.if.then92_crit_edge, %if.then52.if.then92_crit_edge225, %if.then52.if.then92_crit_edge226, %if.then52.if.then92_crit_edge227, %if.then52.if.then92_crit_edge228, %if.then52.if.then92_crit_edge229, %if.then52.if.then92_crit_edge230, %if.then52.if.then92_crit_edge231, %if.then52.if.then92_crit_edge232, %if.then52.if.then92_crit_edge233
  %and93 = and i32 %fp2_gen_cntl.1, -3073
  %rmx_type = getelementptr inbounds %struct.radeon_encoder, ptr %encoder, i32 0, i32 7
  %35 = ptrtoint ptr %rmx_type to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %rmx_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %cmp94.not = icmp eq i32 %36, 0
  %or97 = or i32 %and93, 2048
  %spec.select = select i1 %cmp94.not, i32 %and93, i32 %or97
  br label %if.end150

if.else101:                                       ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #10
  %and102 = and i32 %fp2_gen_cntl.1, -8193
  br label %if.end150

if.else104:                                       ; preds = %if.end49
  %37 = zext i32 %33 to i64
  call void @__sanitizer_cov_trace_switch(i64 %37, ptr @__sancov_gen_cov_switch_values.34)
  switch i32 %33, label %if.else147 [
    i32 5, label %if.else104.if.then144_crit_edge
    i32 9, label %if.else104.if.then144_crit_edge234
    i32 11, label %if.else104.if.then144_crit_edge235
    i32 10, label %if.else104.if.then144_crit_edge236
    i32 12, label %if.else104.if.then144_crit_edge237
    i32 13, label %if.else104.if.then144_crit_edge238
    i32 14, label %if.else104.if.then144_crit_edge239
    i32 15, label %if.else104.if.then144_crit_edge240
    i32 16, label %if.else104.if.then144_crit_edge241
    i32 17, label %if.else104.if.then144_crit_edge242
  ]

if.else104.if.then144_crit_edge242:               ; preds = %if.else104
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then144

if.else104.if.then144_crit_edge241:               ; preds = %if.else104
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then144

if.else104.if.then144_crit_edge240:               ; preds = %if.else104
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then144

if.else104.if.then144_crit_edge239:               ; preds = %if.else104
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then144

if.else104.if.then144_crit_edge238:               ; preds = %if.else104
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then144

if.else104.if.then144_crit_edge237:               ; preds = %if.else104
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then144

if.else104.if.then144_crit_edge236:               ; preds = %if.else104
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then144

if.else104.if.then144_crit_edge235:               ; preds = %if.else104
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then144

if.else104.if.then144_crit_edge234:               ; preds = %if.else104
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then144

if.else104.if.then144_crit_edge:                  ; preds = %if.else104
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then144

if.then144:                                       ; preds = %if.else104.if.then144_crit_edge, %if.else104.if.then144_crit_edge234, %if.else104.if.then144_crit_edge235, %if.else104.if.then144_crit_edge236, %if.else104.if.then144_crit_edge237, %if.else104.if.then144_crit_edge238, %if.else104.if.then144_crit_edge239, %if.else104.if.then144_crit_edge240, %if.else104.if.then144_crit_edge241, %if.else104.if.then144_crit_edge242
  %and145 = and i32 %fp2_gen_cntl.1, -3073
  %or146 = or i32 %and145, 1024
  br label %if.end150

if.else147:                                       ; preds = %if.else104
  call void @__sanitizer_cov_trace_pc() #10
  %or148 = or i32 %fp2_gen_cntl.1, 8192
  br label %if.end150

if.end150:                                        ; preds = %if.else147, %if.then144, %if.else101, %if.then92
  %fp2_gen_cntl.2 = phi i32 [ %and102, %if.else101 ], [ %or146, %if.then144 ], [ %or148, %if.else147 ], [ %spec.select, %if.then92 ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !65
  tail call void @arm_heavy_mb() #8
  %38 = tail call i32 @llvm.bswap.i32(i32 %fp2_gen_cntl.2) #8
  %rmmio.i223 = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 31
  %39 = ptrtoint ptr %rmmio.i223 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %rmmio.i223, align 4
  %add.ptr.i224 = getelementptr i8, ptr %40, i32 648
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i224, i32 %38) #8, !srcloc !66
  %41 = ptrtoint ptr %is_atom_bios to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %is_atom_bios, align 4, !range !64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %42)
  %tobool152.not = icmp eq i8 %42, 0
  %43 = ptrtoint ptr %crtc_id to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %crtc_id, align 8
  br i1 %tobool152.not, label %if.else155, label %if.then153

if.then153:                                       ; preds = %if.end150
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @radeon_atombios_encoder_crtc_scratch_regs(ptr noundef %encoder, i32 noundef %44) #8
  br label %if.end157

if.else155:                                       ; preds = %if.end150
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @radeon_combios_encoder_crtc_scratch_regs(ptr noundef %encoder, i32 noundef %44) #8
  br label %if.end157

if.end157:                                        ; preds = %if.else155, %if.then153
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @atombios_dvo_setup(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @radeon_combios_external_tmds_setup(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @radeon_external_tmds_setup(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @radeon_legacy_get_ext_tmds_info_from_combios(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @radeon_legacy_get_ext_tmds_info_from_table(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

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

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 29)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 29)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind readonly }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nounwind allocsize(2) }
attributes #12 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !10, !11, !12, !14, !16, !18, !20, !21, !22, !23, !25, !27, !29, !31, !33, !35, !37, !39, !41, !42, !43, !44, !46, !48, !50}
!llvm.named.register.sp = !{!52}
!llvm.module.flags = !{!53, !54, !55, !56, !57, !58, !59, !60}
!llvm.ident = !{!61}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/radeon/radeon_legacy_encoders.c", i32 394, i32 3}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/radeon/radeon_legacy_encoders.c", i32 402, i32 4}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/radeon/radeon_legacy_encoders.c", i32 406, i32 3}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/radeon/radeon_legacy_encoders.c", i32 451, i32 2}
!8 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.5, !7, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @radeon_legacy_backlight_init._entry, !7, !"_entry", i1 false, i1 false}
!11 = !{ptr @radeon_legacy_backlight_init._entry_ptr, !7, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/radeon/radeon_legacy_encoders.c", i32 63, i32 2}
!14 = !{ptr @radeon_backlight_ops, !15, !"radeon_backlight_ops", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/radeon/radeon_legacy_encoders.c", i32 367, i32 35}
!16 = !{ptr @radeon_legacy_lvds_enc_funcs, !17, !"radeon_legacy_lvds_enc_funcs", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/radeon/radeon_legacy_encoders.c", i32 516, i32 39}
!18 = !{ptr @.str.7, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/gpu/drm/radeon/radeon_legacy_encoders.c", i32 487, i32 3}
!20 = !{ptr @.str.8, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @radeon_legacy_backlight_exit._entry, !19, !"_entry", i1 false, i1 false}
!22 = !{ptr @radeon_legacy_backlight_exit._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @radeon_legacy_lvds_helper_funcs, !24, !"radeon_legacy_lvds_helper_funcs", i1 false, i1 false}
!24 = !{!"../drivers/gpu/drm/radeon/radeon_legacy_encoders.c", i32 271, i32 46}
!25 = !{ptr @.str.9, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/gpu/drm/radeon/radeon_legacy_encoders.c", i32 210, i32 4}
!27 = !{ptr @radeon_legacy_tmds_int_enc_funcs, !28, !"radeon_legacy_tmds_int_enc_funcs", i1 false, i1 false}
!28 = !{!"../drivers/gpu/drm/radeon/radeon_legacy_encoders.c", i32 892, i32 39}
!29 = !{ptr @radeon_legacy_tmds_int_helper_funcs, !30, !"radeon_legacy_tmds_int_helper_funcs", i1 false, i1 false}
!30 = !{!"../drivers/gpu/drm/radeon/radeon_legacy_encoders.c", i32 882, i32 46}
!31 = !{ptr @radeon_legacy_primary_dac_enc_funcs, !32, !"radeon_legacy_primary_dac_enc_funcs", i1 false, i1 false}
!32 = !{!"../drivers/gpu/drm/radeon/radeon_legacy_encoders.c", i32 728, i32 39}
!33 = !{ptr @radeon_legacy_primary_dac_helper_funcs, !34, !"radeon_legacy_primary_dac_helper_funcs", i1 false, i1 false}
!34 = !{!"../drivers/gpu/drm/radeon/radeon_legacy_encoders.c", i32 717, i32 46}
!35 = !{ptr @radeon_legacy_tv_dac_enc_funcs, !36, !"radeon_legacy_tv_dac_enc_funcs", i1 false, i1 false}
!36 = !{!"../drivers/gpu/drm/radeon/radeon_legacy_encoders.c", i32 1694, i32 39}
!37 = !{ptr @radeon_legacy_tv_dac_helper_funcs, !38, !"radeon_legacy_tv_dac_helper_funcs", i1 false, i1 false}
!38 = !{!"../drivers/gpu/drm/radeon/radeon_legacy_encoders.c", i32 1683, i32 46}
!39 = !{ptr @.str.10, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/gpu/drm/radeon/radeon_legacy_encoders.c", i32 1572, i32 3}
!41 = !{ptr @.str.11, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @radeon_legacy_tv_dac_detect._entry, !40, !"_entry", i1 false, i1 false}
!43 = !{ptr @radeon_legacy_tv_dac_detect._entry_ptr, !40, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.12, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/gpu/drm/radeon/radeon_legacy_encoders.c", i32 1429, i32 3}
!46 = !{ptr @.str.13, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/gpu/drm/radeon/radeon_legacy_encoders.c", i32 1432, i32 3}
!48 = !{ptr @radeon_legacy_tmds_ext_enc_funcs, !49, !"radeon_legacy_tmds_ext_enc_funcs", i1 false, i1 false}
!49 = !{!"../drivers/gpu/drm/radeon/radeon_legacy_encoders.c", i32 1035, i32 39}
!50 = !{ptr @radeon_legacy_tmds_ext_helper_funcs, !51, !"radeon_legacy_tmds_ext_helper_funcs", i1 false, i1 false}
!51 = !{!"../drivers/gpu/drm/radeon/radeon_legacy_encoders.c", i32 1025, i32 46}
!52 = !{!"sp"}
!53 = !{i32 1, !"wchar_size", i32 2}
!54 = !{i32 1, !"min_enum_size", i32 4}
!55 = !{i32 8, !"branch-target-enforcement", i32 0}
!56 = !{i32 8, !"sign-return-address", i32 0}
!57 = !{i32 8, !"sign-return-address-all", i32 0}
!58 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!59 = !{i32 7, !"uwtable", i32 1}
!60 = !{i32 7, !"frame-pointer", i32 2}
!61 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!62 = !{i64 5026443}
!63 = !{i64 2157868595}
!64 = !{i8 0, i8 2}
!65 = !{i64 2157869002}
!66 = !{i64 5026025}
!67 = !{i64 929599}
