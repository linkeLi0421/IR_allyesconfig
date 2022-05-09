; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/radeon/atombios_encoders.c_pt.bc'
source_filename = "../drivers/gpu/drm/radeon/atombios_encoders.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.backlight_ops = type { i32, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.drm_encoder_funcs = type { ptr, ptr, ptr, ptr }
%struct.drm_encoder_helper_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.atomic_t = type { i32 }
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
%struct._DISPLAY_DEVICE_OUTPUT_CONTROL_PARAMETERS = type { i8, [3 x i8] }
%struct.radeon_encoder = type { %struct.drm_encoder, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.drm_display_mode, ptr, i32, i8, i16, ptr, i32, i8, i32, i8 }
%struct.drm_encoder = type { ptr, %struct.list_head, %struct.drm_mode_object, ptr, i32, i32, i32, i32, ptr, %struct.list_head, ptr, ptr }
%struct.drm_mode_object = type { i32, i32, ptr, %struct.kref, ptr }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }
%struct.radeon_encoder_atom_dig = type { i8, i8, i32, i32, i16, i32, %struct.drm_display_mode, ptr, i32, i8, i32, ptr, ptr, i32 }
%struct.backlight_properties = type { i32, i32, i32, i32, i32, i32, i32 }
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
%struct.backlight_device = type { %struct.backlight_properties, %struct.mutex, %struct.mutex, ptr, %struct.notifier_block, %struct.list_head, %struct.device, [32 x i8], i32 }
%union.dvo_encoder_control = type { %struct._DVO_ENCODER_CONTROL_PS_ALLOCATION }
%struct._DVO_ENCODER_CONTROL_PS_ALLOCATION = type { %struct._DVO_ENCODER_CONTROL_PARAMETERS, %struct._WRITE_ONE_BYTE_HW_I2C_DATA_PARAMETERS }
%struct._DVO_ENCODER_CONTROL_PARAMETERS = type { i16, i16, i8, i8, %union._ATOM_ENCODER_ATTRIBUTE }
%union._ATOM_ENCODER_ATTRIBUTE = type { %struct._ATOM_ENCODER_ANALOG_ATTRIBUTE }
%struct._ATOM_ENCODER_ANALOG_ATTRIBUTE = type { i8, [1 x i8] }
%struct._WRITE_ONE_BYTE_HW_I2C_DATA_PARAMETERS = type { i16, i16, i8, i8, i8, i8 }
%struct._ENABLE_EXTERNAL_TMDS_ENCODER_PARAMETERS = type { i8, i8, [2 x i8] }
%struct._DVO_ENCODER_CONTROL_PARAMETERS_V3 = type { i16, i8, i8, [4 x i8] }
%struct._DVO_ENCODER_CONTROL_PARAMETERS_V1_4 = type { i16, i8, i8, i8, [3 x i8] }
%struct.radeon_crtc = type { %struct.drm_crtc, i32, i8, i8, i8, i32, ptr, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, %union.dfixed, %union.dfixed, %struct.drm_display_mode, i32, ptr, ptr, i32, %struct.radeon_atom_ss, i8, i32, i32, i32, i32, i32, ptr, ptr, i32, i32, i32, i32, %struct.drm_display_mode, i32 }
%struct.drm_crtc = type { ptr, ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, ptr, ptr, i32, i32, i32, i8, %struct.drm_display_mode, %struct.drm_display_mode, i32, i32, ptr, i32, ptr, ptr, %struct.drm_object_properties, ptr, ptr, %struct.list_head, %struct.spinlock, ptr, %struct.drm_crtc_crc, i32, %struct.spinlock, i32, [32 x i8], ptr }
%struct.drm_crtc_crc = type { %struct.spinlock, ptr, i8, i8, ptr, i32, i32, i32, %struct.wait_queue_head }
%struct.radeon_atom_ss = type { i16, i16, i8, i16, i8, i8, i8, i16, i16 }
%union.lvds_encoder_control = type { %struct._LVDS_ENCODER_CONTROL_PARAMETERS_V2 }
%struct._LVDS_ENCODER_CONTROL_PARAMETERS_V2 = type { i16, i8, i8, i8, i8, i8, i8 }
%struct.radeon_connector = type { %struct.drm_connector, i32, i32, ptr, i8, i8, ptr, ptr, i8, i8, i8, i16, %struct.radeon_hpd, %struct.radeon_router, ptr, i32, i32, i32, i8, ptr, ptr, %struct.drm_dp_mst_topology_mgr, ptr, [6 x %struct.stream_attribs], i32 }
%struct.radeon_hpd = type { i32, i8, %struct.radeon_gpio_rec }
%struct.radeon_gpio_rec = type { i8, i8, i32, i32, i32 }
%struct.radeon_router = type { i32, %struct.radeon_i2c_bus_rec, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.radeon_i2c_bus_rec = type { i8, i8, i32, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.drm_dp_mst_topology_mgr = type { %struct.drm_private_obj, ptr, ptr, i32, ptr, i32, i32, i32, i32, %struct.drm_dp_sideband_msg_rx, %struct.drm_dp_sideband_msg_rx, %struct.mutex, %struct.mutex, i8, ptr, [15 x i8], i8, i32, ptr, %struct.mutex, %struct.list_head, %struct.mutex, ptr, ptr, i32, i32, %struct.wait_queue_head, %struct.work_struct, %struct.work_struct, %struct.list_head, %struct.list_head, %struct.mutex, ptr, %struct.work_struct, %struct.list_head, %struct.mutex, %struct.work_struct, %struct.mutex }
%struct.drm_private_obj = type { %struct.list_head, %struct.drm_modeset_lock, ptr, ptr }
%struct.drm_dp_sideband_msg_rx = type { [48 x i8], [256 x i8], i8, i8, i8, i8, i8, i8, %struct.drm_dp_sideband_msg_hdr }
%struct.drm_dp_sideband_msg_hdr = type { i8, i8, [8 x i8], i8, i8, i8, i8, i8, i8 }
%struct.stream_attribs = type { i16, i16 }
%struct.radeon_connector_atom_dig = type { i32, [15 x i8], i8, i32, i32, i8, i8 }
%union.dig_encoder_control = type { %struct._DIG_ENCODER_CONTROL_PARAMETERS }
%struct._DIG_ENCODER_CONTROL_PARAMETERS = type { i16, i8, i8, i8, i8, [2 x i8] }
%union.dig_transmitter_control = type { %struct._DIG_TRANSMITTER_CONTROL_PARAMETERS_V1_5 }
%struct._DIG_TRANSMITTER_CONTROL_PARAMETERS_V1_5 = type { i16, i8, i8, i8, i8, i8, %union.anon.120, i8, i8, i8, i8 }
%union.anon.120 = type { %struct._ATOM_DIG_TRANSMITTER_CONFIG_V5 }
%struct._ATOM_DIG_TRANSMITTER_CONFIG_V5 = type { i8 }
%struct._ATOM_DP_VS_MODE = type { i8, i8 }
%struct._ATOM_DP_VS_MODE_V4 = type { i8, %union.anon.117 }
%union.anon.117 = type { i8 }
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
%union.crtc_source_param = type { %struct._SELECT_CRTC_SOURCE_PARAMETERS }
%struct._SELECT_CRTC_SOURCE_PARAMETERS = type { i8, i8, [2 x i8] }
%union.external_encoder_control = type { %struct._EXTERNAL_ENCODER_CONTROL_PS_ALLOCATION_V3 }
%struct._EXTERNAL_ENCODER_CONTROL_PS_ALLOCATION_V3 = type { %struct._EXTERNAL_ENCODER_CONTROL_PARAMETERS_V3, [2 x i32] }
%struct._EXTERNAL_ENCODER_CONTROL_PARAMETERS_V3 = type { %union.anon.121, i8, i8, i8, i8, i8, i8 }
%union.anon.121 = type { i16 }
%struct._TV_ENCODER_CONTROL_PS_ALLOCATION = type { %struct._TV_ENCODER_CONTROL_PARAMETERS, %struct._WRITE_ONE_BYTE_HW_I2C_DATA_PARAMETERS }
%struct._TV_ENCODER_CONTROL_PARAMETERS = type { i16, i8, i8 }
%struct._DAC_ENCODER_CONTROL_PARAMETERS = type { i16, i8, i8 }
%struct._ENABLE_YUV_PARAMETERS = type { i8, i8, [2 x i8] }
%struct._DAC_LOAD_DETECTION_PS_ALLOCATION = type { %struct._DAC_LOAD_DETECTION_PARAMETERS, [2 x i32] }
%struct._DAC_LOAD_DETECTION_PARAMETERS = type { i16, i8, i8 }

@.str.1 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Memory allocation failed\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"radeon_bl%d\00", [20 x i8] zeroinitializer }, align 32
@radeon_atom_backlight_ops = internal constant { %struct.backlight_ops, [16 x i8] } { %struct.backlight_ops { i32 0, ptr @radeon_atom_backlight_update_status, ptr @radeon_atom_backlight_get_brightness, ptr null }, [16 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Backlight registration failed\0A\00", [33 x i8] zeroinitializer }, align 32
@radeon_atom_backlight_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.6, i32 248, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\016[drm] radeon atom DIG backlight initialized\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"radeon_atom_backlight_init\00", [37 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"drivers/gpu/drm/radeon/atombios_encoders.c\00", [53 x i8] zeroinitializer }, align 32
@radeon_atom_backlight_init._entry_ptr = internal global ptr @radeon_atom_backlight_init._entry, section ".printk_index", align 4
@.str.7 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Unknown table version %d, %d\0A\00", [34 x i8] zeroinitializer }, align 32
@radeon_audio = external dso_local local_unnamed_addr global i32, align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.8 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Unknown table for MST %d, %d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"LVDS required digital encoder 2 but it was in use - stealing\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Got encoder index incorrect - returning 0\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"chosen encoder in use %d\0A\00", [38 x i8] zeroinitializer }, align 32
@radeon_atom_enc_funcs = internal constant { %struct.drm_encoder_funcs, [16 x i8] } { %struct.drm_encoder_funcs { ptr null, ptr @radeon_enc_destroy, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@radeon_atom_dig_helper_funcs = internal constant { %struct.drm_encoder_helper_funcs, [44 x i8] } { %struct.drm_encoder_helper_funcs { ptr @radeon_atom_encoder_dpms, ptr null, ptr @radeon_atom_mode_fixup, ptr @radeon_atom_encoder_prepare, ptr @radeon_atom_encoder_commit, ptr @radeon_atom_encoder_mode_set, ptr null, ptr @radeon_atom_dig_detect, ptr null, ptr null, ptr @radeon_atom_encoder_disable, ptr null, ptr null }, [44 x i8] zeroinitializer }, align 32
@radeon_atom_dac_helper_funcs = internal constant { %struct.drm_encoder_helper_funcs, [44 x i8] } { %struct.drm_encoder_helper_funcs { ptr @radeon_atom_encoder_dpms, ptr null, ptr @radeon_atom_mode_fixup, ptr @radeon_atom_encoder_prepare, ptr @radeon_atom_encoder_commit, ptr @radeon_atom_encoder_mode_set, ptr null, ptr @radeon_atom_dac_detect, ptr null, ptr null, ptr null, ptr null, ptr null }, [44 x i8] zeroinitializer }, align 32
@radeon_atom_ext_helper_funcs = internal constant { %struct.drm_encoder_helper_funcs, [44 x i8] } { %struct.drm_encoder_helper_funcs { ptr @radeon_atom_ext_dpms, ptr null, ptr null, ptr @radeon_atom_ext_prepare, ptr @radeon_atom_ext_commit, ptr @radeon_atom_ext_mode_set, ptr null, ptr null, ptr null, ptr null, ptr @radeon_atom_ext_disable, ptr null, ptr null }, [44 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.13 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Unknown table version: %d, %d\0A\00", [33 x i8] zeroinitializer }, align 32
@radeon_atom_backlight_exit._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.6, i32 285, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\016[drm] radeon atom LVDS backlight unloaded\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"radeon_atom_backlight_exit\00", [37 x i8] zeroinitializer }, align 32
@radeon_atom_backlight_exit._entry_ptr = internal global ptr @radeon_atom_backlight_exit._entry, section ".printk_index", align 4
@.str.16 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"encoder dpms %d to mode %d, devices %08x, active_devices %08x\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Bios 0 scratch %x %08x\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"detect returned false \0A\00", [40 x i8] zeroinitializer }, align 32
@switch.table.atombios_dvo_setup = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"\00\02\02\01\02\03\04\02\05", [23 x i8] zeroinitializer }, align 32
@switch.table.atombios_dig_encoder_setup2 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"\00\02\02\01\02\03\04\02\05", [23 x i8] zeroinitializer }, align 32
@switch.table.atombios_dig_encoder_setup2.19 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"\00\02\02\01\02\03\04\02\05", [23 x i8] zeroinitializer }, align 32
@switch.table.atombios_set_mst_encoder_crtc_source = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"\03\09\0A\0B\0C\0D\0E", [25 x i8] zeroinitializer }, align 32
@switch.table.atombios_external_encoder_setup = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"\00\02\02\01\02\03\04\02\05", [23 x i8] zeroinitializer }, align 32
@switch.table.radeon_add_atom_encoder = internal constant { [6 x i32], [40 x i8] } { [6 x i32] [i32 1, i32 3, i32 3, i32 15, i32 3, i32 63], [40 x i8] zeroinitializer }, align 32
@switch.table.radeon_atom_encoder_prepare = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"\03\09\0A\0B\0C\0D\0E", [25 x i8] zeroinitializer }, align 32
@switch.table.radeon_atom_encoder_mode_set = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"\03\04\07\02\03\08\05", [25 x i8] zeroinitializer }, align 32
@switch.table.radeon_atom_encoder_mode_set.20 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"\03\04\07\02\03\08\05", [25 x i8] zeroinitializer }, align 32
@switch.table.radeon_atom_encoder_disable = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"\03\04\07\02\03\08\05", [25 x i8] zeroinitializer }, align 32
@switch.table.atombios_dac_setup = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"\04\04\03\03\04\04\04", [25 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [9 x i64] [i64 7, i64 32, i64 1, i64 15, i64 30, i64 31, i64 32, i64 33, i64 37]
@__sancov_gen_cov_switch_values.21 = internal global [6 x i64] [i64 4, i64 8, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.22 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 15, i64 19]
@__sancov_gen_cov_switch_values.23 = internal global [5 x i64] [i64 3, i64 8, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.24 = internal global [4 x i64] [i64 2, i64 32, i64 11, i64 20]
@__sancov_gen_cov_switch_values.25 = internal global [12 x i64] [i64 10, i64 32, i64 1, i64 2, i64 4, i64 5, i64 6, i64 7, i64 9, i64 10, i64 12, i64 14]
@__sancov_gen_cov_switch_values.26 = internal global [6 x i64] [i64 4, i64 8, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.27 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 5]
@__sancov_gen_cov_switch_values.28 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 5]
@__sancov_gen_cov_switch_values.29 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 5]
@__sancov_gen_cov_switch_values.30 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 5]
@__sancov_gen_cov_switch_values.31 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 5]
@__sancov_gen_cov_switch_values.32 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 5]
@__sancov_gen_cov_switch_values.33 = internal global [5 x i64] [i64 3, i64 32, i64 270000, i64 324000, i64 540000]
@__sancov_gen_cov_switch_values.34 = internal global [8 x i64] [i64 6, i64 32, i64 20, i64 30, i64 31, i64 32, i64 33, i64 37]
@__sancov_gen_cov_switch_values.35 = internal global [7 x i64] [i64 5, i64 8, i64 1, i64 2, i64 3, i64 4, i64 5]
@__sancov_gen_cov_switch_values.36 = internal global [5 x i64] [i64 3, i64 32, i64 30, i64 32, i64 33]
@__sancov_gen_cov_switch_values.37 = internal global [5 x i64] [i64 3, i64 32, i64 30, i64 32, i64 33]
@__sancov_gen_cov_switch_values.38 = internal global [5 x i64] [i64 3, i64 32, i64 30, i64 32, i64 33]
@__sancov_gen_cov_switch_values.39 = internal global [6 x i64] [i64 4, i64 32, i64 30, i64 32, i64 33, i64 37]
@__sancov_gen_cov_switch_values.40 = internal global [6 x i64] [i64 4, i64 32, i64 30, i64 32, i64 33, i64 37]
@__sancov_gen_cov_switch_values.41 = internal global [5 x i64] [i64 3, i64 32, i64 30, i64 32, i64 33]
@__sancov_gen_cov_switch_values.42 = internal global [7 x i64] [i64 5, i64 32, i64 30, i64 31, i64 32, i64 33, i64 37]
@__sancov_gen_cov_switch_values.43 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 2]
@__sancov_gen_cov_switch_values.44 = internal global [5 x i64] [i64 3, i64 8, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.45 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 5]
@__sancov_gen_cov_switch_values.46 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 5]
@__sancov_gen_cov_switch_values.47 = internal global [4 x i64] [i64 2, i64 32, i64 270000, i64 540000]
@__sancov_gen_cov_switch_values.48 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.49 = internal global [27 x i64] [i64 25, i64 8, i64 1, i64 2, i64 4, i64 5, i64 8, i64 9, i64 11, i64 12, i64 13, i64 14, i64 15, i64 16, i64 17, i64 19, i64 20, i64 21, i64 22, i64 25, i64 30, i64 31, i64 32, i64 33, i64 34, i64 35, i64 37]
@__sancov_gen_cov_switch_values.50 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 3, i64 5]
@__sancov_gen_cov_switch_values.51 = internal global [18 x i64] [i64 16, i64 32, i64 1, i64 2, i64 4, i64 5, i64 11, i64 15, i64 19, i64 20, i64 21, i64 22, i64 25, i64 30, i64 31, i64 32, i64 33, i64 37]
@__sancov_gen_cov_switch_values.52 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.53 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.54 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 2, i64 4]
@__sancov_gen_cov_switch_values.55 = internal global [13 x i64] [i64 11, i64 32, i64 1, i64 2, i64 4, i64 5, i64 11, i64 15, i64 19, i64 20, i64 21, i64 22, i64 25]
@__sancov_gen_cov_switch_values.56 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 7]
@__sancov_gen_cov_switch_values.57 = internal global [10 x i64] [i64 8, i64 32, i64 20, i64 21, i64 22, i64 30, i64 31, i64 32, i64 33, i64 37]
@__sancov_gen_cov_switch_values.58 = internal global [13 x i64] [i64 11, i64 32, i64 1, i64 2, i64 4, i64 5, i64 11, i64 15, i64 19, i64 20, i64 21, i64 22, i64 25]
@__sancov_gen_cov_switch_values.59 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 3, i64 5]
@__sancov_gen_cov_switch_values.60 = internal global [13 x i64] [i64 11, i64 32, i64 1, i64 2, i64 4, i64 5, i64 11, i64 15, i64 19, i64 20, i64 21, i64 22, i64 25]
@__sancov_gen_cov_switch_values.61 = internal global [13 x i64] [i64 11, i64 32, i64 1, i64 2, i64 4, i64 5, i64 11, i64 15, i64 19, i64 20, i64 21, i64 22, i64 25]
@__sancov_gen_cov_switch_values.62 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.63 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.64 = internal global [6 x i64] [i64 4, i64 32, i64 4, i64 5, i64 21, i64 22]
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 216, i32 3 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 224, i32 4 }
@___asan_gen_.71 = private unnamed_addr constant [26 x i8] c"radeon_atom_backlight_ops\00", align 1
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 181, i32 35 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 228, i32 3 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 248, i32 2 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 545, i32 4 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 2025, i32 3 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 2222, i32 4 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 2231, i32 3 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 2235, i32 3 }
@___asan_gen_.104 = private unnamed_addr constant [22 x i8] c"radeon_atom_enc_funcs\00", align 1
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 2682, i32 39 }
@___asan_gen_.107 = private unnamed_addr constant [29 x i8] c"radeon_atom_dig_helper_funcs\00", align 1
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 2653, i32 46 }
@___asan_gen_.110 = private unnamed_addr constant [29 x i8] c"radeon_atom_dac_helper_funcs\00", align 1
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 2663, i32 46 }
@___asan_gen_.113 = private unnamed_addr constant [29 x i8] c"radeon_atom_ext_helper_funcs\00", align 1
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 2644, i32 46 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 1527, i32 4 }
@___asan_gen_.119 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 285, i32 3 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 1788, i32 2 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 2450, i32 2 }
@___asan_gen_.134 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.135 = private constant [46 x i8] c"../drivers/gpu/drm/radeon/atombios_encoders.c\00", align 1
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 2394, i32 3 }
@___asan_gen_.137 = private unnamed_addr constant [32 x i8] c"switch.table.atombios_dvo_setup\00", align 1
@___asan_gen_.138 = private unnamed_addr constant [41 x i8] c"switch.table.atombios_dig_encoder_setup2\00", align 1
@___asan_gen_.139 = private unnamed_addr constant [44 x i8] c"switch.table.atombios_dig_encoder_setup2.19\00", align 1
@___asan_gen_.140 = private unnamed_addr constant [50 x i8] c"switch.table.atombios_set_mst_encoder_crtc_source\00", align 1
@___asan_gen_.141 = private unnamed_addr constant [45 x i8] c"switch.table.atombios_external_encoder_setup\00", align 1
@___asan_gen_.142 = private unnamed_addr constant [37 x i8] c"switch.table.radeon_add_atom_encoder\00", align 1
@___asan_gen_.143 = private unnamed_addr constant [41 x i8] c"switch.table.radeon_atom_encoder_prepare\00", align 1
@___asan_gen_.144 = private unnamed_addr constant [42 x i8] c"switch.table.radeon_atom_encoder_mode_set\00", align 1
@___asan_gen_.145 = private unnamed_addr constant [45 x i8] c"switch.table.radeon_atom_encoder_mode_set.20\00", align 1
@___asan_gen_.146 = private unnamed_addr constant [41 x i8] c"switch.table.radeon_atom_encoder_disable\00", align 1
@___asan_gen_.147 = private unnamed_addr constant [32 x i8] c"switch.table.atombios_dac_setup\00", align 1
@llvm.compiler.used = appending global [37 x ptr] [ptr @radeon_atom_backlight_exit._entry, ptr @radeon_atom_backlight_exit._entry_ptr, ptr @radeon_atom_backlight_init._entry, ptr @radeon_atom_backlight_init._entry_ptr, ptr @.str.1, ptr @.str.2, ptr @radeon_atom_backlight_ops, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @radeon_atom_enc_funcs, ptr @radeon_atom_dig_helper_funcs, ptr @radeon_atom_dac_helper_funcs, ptr @radeon_atom_ext_helper_funcs, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @switch.table.atombios_dvo_setup, ptr @switch.table.atombios_dig_encoder_setup2, ptr @switch.table.atombios_dig_encoder_setup2.19, ptr @switch.table.atombios_set_mst_encoder_crtc_source, ptr @switch.table.atombios_external_encoder_setup, ptr @switch.table.radeon_add_atom_encoder, ptr @switch.table.radeon_atom_encoder_prepare, ptr @switch.table.radeon_atom_encoder_mode_set, ptr @switch.table.radeon_atom_encoder_mode_set.20, ptr @switch.table.radeon_atom_encoder_disable, ptr @switch.table.atombios_dac_setup], section "llvm.metadata"
@0 = internal global [35 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radeon_atom_backlight_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radeon_atom_backlight_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radeon_atom_enc_funcs to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radeon_atom_dig_helper_funcs to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radeon_atom_dac_helper_funcs to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radeon_atom_ext_helper_funcs to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radeon_atom_backlight_exit._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.atombios_dvo_setup to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.atombios_dig_encoder_setup2 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.atombios_dig_encoder_setup2.19 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.atombios_set_mst_encoder_crtc_source to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.atombios_external_encoder_setup to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.radeon_add_atom_encoder to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.radeon_atom_encoder_prepare to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.radeon_atom_encoder_mode_set to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.radeon_atom_encoder_mode_set.20 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.radeon_atom_encoder_disable to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.atombios_dac_setup to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i8 @atombios_get_backlight_level(ptr nocapture noundef readonly %radeon_encoder) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %radeon_encoder to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %radeon_encoder, align 4
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_private, align 4
  %firmware_flags = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 44, i32 19
  %4 = ptrtoint ptr %firmware_flags to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %firmware_flags, align 4
  %6 = and i16 %5, 32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %6)
  %tobool.not = icmp eq i16 %6, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %family.i = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 6
  %7 = ptrtoint ptr %family.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %family.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 26, i32 %8)
  %cmp.i = icmp ugt i32 %8, 26
  %rmmio.i.i = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 31
  %9 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %rmmio.i.i, align 4
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i.i = getelementptr i8, ptr %10, i32 5932
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #10, !srcloc !58
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !59
  br label %radeon_atom_get_backlight_level_from_reg.exit

if.else.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i5.i = getelementptr i8, ptr %10, i32 24
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i5.i) #10, !srcloc !58
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !59
  br label %radeon_atom_get_backlight_level_from_reg.exit

radeon_atom_get_backlight_level_from_reg.exit:    ; preds = %if.else.i, %if.then.i
  %.sink.i = phi i32 [ %12, %if.else.i ], [ %11, %if.then.i ]
  %13 = lshr i32 %.sink.i, 16
  %conv.i = trunc i32 %13 to i8
  br label %cleanup

cleanup:                                          ; preds = %radeon_atom_get_backlight_level_from_reg.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i8 [ %conv.i, %radeon_atom_get_backlight_level_from_reg.exit ], [ 0, %entry.cleanup_crit_edge ]
  ret i8 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @atombios_set_backlight_level(ptr noundef %radeon_encoder, i8 noundef zeroext %level) local_unnamed_addr #0 align 64 {
entry:
  %args = alloca %struct._DISPLAY_DEVICE_OUTPUT_CONTROL_PARAMETERS, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %radeon_encoder to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %radeon_encoder, align 4
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_private, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %args) #10
  %mode_info = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 44
  %firmware_flags = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 44, i32 19
  %4 = ptrtoint ptr %args to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %args, align 4
  %5 = ptrtoint ptr %firmware_flags to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %firmware_flags, align 4
  %7 = and i16 %6, 32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %tobool.not = icmp eq i16 %7, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %devices = getelementptr inbounds %struct.radeon_encoder, ptr %radeon_encoder, i32 0, i32 3
  %8 = ptrtoint ptr %devices to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %devices, align 4
  %and3 = and i32 %9, 34
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool4.not = icmp eq i32 %and3, 0
  br i1 %tobool4.not, label %if.end.cleanup_crit_edge, label %land.lhs.true

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

land.lhs.true:                                    ; preds = %if.end
  %enc_priv = getelementptr inbounds %struct.radeon_encoder, ptr %radeon_encoder, i32 0, i32 12
  %10 = ptrtoint ptr %enc_priv to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %enc_priv, align 4
  %tobool5.not = icmp eq ptr %11, null
  br i1 %tobool5.not, label %land.lhs.true.cleanup_crit_edge, label %if.then6

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then6:                                         ; preds = %land.lhs.true
  %backlight_level = getelementptr inbounds %struct.radeon_encoder_atom_dig, ptr %11, i32 0, i32 9
  %12 = ptrtoint ptr %backlight_level to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %level, ptr %backlight_level, align 4
  %family.i = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 6
  %13 = ptrtoint ptr %family.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %family.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 26, i32 %14)
  %cmp.i = icmp ugt i32 %14, 26
  %rmmio.i.i = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 31
  %15 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %rmmio.i.i, align 4
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i.i = getelementptr i8, ptr %16, i32 5932
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #10, !srcloc !58
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !59
  br label %if.end.i

if.else.i:                                        ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i18.i = getelementptr i8, ptr %16, i32 24
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i18.i) #10, !srcloc !58
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !59
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %if.then.i
  %.sink.i = phi i32 [ %18, %if.else.i ], [ %17, %if.then.i ]
  %19 = and i32 %.sink.i, -16711681
  %20 = tail call i32 @llvm.bswap.i32(i32 %19) #10
  %conv.i = zext i8 %level to i32
  %shl.i = shl nuw nsw i32 %conv.i, 8
  %or.i = or i32 %20, %shl.i
  %21 = ptrtoint ptr %family.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %family.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 26, i32 %22)
  %cmp4.i = icmp ugt i32 %22, 26
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  tail call void @arm_heavy_mb() #10
  %23 = tail call i32 @llvm.bswap.i32(i32 %or.i) #10
  %24 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %rmmio.i.i, align 4
  br i1 %cmp4.i, label %if.then6.i, label %if.else7.i

if.then6.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i20.i = getelementptr i8, ptr %25, i32 5932
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i20.i, i32 %23) #10, !srcloc !60
  br label %radeon_atom_set_backlight_level_to_reg.exit

if.else7.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i24.i = getelementptr i8, ptr %25, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i24.i, i32 %23) #10, !srcloc !60
  br label %radeon_atom_set_backlight_level_to_reg.exit

radeon_atom_set_backlight_level_to_reg.exit:      ; preds = %if.else7.i, %if.then6.i
  %encoder_id = getelementptr inbounds %struct.radeon_encoder, ptr %radeon_encoder, i32 0, i32 2
  %26 = ptrtoint ptr %encoder_id to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %encoder_id, align 4
  %28 = zext i32 %27 to i64
  call void @__sanitizer_cov_trace_switch(i64 %28, ptr @__sancov_gen_cov_switch_values)
  switch i32 %27, label %radeon_atom_set_backlight_level_to_reg.exit.cleanup_crit_edge [
    i32 1, label %radeon_atom_set_backlight_level_to_reg.exit.sw.bb_crit_edge
    i32 15, label %radeon_atom_set_backlight_level_to_reg.exit.sw.bb_crit_edge53
    i32 30, label %radeon_atom_set_backlight_level_to_reg.exit.sw.bb23_crit_edge
    i32 31, label %radeon_atom_set_backlight_level_to_reg.exit.sw.bb23_crit_edge54
    i32 32, label %radeon_atom_set_backlight_level_to_reg.exit.sw.bb23_crit_edge55
    i32 33, label %radeon_atom_set_backlight_level_to_reg.exit.sw.bb23_crit_edge56
    i32 37, label %radeon_atom_set_backlight_level_to_reg.exit.sw.bb23_crit_edge57
  ]

radeon_atom_set_backlight_level_to_reg.exit.sw.bb23_crit_edge57: ; preds = %radeon_atom_set_backlight_level_to_reg.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb23

radeon_atom_set_backlight_level_to_reg.exit.sw.bb23_crit_edge56: ; preds = %radeon_atom_set_backlight_level_to_reg.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb23

radeon_atom_set_backlight_level_to_reg.exit.sw.bb23_crit_edge55: ; preds = %radeon_atom_set_backlight_level_to_reg.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb23

radeon_atom_set_backlight_level_to_reg.exit.sw.bb23_crit_edge54: ; preds = %radeon_atom_set_backlight_level_to_reg.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb23

radeon_atom_set_backlight_level_to_reg.exit.sw.bb23_crit_edge: ; preds = %radeon_atom_set_backlight_level_to_reg.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb23

radeon_atom_set_backlight_level_to_reg.exit.sw.bb_crit_edge53: ; preds = %radeon_atom_set_backlight_level_to_reg.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

radeon_atom_set_backlight_level_to_reg.exit.sw.bb_crit_edge: ; preds = %radeon_atom_set_backlight_level_to_reg.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

radeon_atom_set_backlight_level_to_reg.exit.cleanup_crit_edge: ; preds = %radeon_atom_set_backlight_level_to_reg.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.bb:                                            ; preds = %radeon_atom_set_backlight_level_to_reg.exit.sw.bb_crit_edge, %radeon_atom_set_backlight_level_to_reg.exit.sw.bb_crit_edge53
  %29 = ptrtoint ptr %backlight_level to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %backlight_level, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %cmp = icmp eq i8 %30, 0
  br i1 %cmp, label %if.then12, label %if.else

if.then12:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  %31 = ptrtoint ptr %args to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 2, ptr %args, align 4
  %32 = ptrtoint ptr %mode_info to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %mode_info, align 4
  %call = call i32 @atom_execute_table(ptr noundef %33, i32 noundef 23, ptr noundef nonnull %args) #10
  br label %cleanup

if.else:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  %34 = ptrtoint ptr %args to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 4, ptr %args, align 4
  %35 = ptrtoint ptr %mode_info to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %mode_info, align 4
  %call17 = call i32 @atom_execute_table(ptr noundef %36, i32 noundef 23, ptr noundef nonnull %args) #10
  %37 = ptrtoint ptr %args to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 3, ptr %args, align 4
  %38 = ptrtoint ptr %mode_info to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %mode_info, align 4
  %call21 = call i32 @atom_execute_table(ptr noundef %39, i32 noundef 23, ptr noundef nonnull %args) #10
  br label %cleanup

sw.bb23:                                          ; preds = %radeon_atom_set_backlight_level_to_reg.exit.sw.bb23_crit_edge, %radeon_atom_set_backlight_level_to_reg.exit.sw.bb23_crit_edge54, %radeon_atom_set_backlight_level_to_reg.exit.sw.bb23_crit_edge55, %radeon_atom_set_backlight_level_to_reg.exit.sw.bb23_crit_edge56, %radeon_atom_set_backlight_level_to_reg.exit.sw.bb23_crit_edge57
  %40 = ptrtoint ptr %backlight_level to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %backlight_level, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %41)
  %cmp26 = icmp eq i8 %41, 0
  br i1 %cmp26, label %if.then28, label %if.else29

if.then28:                                        ; preds = %sw.bb23
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @atombios_dig_transmitter_setup2(ptr noundef %radeon_encoder, i32 noundef 2, i8 noundef zeroext 0, i8 noundef zeroext 0, i32 noundef -1) #10
  br label %cleanup

if.else29:                                        ; preds = %sw.bb23
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @atombios_dig_transmitter_setup2(ptr noundef %radeon_encoder, i32 noundef 4, i8 noundef zeroext 0, i8 noundef zeroext 0, i32 noundef -1) #10
  tail call void @atombios_dig_transmitter_setup2(ptr noundef %radeon_encoder, i32 noundef 3, i8 noundef zeroext 0, i8 noundef zeroext 0, i32 noundef -1) #10
  br label %cleanup

cleanup:                                          ; preds = %if.else29, %if.then28, %if.else, %if.then12, %radeon_atom_set_backlight_level_to_reg.exit.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %args) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @atom_execute_table(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @atombios_dig_transmitter_setup(ptr noundef %encoder, i32 noundef %action, i8 noundef zeroext %lane_num, i8 noundef zeroext %lane_set) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @atombios_dig_transmitter_setup2(ptr noundef %encoder, i32 noundef %action, i8 noundef zeroext %lane_num, i8 noundef zeroext %lane_set, i32 noundef -1)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @radeon_atom_backlight_init(ptr noundef %radeon_encoder, ptr nocapture noundef readonly %drm_connector) local_unnamed_addr #0 align 64 {
entry:
  %props = alloca %struct.backlight_properties, align 4
  %bl_name = alloca [16 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %radeon_encoder to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %radeon_encoder, align 4
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_private, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %props) #10
  %4 = getelementptr inbounds %struct.backlight_properties, ptr %props, i32 0, i32 1
  %5 = getelementptr inbounds %struct.backlight_properties, ptr %props, i32 0, i32 4
  %6 = call ptr @memset(ptr %props, i32 255, i32 28)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %bl_name) #10
  %pdev = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 2
  %7 = call ptr @memset(ptr %bl_name, i32 255, i32 16)
  %8 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pdev, align 8
  %subsystem_vendor = getelementptr inbounds %struct.pci_dev, ptr %9, i32 0, i32 9
  %10 = ptrtoint ptr %subsystem_vendor to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %subsystem_vendor, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 4203, i16 %11)
  %cmp = icmp eq i16 %11, 4203
  br i1 %cmp, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %device = getelementptr inbounds %struct.pci_dev, ptr %9, i32 0, i32 8
  %12 = ptrtoint ptr %device to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %device, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 26433, i16 %13)
  %cmp5 = icmp eq i16 %13, 26433
  br i1 %cmp5, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %enc_priv = getelementptr inbounds %struct.radeon_encoder, ptr %radeon_encoder, i32 0, i32 12
  %14 = ptrtoint ptr %enc_priv to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %enc_priv, align 4
  %tobool.not = icmp eq ptr %15, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end9

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %is_atom_bios = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 14
  %16 = ptrtoint ptr %is_atom_bios to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %is_atom_bios, align 4, !range !61
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool10.not = icmp eq i8 %17, 0
  br i1 %tobool10.not, label %if.end9.cleanup_crit_edge, label %if.end12

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end12:                                         ; preds = %if.end9
  %firmware_flags = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 44, i32 19
  %18 = ptrtoint ptr %firmware_flags to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %firmware_flags, align 4
  %20 = and i16 %19, 32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %20)
  %tobool14.not = icmp eq i16 %20, 0
  br i1 %tobool14.not, label %if.end12.cleanup_crit_edge, label %if.end16

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end16:                                         ; preds = %if.end12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %21 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %21, i32 noundef 3264, i32 noundef 8) #13
  %tobool18.not = icmp eq ptr %call7.i, null
  br i1 %tobool18.not, label %if.then19, label %if.end20

if.then19:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.1) #10
  br label %error

if.end20:                                         ; preds = %if.end16
  %22 = call ptr @memset(ptr %props, i32 0, i32 28)
  %23 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 255, ptr %4, align 4
  %24 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 1, ptr %5, align 4
  %primary = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 6
  %25 = ptrtoint ptr %primary to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %primary, align 4
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %26, align 4
  %call21 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %bl_name, i32 noundef 16, ptr noundef nonnull @.str.2, i32 noundef %28)
  %kdev = getelementptr inbounds %struct.drm_connector, ptr %drm_connector, i32 0, i32 1
  %29 = ptrtoint ptr %kdev to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %kdev, align 4
  %call23 = call ptr @backlight_device_register(ptr noundef nonnull %bl_name, ptr noundef %30, ptr noundef nonnull %call7.i, ptr noundef nonnull @radeon_atom_backlight_ops, ptr noundef nonnull %props) #10
  %cmp.i = icmp ugt ptr %call23, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then25, label %if.end26

if.then25:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.3) #10
  br label %error

if.end26:                                         ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #12
  %31 = ptrtoint ptr %call7.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %radeon_encoder, ptr %call7.i, align 8
  %32 = ptrtoint ptr %enc_priv to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %enc_priv, align 4
  %bl_dev = getelementptr inbounds %struct.radeon_encoder_atom_dig, ptr %33, i32 0, i32 7
  %34 = ptrtoint ptr %bl_dev to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %call23, ptr %bl_dev, align 4
  %call28 = call i32 @radeon_atom_backlight_get_brightness(ptr noundef %call23)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %cmp32 = icmp eq i32 %call28, 0
  %spec.select = select i1 %cmp32, i32 255, i32 %call28
  %35 = ptrtoint ptr %call23 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %spec.select, ptr %call23, align 8
  %power = getelementptr inbounds %struct.backlight_properties, ptr %call23, i32 0, i32 2
  %36 = ptrtoint ptr %power to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 0, ptr %power, align 8
  call fastcc void @backlight_update_status(ptr noundef %call23)
  %call40 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4) #14
  %bl_encoder = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 44, i32 20
  %37 = ptrtoint ptr %bl_encoder to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %radeon_encoder, ptr %bl_encoder, align 4
  br label %cleanup

error:                                            ; preds = %if.then25, %if.then19
  call void @kfree(ptr noundef %call7.i) #10
  br label %cleanup

cleanup:                                          ; preds = %error, %if.end26, %if.end12.cleanup_crit_edge, %if.end9.cleanup_crit_edge, %if.end.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %bl_name) #10
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %props) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_err(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @backlight_device_register(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @radeon_atom_backlight_get_brightness(ptr nocapture noundef readonly %bd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
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
  %family.i = getelementptr inbounds %struct.radeon_device, ptr %7, i32 0, i32 6
  %8 = ptrtoint ptr %family.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %family.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 26, i32 %9)
  %cmp.i = icmp ugt i32 %9, 26
  %rmmio.i.i = getelementptr inbounds %struct.radeon_device, ptr %7, i32 0, i32 31
  %10 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %rmmio.i.i, align 4
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i.i = getelementptr i8, ptr %11, i32 5932
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #10, !srcloc !58
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !59
  br label %radeon_atom_get_backlight_level_from_reg.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i5.i = getelementptr i8, ptr %11, i32 24
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i5.i) #10, !srcloc !58
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !59
  br label %radeon_atom_get_backlight_level_from_reg.exit

radeon_atom_get_backlight_level_from_reg.exit:    ; preds = %if.else.i, %if.then.i
  %.sink.i = phi i32 [ %13, %if.else.i ], [ %12, %if.then.i ]
  %14 = lshr i32 %.sink.i, 16
  %conv = and i32 %14, 255
  ret i32 %conv
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @backlight_update_status(ptr noundef %bd) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %update_lock = getelementptr inbounds %struct.backlight_device, ptr %bd, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %update_lock, i32 noundef 0) #10
  %ops = getelementptr inbounds %struct.backlight_device, ptr %bd, i32 0, i32 3
  %0 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ops, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %update_status = getelementptr inbounds %struct.backlight_ops, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %update_status to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %update_status, align 4
  %tobool2.not = icmp eq ptr %3, null
  br i1 %tobool2.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call i32 %3(ptr noundef %bd) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  tail call void @mutex_unlock(ptr noundef %update_lock) #10
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @atombios_dvo_setup(ptr noundef %encoder, i32 noundef %action) local_unnamed_addr #0 align 64 {
entry:
  %args = alloca %union.dvo_encoder_control, align 2
  %frev = alloca i8, align 1
  %crev = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %encoder to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %encoder, align 4
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_private, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %args) #10
  %4 = getelementptr inbounds %struct._DVO_ENCODER_CONTROL_PARAMETERS, ptr %args, i32 0, i32 1
  %5 = getelementptr inbounds %struct._DVO_ENCODER_CONTROL_PARAMETERS, ptr %args, i32 0, i32 2
  %6 = getelementptr inbounds %struct._DVO_ENCODER_CONTROL_PARAMETERS, ptr %args, i32 0, i32 3
  %7 = getelementptr inbounds %struct._DVO_ENCODER_CONTROL_PARAMETERS, ptr %args, i32 0, i32 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %frev) #10
  %8 = ptrtoint ptr %frev to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 -1, ptr %frev, align 1, !annotation !62
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %crev) #10
  %9 = ptrtoint ptr %crev to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 -1, ptr %crev, align 1, !annotation !62
  %10 = call ptr @memset(ptr %args, i32 0, i32 16)
  %mode_info = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 44
  %11 = ptrtoint ptr %mode_info to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %mode_info, align 4
  %call = call zeroext i1 @atom_parse_cmd_header(ptr noundef %12, i32 noundef 8, ptr noundef nonnull %frev, ptr noundef nonnull %crev) #10
  br i1 %call, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %family = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 6
  %13 = ptrtoint ptr %family to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %family, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %14)
  %cmp = icmp ult i32 %14, 16
  br i1 %cmp, label %if.end3.thread, label %if.end3

if.end3.thread:                                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %15 = ptrtoint ptr %frev to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 1, ptr %frev, align 1
  br label %sw.bb

if.end3:                                          ; preds = %if.end
  %16 = ptrtoint ptr %frev to i32
  call void @__asan_load1_noabort(i32 %16)
  %.pr = load i8, ptr %frev, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %.pr)
  %cond = icmp eq i8 %.pr, 1
  br i1 %cond, label %if.end3.sw.bb_crit_edge, label %sw.default50

if.end3.sw.bb_crit_edge:                          ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

sw.bb:                                            ; preds = %if.end3.sw.bb_crit_edge, %if.end3.thread
  %17 = ptrtoint ptr %crev to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %crev, align 1
  %19 = zext i8 %18 to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values.21)
  switch i8 %18, label %sw.default [
    i8 1, label %sw.bb5
    i8 2, label %sw.bb18
    i8 3, label %sw.bb32
    i8 4, label %sw.bb39
  ]

sw.bb5:                                           ; preds = %sw.bb
  %conv6 = trunc i32 %action to i8
  %20 = ptrtoint ptr %args to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %conv6, ptr %args, align 2
  %pixel_clock = getelementptr inbounds %struct.radeon_encoder, ptr %encoder, i32 0, i32 6
  %21 = ptrtoint ptr %pixel_clock to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %pixel_clock, align 4
  %call7 = call zeroext i1 @radeon_dig_monitor_is_duallink(ptr noundef %encoder, i32 noundef %22) #10
  br i1 %call7, label %if.then8, label %sw.bb5.if.end12_crit_edge

sw.bb5.if.end12_crit_edge:                        ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end12

if.then8:                                         ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #12
  %ucMisc = getelementptr inbounds %struct._ENABLE_EXTERNAL_TMDS_ENCODER_PARAMETERS, ptr %args, i32 0, i32 1
  %23 = ptrtoint ptr %ucMisc to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %ucMisc, align 1
  %25 = or i8 %24, 1
  store i8 %25, ptr %ucMisc, align 1
  br label %if.end12

if.end12:                                         ; preds = %if.then8, %sw.bb5.if.end12_crit_edge
  %ucMisc14 = getelementptr inbounds %struct._ENABLE_EXTERNAL_TMDS_ENCODER_PARAMETERS, ptr %args, i32 0, i32 1
  %26 = ptrtoint ptr %ucMisc14 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %ucMisc14, align 1
  %28 = or i8 %27, 2
  store i8 %28, ptr %ucMisc14, align 1
  br label %sw.epilog53

sw.bb18:                                          ; preds = %sw.bb
  %conv19 = trunc i32 %action to i8
  %29 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %conv19, ptr %6, align 1
  %pixel_clock20 = getelementptr inbounds %struct.radeon_encoder, ptr %encoder, i32 0, i32 6
  %30 = ptrtoint ptr %pixel_clock20 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %pixel_clock20, align 4
  %div = udiv i32 %31, 10
  %conv21 = trunc i32 %div to i16
  %32 = call i16 @llvm.bswap.i16(i16 %conv21)
  %33 = ptrtoint ptr %args to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 %32, ptr %args, align 2
  %34 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 3, ptr %5, align 2
  %call25 = call zeroext i1 @radeon_dig_monitor_is_duallink(ptr noundef %encoder, i32 noundef %31) #10
  br i1 %call25, label %if.then26, label %sw.bb18.sw.epilog53_crit_edge

sw.bb18.sw.epilog53_crit_edge:                    ; preds = %sw.bb18
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog53

if.then26:                                        ; preds = %sw.bb18
  call void @__sanitizer_cov_trace_pc() #12
  %35 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %7, align 2
  %37 = or i8 %36, 1
  store i8 %37, ptr %7, align 2
  br label %sw.epilog53

sw.bb32:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  %conv33 = trunc i32 %action to i8
  %ucAction34 = getelementptr inbounds %struct._DVO_ENCODER_CONTROL_PARAMETERS_V3, ptr %args, i32 0, i32 2
  %38 = ptrtoint ptr %ucAction34 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %conv33, ptr %ucAction34, align 1
  %pixel_clock35 = getelementptr inbounds %struct.radeon_encoder, ptr %encoder, i32 0, i32 6
  %39 = ptrtoint ptr %pixel_clock35 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %pixel_clock35, align 4
  %div36 = udiv i32 %40, 10
  %conv37 = trunc i32 %div36 to i16
  %41 = call i16 @llvm.bswap.i16(i16 %conv37)
  %42 = ptrtoint ptr %args to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 %41, ptr %args, align 2
  %43 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 0, ptr %4, align 2
  br label %sw.epilog53

sw.bb39:                                          ; preds = %sw.bb
  %conv40 = trunc i32 %action to i8
  %ucAction41 = getelementptr inbounds %struct._DVO_ENCODER_CONTROL_PARAMETERS_V1_4, ptr %args, i32 0, i32 2
  %44 = ptrtoint ptr %ucAction41 to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 %conv40, ptr %ucAction41, align 1
  %pixel_clock42 = getelementptr inbounds %struct.radeon_encoder, ptr %encoder, i32 0, i32 6
  %45 = ptrtoint ptr %pixel_clock42 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %pixel_clock42, align 4
  %div43 = udiv i32 %46, 10
  %conv44 = trunc i32 %div43 to i16
  %47 = call i16 @llvm.bswap.i16(i16 %conv44)
  %48 = ptrtoint ptr %args to i32
  call void @__asan_store2_noabort(i32 %48)
  store i16 %47, ptr %args, align 2
  %49 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 0, ptr %4, align 2
  %crtc.i = getelementptr inbounds %struct.drm_encoder, ptr %encoder, i32 0, i32 8
  %50 = ptrtoint ptr %crtc.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %crtc.i, align 4
  %tobool.not.i = icmp eq ptr %51, null
  br i1 %tobool.not.i, label %sw.bb39.if.end.i_crit_edge, label %if.then.i

sw.bb39.if.end.i_crit_edge:                       ; preds = %sw.bb39
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

if.then.i:                                        ; preds = %sw.bb39
  call void @__sanitizer_cov_trace_pc() #12
  %bpc2.i = getelementptr inbounds %struct.radeon_crtc, ptr %51, i32 0, i32 30
  %52 = ptrtoint ptr %bpc2.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %bpc2.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %sw.bb39.if.end.i_crit_edge
  %bpc.0.i = phi i32 [ %53, %if.then.i ], [ 8, %sw.bb39.if.end.i_crit_edge ]
  %54 = call i32 @llvm.fshl.i32(i32 %bpc.0.i, i32 %bpc.0.i, i32 31) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %54)
  %55 = icmp ult i32 %54, 9
  br i1 %55, label %switch.lookup, label %if.end.i.radeon_atom_get_bpc.exit_crit_edge

if.end.i.radeon_atom_get_bpc.exit_crit_edge:      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %radeon_atom_get_bpc.exit

switch.lookup:                                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %switch.gep = getelementptr inbounds [9 x i8], ptr @switch.table.atombios_dvo_setup, i32 0, i32 %54
  %56 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load1_noabort(i32 %56)
  %switch.load = load i8, ptr %switch.gep, align 1
  br label %radeon_atom_get_bpc.exit

radeon_atom_get_bpc.exit:                         ; preds = %switch.lookup, %if.end.i.radeon_atom_get_bpc.exit_crit_edge
  %retval.0.i = phi i8 [ %switch.load, %switch.lookup ], [ 2, %if.end.i.radeon_atom_get_bpc.exit_crit_edge ]
  %57 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 %retval.0.i, ptr %5, align 2
  br label %sw.epilog53

sw.default:                                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  %conv4 = zext i8 %18 to i32
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.7, i32 noundef 1, i32 noundef %conv4) #10
  br label %sw.epilog53

sw.default50:                                     ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #12
  %conv = zext i8 %.pr to i32
  %58 = ptrtoint ptr %crev to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %crev, align 1
  %conv52 = zext i8 %59 to i32
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.7, i32 noundef %conv, i32 noundef %conv52) #10
  br label %sw.epilog53

sw.epilog53:                                      ; preds = %sw.default50, %sw.default, %radeon_atom_get_bpc.exit, %sw.bb32, %if.then26, %sw.bb18.sw.epilog53_crit_edge, %if.end12
  %60 = ptrtoint ptr %mode_info to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %mode_info, align 4
  %call56 = call i32 @atom_execute_table(ptr noundef %61, i32 noundef 8, ptr noundef nonnull %args) #10
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog53, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %crev) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %frev) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %args) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @atom_parse_cmd_header(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @radeon_dig_monitor_is_duallink(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @atombios_digital_setup(ptr noundef %encoder, i32 noundef %action) local_unnamed_addr #0 align 64 {
entry:
  %args = alloca %union.lvds_encoder_control, align 8
  %frev = alloca i8, align 1
  %crev = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #12
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
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %args) #10
  %6 = getelementptr inbounds %struct._LVDS_ENCODER_CONTROL_PARAMETERS_V2, ptr %args, i32 0, i32 1
  %7 = getelementptr inbounds %struct._LVDS_ENCODER_CONTROL_PARAMETERS_V2, ptr %args, i32 0, i32 2
  %8 = getelementptr inbounds %struct._LVDS_ENCODER_CONTROL_PARAMETERS_V2, ptr %args, i32 0, i32 3
  %9 = getelementptr inbounds %struct._LVDS_ENCODER_CONTROL_PARAMETERS_V2, ptr %args, i32 0, i32 4
  %10 = getelementptr inbounds %struct._LVDS_ENCODER_CONTROL_PARAMETERS_V2, ptr %args, i32 0, i32 5
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %frev) #10
  %11 = ptrtoint ptr %frev to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 -1, ptr %frev, align 1, !annotation !62
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %crev) #10
  %12 = ptrtoint ptr %crev to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 -1, ptr %crev, align 1, !annotation !62
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call i32 @atombios_get_encoder_mode(ptr noundef %encoder)
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call)
  %cmp = icmp eq i32 %call, 3
  %13 = ptrtoint ptr %args to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 0, ptr %args, align 8
  %encoder_id = getelementptr inbounds %struct.radeon_encoder, ptr %encoder, i32 0, i32 2
  %14 = ptrtoint ptr %encoder_id to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %encoder_id, align 4
  %16 = zext i32 %15 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.22)
  switch i32 %15, label %if.end.sw.epilog_crit_edge [
    i32 1, label %sw.bb
    i32 2, label %if.end.sw.bb4_crit_edge
    i32 19, label %if.end.sw.bb4_crit_edge209
    i32 15, label %sw.bb5
  ]

if.end.sw.bb4_crit_edge209:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb4

if.end.sw.bb4_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb4

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb4:                                           ; preds = %if.end.sw.bb4_crit_edge, %if.end.sw.bb4_crit_edge209
  br label %sw.epilog

sw.bb5:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %devices = getelementptr inbounds %struct.radeon_encoder, ptr %encoder, i32 0, i32 3
  %17 = ptrtoint ptr %devices to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %devices, align 4
  %and = and i32 %18, 34
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool6.not = icmp eq i32 %and, 0
  %. = select i1 %tobool6.not, i32 22, i32 31
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb5, %sw.bb4, %sw.bb, %if.end.sw.epilog_crit_edge
  %index.0 = phi i32 [ 0, %if.end.sw.epilog_crit_edge ], [ 30, %sw.bb4 ], [ 31, %sw.bb ], [ %., %sw.bb5 ]
  %mode_info = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 44
  %19 = ptrtoint ptr %mode_info to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %mode_info, align 4
  %call9 = call zeroext i1 @atom_parse_cmd_header(ptr noundef %20, i32 noundef %index.0, ptr noundef nonnull %frev, ptr noundef nonnull %crev) #10
  br i1 %call9, label %if.end11, label %sw.epilog.cleanup_crit_edge

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end11:                                         ; preds = %sw.epilog
  %21 = ptrtoint ptr %frev to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %frev, align 1
  %.off = add i8 %22, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %.off)
  %switch = icmp ult i8 %.off, 2
  br i1 %switch, label %sw.bb12, label %sw.default166

sw.bb12:                                          ; preds = %if.end11
  %23 = ptrtoint ptr %crev to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %crev, align 1
  %25 = zext i8 %24 to i64
  call void @__sanitizer_cov_trace_switch(i64 %25, ptr @__sancov_gen_cov_switch_values.23)
  switch i8 %24, label %sw.default [
    i8 1, label %sw.bb14
    i8 2, label %sw.bb12.sw.bb65_crit_edge
    i8 3, label %sw.bb12.sw.bb65_crit_edge210
  ]

sw.bb12.sw.bb65_crit_edge210:                     ; preds = %sw.bb12
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb65

sw.bb12.sw.bb65_crit_edge:                        ; preds = %sw.bb12
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb65

sw.bb14:                                          ; preds = %sw.bb12
  %26 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 0, ptr %6, align 2
  %conv15 = trunc i32 %action to i8
  %27 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %conv15, ptr %7, align 1
  br i1 %cmp, label %if.then17, label %sw.bb14.if.end21_crit_edge

sw.bb14.if.end21_crit_edge:                       ; preds = %sw.bb14
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end21

if.then17:                                        ; preds = %sw.bb14
  call void @__sanitizer_cov_trace_pc() #12
  %28 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 8, ptr %6, align 2
  br label %if.end21

if.end21:                                         ; preds = %if.then17, %sw.bb14.if.end21_crit_edge
  %pixel_clock = getelementptr inbounds %struct.radeon_encoder, ptr %encoder, i32 0, i32 6
  %29 = ptrtoint ptr %pixel_clock to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %pixel_clock, align 4
  %div = udiv i32 %30, 10
  %conv22 = trunc i32 %div to i16
  %31 = call i16 @llvm.bswap.i16(i16 %conv22)
  %32 = ptrtoint ptr %args to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 %31, ptr %args, align 8
  %devices23 = getelementptr inbounds %struct.radeon_encoder, ptr %encoder, i32 0, i32 3
  %33 = ptrtoint ptr %devices23 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %devices23, align 4
  %and24 = and i32 %34, 34
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24)
  %tobool25.not = icmp eq i32 %and24, 0
  br i1 %tobool25.not, label %if.else44, label %if.then26

if.then26:                                        ; preds = %if.end21
  %lcd_misc = getelementptr inbounds %struct.radeon_encoder_atom_dig, ptr %5, i32 0, i32 3
  %35 = ptrtoint ptr %lcd_misc to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %lcd_misc, align 4
  %and27 = and i32 %36, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27)
  %tobool28.not = icmp eq i32 %and27, 0
  br i1 %tobool28.not, label %if.then26.if.end34_crit_edge, label %if.then29

if.then26.if.end34_crit_edge:                     ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end34

if.then29:                                        ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #12
  %37 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %6, align 2
  %39 = or i8 %38, 1
  store i8 %39, ptr %6, align 2
  br label %if.end34

if.end34:                                         ; preds = %if.then29, %if.then26.if.end34_crit_edge
  %40 = ptrtoint ptr %lcd_misc to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %lcd_misc, align 4
  %and36 = and i32 %41, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and36)
  %tobool37.not = icmp eq i32 %and36, 0
  br i1 %tobool37.not, label %if.end34.sw.epilog169_crit_edge, label %if.then38

if.end34.sw.epilog169_crit_edge:                  ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog169

if.then38:                                        ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #12
  %42 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %6, align 2
  %44 = or i8 %43, 2
  store i8 %44, ptr %6, align 2
  br label %sw.epilog169

if.else44:                                        ; preds = %if.end21
  %45 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %5, align 4, !range !61
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %46)
  %tobool45.not = icmp eq i8 %46, 0
  br i1 %tobool45.not, label %if.else44.if.end51_crit_edge, label %if.then46

if.else44.if.end51_crit_edge:                     ; preds = %if.else44
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end51

if.then46:                                        ; preds = %if.else44
  call void @__sanitizer_cov_trace_pc() #12
  %47 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %6, align 2
  %49 = or i8 %48, 4
  store i8 %49, ptr %6, align 2
  br label %if.end51

if.end51:                                         ; preds = %if.then46, %if.else44.if.end51_crit_edge
  %call53 = call zeroext i1 @radeon_dig_monitor_is_duallink(ptr noundef %encoder, i32 noundef %30) #10
  br i1 %call53, label %if.then54, label %if.end51.if.end59_crit_edge

if.end51.if.end59_crit_edge:                      ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end59

if.then54:                                        ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #12
  %50 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %6, align 2
  %52 = or i8 %51, 1
  store i8 %52, ptr %6, align 2
  br label %if.end59

if.end59:                                         ; preds = %if.then54, %if.end51.if.end59_crit_edge
  %53 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %6, align 2
  %55 = or i8 %54, 2
  store i8 %55, ptr %6, align 2
  br label %sw.epilog169

sw.bb65:                                          ; preds = %sw.bb12.sw.bb65_crit_edge, %sw.bb12.sw.bb65_crit_edge210
  %56 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 0, ptr %6, align 2
  %conv67 = trunc i32 %action to i8
  %57 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 %conv67, ptr %7, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %24)
  %cmp70 = icmp eq i8 %24, 3
  br i1 %cmp70, label %if.then72, label %sw.bb65.if.end80_crit_edge

sw.bb65.if.end80_crit_edge:                       ; preds = %sw.bb65
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end80

if.then72:                                        ; preds = %sw.bb65
  %coherent_mode = getelementptr inbounds %struct.radeon_encoder_atom_dig, ptr %5, i32 0, i32 1
  %58 = ptrtoint ptr %coherent_mode to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %coherent_mode, align 1, !range !61
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %59)
  %tobool73.not = icmp eq i8 %59, 0
  br i1 %tobool73.not, label %if.then72.if.end80_crit_edge, label %if.then74

if.then72.if.end80_crit_edge:                     ; preds = %if.then72
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end80

if.then74:                                        ; preds = %if.then72
  call void @__sanitizer_cov_trace_pc() #12
  %60 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 2, ptr %6, align 2
  br label %if.end80

if.end80:                                         ; preds = %if.then74, %if.then72.if.end80_crit_edge, %sw.bb65.if.end80_crit_edge
  br i1 %cmp, label %if.then82, label %if.end80.if.end87_crit_edge

if.end80.if.end87_crit_edge:                      ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end87

if.then82:                                        ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #12
  %61 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %6, align 2
  %63 = or i8 %62, 8
  store i8 %63, ptr %6, align 2
  br label %if.end87

if.end87:                                         ; preds = %if.then82, %if.end80.if.end87_crit_edge
  %pixel_clock88 = getelementptr inbounds %struct.radeon_encoder, ptr %encoder, i32 0, i32 6
  %64 = ptrtoint ptr %pixel_clock88 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %pixel_clock88, align 4
  %div89 = udiv i32 %65, 10
  %conv90 = trunc i32 %div89 to i16
  %66 = call i16 @llvm.bswap.i16(i16 %conv90)
  %67 = ptrtoint ptr %args to i32
  call void @__asan_store2_noabort(i32 %67)
  store i16 %66, ptr %args, align 8
  %devices92 = getelementptr inbounds %struct.radeon_encoder, ptr %encoder, i32 0, i32 3
  %68 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 0, ptr %8, align 4
  %69 = ptrtoint ptr %devices92 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %devices92, align 4
  %and93 = and i32 %70, 34
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and93)
  %tobool94.not = icmp eq i32 %and93, 0
  br i1 %tobool94.not, label %if.else145, label %if.then95

if.then95:                                        ; preds = %if.end87
  %lcd_misc96 = getelementptr inbounds %struct.radeon_encoder_atom_dig, ptr %5, i32 0, i32 3
  %71 = ptrtoint ptr %lcd_misc96 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %lcd_misc96, align 4
  %and97 = and i32 %72, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and97)
  %tobool98.not = icmp eq i32 %and97, 0
  br i1 %tobool98.not, label %if.then95.if.end104_crit_edge, label %if.then99

if.then95.if.end104_crit_edge:                    ; preds = %if.then95
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end104

if.then99:                                        ; preds = %if.then95
  call void @__sanitizer_cov_trace_pc() #12
  %73 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %6, align 2
  %75 = or i8 %74, 1
  store i8 %75, ptr %6, align 2
  br label %if.end104

if.end104:                                        ; preds = %if.then99, %if.then95.if.end104_crit_edge
  %76 = ptrtoint ptr %lcd_misc96 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %lcd_misc96, align 4
  %and106 = and i32 %77, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and106)
  %tobool107.not = icmp eq i32 %and106, 0
  br i1 %tobool107.not, label %if.end104.if.end119_crit_edge, label %if.then108

if.end104.if.end119_crit_edge:                    ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end119

if.then108:                                       ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #12
  %and111 = and i32 %77, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and111)
  %tobool112.not = icmp eq i32 %and111, 0
  %spec.store.select = select i1 %tobool112.not, i8 1, i8 17
  %78 = ptrtoint ptr %9 to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 %spec.store.select, ptr %9, align 1
  br label %if.end119

if.end119:                                        ; preds = %if.then108, %if.end104.if.end119_crit_edge
  %79 = ptrtoint ptr %lcd_misc96 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %lcd_misc96, align 4
  %and121 = and i32 %80, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and121)
  %tobool122.not = icmp eq i32 %and121, 0
  br i1 %tobool122.not, label %if.end119.sw.epilog169_crit_edge, label %if.then123

if.end119.sw.epilog169_crit_edge:                 ; preds = %if.end119
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog169

if.then123:                                       ; preds = %if.end119
  %and126 = and i32 %80, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and126)
  %tobool127.not = icmp eq i32 %and126, 0
  %spec.store.select208 = select i1 %tobool127.not, i8 1, i8 17
  %81 = ptrtoint ptr %10 to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 %spec.store.select208, ptr %10, align 2
  %82 = and i32 %80, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %82)
  %cmp136 = icmp eq i32 %82, 8
  br i1 %cmp136, label %if.then138, label %if.then123.sw.epilog169_crit_edge

if.then123.sw.epilog169_crit_edge:                ; preds = %if.then123
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog169

if.then138:                                       ; preds = %if.then123
  call void @__sanitizer_cov_trace_pc() #12
  %83 = or i8 %spec.store.select208, 32
  %84 = ptrtoint ptr %10 to i32
  call void @__asan_store1_noabort(i32 %84)
  store i8 %83, ptr %10, align 2
  br label %sw.epilog169

if.else145:                                       ; preds = %if.end87
  %85 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %5, align 4, !range !61
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %86)
  %tobool147.not = icmp eq i8 %86, 0
  br i1 %tobool147.not, label %if.else145.if.end153_crit_edge, label %if.then148

if.else145.if.end153_crit_edge:                   ; preds = %if.else145
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end153

if.then148:                                       ; preds = %if.else145
  call void @__sanitizer_cov_trace_pc() #12
  %87 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %6, align 2
  %89 = or i8 %88, 4
  store i8 %89, ptr %6, align 2
  br label %if.end153

if.end153:                                        ; preds = %if.then148, %if.else145.if.end153_crit_edge
  %call155 = call zeroext i1 @radeon_dig_monitor_is_duallink(ptr noundef %encoder, i32 noundef %65) #10
  br i1 %call155, label %if.then156, label %if.end153.sw.epilog169_crit_edge

if.end153.sw.epilog169_crit_edge:                 ; preds = %if.end153
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog169

if.then156:                                       ; preds = %if.end153
  call void @__sanitizer_cov_trace_pc() #12
  %90 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %6, align 2
  %92 = or i8 %91, 1
  store i8 %92, ptr %6, align 2
  br label %sw.epilog169

sw.default:                                       ; preds = %sw.bb12
  call void @__sanitizer_cov_trace_pc() #12
  %conv13 = zext i8 %24 to i32
  %conv163 = zext i8 %22 to i32
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.7, i32 noundef %conv163, i32 noundef %conv13) #10
  br label %sw.epilog169

sw.default166:                                    ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  %conv = zext i8 %22 to i32
  %93 = ptrtoint ptr %crev to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %crev, align 1
  %conv168 = zext i8 %94 to i32
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.7, i32 noundef %conv, i32 noundef %conv168) #10
  br label %sw.epilog169

sw.epilog169:                                     ; preds = %sw.default166, %sw.default, %if.then156, %if.end153.sw.epilog169_crit_edge, %if.then138, %if.then123.sw.epilog169_crit_edge, %if.end119.sw.epilog169_crit_edge, %if.end59, %if.then38, %if.end34.sw.epilog169_crit_edge
  %95 = ptrtoint ptr %mode_info to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %mode_info, align 4
  %call172 = call i32 @atom_execute_table(ptr noundef %96, i32 noundef %index.0, ptr noundef nonnull %args) #10
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog169, %sw.epilog.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %crev) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %frev) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %args) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @atombios_get_encoder_mode(ptr noundef %encoder) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %encoder to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %encoder, align 4
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_private, align 4
  %call = tail call zeroext i1 @radeon_encoder_is_digital(ptr noundef %encoder) #10
  br i1 %call, label %if.then, label %entry.if.end3_crit_edge

entry.if.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end3

if.then:                                          ; preds = %entry
  %enc_priv = getelementptr inbounds %struct.radeon_encoder, ptr %encoder, i32 0, i32 12
  %4 = ptrtoint ptr %enc_priv to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %enc_priv, align 4
  %active_mst_links = getelementptr inbounds %struct.radeon_encoder_atom_dig, ptr %5, i32 0, i32 13
  %6 = ptrtoint ptr %active_mst_links to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %active_mst_links, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp eq i32 %7, 0
  br i1 %tobool.not, label %if.then.if.end3_crit_edge, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then.if.end3_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end3

if.end3:                                          ; preds = %if.then.if.end3_crit_edge, %entry.if.end3_crit_edge
  %is_mst_encoder = getelementptr inbounds %struct.radeon_encoder, ptr %encoder, i32 0, i32 20
  %8 = ptrtoint ptr %is_mst_encoder to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %is_mst_encoder, align 4, !range !61
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool4.not = icmp eq i8 %9, 0
  br i1 %tobool4.not, label %lor.lhs.false, label %if.end3.cleanup_crit_edge

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end3
  %offset = getelementptr inbounds %struct.radeon_encoder, ptr %encoder, i32 0, i32 19
  %10 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %offset, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool5.not = icmp eq i32 %11, 0
  br i1 %tobool5.not, label %if.end7, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end7:                                          ; preds = %lor.lhs.false
  %call8 = tail call zeroext i16 @radeon_encoder_get_dp_bridge_encoder_id(ptr noundef %encoder) #10
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %call8)
  %cmp.not = icmp eq i16 %call8, 0
  br i1 %cmp.not, label %if.end11, label %if.end7.cleanup_crit_edge

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end11:                                         ; preds = %if.end7
  %encoder_id = getelementptr inbounds %struct.radeon_encoder, ptr %encoder, i32 0, i32 2
  %12 = ptrtoint ptr %encoder_id to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %encoder_id, align 4
  %14 = zext i32 %13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.24)
  switch i32 %13, label %if.end19 [
    i32 11, label %if.end11.cleanup_crit_edge
    i32 20, label %if.end11.cleanup_crit_edge176
  ]

if.end11.cleanup_crit_edge176:                    ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end19:                                         ; preds = %if.end11
  %call20 = tail call ptr @radeon_get_connector_for_encoder(ptr noundef %encoder) #10
  %tobool21.not = icmp eq ptr %call20, null
  br i1 %tobool21.not, label %if.then22, label %if.end19.if.end24_crit_edge

if.end19.if.end24_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end24

if.then22:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #12
  %call23 = tail call ptr @radeon_get_connector_for_encoder_init(ptr noundef %encoder) #10
  br label %if.end24

if.end24:                                         ; preds = %if.then22, %if.end19.if.end24_crit_edge
  %connector.0 = phi ptr [ %call20, %if.end19.if.end24_crit_edge ], [ %call23, %if.then22 ]
  %connector_type = getelementptr inbounds %struct.drm_connector, ptr %connector.0, i32 0, i32 10
  %15 = ptrtoint ptr %connector_type to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %connector_type, align 8
  %17 = zext i32 %16 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.25)
  switch i32 %16, label %sw.default [
    i32 2, label %if.end24.sw.bb_crit_edge
    i32 12, label %if.end24.sw.bb_crit_edge177
    i32 9, label %if.end24.sw.bb136_crit_edge
    i32 6, label %if.end24.sw.bb136_crit_edge178
    i32 7, label %if.end24.cleanup_crit_edge
    i32 10, label %sw.bb74
    i32 14, label %sw.bb118
    i32 4, label %if.end24.sw.bb135_crit_edge
    i32 1, label %if.end24.sw.bb135_crit_edge179
    i32 5, label %if.end24.sw.bb136_crit_edge180
  ]

if.end24.sw.bb136_crit_edge180:                   ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb136

if.end24.sw.bb135_crit_edge179:                   ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb135

if.end24.sw.bb135_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb135

if.end24.cleanup_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end24.sw.bb136_crit_edge178:                   ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb136

if.end24.sw.bb136_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb136

if.end24.sw.bb_crit_edge177:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

if.end24.sw.bb_crit_edge:                         ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

sw.bb:                                            ; preds = %if.end24.sw.bb_crit_edge, %if.end24.sw.bb_crit_edge177
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @radeon_audio to i32))
  %18 = load i32, ptr @radeon_audio, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp28.not = icmp eq i32 %18, 0
  %use_digital50 = getelementptr inbounds %struct.radeon_connector, ptr %connector.0, i32 0, i32 5
  %19 = ptrtoint ptr %use_digital50 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %use_digital50, align 1, !range !61
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool51.not = icmp eq i8 %20, 0
  br i1 %cmp28.not, label %if.else49, label %if.then30

if.then30:                                        ; preds = %sw.bb
  br i1 %tobool51.not, label %if.then30.if.else_crit_edge, label %land.lhs.true

if.then30.if.else_crit_edge:                      ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

land.lhs.true:                                    ; preds = %if.then30
  %audio = getelementptr inbounds %struct.radeon_connector, ptr %connector.0, i32 0, i32 15
  %21 = ptrtoint ptr %audio to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %audio, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %22)
  %cmp33 = icmp eq i32 %22, 1
  br i1 %cmp33, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %if.then30.if.else_crit_edge
  %call36 = tail call ptr @radeon_connector_edid(ptr noundef %connector.0) #10
  %call37 = tail call zeroext i1 @drm_detect_hdmi_monitor(ptr noundef %call36) #10
  br i1 %call37, label %land.lhs.true39, label %if.else.if.else44_crit_edge

if.else.if.else44_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else44

land.lhs.true39:                                  ; preds = %if.else
  %audio40 = getelementptr inbounds %struct.radeon_connector, ptr %connector.0, i32 0, i32 15
  %23 = ptrtoint ptr %audio40 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %audio40, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %24)
  %cmp41 = icmp eq i32 %24, 2
  br i1 %cmp41, label %land.lhs.true39.cleanup_crit_edge, label %land.lhs.true39.if.else44_crit_edge

land.lhs.true39.if.else44_crit_edge:              ; preds = %land.lhs.true39
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else44

land.lhs.true39.cleanup_crit_edge:                ; preds = %land.lhs.true39
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.else44:                                        ; preds = %land.lhs.true39.if.else44_crit_edge, %if.else.if.else44_crit_edge
  %25 = ptrtoint ptr %use_digital50 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %use_digital50, align 1, !range !61
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool46.not = icmp eq i8 %26, 0
  %. = select i1 %tobool46.not, i32 15, i32 2
  br label %cleanup

if.else49:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  %.174 = select i1 %tobool51.not, i32 15, i32 2
  br label %cleanup

sw.default:                                       ; preds = %if.end24
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @radeon_audio to i32))
  %27 = load i32, ptr @radeon_audio, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %cmp55.not = icmp eq i32 %27, 0
  br i1 %cmp55.not, label %sw.default.cleanup_crit_edge, label %if.then57

sw.default.cleanup_crit_edge:                     ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then57:                                        ; preds = %sw.default
  %audio58 = getelementptr inbounds %struct.radeon_connector, ptr %connector.0, i32 0, i32 15
  %28 = ptrtoint ptr %audio58 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %audio58, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %29)
  %cmp59 = icmp eq i32 %29, 1
  br i1 %cmp59, label %if.then57.cleanup_crit_edge, label %if.else62

if.then57.cleanup_crit_edge:                      ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.else62:                                        ; preds = %if.then57
  %call63 = tail call ptr @radeon_connector_edid(ptr noundef %connector.0) #10
  %call64 = tail call zeroext i1 @drm_detect_hdmi_monitor(ptr noundef %call63) #10
  br i1 %call64, label %land.lhs.true66, label %if.else62.if.else71_crit_edge

if.else62.if.else71_crit_edge:                    ; preds = %if.else62
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else71

land.lhs.true66:                                  ; preds = %if.else62
  %30 = ptrtoint ptr %audio58 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %audio58, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %31)
  %cmp68 = icmp eq i32 %31, 2
  br i1 %cmp68, label %land.lhs.true66.cleanup_crit_edge, label %land.lhs.true66.if.else71_crit_edge

land.lhs.true66.if.else71_crit_edge:              ; preds = %land.lhs.true66
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else71

land.lhs.true66.cleanup_crit_edge:                ; preds = %land.lhs.true66
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.else71:                                        ; preds = %land.lhs.true66.if.else71_crit_edge, %if.else62.if.else71_crit_edge
  br label %cleanup

sw.bb74:                                          ; preds = %if.end24
  %con_priv = getelementptr inbounds %struct.radeon_connector, ptr %connector.0, i32 0, i32 7
  %32 = ptrtoint ptr %con_priv to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %con_priv, align 4
  %dp_sink_type = getelementptr inbounds %struct.radeon_connector_atom_dig, ptr %33, i32 0, i32 2
  %34 = ptrtoint ptr %dp_sink_type to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %dp_sink_type, align 1
  %.off = add i8 %35, -19
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %.off)
  %switch = icmp ult i8 %.off, 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @radeon_audio to i32))
  %36 = load i32, ptr @radeon_audio, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %cmp84.not = icmp eq i32 %36, 0
  br i1 %switch, label %if.then83, label %if.else99

if.then83:                                        ; preds = %sw.bb74
  br i1 %cmp84.not, label %if.then83.if.end98_crit_edge, label %land.lhs.true86

if.then83.if.end98_crit_edge:                     ; preds = %if.then83
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end98

land.lhs.true86:                                  ; preds = %if.then83
  %call87 = tail call ptr @radeon_connector_edid(ptr noundef %connector.0) #10
  %call88 = tail call zeroext i1 @drm_detect_monitor_audio(ptr noundef %call87) #10
  br i1 %call88, label %land.lhs.true90, label %land.lhs.true86.if.end98_crit_edge

land.lhs.true86.if.end98_crit_edge:               ; preds = %land.lhs.true86
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end98

land.lhs.true90:                                  ; preds = %land.lhs.true86
  %family = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 6
  %37 = ptrtoint ptr %family to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %family, align 4
  %39 = add i32 %38, -47
  call void @__sanitizer_cov_trace_const_cmp4(i32 -8, i32 %39)
  %40 = icmp ult i32 %39, -8
  br i1 %40, label %land.lhs.true90.if.end98_crit_edge, label %land.lhs.true90.cleanup_crit_edge

land.lhs.true90.cleanup_crit_edge:                ; preds = %land.lhs.true90
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

land.lhs.true90.if.end98_crit_edge:               ; preds = %land.lhs.true90
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end98

if.end98:                                         ; preds = %land.lhs.true90.if.end98_crit_edge, %land.lhs.true86.if.end98_crit_edge, %if.then83.if.end98_crit_edge
  br label %cleanup

if.else99:                                        ; preds = %sw.bb74
  br i1 %cmp84.not, label %if.else99.cleanup_crit_edge, label %if.then102

if.else99.cleanup_crit_edge:                      ; preds = %if.else99
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then102:                                       ; preds = %if.else99
  %audio103 = getelementptr inbounds %struct.radeon_connector, ptr %connector.0, i32 0, i32 15
  %41 = ptrtoint ptr %audio103 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %audio103, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %42)
  %cmp104 = icmp eq i32 %42, 1
  br i1 %cmp104, label %if.then102.cleanup_crit_edge, label %if.else107

if.then102.cleanup_crit_edge:                     ; preds = %if.then102
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.else107:                                       ; preds = %if.then102
  %call108 = tail call ptr @radeon_connector_edid(ptr noundef %connector.0) #10
  %call109 = tail call zeroext i1 @drm_detect_hdmi_monitor(ptr noundef %call108) #10
  br i1 %call109, label %land.lhs.true111, label %if.else107.if.else116_crit_edge

if.else107.if.else116_crit_edge:                  ; preds = %if.else107
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else116

land.lhs.true111:                                 ; preds = %if.else107
  %43 = ptrtoint ptr %audio103 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %audio103, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %44)
  %cmp113 = icmp eq i32 %44, 2
  br i1 %cmp113, label %land.lhs.true111.cleanup_crit_edge, label %land.lhs.true111.if.else116_crit_edge

land.lhs.true111.if.else116_crit_edge:            ; preds = %land.lhs.true111
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else116

land.lhs.true111.cleanup_crit_edge:               ; preds = %land.lhs.true111
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.else116:                                       ; preds = %land.lhs.true111.if.else116_crit_edge, %if.else107.if.else116_crit_edge
  br label %cleanup

sw.bb118:                                         ; preds = %if.end24
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @radeon_audio to i32))
  %45 = load i32, ptr @radeon_audio, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %cmp119.not = icmp eq i32 %45, 0
  br i1 %cmp119.not, label %sw.bb118.if.end134_crit_edge, label %land.lhs.true121

sw.bb118.if.end134_crit_edge:                     ; preds = %sw.bb118
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end134

land.lhs.true121:                                 ; preds = %sw.bb118
  %call122 = tail call ptr @radeon_connector_edid(ptr noundef %connector.0) #10
  %call123 = tail call zeroext i1 @drm_detect_monitor_audio(ptr noundef %call122) #10
  br i1 %call123, label %land.lhs.true125, label %land.lhs.true121.if.end134_crit_edge

land.lhs.true121.if.end134_crit_edge:             ; preds = %land.lhs.true121
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end134

land.lhs.true125:                                 ; preds = %land.lhs.true121
  %family126 = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 6
  %46 = ptrtoint ptr %family126 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %family126, align 4
  %48 = add i32 %47, -47
  call void @__sanitizer_cov_trace_const_cmp4(i32 -8, i32 %48)
  %49 = icmp ult i32 %48, -8
  br i1 %49, label %land.lhs.true125.if.end134_crit_edge, label %land.lhs.true125.cleanup_crit_edge

land.lhs.true125.cleanup_crit_edge:               ; preds = %land.lhs.true125
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

land.lhs.true125.if.end134_crit_edge:             ; preds = %land.lhs.true125
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end134

if.end134:                                        ; preds = %land.lhs.true125.if.end134_crit_edge, %land.lhs.true121.if.end134_crit_edge, %sw.bb118.if.end134_crit_edge
  br label %cleanup

sw.bb135:                                         ; preds = %if.end24.sw.bb135_crit_edge, %if.end24.sw.bb135_crit_edge179
  br label %cleanup

sw.bb136:                                         ; preds = %if.end24.sw.bb136_crit_edge, %if.end24.sw.bb136_crit_edge178, %if.end24.sw.bb136_crit_edge180
  br label %cleanup

cleanup:                                          ; preds = %sw.bb136, %sw.bb135, %if.end134, %land.lhs.true125.cleanup_crit_edge, %if.else116, %land.lhs.true111.cleanup_crit_edge, %if.then102.cleanup_crit_edge, %if.else99.cleanup_crit_edge, %if.end98, %land.lhs.true90.cleanup_crit_edge, %if.else71, %land.lhs.true66.cleanup_crit_edge, %if.then57.cleanup_crit_edge, %sw.default.cleanup_crit_edge, %if.else49, %if.else44, %land.lhs.true39.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %if.end24.cleanup_crit_edge, %if.end11.cleanup_crit_edge, %if.end11.cleanup_crit_edge176, %if.end7.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.end3.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ 2, %if.else71 ], [ 15, %sw.bb135 ], [ 0, %if.end134 ], [ 0, %if.end98 ], [ 2, %if.else116 ], [ 13, %sw.bb136 ], [ 5, %if.then.cleanup_crit_edge ], [ 5, %lor.lhs.false.cleanup_crit_edge ], [ 5, %if.end3.cleanup_crit_edge ], [ 0, %if.end7.cleanup_crit_edge ], [ 16, %if.end11.cleanup_crit_edge ], [ 16, %if.end11.cleanup_crit_edge176 ], [ 3, %land.lhs.true.cleanup_crit_edge ], [ 3, %land.lhs.true39.cleanup_crit_edge ], [ %., %if.else44 ], [ %.174, %if.else49 ], [ 3, %if.then57.cleanup_crit_edge ], [ 3, %land.lhs.true66.cleanup_crit_edge ], [ 2, %sw.default.cleanup_crit_edge ], [ 1, %if.end24.cleanup_crit_edge ], [ 5, %land.lhs.true90.cleanup_crit_edge ], [ 3, %if.then102.cleanup_crit_edge ], [ 3, %land.lhs.true111.cleanup_crit_edge ], [ 2, %if.else99.cleanup_crit_edge ], [ 5, %land.lhs.true125.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @radeon_encoder_is_digital(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @radeon_encoder_get_dp_bridge_encoder_id(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @radeon_get_connector_for_encoder(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @radeon_get_connector_for_encoder_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @drm_detect_hdmi_monitor(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @radeon_connector_edid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @drm_detect_monitor_audio(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @atombios_dig_encoder_setup2(ptr noundef %encoder, i32 noundef %action, i32 noundef %panel_mode, i32 noundef %enc_override) local_unnamed_addr #0 align 64 {
entry:
  %args = alloca %union.dig_encoder_control, align 8
  %frev = alloca i8, align 1
  %crev = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #12
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
  %call = tail call ptr @radeon_get_connector_for_encoder(ptr noundef %encoder) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %args) #10
  %6 = getelementptr inbounds %struct._DIG_ENCODER_CONTROL_PARAMETERS, ptr %args, i32 0, i32 1
  %7 = getelementptr inbounds %struct._DIG_ENCODER_CONTROL_PARAMETERS, ptr %args, i32 0, i32 2
  %8 = getelementptr inbounds %struct._DIG_ENCODER_CONTROL_PARAMETERS, ptr %args, i32 0, i32 3
  %9 = getelementptr inbounds %struct._DIG_ENCODER_CONTROL_PARAMETERS, ptr %args, i32 0, i32 4
  %10 = getelementptr inbounds %struct._DIG_ENCODER_CONTROL_PARAMETERS, ptr %args, i32 0, i32 5
  %11 = getelementptr inbounds %struct._DIG_ENCODER_CONTROL_PARAMETERS, ptr %args, i32 0, i32 5, i32 1
  %12 = ptrtoint ptr %args to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 -1, ptr %args, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %frev) #10
  %13 = ptrtoint ptr %frev to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 -1, ptr %frev, align 1, !annotation !62
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %crev) #10
  %14 = ptrtoint ptr %crev to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 -1, ptr %crev, align 1, !annotation !62
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %con_priv = getelementptr inbounds %struct.radeon_connector, ptr %call, i32 0, i32 7
  %15 = ptrtoint ptr %con_priv to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %con_priv, align 4
  %dp_clock5 = getelementptr inbounds %struct.radeon_connector_atom_dig, ptr %16, i32 0, i32 3
  %17 = ptrtoint ptr %dp_clock5 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %dp_clock5, align 4
  %dp_lane_count6 = getelementptr inbounds %struct.radeon_connector_atom_dig, ptr %16, i32 0, i32 4
  %19 = ptrtoint ptr %dp_lane_count6 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %dp_lane_count6, align 4
  %hpd = getelementptr inbounds %struct.radeon_connector, ptr %call, i32 0, i32 12
  %21 = ptrtoint ptr %hpd to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %hpd, align 8
  %phi.cast = trunc i32 %20 to i8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %dp_clock.0 = phi i32 [ %18, %if.then ], [ 0, %entry.if.end_crit_edge ]
  %dp_lane_count.0 = phi i8 [ %phi.cast, %if.then ], [ 0, %entry.if.end_crit_edge ]
  %hpd_id.0 = phi i32 [ %22, %if.then ], [ 255, %entry.if.end_crit_edge ]
  %dig_encoder = getelementptr inbounds %struct.radeon_encoder_atom_dig, ptr %5, i32 0, i32 2
  %23 = ptrtoint ptr %dig_encoder to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %dig_encoder, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %24)
  %cmp = icmp eq i32 %24, -1
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end9

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %25 = ptrtoint ptr %args to i32
  call void @__asan_store8_noabort(i32 %25)
  store i64 0, ptr %args, align 8
  %family = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 6
  %26 = ptrtoint ptr %family to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %family, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 38, i32 %27)
  %cmp10 = icmp ugt i32 %27, 38
  br i1 %cmp10, label %if.end9.if.end17_crit_edge, label %if.else

if.end9.if.end17_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end17

if.else:                                          ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  %28 = ptrtoint ptr %dig_encoder to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %dig_encoder, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool13.not = icmp eq i32 %29, 0
  %. = select i1 %tobool13.not, i32 74, i32 75
  br label %if.end17

if.end17:                                         ; preds = %if.else, %if.end9.if.end17_crit_edge
  %index.0 = phi i32 [ 4, %if.end9.if.end17_crit_edge ], [ %., %if.else ]
  %mode_info = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 44
  %30 = ptrtoint ptr %mode_info to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %mode_info, align 4
  %call18 = call zeroext i1 @atom_parse_cmd_header(ptr noundef %31, i32 noundef %index.0, ptr noundef nonnull %frev, ptr noundef nonnull %crev) #10
  br i1 %call18, label %if.end20, label %if.end17.cleanup_crit_edge

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end20:                                         ; preds = %if.end17
  %32 = ptrtoint ptr %frev to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %frev, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %33)
  %cond = icmp eq i8 %33, 1
  br i1 %cond, label %sw.bb, label %sw.default254

sw.bb:                                            ; preds = %if.end20
  %34 = ptrtoint ptr %crev to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %crev, align 1
  %36 = zext i8 %35 to i64
  call void @__sanitizer_cov_trace_switch(i64 %36, ptr @__sancov_gen_cov_switch_values.26)
  switch i8 %35, label %sw.default [
    i8 1, label %sw.bb22
    i8 2, label %sw.bb.sw.bb85_crit_edge
    i8 3, label %sw.bb.sw.bb85_crit_edge344
    i8 4, label %sw.bb150
  ]

sw.bb.sw.bb85_crit_edge344:                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb85

sw.bb.sw.bb85_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb85

sw.bb22:                                          ; preds = %sw.bb
  %conv23 = trunc i32 %action to i8
  %37 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %conv23, ptr %7, align 1
  %pixel_clock = getelementptr inbounds %struct.radeon_encoder, ptr %encoder, i32 0, i32 6
  %38 = ptrtoint ptr %pixel_clock to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %pixel_clock, align 4
  %div = udiv i32 %39, 10
  %conv24 = trunc i32 %div to i16
  %40 = call i16 @llvm.bswap.i16(i16 %conv24)
  %41 = ptrtoint ptr %args to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 %40, ptr %args, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %action)
  %cmp25 = icmp eq i32 %action, 16
  br i1 %cmp25, label %sw.bb22.if.end32_crit_edge, label %if.else29

sw.bb22.if.end32_crit_edge:                       ; preds = %sw.bb22
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end32

if.else29:                                        ; preds = %sw.bb22
  call void @__sanitizer_cov_trace_pc() #12
  %call30 = call i32 @atombios_get_encoder_mode(ptr noundef %encoder)
  br label %if.end32

if.end32:                                         ; preds = %if.else29, %sw.bb22.if.end32_crit_edge
  %.in = phi i32 [ %call30, %if.else29 ], [ %panel_mode, %sw.bb22.if.end32_crit_edge ]
  %42 = trunc i32 %.in to i8
  %43 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %42, ptr %8, align 4
  %44 = zext i8 %42 to i64
  call void @__sanitizer_cov_trace_switch(i64 %44, ptr @__sancov_gen_cov_switch_values.27)
  switch i8 %42, label %if.else43 [
    i8 0, label %if.end32.if.end51_crit_edge
    i8 5, label %if.end32.if.end51_crit_edge345
  ]

if.end32.if.end51_crit_edge345:                   ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end51

if.end32.if.end51_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end51

if.else43:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #12
  %45 = ptrtoint ptr %pixel_clock to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %pixel_clock, align 4
  %call45 = call zeroext i1 @radeon_dig_monitor_is_duallink(ptr noundef %encoder, i32 noundef %46) #10
  %.337 = select i1 %call45, i8 8, i8 4
  br label %if.end51

if.end51:                                         ; preds = %if.else43, %if.end32.if.end51_crit_edge, %if.end32.if.end51_crit_edge345
  %.sink = phi i8 [ %dp_lane_count.0, %if.end32.if.end51_crit_edge ], [ %dp_lane_count.0, %if.end32.if.end51_crit_edge345 ], [ %.337, %if.else43 ]
  %47 = ptrtoint ptr %9 to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 %.sink, ptr %9, align 1
  %encoder_id = getelementptr inbounds %struct.radeon_encoder, ptr %encoder, i32 0, i32 2
  %48 = ptrtoint ptr %encoder_id to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %encoder_id, align 4
  %switch.tableidx = add i32 %49, -30
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %switch.tableidx)
  %50 = icmp ult i32 %switch.tableidx, 4
  br i1 %50, label %switch.lookup, label %if.end51.sw.epilog_crit_edge

if.end51.sw.epilog_crit_edge:                     ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

switch.lookup:                                    ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #12
  %switch.shiftamt = shl i32 %switch.tableidx, 3
  %switch.downshift = lshr i32 268961792, %switch.shiftamt
  %switch.masked = trunc i32 %switch.downshift to i8
  %51 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 %switch.masked, ptr %6, align 2
  br label %sw.epilog

sw.epilog:                                        ; preds = %switch.lookup, %if.end51.sw.epilog_crit_edge
  %52 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %5, align 4, !range !61
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %53)
  %tobool57.not = icmp eq i8 %53, 0
  br i1 %tobool57.not, label %sw.epilog.if.end67_crit_edge, label %if.then58

sw.epilog.if.end67_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end67

if.then58:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  %54 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %6, align 2
  %56 = or i8 %55, 4
  store i8 %56, ptr %6, align 2
  br label %if.end67

if.end67:                                         ; preds = %if.then58, %sw.epilog.if.end67_crit_edge
  %57 = ptrtoint ptr %8 to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %8, align 4
  %59 = zext i8 %58 to i64
  call void @__sanitizer_cov_trace_switch(i64 %59, ptr @__sancov_gen_cov_switch_values.28)
  switch i8 %58, label %if.end67.sw.epilog257_crit_edge [
    i8 0, label %if.end67.land.lhs.true_crit_edge
    i8 5, label %if.end67.land.lhs.true_crit_edge346
  ]

if.end67.land.lhs.true_crit_edge346:              ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true

if.end67.land.lhs.true_crit_edge:                 ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true

if.end67.sw.epilog257_crit_edge:                  ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog257

land.lhs.true:                                    ; preds = %if.end67.land.lhs.true_crit_edge, %if.end67.land.lhs.true_crit_edge346
  call void @__sanitizer_cov_trace_const_cmp4(i32 270000, i32 %dp_clock.0)
  %cmp77 = icmp eq i32 %dp_clock.0, 270000
  br i1 %cmp77, label %if.then79, label %land.lhs.true.sw.epilog257_crit_edge

land.lhs.true.sw.epilog257_crit_edge:             ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog257

if.then79:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  %60 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %6, align 2
  %62 = or i8 %61, 1
  store i8 %62, ptr %6, align 2
  br label %sw.epilog257

sw.bb85:                                          ; preds = %sw.bb.sw.bb85_crit_edge, %sw.bb.sw.bb85_crit_edge344
  %conv86 = trunc i32 %action to i8
  %63 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 %conv86, ptr %7, align 1
  %pixel_clock88 = getelementptr inbounds %struct.radeon_encoder, ptr %encoder, i32 0, i32 6
  %64 = ptrtoint ptr %pixel_clock88 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %pixel_clock88, align 4
  %div89 = udiv i32 %65, 10
  %conv90 = trunc i32 %div89 to i16
  %66 = call i16 @llvm.bswap.i16(i16 %conv90)
  %67 = ptrtoint ptr %args to i32
  call void @__asan_store2_noabort(i32 %67)
  store i16 %66, ptr %args, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %action)
  %cmp92 = icmp eq i32 %action, 16
  br i1 %cmp92, label %sw.bb85.if.end99_crit_edge, label %if.else96

sw.bb85.if.end99_crit_edge:                       ; preds = %sw.bb85
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end99

if.else96:                                        ; preds = %sw.bb85
  call void @__sanitizer_cov_trace_pc() #12
  %call97 = call i32 @atombios_get_encoder_mode(ptr noundef %encoder)
  br label %if.end99

if.end99:                                         ; preds = %if.else96, %sw.bb85.if.end99_crit_edge
  %conv98.sink.in = phi i32 [ %call97, %if.else96 ], [ %panel_mode, %sw.bb85.if.end99_crit_edge ]
  %conv98.sink = trunc i32 %conv98.sink.in to i8
  %68 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 %conv98.sink, ptr %8, align 4
  %69 = zext i8 %conv98.sink to i64
  call void @__sanitizer_cov_trace_switch(i64 %69, ptr @__sancov_gen_cov_switch_values.29)
  switch i8 %conv98.sink, label %if.else110 [
    i8 0, label %if.end99.if.end118_crit_edge
    i8 5, label %if.end99.if.end118_crit_edge347
  ]

if.end99.if.end118_crit_edge347:                  ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end118

if.end99.if.end118_crit_edge:                     ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end118

if.else110:                                       ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #12
  %70 = ptrtoint ptr %pixel_clock88 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %pixel_clock88, align 4
  %call112 = call zeroext i1 @radeon_dig_monitor_is_duallink(ptr noundef %encoder, i32 noundef %71) #10
  %.338 = select i1 %call112, i8 8, i8 4
  br label %if.end118

if.end118:                                        ; preds = %if.else110, %if.end99.if.end118_crit_edge, %if.end99.if.end118_crit_edge347
  %.sink332 = phi i8 [ %dp_lane_count.0, %if.end99.if.end118_crit_edge ], [ %dp_lane_count.0, %if.end99.if.end118_crit_edge347 ], [ %.338, %if.else110 ]
  %72 = ptrtoint ptr %9 to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 %.sink332, ptr %9, align 1
  %73 = ptrtoint ptr %8 to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %8, align 4
  %75 = zext i8 %74 to i64
  call void @__sanitizer_cov_trace_switch(i64 %75, ptr @__sancov_gen_cov_switch_values.30)
  switch i8 %74, label %if.end118.if.end134_crit_edge [
    i8 0, label %if.end118.land.lhs.true126_crit_edge
    i8 5, label %if.end118.land.lhs.true126_crit_edge348
  ]

if.end118.land.lhs.true126_crit_edge348:          ; preds = %if.end118
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true126

if.end118.land.lhs.true126_crit_edge:             ; preds = %if.end118
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true126

if.end118.if.end134_crit_edge:                    ; preds = %if.end118
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end134

land.lhs.true126:                                 ; preds = %if.end118.land.lhs.true126_crit_edge, %if.end118.land.lhs.true126_crit_edge348
  call void @__sanitizer_cov_trace_const_cmp4(i32 270000, i32 %dp_clock.0)
  %cmp127 = icmp eq i32 %dp_clock.0, 270000
  br i1 %cmp127, label %if.then129, label %land.lhs.true126.if.end134_crit_edge

land.lhs.true126.if.end134_crit_edge:             ; preds = %land.lhs.true126
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end134

if.then129:                                       ; preds = %land.lhs.true126
  call void @__sanitizer_cov_trace_pc() #12
  %76 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %6, align 2
  %78 = or i8 %77, 1
  store i8 %78, ptr %6, align 2
  br label %if.end134

if.end134:                                        ; preds = %if.then129, %land.lhs.true126.if.end134_crit_edge, %if.end118.if.end134_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %enc_override)
  %cmp135.not = icmp eq i32 %enc_override, -1
  br i1 %cmp135.not, label %if.else139, label %if.then137

if.then137:                                       ; preds = %if.end134
  call void @__sanitizer_cov_trace_pc() #12
  %conv138 = trunc i32 %enc_override to i8
  %79 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %79)
  %bf.load = load i8, ptr %6, align 2
  %bf.value = shl i8 %conv138, 4
  %bf.shl = and i8 %bf.value, 112
  %bf.clear = and i8 %bf.load, -113
  br label %if.end148

if.else139:                                       ; preds = %if.end134
  call void @__sanitizer_cov_trace_pc() #12
  %80 = ptrtoint ptr %dig_encoder to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %dig_encoder, align 4
  %conv141 = trunc i32 %81 to i8
  %82 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %82)
  %bf.load143 = load i8, ptr %6, align 2
  %bf.value144 = shl i8 %conv141, 4
  %bf.shl145 = and i8 %bf.value144, 112
  %bf.clear146 = and i8 %bf.load143, -113
  br label %if.end148

if.end148:                                        ; preds = %if.else139, %if.then137
  %bf.clear146.sink = phi i8 [ %bf.clear146, %if.else139 ], [ %bf.shl, %if.then137 ]
  %bf.shl145.sink = phi i8 [ %bf.shl145, %if.else139 ], [ %bf.clear, %if.then137 ]
  %bf.set147 = or i8 %bf.shl145.sink, %bf.clear146.sink
  %83 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 %bf.set147, ptr %6, align 2
  %crtc.i = getelementptr inbounds %struct.drm_encoder, ptr %encoder, i32 0, i32 8
  %84 = ptrtoint ptr %crtc.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %crtc.i, align 4
  %tobool.not.i = icmp eq ptr %85, null
  br i1 %tobool.not.i, label %if.end148.if.end.i_crit_edge, label %if.then.i

if.end148.if.end.i_crit_edge:                     ; preds = %if.end148
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

if.then.i:                                        ; preds = %if.end148
  call void @__sanitizer_cov_trace_pc() #12
  %bpc2.i = getelementptr inbounds %struct.radeon_crtc, ptr %85, i32 0, i32 30
  %86 = ptrtoint ptr %bpc2.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %bpc2.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.end148.if.end.i_crit_edge
  %bpc.0.i = phi i32 [ %87, %if.then.i ], [ 8, %if.end148.if.end.i_crit_edge ]
  %88 = call i32 @llvm.fshl.i32(i32 %bpc.0.i, i32 %bpc.0.i, i32 31) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %88)
  %89 = icmp ult i32 %88, 9
  br i1 %89, label %switch.lookup340, label %if.end.i.radeon_atom_get_bpc.exit_crit_edge

if.end.i.radeon_atom_get_bpc.exit_crit_edge:      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %radeon_atom_get_bpc.exit

switch.lookup340:                                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %switch.gep = getelementptr inbounds [9 x i8], ptr @switch.table.atombios_dig_encoder_setup2, i32 0, i32 %88
  %90 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load1_noabort(i32 %90)
  %switch.load = load i8, ptr %switch.gep, align 1
  br label %radeon_atom_get_bpc.exit

radeon_atom_get_bpc.exit:                         ; preds = %switch.lookup340, %if.end.i.radeon_atom_get_bpc.exit_crit_edge
  %retval.0.i = phi i8 [ %switch.load, %switch.lookup340 ], [ 2, %if.end.i.radeon_atom_get_bpc.exit_crit_edge ]
  %91 = ptrtoint ptr %10 to i32
  call void @__asan_store1_noabort(i32 %91)
  store i8 %retval.0.i, ptr %10, align 2
  br label %sw.epilog257

sw.bb150:                                         ; preds = %sw.bb
  %conv151 = trunc i32 %action to i8
  %92 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %92)
  store i8 %conv151, ptr %7, align 1
  %pixel_clock153 = getelementptr inbounds %struct.radeon_encoder, ptr %encoder, i32 0, i32 6
  %93 = ptrtoint ptr %pixel_clock153 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %pixel_clock153, align 4
  %div154 = udiv i32 %94, 10
  %conv155 = trunc i32 %div154 to i16
  %95 = call i16 @llvm.bswap.i16(i16 %conv155)
  %96 = ptrtoint ptr %args to i32
  call void @__asan_store2_noabort(i32 %96)
  store i16 %95, ptr %args, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %action)
  %cmp157 = icmp eq i32 %action, 16
  br i1 %cmp157, label %sw.bb150.if.end164_crit_edge, label %if.else161

sw.bb150.if.end164_crit_edge:                     ; preds = %sw.bb150
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end164

if.else161:                                       ; preds = %sw.bb150
  call void @__sanitizer_cov_trace_pc() #12
  %call162 = call i32 @atombios_get_encoder_mode(ptr noundef %encoder)
  br label %if.end164

if.end164:                                        ; preds = %if.else161, %sw.bb150.if.end164_crit_edge
  %conv163.sink.in = phi i32 [ %call162, %if.else161 ], [ %panel_mode, %sw.bb150.if.end164_crit_edge ]
  %conv163.sink = trunc i32 %conv163.sink.in to i8
  %97 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %97)
  store i8 %conv163.sink, ptr %8, align 4
  %98 = zext i8 %conv163.sink to i64
  call void @__sanitizer_cov_trace_switch(i64 %98, ptr @__sancov_gen_cov_switch_values.31)
  switch i8 %conv163.sink, label %if.else175 [
    i8 0, label %if.end164.if.end183_crit_edge
    i8 5, label %if.end164.if.end183_crit_edge349
  ]

if.end164.if.end183_crit_edge349:                 ; preds = %if.end164
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end183

if.end164.if.end183_crit_edge:                    ; preds = %if.end164
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end183

if.else175:                                       ; preds = %if.end164
  call void @__sanitizer_cov_trace_pc() #12
  %99 = ptrtoint ptr %pixel_clock153 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %pixel_clock153, align 4
  %call177 = call zeroext i1 @radeon_dig_monitor_is_duallink(ptr noundef %encoder, i32 noundef %100) #10
  %.339 = select i1 %call177, i8 8, i8 4
  br label %if.end183

if.end183:                                        ; preds = %if.else175, %if.end164.if.end183_crit_edge, %if.end164.if.end183_crit_edge349
  %.sink333 = phi i8 [ %dp_lane_count.0, %if.end164.if.end183_crit_edge ], [ %dp_lane_count.0, %if.end164.if.end183_crit_edge349 ], [ %.339, %if.else175 ]
  %101 = ptrtoint ptr %9 to i32
  call void @__asan_store1_noabort(i32 %101)
  store i8 %.sink333, ptr %9, align 1
  %102 = ptrtoint ptr %8 to i32
  call void @__asan_load1_noabort(i32 %102)
  %103 = load i8, ptr %8, align 4
  %104 = zext i8 %103 to i64
  call void @__sanitizer_cov_trace_switch(i64 %104, ptr @__sancov_gen_cov_switch_values.32)
  switch i8 %103, label %if.end183.if.end223_crit_edge [
    i8 0, label %if.end183.if.then191_crit_edge
    i8 5, label %if.end183.if.then191_crit_edge350
  ]

if.end183.if.then191_crit_edge350:                ; preds = %if.end183
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then191

if.end183.if.then191_crit_edge:                   ; preds = %if.end183
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then191

if.end183.if.end223_crit_edge:                    ; preds = %if.end183
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end223

if.then191:                                       ; preds = %if.end183.if.then191_crit_edge, %if.end183.if.then191_crit_edge350
  %105 = zext i32 %dp_clock.0 to i64
  call void @__sanitizer_cov_trace_switch(i64 %105, ptr @__sancov_gen_cov_switch_values.33)
  switch i32 %dp_clock.0, label %if.then191.if.end223_crit_edge [
    i32 540000, label %if.then191.if.end223.sink.split_crit_edge
    i32 324000, label %if.then202
    i32 270000, label %if.then210
  ]

if.then191.if.end223.sink.split_crit_edge:        ; preds = %if.then191
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end223.sink.split

if.then191.if.end223_crit_edge:                   ; preds = %if.then191
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end223

if.then202:                                       ; preds = %if.then191
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end223.sink.split

if.then210:                                       ; preds = %if.then191
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end223.sink.split

if.end223.sink.split:                             ; preds = %if.then210, %if.then202, %if.then191.if.end223.sink.split_crit_edge
  %.sink336 = phi i8 [ 1, %if.then210 ], [ 3, %if.then202 ], [ 2, %if.then191.if.end223.sink.split_crit_edge ]
  %106 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %106)
  %107 = load i8, ptr %6, align 2
  %108 = or i8 %107, %.sink336
  store i8 %108, ptr %6, align 2
  br label %if.end223

if.end223:                                        ; preds = %if.end223.sink.split, %if.then191.if.end223_crit_edge, %if.end183.if.end223_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %enc_override)
  %cmp224.not = icmp eq i32 %enc_override, -1
  br i1 %cmp224.not, label %if.else233, label %if.then226

if.then226:                                       ; preds = %if.end223
  call void @__sanitizer_cov_trace_pc() #12
  %conv227 = trunc i32 %enc_override to i8
  %109 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %109)
  %bf.load228 = load i8, ptr %6, align 2
  %bf.value229 = shl i8 %conv227, 4
  %bf.shl230 = and i8 %bf.value229, 112
  %bf.clear231 = and i8 %bf.load228, -113
  br label %if.end241

if.else233:                                       ; preds = %if.end223
  call void @__sanitizer_cov_trace_pc() #12
  %110 = ptrtoint ptr %dig_encoder to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %dig_encoder, align 4
  %conv235 = trunc i32 %111 to i8
  %112 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %112)
  %bf.load236 = load i8, ptr %6, align 2
  %bf.value237 = shl i8 %conv235, 4
  %bf.shl238 = and i8 %bf.value237, 112
  %bf.clear239 = and i8 %bf.load236, -113
  br label %if.end241

if.end241:                                        ; preds = %if.else233, %if.then226
  %bf.clear239.sink = phi i8 [ %bf.clear239, %if.else233 ], [ %bf.shl230, %if.then226 ]
  %bf.shl238.sink = phi i8 [ %bf.shl238, %if.else233 ], [ %bf.clear231, %if.then226 ]
  %bf.set240 = or i8 %bf.shl238.sink, %bf.clear239.sink
  %113 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %113)
  store i8 %bf.set240, ptr %6, align 2
  %crtc.i316 = getelementptr inbounds %struct.drm_encoder, ptr %encoder, i32 0, i32 8
  %114 = ptrtoint ptr %crtc.i316 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %crtc.i316, align 4
  %tobool.not.i317 = icmp eq ptr %115, null
  br i1 %tobool.not.i317, label %if.end241.if.end.i321_crit_edge, label %if.then.i319

if.end241.if.end.i321_crit_edge:                  ; preds = %if.end241
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i321

if.then.i319:                                     ; preds = %if.end241
  call void @__sanitizer_cov_trace_pc() #12
  %bpc2.i318 = getelementptr inbounds %struct.radeon_crtc, ptr %115, i32 0, i32 30
  %116 = ptrtoint ptr %bpc2.i318 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %bpc2.i318, align 4
  br label %if.end.i321

if.end.i321:                                      ; preds = %if.then.i319, %if.end241.if.end.i321_crit_edge
  %bpc.0.i320 = phi i32 [ %117, %if.then.i319 ], [ 8, %if.end241.if.end.i321_crit_edge ]
  %118 = call i32 @llvm.fshl.i32(i32 %bpc.0.i320, i32 %bpc.0.i320, i32 31) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %118)
  %119 = icmp ult i32 %118, 9
  br i1 %119, label %switch.lookup341, label %if.end.i321.radeon_atom_get_bpc.exit328_crit_edge

if.end.i321.radeon_atom_get_bpc.exit328_crit_edge: ; preds = %if.end.i321
  call void @__sanitizer_cov_trace_pc() #12
  br label %radeon_atom_get_bpc.exit328

switch.lookup341:                                 ; preds = %if.end.i321
  call void @__sanitizer_cov_trace_pc() #12
  %switch.gep342 = getelementptr inbounds [9 x i8], ptr @switch.table.atombios_dig_encoder_setup2.19, i32 0, i32 %118
  %120 = ptrtoint ptr %switch.gep342 to i32
  call void @__asan_load1_noabort(i32 %120)
  %switch.load343 = load i8, ptr %switch.gep342, align 1
  br label %radeon_atom_get_bpc.exit328

radeon_atom_get_bpc.exit328:                      ; preds = %switch.lookup341, %if.end.i321.radeon_atom_get_bpc.exit328_crit_edge
  %retval.0.i327 = phi i8 [ %switch.load343, %switch.lookup341 ], [ 2, %if.end.i321.radeon_atom_get_bpc.exit328_crit_edge ]
  %121 = ptrtoint ptr %10 to i32
  call void @__asan_store1_noabort(i32 %121)
  store i8 %retval.0.i327, ptr %10, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %hpd_id.0)
  %cmp244 = icmp eq i32 %hpd_id.0, 255
  br i1 %cmp244, label %if.then246, label %if.else247

if.then246:                                       ; preds = %radeon_atom_get_bpc.exit328
  call void @__sanitizer_cov_trace_pc() #12
  %122 = ptrtoint ptr %11 to i32
  call void @__asan_store1_noabort(i32 %122)
  store i8 0, ptr %11, align 1
  br label %sw.epilog257

if.else247:                                       ; preds = %radeon_atom_get_bpc.exit328
  call void @__sanitizer_cov_trace_pc() #12
  %123 = trunc i32 %hpd_id.0 to i8
  %conv248 = add i8 %123, 1
  %124 = ptrtoint ptr %11 to i32
  call void @__asan_store1_noabort(i32 %124)
  store i8 %conv248, ptr %11, align 1
  br label %sw.epilog257

sw.default:                                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  %conv21 = zext i8 %35 to i32
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.7, i32 noundef 1, i32 noundef %conv21) #10
  br label %sw.epilog257

sw.default254:                                    ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #12
  %conv = zext i8 %33 to i32
  %125 = ptrtoint ptr %crev to i32
  call void @__asan_load1_noabort(i32 %125)
  %126 = load i8, ptr %crev, align 1
  %conv256 = zext i8 %126 to i32
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.7, i32 noundef %conv, i32 noundef %conv256) #10
  br label %sw.epilog257

sw.epilog257:                                     ; preds = %sw.default254, %sw.default, %if.else247, %if.then246, %radeon_atom_get_bpc.exit, %if.then79, %land.lhs.true.sw.epilog257_crit_edge, %if.end67.sw.epilog257_crit_edge
  %127 = ptrtoint ptr %mode_info to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %mode_info, align 4
  %call260 = call i32 @atom_execute_table(ptr noundef %128, i32 noundef %index.0, ptr noundef nonnull %args) #10
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog257, %if.end17.cleanup_crit_edge, %if.end.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %crev) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %frev) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %args) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @atombios_dig_encoder_setup(ptr noundef %encoder, i32 noundef %action, i32 noundef %panel_mode) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @atombios_dig_encoder_setup2(ptr noundef %encoder, i32 noundef %action, i32 noundef %panel_mode, i32 noundef -1)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @atombios_dig_transmitter_setup2(ptr noundef %encoder, i32 noundef %action, i8 noundef zeroext %lane_num, i8 noundef zeroext %lane_set, i32 noundef %fe) local_unnamed_addr #0 align 64 {
entry:
  %args = alloca %union.dig_transmitter_control, align 2
  %frev = alloca i8, align 1
  %crev = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #12
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
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %args) #10
  %6 = getelementptr inbounds %struct._DIG_TRANSMITTER_CONTROL_PARAMETERS_V1_5, ptr %args, i32 0, i32 1
  %7 = getelementptr inbounds %struct._DIG_TRANSMITTER_CONTROL_PARAMETERS_V1_5, ptr %args, i32 0, i32 2
  %8 = getelementptr inbounds %struct._DIG_TRANSMITTER_CONTROL_PARAMETERS_V1_5, ptr %args, i32 0, i32 3
  %9 = getelementptr inbounds %struct._DIG_TRANSMITTER_CONTROL_PARAMETERS_V1_5, ptr %args, i32 0, i32 4
  %10 = getelementptr inbounds %struct._DIG_TRANSMITTER_CONTROL_PARAMETERS_V1_5, ptr %args, i32 0, i32 5
  %11 = getelementptr inbounds %struct._DIG_TRANSMITTER_CONTROL_PARAMETERS_V1_5, ptr %args, i32 0, i32 6
  %12 = getelementptr inbounds %struct._DIG_TRANSMITTER_CONTROL_PARAMETERS_V1_5, ptr %args, i32 0, i32 7
  %13 = getelementptr inbounds %struct._DIG_TRANSMITTER_CONTROL_PARAMETERS_V1_5, ptr %args, i32 0, i32 8
  %14 = call ptr @memset(ptr %args, i32 255, i32 12)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %frev) #10
  %15 = ptrtoint ptr %frev to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 -1, ptr %frev, align 1, !annotation !62
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %crev) #10
  %16 = ptrtoint ptr %crev to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 -1, ptr %crev, align 1, !annotation !62
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %action)
  %cmp = icmp eq i32 %action, 7
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call ptr @radeon_get_connector_for_encoder_init(ptr noundef %encoder) #10
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %dig_encoder2 = getelementptr inbounds %struct.radeon_encoder_atom_dig, ptr %5, i32 0, i32 2
  %17 = ptrtoint ptr %dig_encoder2 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %dig_encoder2, align 4
  %call3 = tail call ptr @radeon_get_connector_for_encoder(ptr noundef %encoder) #10
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %dig_encoder.0 = phi i32 [ 0, %if.then ], [ %18, %if.else ]
  %connector.0 = phi ptr [ %call, %if.then ], [ %call3, %if.else ]
  %tobool.not = icmp eq ptr %connector.0, null
  br i1 %tobool.not, label %if.end.if.end13_crit_edge, label %if.then4

if.end.if.end13_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end13

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %con_priv = getelementptr inbounds %struct.radeon_connector, ptr %connector.0, i32 0, i32 7
  %19 = ptrtoint ptr %con_priv to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %con_priv, align 4
  %hpd = getelementptr inbounds %struct.radeon_connector, ptr %connector.0, i32 0, i32 12
  %21 = ptrtoint ptr %hpd to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %hpd, align 8
  %dp_clock9 = getelementptr inbounds %struct.radeon_connector_atom_dig, ptr %20, i32 0, i32 3
  %23 = ptrtoint ptr %dp_clock9 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %dp_clock9, align 4
  %dp_lane_count10 = getelementptr inbounds %struct.radeon_connector_atom_dig, ptr %20, i32 0, i32 4
  %25 = ptrtoint ptr %dp_lane_count10 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %dp_lane_count10, align 4
  %connector_object_id11 = getelementptr inbounds %struct.radeon_connector, ptr %connector.0, i32 0, i32 11
  %27 = ptrtoint ptr %connector_object_id11 to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %connector_object_id11, align 4
  %29 = and i16 %28, 255
  %and = zext i16 %29 to i32
  %30 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %20, align 4
  %phi.cast803 = trunc i32 %26 to i8
  %phi.bo806 = sdiv i32 %24, 10
  %phi.cast807 = trunc i32 %phi.bo806 to i16
  br label %if.end13

if.end13:                                         ; preds = %if.then4, %if.end.if.end13_crit_edge
  %dp_clock.0 = phi i16 [ %phi.cast807, %if.then4 ], [ 0, %if.end.if.end13_crit_edge ]
  %dp_lane_count.0 = phi i8 [ %phi.cast803, %if.then4 ], [ 0, %if.end.if.end13_crit_edge ]
  %connector_object_id.0 = phi i32 [ %and, %if.then4 ], [ 0, %if.end.if.end13_crit_edge ]
  %igp_lane_info.0 = phi i32 [ %31, %if.then4 ], [ 0, %if.end.if.end13_crit_edge ]
  %hpd_id.0 = phi i32 [ %22, %if.then4 ], [ 255, %if.end.if.end13_crit_edge ]
  %crtc = getelementptr inbounds %struct.drm_encoder, ptr %encoder, i32 0, i32 8
  %32 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %crtc, align 4
  %tobool14.not = icmp eq ptr %33, null
  br i1 %tobool14.not, label %if.end13.if.end21_crit_edge, label %if.then15

if.end13.if.end21_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end21

if.then15:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  %pll_id20 = getelementptr inbounds %struct.radeon_crtc, ptr %33, i32 0, i32 23
  %34 = ptrtoint ptr %pll_id20 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %pll_id20, align 4
  %phi.cast = trunc i32 %35 to i8
  %phi.bo = and i8 %phi.cast, 3
  br label %if.end21

if.end21:                                         ; preds = %if.then15, %if.end13.if.end21_crit_edge
  %pll_id.0 = phi i8 [ %phi.bo, %if.then15 ], [ 0, %if.end13.if.end21_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %dig_encoder.0)
  %cmp22 = icmp eq i32 %dig_encoder.0, -1
  br i1 %cmp22, label %if.end21.cleanup_crit_edge, label %if.end25

if.end21.cleanup_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end25:                                         ; preds = %if.end21
  %call26 = tail call i32 @atombios_get_encoder_mode(ptr noundef %encoder)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %cmp27 = icmp eq i32 %call26, 0
  br i1 %cmp27, label %if.end25.if.then32_crit_edge, label %lor.lhs.false

if.end25.if.then32_crit_edge:                     ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then32

lor.lhs.false:                                    ; preds = %if.end25
  %call29 = tail call i32 @atombios_get_encoder_mode(ptr noundef %encoder)
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %call29)
  %cmp30 = icmp eq i32 %call29, 5
  br i1 %cmp30, label %lor.lhs.false.if.then32_crit_edge, label %lor.lhs.false.if.end33_crit_edge

lor.lhs.false.if.end33_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end33

lor.lhs.false.if.then32_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then32

if.then32:                                        ; preds = %lor.lhs.false.if.then32_crit_edge, %if.end25.if.then32_crit_edge
  br label %if.end33

if.end33:                                         ; preds = %if.then32, %lor.lhs.false.if.end33_crit_edge
  %is_dp.0.off0 = phi i1 [ true, %if.then32 ], [ false, %lor.lhs.false.if.end33_crit_edge ]
  %36 = call ptr @memset(ptr %args, i32 0, i32 12)
  %encoder_id = getelementptr inbounds %struct.radeon_encoder, ptr %encoder, i32 0, i32 2
  %37 = ptrtoint ptr %encoder_id to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %encoder_id, align 4
  %39 = zext i32 %38 to i64
  call void @__sanitizer_cov_trace_switch(i64 %39, ptr @__sancov_gen_cov_switch_values.34)
  switch i32 %38, label %if.end33.sw.epilog_crit_edge [
    i32 20, label %sw.bb
    i32 30, label %if.end33.sw.bb34_crit_edge
    i32 32, label %if.end33.sw.bb34_crit_edge844
    i32 33, label %if.end33.sw.bb34_crit_edge845
    i32 37, label %if.end33.sw.bb34_crit_edge846
    i32 31, label %sw.bb35
  ]

if.end33.sw.bb34_crit_edge846:                    ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb34

if.end33.sw.bb34_crit_edge845:                    ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb34

if.end33.sw.bb34_crit_edge844:                    ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb34

if.end33.sw.bb34_crit_edge:                       ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb34

if.end33.sw.epilog_crit_edge:                     ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb34:                                          ; preds = %if.end33.sw.bb34_crit_edge, %if.end33.sw.bb34_crit_edge844, %if.end33.sw.bb34_crit_edge845, %if.end33.sw.bb34_crit_edge846
  br label %sw.epilog

sw.bb35:                                          ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb35, %sw.bb34, %sw.bb, %if.end33.sw.epilog_crit_edge
  %index.0 = phi i32 [ 0, %if.end33.sw.epilog_crit_edge ], [ 77, %sw.bb35 ], [ 76, %sw.bb34 ], [ 26, %sw.bb ]
  %mode_info = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 44
  %40 = ptrtoint ptr %mode_info to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %mode_info, align 4
  %call36 = call zeroext i1 @atom_parse_cmd_header(ptr noundef %41, i32 noundef %index.0, ptr noundef nonnull %frev, ptr noundef nonnull %crev) #10
  br i1 %call36, label %if.end38, label %sw.epilog.cleanup_crit_edge

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end38:                                         ; preds = %sw.epilog
  %42 = ptrtoint ptr %frev to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %frev, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %43)
  %cond666 = icmp eq i8 %43, 1
  br i1 %cond666, label %sw.bb40, label %sw.default643

sw.bb40:                                          ; preds = %if.end38
  %44 = ptrtoint ptr %crev to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %crev, align 1
  %46 = zext i8 %45 to i64
  call void @__sanitizer_cov_trace_switch(i64 %46, ptr @__sancov_gen_cov_switch_values.35)
  switch i8 %45, label %sw.default [
    i8 1, label %sw.bb42
    i8 2, label %sw.bb188
    i8 3, label %sw.bb281
    i8 4, label %sw.bb407
    i8 5, label %sw.bb529
  ]

sw.bb42:                                          ; preds = %sw.bb40
  %conv43 = trunc i32 %action to i8
  %47 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 %conv43, ptr %7, align 1
  br i1 %cmp, label %if.then46, label %if.else48

if.then46:                                        ; preds = %sw.bb42
  call void @__sanitizer_cov_trace_pc() #12
  %conv47 = trunc i32 %connector_object_id.0 to i16
  %48 = shl nuw i16 %conv47, 8
  %49 = ptrtoint ptr %args to i32
  call void @__asan_store2_noabort(i32 %49)
  store i16 %48, ptr %args, align 2
  br label %if.end70

if.else48:                                        ; preds = %sw.bb42
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %action)
  %cmp49 = icmp eq i32 %action, 11
  br i1 %cmp49, label %if.then51, label %if.else52

if.then51:                                        ; preds = %if.else48
  call void @__sanitizer_cov_trace_pc() #12
  %50 = ptrtoint ptr %args to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 %lane_num, ptr %args, align 2
  %ucLaneSet = getelementptr inbounds %struct._ATOM_DP_VS_MODE, ptr %args, i32 0, i32 1
  %51 = ptrtoint ptr %ucLaneSet to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 %lane_set, ptr %ucLaneSet, align 1
  br label %if.end70

if.else52:                                        ; preds = %if.else48
  br i1 %is_dp.0.off0, label %if.then54, label %if.else56

if.then54:                                        ; preds = %if.else52
  call void @__sanitizer_cov_trace_pc() #12
  %52 = call i16 @llvm.bswap.i16(i16 %dp_clock.0)
  %53 = ptrtoint ptr %args to i32
  call void @__asan_store2_noabort(i32 %53)
  store i16 %52, ptr %args, align 2
  br label %if.end70

if.else56:                                        ; preds = %if.else52
  %pixel_clock = getelementptr inbounds %struct.radeon_encoder, ptr %encoder, i32 0, i32 6
  %54 = ptrtoint ptr %pixel_clock to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %pixel_clock, align 4
  %call57 = call zeroext i1 @radeon_dig_monitor_is_duallink(ptr noundef %encoder, i32 noundef %55) #10
  %56 = ptrtoint ptr %pixel_clock to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %pixel_clock, align 4
  br i1 %call57, label %if.then58, label %if.else63

if.then58:                                        ; preds = %if.else56
  call void @__sanitizer_cov_trace_pc() #12
  %div61 = udiv i32 %57, 20
  %conv62 = trunc i32 %div61 to i16
  %58 = call i16 @llvm.bswap.i16(i16 %conv62)
  %59 = ptrtoint ptr %args to i32
  call void @__asan_store2_noabort(i32 %59)
  store i16 %58, ptr %args, align 2
  br label %if.end70

if.else63:                                        ; preds = %if.else56
  call void @__sanitizer_cov_trace_pc() #12
  %div65 = udiv i32 %57, 10
  %conv66 = trunc i32 %div65 to i16
  %60 = call i16 @llvm.bswap.i16(i16 %conv66)
  %61 = ptrtoint ptr %args to i32
  call void @__asan_store2_noabort(i32 %61)
  store i16 %60, ptr %args, align 2
  br label %if.end70

if.end70:                                         ; preds = %if.else63, %if.then58, %if.then54, %if.then51, %if.then46
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dig_encoder.0)
  %tobool71.not = icmp eq i32 %dig_encoder.0, 0
  %. = select i1 %tobool71.not, i8 0, i8 8
  %62 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 %., ptr %6, align 2
  %flags = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 7
  %63 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %flags, align 8
  %and82 = and i32 %64, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and82)
  %tobool83.not = icmp eq i32 %and82, 0
  br i1 %tobool83.not, label %if.end70.if.end148_crit_edge, label %land.lhs.true

if.end70.if.end148_crit_edge:                     ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end148

land.lhs.true:                                    ; preds = %if.end70
  %65 = ptrtoint ptr %encoder_id to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %encoder_id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 30, i32 %66)
  %cmp85 = icmp eq i32 %66, 30
  br i1 %cmp85, label %if.then87, label %land.lhs.true.if.end148_crit_edge

land.lhs.true.if.end148_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end148

if.then87:                                        ; preds = %land.lhs.true
  br i1 %is_dp.0.off0, label %if.then87.if.then93_crit_edge, label %lor.lhs.false90

if.then87.if.then93_crit_edge:                    ; preds = %if.then87
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then93

lor.lhs.false90:                                  ; preds = %if.then87
  %pixel_clock91 = getelementptr inbounds %struct.radeon_encoder, ptr %encoder, i32 0, i32 6
  %67 = ptrtoint ptr %pixel_clock91 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %pixel_clock91, align 4
  %call92 = call zeroext i1 @radeon_dig_monitor_is_duallink(ptr noundef %encoder, i32 noundef %68) #10
  br i1 %call92, label %if.else129, label %lor.lhs.false90.if.then93_crit_edge

lor.lhs.false90.if.then93_crit_edge:              ; preds = %lor.lhs.false90
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then93

if.then93:                                        ; preds = %lor.lhs.false90.if.then93_crit_edge, %if.then87.if.then93_crit_edge
  %and94 = and i32 %igp_lane_info.0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and94)
  %tobool95.not = icmp eq i32 %and94, 0
  br i1 %tobool95.not, label %if.else101, label %if.then93.if.end148_crit_edge

if.then93.if.end148_crit_edge:                    ; preds = %if.then93
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end148

if.else101:                                       ; preds = %if.then93
  %and102 = and i32 %igp_lane_info.0, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and102)
  %tobool103.not = icmp eq i32 %and102, 0
  br i1 %tobool103.not, label %if.else109, label %if.else101.if.end148.sink.split_crit_edge

if.else101.if.end148.sink.split_crit_edge:        ; preds = %if.else101
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end148.sink.split

if.else109:                                       ; preds = %if.else101
  %and110 = and i32 %igp_lane_info.0, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and110)
  %tobool111.not = icmp eq i32 %and110, 0
  br i1 %tobool111.not, label %if.else117, label %if.else109.if.end148.sink.split_crit_edge

if.else109.if.end148.sink.split_crit_edge:        ; preds = %if.else109
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end148.sink.split

if.else117:                                       ; preds = %if.else109
  %and118 = and i32 %igp_lane_info.0, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and118)
  %tobool119.not = icmp eq i32 %and118, 0
  br i1 %tobool119.not, label %if.else117.if.end148_crit_edge, label %if.else117.if.end148.sink.split_crit_edge

if.else117.if.end148.sink.split_crit_edge:        ; preds = %if.else117
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end148.sink.split

if.else117.if.end148_crit_edge:                   ; preds = %if.else117
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end148

if.else129:                                       ; preds = %lor.lhs.false90
  %and130 = and i32 %igp_lane_info.0, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and130)
  %tobool131.not = icmp ne i32 %and130, 0
  %and138 = and i32 %igp_lane_info.0, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and138)
  %tobool139.not = icmp eq i32 %and138, 0
  %or.cond = or i1 %tobool131.not, %tobool139.not
  br i1 %or.cond, label %if.else129.if.end148_crit_edge, label %if.else129.if.end148.sink.split_crit_edge

if.else129.if.end148.sink.split_crit_edge:        ; preds = %if.else129
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end148.sink.split

if.else129.if.end148_crit_edge:                   ; preds = %if.else129
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end148

if.end148.sink.split:                             ; preds = %if.else129.if.end148.sink.split_crit_edge, %if.else117.if.end148.sink.split_crit_edge, %if.else109.if.end148.sink.split_crit_edge, %if.else101.if.end148.sink.split_crit_edge
  %.sink834 = phi i8 [ 64, %if.else101.if.end148.sink.split_crit_edge ], [ -128, %if.else109.if.end148.sink.split_crit_edge ], [ -64, %if.else117.if.end148.sink.split_crit_edge ], [ -128, %if.else129.if.end148.sink.split_crit_edge ]
  %69 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %6, align 2
  %71 = or i8 %70, %.sink834
  store i8 %71, ptr %6, align 2
  br label %if.end148

if.end148:                                        ; preds = %if.end148.sink.split, %if.else129.if.end148_crit_edge, %if.else117.if.end148_crit_edge, %if.then93.if.end148_crit_edge, %land.lhs.true.if.end148_crit_edge, %if.end70.if.end148_crit_edge
  %72 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %5, align 4, !range !61
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %73)
  %tobool149.not = icmp eq i8 %73, 0
  br i1 %tobool149.not, label %if.end148.if.end160_crit_edge, label %if.then150

if.end148.if.end160_crit_edge:                    ; preds = %if.end148
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end160

if.then150:                                       ; preds = %if.end148
  call void @__sanitizer_cov_trace_pc() #12
  %74 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %6, align 2
  %76 = or i8 %75, 4
  store i8 %76, ptr %6, align 2
  br label %if.end160

if.end160:                                        ; preds = %if.then150, %if.end148.if.end160_crit_edge
  br i1 %is_dp.0.off0, label %if.then162, label %if.else167

if.then162:                                       ; preds = %if.end160
  call void @__sanitizer_cov_trace_pc() #12
  %77 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %6, align 2
  %79 = or i8 %78, 2
  store i8 %79, ptr %6, align 2
  br label %sw.epilog646

if.else167:                                       ; preds = %if.end160
  %devices = getelementptr inbounds %struct.radeon_encoder, ptr %encoder, i32 0, i32 3
  %80 = ptrtoint ptr %devices to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %devices, align 4
  %and168 = and i32 %81, 3784
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and168)
  %tobool169.not = icmp eq i32 %and168, 0
  br i1 %tobool169.not, label %if.else167.sw.epilog646_crit_edge, label %if.then170

if.else167.sw.epilog646_crit_edge:                ; preds = %if.else167
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog646

if.then170:                                       ; preds = %if.else167
  %coherent_mode = getelementptr inbounds %struct.radeon_encoder_atom_dig, ptr %5, i32 0, i32 1
  %82 = ptrtoint ptr %coherent_mode to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %coherent_mode, align 1, !range !61
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %83)
  %tobool171.not = icmp eq i8 %83, 0
  br i1 %tobool171.not, label %if.then170.if.end177_crit_edge, label %if.then172

if.then170.if.end177_crit_edge:                   ; preds = %if.then170
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end177

if.then172:                                       ; preds = %if.then170
  call void @__sanitizer_cov_trace_pc() #12
  %84 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %6, align 2
  %86 = or i8 %85, 2
  store i8 %86, ptr %6, align 2
  br label %if.end177

if.end177:                                        ; preds = %if.then172, %if.then170.if.end177_crit_edge
  %pixel_clock178 = getelementptr inbounds %struct.radeon_encoder, ptr %encoder, i32 0, i32 6
  %87 = ptrtoint ptr %pixel_clock178 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %pixel_clock178, align 4
  %call179 = call zeroext i1 @radeon_dig_monitor_is_duallink(ptr noundef %encoder, i32 noundef %88) #10
  br i1 %call179, label %if.then180, label %if.end177.sw.epilog646_crit_edge

if.end177.sw.epilog646_crit_edge:                 ; preds = %if.end177
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog646

if.then180:                                       ; preds = %if.end177
  call void @__sanitizer_cov_trace_pc() #12
  %89 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %6, align 2
  %91 = or i8 %90, 1
  store i8 %91, ptr %6, align 2
  br label %sw.epilog646

sw.bb188:                                         ; preds = %sw.bb40
  %conv189 = trunc i32 %action to i8
  %92 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %92)
  store i8 %conv189, ptr %7, align 1
  br i1 %cmp, label %if.then193, label %if.else195

if.then193:                                       ; preds = %sw.bb188
  call void @__sanitizer_cov_trace_pc() #12
  %conv194 = trunc i32 %connector_object_id.0 to i16
  %93 = shl nuw i16 %conv194, 8
  %94 = ptrtoint ptr %args to i32
  call void @__asan_store2_noabort(i32 %94)
  store i16 %93, ptr %args, align 2
  br label %if.end221

if.else195:                                       ; preds = %sw.bb188
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %action)
  %cmp196 = icmp eq i32 %action, 11
  br i1 %cmp196, label %if.then198, label %if.else201

if.then198:                                       ; preds = %if.else195
  call void @__sanitizer_cov_trace_pc() #12
  %95 = ptrtoint ptr %args to i32
  call void @__asan_store1_noabort(i32 %95)
  store i8 %lane_num, ptr %args, align 2
  %ucLaneSet200 = getelementptr inbounds %struct._ATOM_DP_VS_MODE, ptr %args, i32 0, i32 1
  %96 = ptrtoint ptr %ucLaneSet200 to i32
  call void @__asan_store1_noabort(i32 %96)
  store i8 %lane_set, ptr %ucLaneSet200, align 1
  br label %if.end221

if.else201:                                       ; preds = %if.else195
  br i1 %is_dp.0.off0, label %if.then203, label %if.else206

if.then203:                                       ; preds = %if.else201
  call void @__sanitizer_cov_trace_pc() #12
  %97 = call i16 @llvm.bswap.i16(i16 %dp_clock.0)
  %98 = ptrtoint ptr %args to i32
  call void @__asan_store2_noabort(i32 %98)
  store i16 %97, ptr %args, align 2
  br label %if.end221

if.else206:                                       ; preds = %if.else201
  %pixel_clock207 = getelementptr inbounds %struct.radeon_encoder, ptr %encoder, i32 0, i32 6
  %99 = ptrtoint ptr %pixel_clock207 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %pixel_clock207, align 4
  %call208 = call zeroext i1 @radeon_dig_monitor_is_duallink(ptr noundef %encoder, i32 noundef %100) #10
  %101 = ptrtoint ptr %pixel_clock207 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %pixel_clock207, align 4
  br i1 %call208, label %if.then209, label %if.else214

if.then209:                                       ; preds = %if.else206
  call void @__sanitizer_cov_trace_pc() #12
  %div212 = udiv i32 %102, 20
  %conv213 = trunc i32 %div212 to i16
  %103 = call i16 @llvm.bswap.i16(i16 %conv213)
  %104 = ptrtoint ptr %args to i32
  call void @__asan_store2_noabort(i32 %104)
  store i16 %103, ptr %args, align 2
  br label %if.end221

if.else214:                                       ; preds = %if.else206
  call void @__sanitizer_cov_trace_pc() #12
  %div216 = udiv i32 %102, 10
  %conv217 = trunc i32 %div216 to i16
  %105 = call i16 @llvm.bswap.i16(i16 %conv217)
  %106 = ptrtoint ptr %args to i32
  call void @__asan_store2_noabort(i32 %106)
  store i16 %105, ptr %args, align 2
  br label %if.end221

if.end221:                                        ; preds = %if.else214, %if.then209, %if.then203, %if.then198, %if.then193
  %conv222 = trunc i32 %dig_encoder.0 to i8
  %107 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %107)
  %bf.load = load i8, ptr %6, align 2
  %bf.value = shl i8 %conv222, 3
  %bf.shl = and i8 %bf.value, 8
  %bf.clear = and i8 %bf.load, -9
  %bf.set = or i8 %bf.clear, %bf.shl
  store i8 %bf.set, ptr %6, align 2
  %108 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %108)
  %109 = load i8, ptr %5, align 4, !range !61
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %109)
  %tobool224.not = icmp eq i8 %109, 0
  br i1 %tobool224.not, label %if.end221.if.end230_crit_edge, label %if.then225

if.end221.if.end230_crit_edge:                    ; preds = %if.end221
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end230

if.then225:                                       ; preds = %if.end221
  call void @__sanitizer_cov_trace_pc() #12
  %bf.set229 = or i8 %bf.set, 4
  %110 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %110)
  store i8 %bf.set229, ptr %6, align 2
  br label %if.end230

if.end230:                                        ; preds = %if.then225, %if.end221.if.end230_crit_edge
  %111 = ptrtoint ptr %encoder_id to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %encoder_id, align 4
  %113 = zext i32 %112 to i64
  call void @__sanitizer_cov_trace_switch(i64 %113, ptr @__sancov_gen_cov_switch_values.36)
  switch i32 %112, label %if.end230.sw.epilog247_crit_edge [
    i32 30, label %sw.bb232
    i32 32, label %sw.bb237
    i32 33, label %sw.bb242
  ]

if.end230.sw.epilog247_crit_edge:                 ; preds = %if.end230
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog247

sw.bb232:                                         ; preds = %if.end230
  call void @__sanitizer_cov_trace_pc() #12
  %114 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %114)
  %bf.load234 = load i8, ptr %6, align 2
  %bf.clear235 = and i8 %bf.load234, 63
  br label %sw.epilog247.sink.split

sw.bb237:                                         ; preds = %if.end230
  call void @__sanitizer_cov_trace_pc() #12
  %115 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %115)
  %bf.load239 = load i8, ptr %6, align 2
  %bf.clear240 = and i8 %bf.load239, 63
  %bf.set241 = or i8 %bf.clear240, 64
  br label %sw.epilog247.sink.split

sw.bb242:                                         ; preds = %if.end230
  call void @__sanitizer_cov_trace_pc() #12
  %116 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %116)
  %bf.load244 = load i8, ptr %6, align 2
  %bf.clear245 = and i8 %bf.load244, 63
  %bf.set246 = or i8 %bf.clear245, -128
  br label %sw.epilog247.sink.split

sw.epilog247.sink.split:                          ; preds = %sw.bb242, %sw.bb237, %sw.bb232
  %bf.set246.sink = phi i8 [ %bf.set246, %sw.bb242 ], [ %bf.set241, %sw.bb237 ], [ %bf.clear235, %sw.bb232 ]
  %117 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %117)
  store i8 %bf.set246.sink, ptr %6, align 2
  br label %sw.epilog247

sw.epilog247:                                     ; preds = %sw.epilog247.sink.split, %if.end230.sw.epilog247_crit_edge
  br i1 %is_dp.0.off0, label %if.then249, label %if.else258

if.then249:                                       ; preds = %sw.epilog247
  call void @__sanitizer_cov_trace_pc() #12
  %118 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %118)
  %bf.load251 = load i8, ptr %6, align 2
  %bf.set257 = or i8 %bf.load251, 18
  store i8 %bf.set257, ptr %6, align 2
  br label %sw.epilog646

if.else258:                                       ; preds = %sw.epilog247
  %devices259 = getelementptr inbounds %struct.radeon_encoder, ptr %encoder, i32 0, i32 3
  %119 = ptrtoint ptr %devices259 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %devices259, align 4
  %and260 = and i32 %120, 3784
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and260)
  %tobool261.not = icmp eq i32 %and260, 0
  br i1 %tobool261.not, label %if.else258.sw.epilog646_crit_edge, label %if.then262

if.else258.sw.epilog646_crit_edge:                ; preds = %if.else258
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog646

if.then262:                                       ; preds = %if.else258
  %coherent_mode263 = getelementptr inbounds %struct.radeon_encoder_atom_dig, ptr %5, i32 0, i32 1
  %121 = ptrtoint ptr %coherent_mode263 to i32
  call void @__asan_load1_noabort(i32 %121)
  %122 = load i8, ptr %coherent_mode263, align 1, !range !61
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %122)
  %tobool264.not = icmp eq i8 %122, 0
  br i1 %tobool264.not, label %if.then262.if.end270_crit_edge, label %if.then265

if.then262.if.end270_crit_edge:                   ; preds = %if.then262
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end270

if.then265:                                       ; preds = %if.then262
  call void @__sanitizer_cov_trace_pc() #12
  %123 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %123)
  %bf.load267 = load i8, ptr %6, align 2
  %bf.set269 = or i8 %bf.load267, 2
  store i8 %bf.set269, ptr %6, align 2
  br label %if.end270

if.end270:                                        ; preds = %if.then265, %if.then262.if.end270_crit_edge
  %pixel_clock271 = getelementptr inbounds %struct.radeon_encoder, ptr %encoder, i32 0, i32 6
  %124 = ptrtoint ptr %pixel_clock271 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %pixel_clock271, align 4
  %call272 = call zeroext i1 @radeon_dig_monitor_is_duallink(ptr noundef %encoder, i32 noundef %125) #10
  br i1 %call272, label %if.then273, label %if.end270.sw.epilog646_crit_edge

if.end270.sw.epilog646_crit_edge:                 ; preds = %if.end270
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog646

if.then273:                                       ; preds = %if.end270
  call void @__sanitizer_cov_trace_pc() #12
  %126 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %126)
  %bf.load275 = load i8, ptr %6, align 2
  %bf.set277 = or i8 %bf.load275, 1
  store i8 %bf.set277, ptr %6, align 2
  br label %sw.epilog646

sw.bb281:                                         ; preds = %sw.bb40
  %conv282 = trunc i32 %action to i8
  %127 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %127)
  store i8 %conv282, ptr %7, align 1
  br i1 %cmp, label %if.then286, label %if.else288

if.then286:                                       ; preds = %sw.bb281
  call void @__sanitizer_cov_trace_pc() #12
  %conv287 = trunc i32 %connector_object_id.0 to i16
  %128 = shl nuw i16 %conv287, 8
  %129 = ptrtoint ptr %args to i32
  call void @__asan_store2_noabort(i32 %129)
  store i16 %128, ptr %args, align 2
  br label %if.end314

if.else288:                                       ; preds = %sw.bb281
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %action)
  %cmp289 = icmp eq i32 %action, 11
  br i1 %cmp289, label %if.then291, label %if.else294

if.then291:                                       ; preds = %if.else288
  call void @__sanitizer_cov_trace_pc() #12
  %130 = ptrtoint ptr %args to i32
  call void @__asan_store1_noabort(i32 %130)
  store i8 %lane_num, ptr %args, align 2
  %ucLaneSet293 = getelementptr inbounds %struct._ATOM_DP_VS_MODE, ptr %args, i32 0, i32 1
  %131 = ptrtoint ptr %ucLaneSet293 to i32
  call void @__asan_store1_noabort(i32 %131)
  store i8 %lane_set, ptr %ucLaneSet293, align 1
  br label %if.end314

if.else294:                                       ; preds = %if.else288
  br i1 %is_dp.0.off0, label %if.end314.thread829, label %if.else299

if.end314.thread829:                              ; preds = %if.else294
  call void @__sanitizer_cov_trace_pc() #12
  %132 = call i16 @llvm.bswap.i16(i16 %dp_clock.0)
  %133 = ptrtoint ptr %args to i32
  call void @__asan_store2_noabort(i32 %133)
  store i16 %132, ptr %args, align 2
  br label %if.end326

if.else299:                                       ; preds = %if.else294
  %pixel_clock300 = getelementptr inbounds %struct.radeon_encoder, ptr %encoder, i32 0, i32 6
  %134 = ptrtoint ptr %pixel_clock300 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %pixel_clock300, align 4
  %call301 = call zeroext i1 @radeon_dig_monitor_is_duallink(ptr noundef %encoder, i32 noundef %135) #10
  %136 = ptrtoint ptr %pixel_clock300 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %pixel_clock300, align 4
  br i1 %call301, label %if.then302, label %if.else307

if.then302:                                       ; preds = %if.else299
  call void @__sanitizer_cov_trace_pc() #12
  %div305 = udiv i32 %137, 20
  %conv306 = trunc i32 %div305 to i16
  %138 = call i16 @llvm.bswap.i16(i16 %conv306)
  %139 = ptrtoint ptr %args to i32
  call void @__asan_store2_noabort(i32 %139)
  store i16 %138, ptr %args, align 2
  br label %if.else318

if.else307:                                       ; preds = %if.else299
  call void @__sanitizer_cov_trace_pc() #12
  %div309 = udiv i32 %137, 10
  %conv310 = trunc i32 %div309 to i16
  %140 = call i16 @llvm.bswap.i16(i16 %conv310)
  %141 = ptrtoint ptr %args to i32
  call void @__asan_store2_noabort(i32 %141)
  store i16 %140, ptr %args, align 2
  br label %if.else318

if.end314:                                        ; preds = %if.then291, %if.then286
  br i1 %is_dp.0.off0, label %if.end314.if.end326_crit_edge, label %if.end314.if.else318_crit_edge

if.end314.if.else318_crit_edge:                   ; preds = %if.end314
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else318

if.end314.if.end326_crit_edge:                    ; preds = %if.end314
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end326

if.else318:                                       ; preds = %if.end314.if.else318_crit_edge, %if.else307, %if.then302
  %pixel_clock319 = getelementptr inbounds %struct.radeon_encoder, ptr %encoder, i32 0, i32 6
  %142 = ptrtoint ptr %pixel_clock319 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %pixel_clock319, align 4
  %call320 = call zeroext i1 @radeon_dig_monitor_is_duallink(ptr noundef %encoder, i32 noundef %143) #10
  %.838 = select i1 %call320, i8 8, i8 4
  br label %if.end326

if.end326:                                        ; preds = %if.else318, %if.end314.if.end326_crit_edge, %if.end314.thread829
  %.sink = phi i8 [ %dp_lane_count.0, %if.end314.thread829 ], [ %dp_lane_count.0, %if.end314.if.end326_crit_edge ], [ %.838, %if.else318 ]
  %144 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %144)
  store i8 %.sink, ptr %8, align 2
  %145 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %145)
  %146 = load i8, ptr %5, align 4, !range !61
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %146)
  %tobool328.not = icmp eq i8 %146, 0
  br i1 %tobool328.not, label %if.end326.if.end334_crit_edge, label %if.then329

if.end326.if.end334_crit_edge:                    ; preds = %if.end326
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end334

if.then329:                                       ; preds = %if.end326
  call void @__sanitizer_cov_trace_pc() #12
  %147 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %147)
  %bf.load331 = load i8, ptr %6, align 2
  %bf.set333 = or i8 %bf.load331, 4
  store i8 %bf.set333, ptr %6, align 2
  br label %if.end334

if.end334:                                        ; preds = %if.then329, %if.end326.if.end334_crit_edge
  %and335 = and i32 %dig_encoder.0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and335)
  %tobool336.not = icmp eq i32 %and335, 0
  br i1 %tobool336.not, label %if.end334.if.end342_crit_edge, label %if.then337

if.end334.if.end342_crit_edge:                    ; preds = %if.end334
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end342

if.then337:                                       ; preds = %if.end334
  call void @__sanitizer_cov_trace_pc() #12
  %148 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %148)
  %bf.load339 = load i8, ptr %6, align 2
  %bf.set341 = or i8 %bf.load339, 8
  store i8 %bf.set341, ptr %6, align 2
  br label %if.end342

if.end342:                                        ; preds = %if.then337, %if.end334.if.end342_crit_edge
  br i1 %is_dp.0.off0, label %land.lhs.true345, label %if.end342.if.else352_crit_edge

if.end342.if.else352_crit_edge:                   ; preds = %if.end342
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else352

land.lhs.true345:                                 ; preds = %if.end342
  %dp_extclk = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 41, i32 9
  %149 = ptrtoint ptr %dp_extclk to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %dp_extclk, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %150)
  %tobool346.not = icmp eq i32 %150, 0
  br i1 %tobool346.not, label %land.lhs.true345.if.else352_crit_edge, label %if.then347

land.lhs.true345.if.else352_crit_edge:            ; preds = %land.lhs.true345
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else352

if.then347:                                       ; preds = %land.lhs.true345
  call void @__sanitizer_cov_trace_pc() #12
  %151 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %151)
  %bf.load349 = load i8, ptr %6, align 2
  br label %if.end360

if.else352:                                       ; preds = %land.lhs.true345.if.else352_crit_edge, %if.end342.if.else352_crit_edge
  %152 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %152)
  %bf.load355 = load i8, ptr %6, align 2
  %bf.shl357 = shl nuw nsw i8 %pll_id.0, 4
  br label %if.end360

if.end360:                                        ; preds = %if.else352, %if.then347
  %bf.load355.sink = phi i8 [ %bf.load355, %if.else352 ], [ %bf.load349, %if.then347 ]
  %bf.shl357.sink = phi i8 [ %bf.shl357, %if.else352 ], [ 32, %if.then347 ]
  %bf.clear358 = and i8 %bf.load355.sink, -49
  %bf.set359 = or i8 %bf.clear358, %bf.shl357.sink
  %153 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %153)
  store i8 %bf.set359, ptr %6, align 2
  %154 = ptrtoint ptr %encoder_id to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %encoder_id, align 4
  %156 = zext i32 %155 to i64
  call void @__sanitizer_cov_trace_switch(i64 %156, ptr @__sancov_gen_cov_switch_values.37)
  switch i32 %155, label %if.end360.sw.epilog377_crit_edge [
    i32 30, label %sw.bb362
    i32 32, label %sw.bb367
    i32 33, label %sw.bb372
  ]

if.end360.sw.epilog377_crit_edge:                 ; preds = %if.end360
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog377

sw.bb362:                                         ; preds = %if.end360
  call void @__sanitizer_cov_trace_pc() #12
  %157 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %157)
  %bf.load364 = load i8, ptr %6, align 2
  %bf.clear365 = and i8 %bf.load364, 63
  br label %sw.epilog377.sink.split

sw.bb367:                                         ; preds = %if.end360
  call void @__sanitizer_cov_trace_pc() #12
  %158 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %158)
  %bf.load369 = load i8, ptr %6, align 2
  %bf.clear370 = and i8 %bf.load369, 63
  %bf.set371 = or i8 %bf.clear370, 64
  br label %sw.epilog377.sink.split

sw.bb372:                                         ; preds = %if.end360
  call void @__sanitizer_cov_trace_pc() #12
  %159 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %159)
  %bf.load374 = load i8, ptr %6, align 2
  %bf.clear375 = and i8 %bf.load374, 63
  %bf.set376 = or i8 %bf.clear375, -128
  br label %sw.epilog377.sink.split

sw.epilog377.sink.split:                          ; preds = %sw.bb372, %sw.bb367, %sw.bb362
  %bf.set376.sink = phi i8 [ %bf.set376, %sw.bb372 ], [ %bf.set371, %sw.bb367 ], [ %bf.clear365, %sw.bb362 ]
  %160 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %160)
  store i8 %bf.set376.sink, ptr %6, align 2
  br label %sw.epilog377

sw.epilog377:                                     ; preds = %sw.epilog377.sink.split, %if.end360.sw.epilog377_crit_edge
  br i1 %is_dp.0.off0, label %if.then379, label %if.else384

if.then379:                                       ; preds = %sw.epilog377
  call void @__sanitizer_cov_trace_pc() #12
  %161 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %161)
  %bf.load381 = load i8, ptr %6, align 2
  %bf.set383 = or i8 %bf.load381, 2
  store i8 %bf.set383, ptr %6, align 2
  br label %sw.epilog646

if.else384:                                       ; preds = %sw.epilog377
  %devices385 = getelementptr inbounds %struct.radeon_encoder, ptr %encoder, i32 0, i32 3
  %162 = ptrtoint ptr %devices385 to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %devices385, align 4
  %and386 = and i32 %163, 3784
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and386)
  %tobool387.not = icmp eq i32 %and386, 0
  br i1 %tobool387.not, label %if.else384.sw.epilog646_crit_edge, label %if.then388

if.else384.sw.epilog646_crit_edge:                ; preds = %if.else384
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog646

if.then388:                                       ; preds = %if.else384
  %coherent_mode389 = getelementptr inbounds %struct.radeon_encoder_atom_dig, ptr %5, i32 0, i32 1
  %164 = ptrtoint ptr %coherent_mode389 to i32
  call void @__asan_load1_noabort(i32 %164)
  %165 = load i8, ptr %coherent_mode389, align 1, !range !61
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %165)
  %tobool390.not = icmp eq i8 %165, 0
  br i1 %tobool390.not, label %if.then388.if.end396_crit_edge, label %if.then391

if.then388.if.end396_crit_edge:                   ; preds = %if.then388
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end396

if.then391:                                       ; preds = %if.then388
  call void @__sanitizer_cov_trace_pc() #12
  %166 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %166)
  %bf.load393 = load i8, ptr %6, align 2
  %bf.set395 = or i8 %bf.load393, 2
  store i8 %bf.set395, ptr %6, align 2
  br label %if.end396

if.end396:                                        ; preds = %if.then391, %if.then388.if.end396_crit_edge
  %pixel_clock397 = getelementptr inbounds %struct.radeon_encoder, ptr %encoder, i32 0, i32 6
  %167 = ptrtoint ptr %pixel_clock397 to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load i32, ptr %pixel_clock397, align 4
  %call398 = call zeroext i1 @radeon_dig_monitor_is_duallink(ptr noundef %encoder, i32 noundef %168) #10
  br i1 %call398, label %if.then399, label %if.end396.sw.epilog646_crit_edge

if.end396.sw.epilog646_crit_edge:                 ; preds = %if.end396
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog646

if.then399:                                       ; preds = %if.end396
  call void @__sanitizer_cov_trace_pc() #12
  %169 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %169)
  %bf.load401 = load i8, ptr %6, align 2
  %bf.set403 = or i8 %bf.load401, 1
  store i8 %bf.set403, ptr %6, align 2
  br label %sw.epilog646

sw.bb407:                                         ; preds = %sw.bb40
  %conv408 = trunc i32 %action to i8
  %170 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %170)
  store i8 %conv408, ptr %7, align 1
  br i1 %cmp, label %if.then412, label %if.else414

if.then412:                                       ; preds = %sw.bb407
  call void @__sanitizer_cov_trace_pc() #12
  %conv413 = trunc i32 %connector_object_id.0 to i16
  %171 = shl nuw i16 %conv413, 8
  %172 = ptrtoint ptr %args to i32
  call void @__asan_store2_noabort(i32 %172)
  store i16 %171, ptr %args, align 2
  br label %if.end439

if.else414:                                       ; preds = %sw.bb407
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %action)
  %cmp415 = icmp eq i32 %action, 11
  br i1 %cmp415, label %if.then417, label %if.else419

if.then417:                                       ; preds = %if.else414
  call void @__sanitizer_cov_trace_pc() #12
  %173 = ptrtoint ptr %args to i32
  call void @__asan_store1_noabort(i32 %173)
  store i8 %lane_num, ptr %args, align 2
  %174 = getelementptr inbounds %struct._ATOM_DP_VS_MODE_V4, ptr %args, i32 0, i32 1
  %175 = ptrtoint ptr %174 to i32
  call void @__asan_store1_noabort(i32 %175)
  store i8 %lane_set, ptr %174, align 1
  br label %if.end439

if.else419:                                       ; preds = %if.else414
  br i1 %is_dp.0.off0, label %if.end439.thread830, label %if.else424

if.end439.thread830:                              ; preds = %if.else419
  call void @__sanitizer_cov_trace_pc() #12
  %176 = call i16 @llvm.bswap.i16(i16 %dp_clock.0)
  %177 = ptrtoint ptr %args to i32
  call void @__asan_store2_noabort(i32 %177)
  store i16 %176, ptr %args, align 2
  br label %if.end452

if.else424:                                       ; preds = %if.else419
  %pixel_clock425 = getelementptr inbounds %struct.radeon_encoder, ptr %encoder, i32 0, i32 6
  %178 = ptrtoint ptr %pixel_clock425 to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load i32, ptr %pixel_clock425, align 4
  %call426 = call zeroext i1 @radeon_dig_monitor_is_duallink(ptr noundef %encoder, i32 noundef %179) #10
  %180 = ptrtoint ptr %pixel_clock425 to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load i32, ptr %pixel_clock425, align 4
  br i1 %call426, label %if.then427, label %if.else432

if.then427:                                       ; preds = %if.else424
  call void @__sanitizer_cov_trace_pc() #12
  %div430 = udiv i32 %181, 20
  %conv431 = trunc i32 %div430 to i16
  %182 = call i16 @llvm.bswap.i16(i16 %conv431)
  %183 = ptrtoint ptr %args to i32
  call void @__asan_store2_noabort(i32 %183)
  store i16 %182, ptr %args, align 2
  br label %if.else444

if.else432:                                       ; preds = %if.else424
  call void @__sanitizer_cov_trace_pc() #12
  %div434 = udiv i32 %181, 10
  %conv435 = trunc i32 %div434 to i16
  %184 = call i16 @llvm.bswap.i16(i16 %conv435)
  %185 = ptrtoint ptr %args to i32
  call void @__asan_store2_noabort(i32 %185)
  store i16 %184, ptr %args, align 2
  br label %if.else444

if.end439:                                        ; preds = %if.then417, %if.then412
  br i1 %is_dp.0.off0, label %if.end439.if.end452_crit_edge, label %if.end439.if.else444_crit_edge

if.end439.if.else444_crit_edge:                   ; preds = %if.end439
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else444

if.end439.if.end452_crit_edge:                    ; preds = %if.end439
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end452

if.else444:                                       ; preds = %if.end439.if.else444_crit_edge, %if.else432, %if.then427
  %pixel_clock445 = getelementptr inbounds %struct.radeon_encoder, ptr %encoder, i32 0, i32 6
  %186 = ptrtoint ptr %pixel_clock445 to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load i32, ptr %pixel_clock445, align 4
  %call446 = call zeroext i1 @radeon_dig_monitor_is_duallink(ptr noundef %encoder, i32 noundef %187) #10
  %.839 = select i1 %call446, i8 8, i8 4
  br label %if.end452

if.end452:                                        ; preds = %if.else444, %if.end439.if.end452_crit_edge, %if.end439.thread830
  %.sink835 = phi i8 [ %dp_lane_count.0, %if.end439.thread830 ], [ %dp_lane_count.0, %if.end439.if.end452_crit_edge ], [ %.839, %if.else444 ]
  %188 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %188)
  store i8 %.sink835, ptr %8, align 2
  %189 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %189)
  %190 = load i8, ptr %5, align 4, !range !61
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %190)
  %tobool454.not = icmp eq i8 %190, 0
  br i1 %tobool454.not, label %if.end452.if.end459_crit_edge, label %if.then455

if.end452.if.end459_crit_edge:                    ; preds = %if.end452
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end459

if.then455:                                       ; preds = %if.end452
  call void @__sanitizer_cov_trace_pc() #12
  %191 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %191)
  %bf.load456 = load i8, ptr %6, align 2
  %bf.set458 = or i8 %bf.load456, 4
  store i8 %bf.set458, ptr %6, align 2
  br label %if.end459

if.end459:                                        ; preds = %if.then455, %if.end452.if.end459_crit_edge
  %and460 = and i32 %dig_encoder.0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and460)
  %tobool461.not = icmp eq i32 %and460, 0
  br i1 %tobool461.not, label %if.end459.if.end466_crit_edge, label %if.then462

if.end459.if.end466_crit_edge:                    ; preds = %if.end459
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end466

if.then462:                                       ; preds = %if.end459
  call void @__sanitizer_cov_trace_pc() #12
  %192 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %192)
  %bf.load463 = load i8, ptr %6, align 2
  %bf.set465 = or i8 %bf.load463, 8
  store i8 %bf.set465, ptr %6, align 2
  br label %if.end466

if.end466:                                        ; preds = %if.then462, %if.end459.if.end466_crit_edge
  br i1 %is_dp.0.off0, label %if.then468, label %if.else481

if.then468:                                       ; preds = %if.end466
  %dp_extclk470 = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 41, i32 9
  %193 = ptrtoint ptr %dp_extclk470 to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load i32, ptr %dp_extclk470, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %194)
  %tobool471.not = icmp eq i32 %194, 0
  %195 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %195)
  %bf.load477 = load i8, ptr %6, align 2
  br i1 %tobool471.not, label %if.else476, label %if.then472

if.then472:                                       ; preds = %if.then468
  call void @__sanitizer_cov_trace_pc() #12
  %bf.set475 = or i8 %bf.load477, 48
  br label %if.end488

if.else476:                                       ; preds = %if.then468
  call void @__sanitizer_cov_trace_pc() #12
  %bf.clear478 = and i8 %bf.load477, -49
  %bf.set479 = or i8 %bf.clear478, 32
  br label %if.end488

if.else481:                                       ; preds = %if.end466
  call void @__sanitizer_cov_trace_pc() #12
  %196 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %196)
  %bf.load483 = load i8, ptr %6, align 2
  %bf.shl485 = shl nuw nsw i8 %pll_id.0, 4
  %bf.clear486 = and i8 %bf.load483, -49
  %bf.set487 = or i8 %bf.clear486, %bf.shl485
  br label %if.end488

if.end488:                                        ; preds = %if.else481, %if.else476, %if.then472
  %bf.set475.sink = phi i8 [ %bf.set475, %if.then472 ], [ %bf.set479, %if.else476 ], [ %bf.set487, %if.else481 ]
  %197 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %197)
  store i8 %bf.set475.sink, ptr %6, align 2
  %198 = ptrtoint ptr %encoder_id to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load i32, ptr %encoder_id, align 4
  %200 = zext i32 %199 to i64
  call void @__sanitizer_cov_trace_switch(i64 %200, ptr @__sancov_gen_cov_switch_values.38)
  switch i32 %199, label %if.end488.sw.epilog502_crit_edge [
    i32 30, label %sw.bb490
    i32 32, label %sw.bb494
    i32 33, label %sw.bb498
  ]

if.end488.sw.epilog502_crit_edge:                 ; preds = %if.end488
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog502

sw.bb490:                                         ; preds = %if.end488
  call void @__sanitizer_cov_trace_pc() #12
  %201 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %201)
  %bf.load491 = load i8, ptr %6, align 2
  %bf.clear492 = and i8 %bf.load491, 63
  br label %sw.epilog502.sink.split

sw.bb494:                                         ; preds = %if.end488
  call void @__sanitizer_cov_trace_pc() #12
  %202 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %202)
  %bf.load495 = load i8, ptr %6, align 2
  %bf.clear496 = and i8 %bf.load495, 63
  %bf.set497 = or i8 %bf.clear496, 64
  br label %sw.epilog502.sink.split

sw.bb498:                                         ; preds = %if.end488
  call void @__sanitizer_cov_trace_pc() #12
  %203 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %203)
  %bf.load499 = load i8, ptr %6, align 2
  %bf.clear500 = and i8 %bf.load499, 63
  %bf.set501 = or i8 %bf.clear500, -128
  br label %sw.epilog502.sink.split

sw.epilog502.sink.split:                          ; preds = %sw.bb498, %sw.bb494, %sw.bb490
  %bf.set501.sink = phi i8 [ %bf.set501, %sw.bb498 ], [ %bf.set497, %sw.bb494 ], [ %bf.clear492, %sw.bb490 ]
  %204 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %204)
  store i8 %bf.set501.sink, ptr %6, align 2
  br label %sw.epilog502

sw.epilog502:                                     ; preds = %sw.epilog502.sink.split, %if.end488.sw.epilog502_crit_edge
  br i1 %is_dp.0.off0, label %if.then504, label %if.else508

if.then504:                                       ; preds = %sw.epilog502
  call void @__sanitizer_cov_trace_pc() #12
  %205 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %205)
  %bf.load505 = load i8, ptr %6, align 2
  %bf.set507 = or i8 %bf.load505, 2
  store i8 %bf.set507, ptr %6, align 2
  br label %sw.epilog646

if.else508:                                       ; preds = %sw.epilog502
  %devices509 = getelementptr inbounds %struct.radeon_encoder, ptr %encoder, i32 0, i32 3
  %206 = ptrtoint ptr %devices509 to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load i32, ptr %devices509, align 4
  %and510 = and i32 %207, 3784
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and510)
  %tobool511.not = icmp eq i32 %and510, 0
  br i1 %tobool511.not, label %if.else508.sw.epilog646_crit_edge, label %if.then512

if.else508.sw.epilog646_crit_edge:                ; preds = %if.else508
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog646

if.then512:                                       ; preds = %if.else508
  %coherent_mode513 = getelementptr inbounds %struct.radeon_encoder_atom_dig, ptr %5, i32 0, i32 1
  %208 = ptrtoint ptr %coherent_mode513 to i32
  call void @__asan_load1_noabort(i32 %208)
  %209 = load i8, ptr %coherent_mode513, align 1, !range !61
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %209)
  %tobool514.not = icmp eq i8 %209, 0
  br i1 %tobool514.not, label %if.then512.if.end519_crit_edge, label %if.then515

if.then512.if.end519_crit_edge:                   ; preds = %if.then512
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end519

if.then515:                                       ; preds = %if.then512
  call void @__sanitizer_cov_trace_pc() #12
  %210 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %210)
  %bf.load516 = load i8, ptr %6, align 2
  %bf.set518 = or i8 %bf.load516, 2
  store i8 %bf.set518, ptr %6, align 2
  br label %if.end519

if.end519:                                        ; preds = %if.then515, %if.then512.if.end519_crit_edge
  %pixel_clock520 = getelementptr inbounds %struct.radeon_encoder, ptr %encoder, i32 0, i32 6
  %211 = ptrtoint ptr %pixel_clock520 to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load i32, ptr %pixel_clock520, align 4
  %call521 = call zeroext i1 @radeon_dig_monitor_is_duallink(ptr noundef %encoder, i32 noundef %212) #10
  br i1 %call521, label %if.then522, label %if.end519.sw.epilog646_crit_edge

if.end519.sw.epilog646_crit_edge:                 ; preds = %if.end519
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog646

if.then522:                                       ; preds = %if.end519
  call void @__sanitizer_cov_trace_pc() #12
  %213 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %213)
  %bf.load523 = load i8, ptr %6, align 2
  %bf.set525 = or i8 %bf.load523, 1
  store i8 %bf.set525, ptr %6, align 2
  br label %sw.epilog646

sw.bb529:                                         ; preds = %sw.bb40
  %conv530 = trunc i32 %action to i8
  %214 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %214)
  store i8 %conv530, ptr %7, align 1
  br i1 %is_dp.0.off0, label %sw.bb529.if.end541_crit_edge, label %if.else536

sw.bb529.if.end541_crit_edge:                     ; preds = %sw.bb529
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end541

if.else536:                                       ; preds = %sw.bb529
  call void @__sanitizer_cov_trace_pc() #12
  %pixel_clock537 = getelementptr inbounds %struct.radeon_encoder, ptr %encoder, i32 0, i32 6
  %215 = ptrtoint ptr %pixel_clock537 to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load i32, ptr %pixel_clock537, align 4
  %div538 = udiv i32 %216, 10
  %conv539 = trunc i32 %div538 to i16
  br label %if.end541

if.end541:                                        ; preds = %if.else536, %sw.bb529.if.end541_crit_edge
  %conv539.sink = phi i16 [ %conv539, %if.else536 ], [ %dp_clock.0, %sw.bb529.if.end541_crit_edge ]
  %217 = call i16 @llvm.bswap.i16(i16 %conv539.sink)
  %218 = ptrtoint ptr %args to i32
  call void @__asan_store2_noabort(i32 %218)
  store i16 %217, ptr %args, align 2
  %219 = ptrtoint ptr %encoder_id to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load i32, ptr %encoder_id, align 4
  %221 = zext i32 %220 to i64
  call void @__sanitizer_cov_trace_switch(i64 %221, ptr @__sancov_gen_cov_switch_values.39)
  switch i32 %220, label %if.end541.sw.epilog568_crit_edge [
    i32 30, label %sw.bb543
    i32 32, label %sw.bb550
    i32 33, label %sw.bb558
    i32 37, label %if.end541.sw.epilog568.sink.split_crit_edge
  ]

if.end541.sw.epilog568.sink.split_crit_edge:      ; preds = %if.end541
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog568.sink.split

if.end541.sw.epilog568_crit_edge:                 ; preds = %if.end541
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog568

sw.bb543:                                         ; preds = %if.end541
  call void @__sanitizer_cov_trace_pc() #12
  %222 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %222)
  %223 = load i8, ptr %5, align 4, !range !61
  br label %sw.epilog568.sink.split

sw.bb550:                                         ; preds = %if.end541
  call void @__sanitizer_cov_trace_pc() #12
  %224 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %224)
  %225 = load i8, ptr %5, align 4, !range !61
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %225)
  %tobool552.not = icmp eq i8 %225, 0
  %.841 = select i1 %tobool552.not, i8 2, i8 3
  br label %sw.epilog568.sink.split

sw.bb558:                                         ; preds = %if.end541
  call void @__sanitizer_cov_trace_pc() #12
  %226 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %226)
  %227 = load i8, ptr %5, align 4, !range !61
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %227)
  %tobool560.not = icmp eq i8 %227, 0
  %.842 = select i1 %tobool560.not, i8 4, i8 5
  br label %sw.epilog568.sink.split

sw.epilog568.sink.split:                          ; preds = %sw.bb558, %sw.bb550, %sw.bb543, %if.end541.sw.epilog568.sink.split_crit_edge
  %.sink836 = phi i8 [ %223, %sw.bb543 ], [ %.841, %sw.bb550 ], [ %.842, %sw.bb558 ], [ 6, %if.end541.sw.epilog568.sink.split_crit_edge ]
  %228 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %228)
  store i8 %.sink836, ptr %6, align 2
  br label %sw.epilog568

sw.epilog568:                                     ; preds = %sw.epilog568.sink.split, %if.end541.sw.epilog568_crit_edge
  br i1 %is_dp.0.off0, label %if.then570, label %if.else573

if.then570:                                       ; preds = %sw.epilog568
  call void @__sanitizer_cov_trace_pc() #12
  %229 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %229)
  store i8 %dp_lane_count.0, ptr %8, align 2
  %conv582.c816 = trunc i32 %connector_object_id.0 to i8
  %230 = ptrtoint ptr %9 to i32
  call void @__asan_store1_noabort(i32 %230)
  store i8 %conv582.c816, ptr %9, align 1
  %call583.c817 = call i32 @atombios_get_encoder_mode(ptr noundef %encoder)
  %conv584.c818 = trunc i32 %call583.c817 to i8
  %231 = ptrtoint ptr %10 to i32
  call void @__asan_store1_noabort(i32 %231)
  store i8 %conv584.c818, ptr %10, align 2
  %dp_extclk589 = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 41, i32 9
  %232 = ptrtoint ptr %dp_extclk589 to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load i32, ptr %dp_extclk589, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %233)
  %tobool590.not = icmp eq i32 %233, 0
  %234 = ptrtoint ptr %11 to i32
  call void @__asan_load1_noabort(i32 %234)
  %bf.load597.c825 = load i8, ptr %11, align 1
  %bf.set594 = or i8 %bf.load597.c825, 12
  %bf.shl599.c826 = shl nuw nsw i8 %pll_id.0, 2
  %bf.clear600.c827 = and i8 %bf.load597.c825, -13
  %bf.set601.c828 = or i8 %bf.clear600.c827, %bf.shl599.c826
  %storemerge831 = select i1 %tobool590.not, i8 %bf.set601.c828, i8 %bf.set594
  br label %if.end621.sink.split

if.else573:                                       ; preds = %sw.epilog568
  %pixel_clock574 = getelementptr inbounds %struct.radeon_encoder, ptr %encoder, i32 0, i32 6
  %235 = ptrtoint ptr %pixel_clock574 to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load i32, ptr %pixel_clock574, align 4
  %call575 = call zeroext i1 @radeon_dig_monitor_is_duallink(ptr noundef %encoder, i32 noundef %236) #10
  %.843 = select i1 %call575, i8 8, i8 4
  %237 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %237)
  store i8 %.843, ptr %8, align 2
  %conv582.c = trunc i32 %connector_object_id.0 to i8
  %238 = ptrtoint ptr %9 to i32
  call void @__asan_store1_noabort(i32 %238)
  store i8 %conv582.c, ptr %9, align 1
  %call583.c = call i32 @atombios_get_encoder_mode(ptr noundef %encoder)
  %conv584.c = trunc i32 %call583.c to i8
  %239 = ptrtoint ptr %10 to i32
  call void @__asan_store1_noabort(i32 %239)
  store i8 %conv584.c, ptr %10, align 2
  %240 = ptrtoint ptr %11 to i32
  call void @__asan_load1_noabort(i32 %240)
  %bf.load597.c820 = load i8, ptr %11, align 1
  %bf.shl599.c821 = shl nuw nsw i8 %pll_id.0, 2
  %bf.clear600.c822 = and i8 %bf.load597.c820, -13
  %bf.set601.c823 = or i8 %bf.clear600.c822, %bf.shl599.c821
  store i8 %bf.set601.c823, ptr %11, align 1
  %devices609 = getelementptr inbounds %struct.radeon_encoder, ptr %encoder, i32 0, i32 3
  %241 = ptrtoint ptr %devices609 to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load i32, ptr %devices609, align 4
  %and610 = and i32 %242, 3784
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and610)
  %tobool611.not = icmp eq i32 %and610, 0
  br i1 %tobool611.not, label %if.else573.if.end621_crit_edge, label %if.then612

if.else573.if.end621_crit_edge:                   ; preds = %if.else573
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end621

if.then612:                                       ; preds = %if.else573
  %coherent_mode613 = getelementptr inbounds %struct.radeon_encoder_atom_dig, ptr %5, i32 0, i32 1
  %243 = ptrtoint ptr %coherent_mode613 to i32
  call void @__asan_load1_noabort(i32 %243)
  %244 = load i8, ptr %coherent_mode613, align 1, !range !61
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %244)
  %tobool614.not = icmp eq i8 %244, 0
  br i1 %tobool614.not, label %if.then612.if.end621_crit_edge, label %if.then615

if.then612.if.end621_crit_edge:                   ; preds = %if.then612
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end621

if.then615:                                       ; preds = %if.then612
  call void @__sanitizer_cov_trace_pc() #12
  %245 = ptrtoint ptr %11 to i32
  call void @__asan_load1_noabort(i32 %245)
  %bf.load616 = load i8, ptr %11, align 1
  br label %if.end621.sink.split

if.end621.sink.split:                             ; preds = %if.then615, %if.then570
  %bf.load616.sink = phi i8 [ %bf.load616, %if.then615 ], [ %storemerge831, %if.then570 ]
  %bf.set618 = or i8 %bf.load616.sink, 2
  %246 = ptrtoint ptr %11 to i32
  call void @__asan_store1_noabort(i32 %246)
  store i8 %bf.set618, ptr %11, align 1
  br label %if.end621

if.end621:                                        ; preds = %if.end621.sink.split, %if.then612.if.end621_crit_edge, %if.else573.if.end621_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %hpd_id.0)
  %cmp622 = icmp eq i32 %hpd_id.0, 255
  br i1 %cmp622, label %if.then624, label %if.else628

if.then624:                                       ; preds = %if.end621
  call void @__sanitizer_cov_trace_pc() #12
  %247 = ptrtoint ptr %11 to i32
  call void @__asan_load1_noabort(i32 %247)
  %bf.load625 = load i8, ptr %11, align 1
  %bf.clear626 = and i8 %bf.load625, -113
  br label %if.end635

if.else628:                                       ; preds = %if.end621
  call void @__sanitizer_cov_trace_pc() #12
  %248 = trunc i32 %hpd_id.0 to i8
  %249 = ptrtoint ptr %11 to i32
  call void @__asan_load1_noabort(i32 %249)
  %bf.load630 = load i8, ptr %11, align 1
  %conv629 = shl i8 %248, 4
  %bf.value631 = add i8 %conv629, 16
  %bf.shl632 = and i8 %bf.value631, 112
  %bf.clear633 = and i8 %bf.load630, -113
  %bf.set634 = or i8 %bf.clear633, %bf.shl632
  br label %if.end635

if.end635:                                        ; preds = %if.else628, %if.then624
  %storemerge802 = phi i8 [ %bf.set634, %if.else628 ], [ %bf.clear626, %if.then624 ]
  %250 = ptrtoint ptr %11 to i32
  call void @__asan_store1_noabort(i32 %250)
  store i8 %storemerge802, ptr %11, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %fe)
  %cmp636.not = icmp eq i32 %fe, -1
  %dig_encoder.0.fe = select i1 %cmp636.not, i32 %dig_encoder.0, i32 %fe
  %cond = shl nuw i32 1, %dig_encoder.0.fe
  %conv639 = trunc i32 %cond to i8
  %251 = ptrtoint ptr %12 to i32
  call void @__asan_store1_noabort(i32 %251)
  store i8 %conv639, ptr %12, align 2
  %252 = ptrtoint ptr %13 to i32
  call void @__asan_store1_noabort(i32 %252)
  store i8 %lane_set, ptr %13, align 1
  br label %sw.epilog646

sw.default:                                       ; preds = %sw.bb40
  call void @__sanitizer_cov_trace_pc() #12
  %conv41 = zext i8 %45 to i32
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.7, i32 noundef 1, i32 noundef %conv41) #10
  br label %sw.epilog646

sw.default643:                                    ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #12
  %conv39 = zext i8 %43 to i32
  %253 = ptrtoint ptr %crev to i32
  call void @__asan_load1_noabort(i32 %253)
  %254 = load i8, ptr %crev, align 1
  %conv645 = zext i8 %254 to i32
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.7, i32 noundef %conv39, i32 noundef %conv645) #10
  br label %sw.epilog646

sw.epilog646:                                     ; preds = %sw.default643, %sw.default, %if.end635, %if.then522, %if.end519.sw.epilog646_crit_edge, %if.else508.sw.epilog646_crit_edge, %if.then504, %if.then399, %if.end396.sw.epilog646_crit_edge, %if.else384.sw.epilog646_crit_edge, %if.then379, %if.then273, %if.end270.sw.epilog646_crit_edge, %if.else258.sw.epilog646_crit_edge, %if.then249, %if.then180, %if.end177.sw.epilog646_crit_edge, %if.else167.sw.epilog646_crit_edge, %if.then162
  %255 = ptrtoint ptr %mode_info to i32
  call void @__asan_load4_noabort(i32 %255)
  %256 = load ptr, ptr %mode_info, align 4
  %call649 = call i32 @atom_execute_table(ptr noundef %256, i32 noundef %index.0, ptr noundef nonnull %args) #10
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog646, %sw.epilog.cleanup_crit_edge, %if.end21.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %crev) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %frev) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %args) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @atombios_set_edp_panel_power(ptr nocapture noundef readonly %connector, i32 noundef %action) local_unnamed_addr #0 align 64 {
entry:
  %args = alloca %union.dig_transmitter_control, align 2
  %frev = alloca i8, align 1
  %crev = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %connector to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %connector, align 8
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_private, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %args) #10
  %4 = getelementptr inbounds %struct._DIG_TRANSMITTER_CONTROL_PARAMETERS_V1_5, ptr %args, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %frev) #10
  %5 = ptrtoint ptr %frev to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 -1, ptr %frev, align 1, !annotation !62
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %crev) #10
  %6 = ptrtoint ptr %crev to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 -1, ptr %crev, align 1, !annotation !62
  %connector_type = getelementptr inbounds %struct.drm_connector, ptr %connector, i32 0, i32 10
  %7 = ptrtoint ptr %connector_type to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %connector_type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %8)
  %cmp.not = icmp eq i32 %8, 14
  br i1 %cmp.not, label %if.end, label %entry.cleanup25_crit_edge

entry.cleanup25_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup25

if.end:                                           ; preds = %entry
  %family = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 6
  %9 = ptrtoint ptr %family to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %family, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 38, i32 %10)
  %cmp2 = icmp ugt i32 %10, 38
  %11 = and i32 %action, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %11)
  %switch = icmp eq i32 %11, 12
  %or.cond = and i1 %switch, %cmp2
  br i1 %or.cond, label %if.end8, label %if.end.cleanup25_crit_edge

if.end.cleanup25_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup25

if.end8:                                          ; preds = %if.end
  %mode_info = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 44
  %12 = ptrtoint ptr %mode_info to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %mode_info, align 4
  %call = call zeroext i1 @atom_parse_cmd_header(ptr noundef %13, i32 noundef 76, ptr noundef nonnull %frev, ptr noundef nonnull %crev) #10
  br i1 %call, label %if.end10, label %if.end8.cleanup25_crit_edge

if.end8.cleanup25_crit_edge:                      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup25

if.end10:                                         ; preds = %if.end8
  %14 = call ptr @memset(ptr %args, i32 0, i32 12)
  %conv = trunc i32 %action to i8
  %15 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %conv, ptr %4, align 1
  %16 = ptrtoint ptr %mode_info to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %mode_info, align 4
  %call13 = call i32 @atom_execute_table(ptr noundef %17, i32 noundef 76, ptr noundef nonnull %args) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %action)
  %cmp14 = icmp eq i32 %action, 12
  br i1 %cmp14, label %for.cond.preheader, label %if.end10.cleanup25_crit_edge

if.end10.cleanup25_crit_edge:                     ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup25

for.cond.preheader:                               ; preds = %if.end10
  %asic = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 56
  %hpd19 = getelementptr inbounds %struct.radeon_connector, ptr %connector, i32 0, i32 12
  br label %for.body

for.body:                                         ; preds = %if.end23.for.body_crit_edge, %for.cond.preheader
  %i.043 = phi i32 [ 0, %for.cond.preheader ], [ %inc, %if.end23.for.body_crit_edge ]
  %18 = ptrtoint ptr %asic to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %asic, align 8
  %sense = getelementptr inbounds %struct.radeon_asic, ptr %19, i32 0, i32 19, i32 2
  %20 = ptrtoint ptr %sense to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %sense, align 4
  %22 = ptrtoint ptr %hpd19 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %hpd19, align 8
  %call21 = call zeroext i1 %21(ptr noundef %3, i32 noundef %23) #10
  br i1 %call21, label %for.body.cleanup25_crit_edge, label %if.end23

for.body.cleanup25_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup25

if.end23:                                         ; preds = %for.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %24 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %24(i32 noundef 214748000) #10
  %inc = add nuw nsw i32 %i.043, 1
  %exitcond.not = icmp eq i32 %inc, 300
  br i1 %exitcond.not, label %if.end23.cleanup25_crit_edge, label %if.end23.for.body_crit_edge

if.end23.for.body_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

if.end23.cleanup25_crit_edge:                     ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup25

cleanup25:                                        ; preds = %if.end23.cleanup25_crit_edge, %for.body.cleanup25_crit_edge, %if.end10.cleanup25_crit_edge, %if.end8.cleanup25_crit_edge, %if.end.cleanup25_crit_edge, %entry.cleanup25_crit_edge
  %retval.1 = phi i1 [ true, %if.end10.cleanup25_crit_edge ], [ true, %if.end8.cleanup25_crit_edge ], [ true, %if.end.cleanup25_crit_edge ], [ true, %entry.cleanup25_crit_edge ], [ %call21, %if.end23.cleanup25_crit_edge ], [ %call21, %for.body.cleanup25_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %crev) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %frev) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %args) #10
  ret i1 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @atombios_set_mst_encoder_crtc_source(ptr nocapture noundef readonly %encoder, i32 noundef %fe) local_unnamed_addr #0 align 64 {
entry:
  %frev = alloca i8, align 1
  %crev = alloca i8, align 1
  %args = alloca %union.crtc_source_param, align 4
  call void @__sanitizer_cov_trace_pc() #12
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
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %frev) #10
  %6 = ptrtoint ptr %frev to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 -1, ptr %frev, align 1, !annotation !62
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %crev) #10
  %7 = ptrtoint ptr %crev to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 -1, ptr %crev, align 1, !annotation !62
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %args) #10
  %8 = getelementptr inbounds %struct._SELECT_CRTC_SOURCE_PARAMETERS, ptr %args, i32 0, i32 1
  %9 = ptrtoint ptr %args to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 1280, ptr %args, align 4
  %mode_info = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 44
  %10 = ptrtoint ptr %mode_info to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mode_info, align 4
  %call = call zeroext i1 @atom_parse_cmd_header(ptr noundef %11, i32 noundef 42, ptr noundef nonnull %frev, ptr noundef nonnull %crev) #10
  br i1 %call, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %12 = ptrtoint ptr %frev to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %frev, align 1
  %conv = zext i8 %13 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %13)
  %cmp.not = icmp eq i8 %13, 1
  br i1 %cmp.not, label %if.end.if.end9_crit_edge, label %land.lhs.true

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9

land.lhs.true:                                    ; preds = %if.end
  %14 = ptrtoint ptr %crev to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %crev, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %15)
  %cmp4.not = icmp eq i8 %15, 2
  br i1 %cmp4.not, label %land.lhs.true.if.end9_crit_edge, label %if.then6

land.lhs.true.if.end9_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9

if.then6:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  %conv3 = zext i8 %15 to i32
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.8, i32 noundef %conv, i32 noundef %conv3) #10
  br label %if.end9

if.end9:                                          ; preds = %if.then6, %land.lhs.true.if.end9_crit_edge, %if.end.if.end9_crit_edge
  %crtc_id = getelementptr inbounds %struct.radeon_crtc, ptr %5, i32 0, i32 1
  %16 = ptrtoint ptr %crtc_id to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %crtc_id, align 8
  %conv10 = trunc i32 %17 to i8
  %18 = ptrtoint ptr %args to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %conv10, ptr %args, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %fe)
  %19 = icmp ult i32 %fe, 7
  br i1 %19, label %switch.lookup, label %if.end9.sw.epilog_crit_edge

if.end9.sw.epilog_crit_edge:                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

switch.lookup:                                    ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  %switch.gep = getelementptr inbounds [7 x i8], ptr @switch.table.atombios_set_mst_encoder_crtc_source, i32 0, i32 %fe
  %20 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load1_noabort(i32 %20)
  %switch.load = load i8, ptr %switch.gep, align 1
  %21 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %switch.load, ptr %8, align 1
  br label %sw.epilog

sw.epilog:                                        ; preds = %switch.lookup, %if.end9.sw.epilog_crit_edge
  %22 = ptrtoint ptr %mode_info to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %mode_info, align 4
  %call25 = call i32 @atom_execute_table(ptr noundef %23, i32 noundef 42, ptr noundef nonnull %args) #10
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %args) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %crev) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %frev) #10
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @radeon_atom_release_dig_encoder(ptr nocapture noundef %rdev, i32 noundef %enc_idx) local_unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %enc_idx)
  %cmp = icmp slt i32 %enc_idx, 0
  br i1 %cmp, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %shl = shl nuw i32 1, %enc_idx
  %neg = xor i32 %shl, -1
  %active_encoders = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 44, i32 21
  %0 = ptrtoint ptr %active_encoders to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %active_encoders, align 4
  %and = and i32 %1, %neg
  store i32 %and, ptr %active_encoders, align 4
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @radeon_atom_pick_dig_encoder(ptr noundef readonly %encoder, i32 noundef %fe_idx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
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
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %fe_idx)
  %cmp = icmp sgt i32 %fe_idx, -1
  br i1 %cmp, label %entry.if.end120_crit_edge, label %if.end

entry.if.end120_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end120

if.end:                                           ; preds = %entry
  %family = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 6
  %8 = ptrtoint ptr %family to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %family, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 50, i32 %9)
  %cmp5 = icmp ugt i32 %9, 50
  br i1 %cmp5, label %if.then6, label %if.else22

if.then6:                                         ; preds = %if.end
  %encoder_id = getelementptr inbounds %struct.radeon_encoder, ptr %encoder, i32 0, i32 2
  %10 = ptrtoint ptr %encoder_id to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %encoder_id, align 4
  %12 = zext i32 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.40)
  switch i32 %11, label %if.then6.if.then119_crit_edge [
    i32 30, label %sw.bb
    i32 32, label %sw.bb9
    i32 33, label %sw.bb15
    i32 37, label %if.then6.if.end120_crit_edge
  ]

if.then6.if.end120_crit_edge:                     ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end120

if.then6.if.then119_crit_edge:                    ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then119

sw.bb:                                            ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #12
  %13 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %7, align 4, !range !61
  %15 = zext i8 %14 to i32
  br label %if.end120

sw.bb9:                                           ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #12
  %16 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %7, align 4, !range !61
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool11.not = icmp eq i8 %17, 0
  %.177 = select i1 %tobool11.not, i32 2, i32 3
  br label %if.end120

sw.bb15:                                          ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #12
  %18 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %7, align 4, !range !61
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool17.not = icmp eq i8 %19, 0
  %.178 = select i1 %tobool17.not, i32 4, i32 5
  br label %if.end120

if.else22:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 38, i32 %9)
  %cmp24 = icmp ugt i32 %9, 38
  br i1 %cmp24, label %if.then25, label %if.end70

if.then25:                                        ; preds = %if.else22
  call void @__sanitizer_cov_trace_const_cmp4(i32 43, i32 %9)
  %cmp27 = icmp ugt i32 %9, 43
  br i1 %cmp27, label %land.lhs.true, label %if.then25.if.else47_crit_edge

if.then25.if.else47_crit_edge:                    ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else47

land.lhs.true:                                    ; preds = %if.then25
  %flags = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 7
  %20 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %flags, align 8
  %and = and i32 %21, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool28.not = icmp eq i32 %and, 0
  br i1 %tobool28.not, label %land.lhs.true.if.else47_crit_edge, label %if.then36

land.lhs.true.if.else47_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else47

if.then36:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_const_cmp4(i32 44, i32 %9)
  %cmp38 = icmp eq i32 %9, 44
  br i1 %cmp38, label %if.then39, label %if.then36.assigned_crit_edge

if.then36.assigned_crit_edge:                     ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #12
  br label %assigned

if.then39:                                        ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #12
  %22 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %7, align 4, !range !61
  %24 = zext i8 %23 to i32
  br label %if.end120

if.else47:                                        ; preds = %land.lhs.true.if.else47_crit_edge, %if.then25.if.else47_crit_edge
  %encoder_id48 = getelementptr inbounds %struct.radeon_encoder, ptr %encoder, i32 0, i32 2
  %25 = ptrtoint ptr %encoder_id48 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %encoder_id48, align 4
  %27 = zext i32 %26 to i64
  call void @__sanitizer_cov_trace_switch(i64 %27, ptr @__sancov_gen_cov_switch_values.41)
  switch i32 %26, label %if.else47.if.then119_crit_edge [
    i32 30, label %sw.bb49
    i32 32, label %sw.bb55
    i32 33, label %sw.bb61
  ]

if.else47.if.then119_crit_edge:                   ; preds = %if.else47
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then119

sw.bb49:                                          ; preds = %if.else47
  call void @__sanitizer_cov_trace_pc() #12
  %28 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %7, align 4, !range !61
  %30 = zext i8 %29 to i32
  br label %if.end120

sw.bb55:                                          ; preds = %if.else47
  call void @__sanitizer_cov_trace_pc() #12
  %31 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %7, align 4, !range !61
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %tobool57.not = icmp eq i8 %32, 0
  %.181 = select i1 %tobool57.not, i32 2, i32 3
  br label %if.end120

sw.bb61:                                          ; preds = %if.else47
  call void @__sanitizer_cov_trace_pc() #12
  %33 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %7, align 4, !range !61
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %tobool63.not = icmp eq i8 %34, 0
  %.182 = select i1 %tobool63.not, i32 4, i32 5
  br label %if.end120

if.end70:                                         ; preds = %if.else22
  call void @__sanitizer_cov_trace_const_cmp4(i32 35, i32 %9)
  %cmp72 = icmp ugt i32 %9, 35
  br i1 %cmp72, label %if.end70.assigned_crit_edge, label %if.end80

if.end70.assigned_crit_edge:                      ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #12
  br label %assigned

if.end80:                                         ; preds = %if.end70
  %encoder_list = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 30, i32 16
  %35 = ptrtoint ptr %encoder_list to i32
  call void @__asan_load4_noabort(i32 %35)
  %.pn193 = load ptr, ptr %encoder_list, align 4
  %cmp86.not195 = icmp eq ptr %.pn193, %encoder_list
  br i1 %cmp86.not195, label %if.end80.for.end_crit_edge, label %if.end80.for.body_crit_edge

if.end80.for.body_crit_edge:                      ; preds = %if.end80
  br label %for.body

if.end80.for.end_crit_edge:                       ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %if.end80.for.body_crit_edge
  %.pn197 = phi ptr [ %.pn, %cleanup.for.body_crit_edge ], [ %.pn193, %if.end80.for.body_crit_edge ]
  %dig_enc_in_use.0196 = phi i32 [ %dig_enc_in_use.2, %cleanup.for.body_crit_edge ], [ 0, %if.end80.for.body_crit_edge ]
  %test_encoder.0198 = getelementptr i8, ptr %.pn197, i32 -4
  %cmp87 = icmp eq ptr %test_encoder.0198, %encoder
  br i1 %cmp87, label %for.body.cleanup_crit_edge, label %if.end89

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end89:                                         ; preds = %for.body
  %call90 = tail call zeroext i1 @radeon_encoder_is_digital(ptr noundef %test_encoder.0198) #10
  br i1 %call90, label %if.end92, label %if.end89.cleanup_crit_edge

if.end89.cleanup_crit_edge:                       ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end92:                                         ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #12
  %enc_priv96 = getelementptr i8, ptr %.pn197, i32 220
  %36 = ptrtoint ptr %enc_priv96 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %enc_priv96, align 4
  %dig_encoder = getelementptr inbounds %struct.radeon_encoder_atom_dig, ptr %37, i32 0, i32 2
  %38 = ptrtoint ptr %dig_encoder to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %dig_encoder, align 4
  %shl = shl nuw i32 1, %39
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %cmp97192 = icmp slt i32 %39, 0
  %or = select i1 %cmp97192, i32 0, i32 %shl
  %dig_enc_in_use.1 = or i32 %or, %dig_enc_in_use.0196
  br label %cleanup

cleanup:                                          ; preds = %if.end92, %if.end89.cleanup_crit_edge, %for.body.cleanup_crit_edge
  %dig_enc_in_use.2 = phi i32 [ %dig_enc_in_use.1, %if.end92 ], [ %dig_enc_in_use.0196, %for.body.cleanup_crit_edge ], [ %dig_enc_in_use.0196, %if.end89.cleanup_crit_edge ]
  %40 = ptrtoint ptr %.pn197 to i32
  call void @__asan_load4_noabort(i32 %40)
  %.pn = load ptr, ptr %.pn197, align 4
  %cmp86.not = icmp eq ptr %.pn, %encoder_list
  br i1 %cmp86.not, label %cleanup.for.end_crit_edge, label %cleanup.for.body_crit_edge

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %if.end80.for.end_crit_edge
  %dig_enc_in_use.0.lcssa = phi i32 [ 0, %if.end80.for.end_crit_edge ], [ %dig_enc_in_use.2, %cleanup.for.end_crit_edge ]
  %encoder_id106 = getelementptr inbounds %struct.radeon_encoder, ptr %encoder, i32 0, i32 2
  %41 = ptrtoint ptr %encoder_id106 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %encoder_id106, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %42)
  %cmp107 = icmp eq i32 %42, 31
  br i1 %cmp107, label %if.then108, label %if.end113

if.then108:                                       ; preds = %for.end
  %and109 = and i32 %dig_enc_in_use.0.lcssa, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and109)
  %tobool110.not = icmp eq i32 %and109, 0
  br i1 %tobool110.not, label %if.then108.cleanup130_crit_edge, label %if.then111

if.then108.cleanup130_crit_edge:                  ; preds = %if.then108
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup130

if.then111:                                       ; preds = %if.then108
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.10) #10
  br label %cleanup130

if.end113:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  %and114 = and i32 %dig_enc_in_use.0.lcssa, 1
  br label %cleanup130

assigned:                                         ; preds = %if.end70.assigned_crit_edge, %if.then36.assigned_crit_edge
  %enc_idx.0.in = getelementptr inbounds %struct.radeon_crtc, ptr %5, i32 0, i32 1
  %43 = ptrtoint ptr %enc_idx.0.in to i32
  call void @__asan_load4_noabort(i32 %43)
  %enc_idx.0 = load i32, ptr %enc_idx.0.in, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %enc_idx.0)
  %cmp118 = icmp eq i32 %enc_idx.0, -1
  br i1 %cmp118, label %assigned.if.then119_crit_edge, label %assigned.if.end120_crit_edge

assigned.if.end120_crit_edge:                     ; preds = %assigned
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end120

assigned.if.then119_crit_edge:                    ; preds = %assigned
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then119

if.then119:                                       ; preds = %assigned.if.then119_crit_edge, %if.else47.if.then119_crit_edge, %if.then6.if.then119_crit_edge
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.11) #10
  br label %cleanup130

if.end120:                                        ; preds = %assigned.if.end120_crit_edge, %sw.bb61, %sw.bb55, %sw.bb49, %if.then39, %sw.bb15, %sw.bb9, %sw.bb, %if.then6.if.end120_crit_edge, %entry.if.end120_crit_edge
  %enc_idx.0186 = phi i32 [ %enc_idx.0, %assigned.if.end120_crit_edge ], [ %.182, %sw.bb61 ], [ %.181, %sw.bb55 ], [ %30, %sw.bb49 ], [ %24, %if.then39 ], [ %.178, %sw.bb15 ], [ %.177, %sw.bb9 ], [ %15, %sw.bb ], [ %fe_idx, %entry.if.end120_crit_edge ], [ 6, %if.then6.if.end120_crit_edge ]
  %active_encoders = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 44, i32 21
  %44 = ptrtoint ptr %active_encoders to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %active_encoders, align 4
  %shl121 = shl nuw i32 1, %enc_idx.0186
  %and122 = and i32 %45, %shl121
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and122)
  %tobool123.not = icmp eq i32 %and122, 0
  br i1 %tobool123.not, label %if.end120.if.end125_crit_edge, label %if.then124

if.end120.if.end125_crit_edge:                    ; preds = %if.end120
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end125

if.then124:                                       ; preds = %if.end120
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.12, i32 noundef %enc_idx.0186) #10
  br label %if.end125

if.end125:                                        ; preds = %if.then124, %if.end120.if.end125_crit_edge
  %46 = ptrtoint ptr %active_encoders to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %active_encoders, align 4
  %or129 = or i32 %47, %shl121
  store i32 %or129, ptr %active_encoders, align 4
  br label %cleanup130

cleanup130:                                       ; preds = %if.end125, %if.then119, %if.end113, %if.then111, %if.then108.cleanup130_crit_edge
  %retval.0 = phi i32 [ 0, %if.then119 ], [ %enc_idx.0186, %if.end125 ], [ 1, %if.then111 ], [ 1, %if.then108.cleanup130_crit_edge ], [ %and114, %if.end113 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @radeon_atom_encoder_init(ptr nocapture noundef readonly %rdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %ddev = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 1
  %0 = ptrtoint ptr %ddev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ddev, align 4
  %encoder_list = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 30, i32 16
  %2 = ptrtoint ptr %encoder_list to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn32 = load ptr, ptr %encoder_list, align 4
  %cmp.not34 = icmp eq ptr %.pn32, %encoder_list
  br i1 %cmp.not34, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %family = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 6
  %flags = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 7
  br label %for.body

for.body:                                         ; preds = %if.end.for.body_crit_edge, %for.body.lr.ph
  %.pn35 = phi ptr [ %.pn32, %for.body.lr.ph ], [ %.pn, %if.end.for.body_crit_edge ]
  %encoder.036 = getelementptr i8, ptr %.pn35, i32 -4
  %call = tail call ptr @radeon_get_external_encoder(ptr noundef %encoder.036) #10
  %encoder_id = getelementptr i8, ptr %.pn35, i32 72
  %3 = ptrtoint ptr %encoder_id to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %encoder_id, align 4
  %5 = zext i32 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.42)
  switch i32 %4, label %for.body.sw.epilog_crit_edge [
    i32 30, label %for.body.sw.bb_crit_edge
    i32 32, label %for.body.sw.bb_crit_edge38
    i32 33, label %for.body.sw.bb_crit_edge39
    i32 37, label %for.body.sw.bb_crit_edge40
    i32 31, label %for.body.sw.bb_crit_edge41
  ]

for.body.sw.bb_crit_edge41:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

for.body.sw.bb_crit_edge40:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

for.body.sw.bb_crit_edge39:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

for.body.sw.bb_crit_edge38:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

for.body.sw.bb_crit_edge:                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

for.body.sw.epilog_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb:                                            ; preds = %for.body.sw.bb_crit_edge, %for.body.sw.bb_crit_edge38, %for.body.sw.bb_crit_edge39, %for.body.sw.bb_crit_edge40, %for.body.sw.bb_crit_edge41
  tail call void @atombios_dig_transmitter_setup2(ptr noundef %encoder.036, i32 noundef 7, i8 noundef zeroext 0, i8 noundef zeroext 0, i32 noundef -1) #10
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb, %for.body.sw.epilog_crit_edge
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %sw.epilog.if.end_crit_edge, label %land.lhs.true

sw.epilog.if.end_crit_edge:                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true:                                    ; preds = %sw.epilog
  %6 = ptrtoint ptr %family to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %family, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 43, i32 %7)
  %cmp6 = icmp ugt i32 %7, 43
  br i1 %cmp6, label %land.lhs.true7, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true7:                                   ; preds = %land.lhs.true
  %8 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %flags, align 8
  %and = and i32 %9, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool8.not = icmp eq i32 %and, 0
  br i1 %tobool8.not, label %lor.lhs.false, label %land.lhs.true7.if.then_crit_edge

land.lhs.true7.if.then_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

lor.lhs.false:                                    ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_const_cmp4(i32 50, i32 %7)
  %cmp10 = icmp ugt i32 %7, 50
  br i1 %cmp10, label %land.lhs.true11, label %lor.lhs.false.if.end_crit_edge

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true11:                                  ; preds = %lor.lhs.false
  %10 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %flags, align 8
  %and13 = and i32 %11, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %tobool14.not = icmp eq i32 %and13, 0
  br i1 %tobool14.not, label %land.lhs.true11.if.end_crit_edge, label %land.lhs.true11.if.then_crit_edge

land.lhs.true11.if.then_crit_edge:                ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

land.lhs.true11.if.end_crit_edge:                 ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %land.lhs.true11.if.then_crit_edge, %land.lhs.true7.if.then_crit_edge
  tail call fastcc void @atombios_external_encoder_setup(ptr noundef %encoder.036, ptr noundef nonnull %call, i32 noundef 7)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true11.if.end_crit_edge, %lor.lhs.false.if.end_crit_edge, %land.lhs.true.if.end_crit_edge, %sw.epilog.if.end_crit_edge
  %12 = ptrtoint ptr %.pn35 to i32
  call void @__asan_load4_noabort(i32 %12)
  %.pn = load ptr, ptr %.pn35, align 4
  %cmp.not = icmp eq ptr %.pn, %encoder_list
  br i1 %cmp.not, label %if.end.for.end_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %if.end.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @radeon_get_external_encoder(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @atombios_external_encoder_setup(ptr noundef %encoder, ptr nocapture noundef readonly %ext_encoder, i32 noundef %action) unnamed_addr #0 align 64 {
entry:
  %args = alloca %union.external_encoder_control, align 2
  %frev = alloca i8, align 1
  %crev = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %encoder to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %encoder, align 4
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_private, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %args) #10
  %4 = getelementptr inbounds %struct._EXTERNAL_ENCODER_CONTROL_PARAMETERS_V3, ptr %args, i32 0, i32 1
  %5 = getelementptr inbounds %struct._EXTERNAL_ENCODER_CONTROL_PARAMETERS_V3, ptr %args, i32 0, i32 2
  %6 = getelementptr inbounds %struct._EXTERNAL_ENCODER_CONTROL_PARAMETERS_V3, ptr %args, i32 0, i32 3
  %7 = getelementptr inbounds %struct._EXTERNAL_ENCODER_CONTROL_PARAMETERS_V3, ptr %args, i32 0, i32 4
  %8 = getelementptr inbounds %struct._EXTERNAL_ENCODER_CONTROL_PARAMETERS_V3, ptr %args, i32 0, i32 5
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %frev) #10
  %9 = ptrtoint ptr %frev to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 -1, ptr %frev, align 1, !annotation !62
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %crev) #10
  %10 = ptrtoint ptr %crev to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 -1, ptr %crev, align 1, !annotation !62
  %encoder_enum = getelementptr inbounds %struct.radeon_encoder, ptr %ext_encoder, i32 0, i32 1
  %11 = ptrtoint ptr %encoder_enum to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %encoder_enum, align 4
  %and = lshr i32 %12, 8
  %shr = and i32 %and, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %action)
  %cmp = icmp eq i32 %action, 7
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call ptr @radeon_get_connector_for_encoder_init(ptr noundef %encoder) #10
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call5 = tail call ptr @radeon_get_connector_for_encoder(ptr noundef %encoder) #10
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %connector.0 = phi ptr [ %call, %if.then ], [ %call5, %if.else ]
  %tobool.not = icmp eq ptr %connector.0, null
  br i1 %tobool.not, label %if.end.if.end15_crit_edge, label %if.then6

if.end.if.end15_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %con_priv = getelementptr inbounds %struct.radeon_connector, ptr %connector.0, i32 0, i32 7
  %13 = ptrtoint ptr %con_priv to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %con_priv, align 4
  %dp_clock10 = getelementptr inbounds %struct.radeon_connector_atom_dig, ptr %14, i32 0, i32 3
  %15 = ptrtoint ptr %dp_clock10 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %dp_clock10, align 4
  %dp_lane_count11 = getelementptr inbounds %struct.radeon_connector_atom_dig, ptr %14, i32 0, i32 4
  %17 = ptrtoint ptr %dp_lane_count11 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %dp_lane_count11, align 4
  %connector_object_id12 = getelementptr inbounds %struct.radeon_connector, ptr %connector.0, i32 0, i32 11
  %19 = ptrtoint ptr %connector_object_id12 to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %connector_object_id12, align 4
  %phi.cast = trunc i32 %18 to i8
  %phi.bo = shl i16 %20, 8
  br label %if.end15

if.end15:                                         ; preds = %if.then6, %if.end.if.end15_crit_edge
  %dp_clock.0 = phi i32 [ %16, %if.then6 ], [ 0, %if.end.if.end15_crit_edge ]
  %dp_lane_count.0 = phi i8 [ %phi.cast, %if.then6 ], [ 0, %if.end.if.end15_crit_edge ]
  %connector_object_id.0 = phi i16 [ %phi.bo, %if.then6 ], [ 0, %if.end.if.end15_crit_edge ]
  %21 = call ptr @memset(ptr %args, i32 0, i32 16)
  %mode_info = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 44
  %22 = ptrtoint ptr %mode_info to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %mode_info, align 4
  %call16 = call zeroext i1 @atom_parse_cmd_header(ptr noundef %23, i32 noundef 50, ptr noundef nonnull %frev, ptr noundef nonnull %crev) #10
  br i1 %call16, label %if.end18, label %if.end15.cleanup_crit_edge

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end18:                                         ; preds = %if.end15
  %24 = ptrtoint ptr %frev to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %frev, align 1
  %26 = zext i8 %25 to i64
  call void @__sanitizer_cov_trace_switch(i64 %26, ptr @__sancov_gen_cov_switch_values.43)
  switch i8 %25, label %sw.default145 [
    i8 1, label %if.end18.sw.epilog148_crit_edge
    i8 2, label %sw.bb
  ]

if.end18.sw.epilog148_crit_edge:                  ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog148

sw.bb:                                            ; preds = %if.end18
  %27 = ptrtoint ptr %crev to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %crev, align 1
  %29 = zext i8 %28 to i64
  call void @__sanitizer_cov_trace_switch(i64 %29, ptr @__sancov_gen_cov_switch_values.44)
  switch i8 %28, label %sw.default [
    i8 1, label %sw.bb.sw.bb21_crit_edge
    i8 2, label %sw.bb.sw.bb21_crit_edge193
    i8 3, label %sw.bb59
  ]

sw.bb.sw.bb21_crit_edge193:                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb21

sw.bb.sw.bb21_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb21

sw.bb21:                                          ; preds = %sw.bb.sw.bb21_crit_edge, %sw.bb.sw.bb21_crit_edge193
  %conv22 = trunc i32 %action to i8
  %30 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %conv22, ptr %5, align 1
  %pixel_clock = getelementptr inbounds %struct.radeon_encoder, ptr %encoder, i32 0, i32 6
  %31 = ptrtoint ptr %pixel_clock to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %pixel_clock, align 4
  %div = udiv i32 %32, 10
  %conv23 = trunc i32 %div to i16
  %33 = call i16 @llvm.bswap.i16(i16 %conv23)
  %34 = ptrtoint ptr %args to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 %33, ptr %args, align 2
  %call25 = call i32 @atombios_get_encoder_mode(ptr noundef %encoder)
  %conv26 = trunc i32 %call25 to i8
  %35 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %conv26, ptr %6, align 2
  %36 = zext i8 %conv26 to i64
  call void @__sanitizer_cov_trace_switch(i64 %36, ptr @__sancov_gen_cov_switch_values.45)
  switch i8 %conv26, label %if.else48 [
    i8 0, label %sw.bb21.if.then38_crit_edge
    i8 5, label %sw.bb21.if.then38_crit_edge194
  ]

sw.bb21.if.then38_crit_edge194:                   ; preds = %sw.bb21
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then38

sw.bb21.if.then38_crit_edge:                      ; preds = %sw.bb21
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then38

if.then38:                                        ; preds = %sw.bb21.if.then38_crit_edge, %sw.bb21.if.then38_crit_edge194
  call void @__sanitizer_cov_trace_const_cmp4(i32 270000, i32 %dp_clock.0)
  %cmp39 = icmp eq i32 %dp_clock.0, 270000
  br i1 %cmp39, label %if.then41, label %if.then38.if.end45_crit_edge

if.then38.if.end45_crit_edge:                     ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end45

if.then41:                                        ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #12
  %37 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %4, align 2
  %39 = or i8 %38, 1
  store i8 %39, ptr %4, align 2
  br label %if.end45

if.end45:                                         ; preds = %if.then41, %if.then38.if.end45_crit_edge
  %40 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %dp_lane_count.0, ptr %7, align 1
  br label %sw.epilog148

if.else48:                                        ; preds = %sw.bb21
  %41 = ptrtoint ptr %pixel_clock to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %pixel_clock, align 4
  %call50 = call zeroext i1 @radeon_dig_monitor_is_duallink(ptr noundef %encoder, i32 noundef %42) #10
  br i1 %call50, label %if.then51, label %if.else54

if.then51:                                        ; preds = %if.else48
  call void @__sanitizer_cov_trace_pc() #12
  %43 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 8, ptr %7, align 1
  br label %sw.epilog148

if.else54:                                        ; preds = %if.else48
  call void @__sanitizer_cov_trace_pc() #12
  %44 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 4, ptr %7, align 1
  br label %sw.epilog148

sw.bb59:                                          ; preds = %sw.bb
  %conv60 = trunc i32 %action to i8
  %45 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %conv60, ptr %5, align 1
  br i1 %cmp, label %sw.bb59.if.end72_crit_edge, label %if.else67

sw.bb59.if.end72_crit_edge:                       ; preds = %sw.bb59
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end72

if.else67:                                        ; preds = %sw.bb59
  call void @__sanitizer_cov_trace_pc() #12
  %pixel_clock68 = getelementptr inbounds %struct.radeon_encoder, ptr %encoder, i32 0, i32 6
  %46 = ptrtoint ptr %pixel_clock68 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %pixel_clock68, align 4
  %div69 = udiv i32 %47, 10
  %conv70 = trunc i32 %div69 to i16
  %48 = call i16 @llvm.bswap.i16(i16 %conv70)
  br label %if.end72

if.end72:                                         ; preds = %if.else67, %sw.bb59.if.end72_crit_edge
  %storemerge = phi i16 [ %48, %if.else67 ], [ %connector_object_id.0, %sw.bb59.if.end72_crit_edge ]
  %49 = ptrtoint ptr %args to i32
  call void @__asan_store2_noabort(i32 %49)
  store i16 %storemerge, ptr %args, align 2
  %call73 = call i32 @atombios_get_encoder_mode(ptr noundef %encoder)
  %conv74 = trunc i32 %call73 to i8
  %50 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 %conv74, ptr %6, align 2
  %51 = zext i8 %conv74 to i64
  call void @__sanitizer_cov_trace_switch(i64 %51, ptr @__sancov_gen_cov_switch_values.46)
  switch i8 %conv74, label %if.else111 [
    i8 0, label %if.end72.if.then88_crit_edge
    i8 5, label %if.end72.if.then88_crit_edge195
  ]

if.end72.if.then88_crit_edge195:                  ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then88

if.end72.if.then88_crit_edge:                     ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then88

if.then88:                                        ; preds = %if.end72.if.then88_crit_edge, %if.end72.if.then88_crit_edge195
  %52 = zext i32 %dp_clock.0 to i64
  call void @__sanitizer_cov_trace_switch(i64 %52, ptr @__sancov_gen_cov_switch_values.47)
  switch i32 %dp_clock.0, label %if.then88.if.end121_crit_edge [
    i32 270000, label %if.then88.if.end107.sink.split_crit_edge
    i32 540000, label %if.then100
  ]

if.then88.if.end107.sink.split_crit_edge:         ; preds = %if.then88
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end107.sink.split

if.then88.if.end121_crit_edge:                    ; preds = %if.then88
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end121

if.then100:                                       ; preds = %if.then88
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end107.sink.split

if.end107.sink.split:                             ; preds = %if.then100, %if.then88.if.end107.sink.split_crit_edge
  %.sink189 = phi i8 [ 2, %if.then100 ], [ 1, %if.then88.if.end107.sink.split_crit_edge ]
  %53 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %4, align 2
  %55 = or i8 %54, %.sink189
  store i8 %55, ptr %4, align 2
  br label %if.end121

if.else111:                                       ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #12
  %pixel_clock112 = getelementptr inbounds %struct.radeon_encoder, ptr %encoder, i32 0, i32 6
  %56 = ptrtoint ptr %pixel_clock112 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %pixel_clock112, align 4
  %call113 = call zeroext i1 @radeon_dig_monitor_is_duallink(ptr noundef %encoder, i32 noundef %57) #10
  %. = select i1 %call113, i8 8, i8 4
  br label %if.end121

if.end121:                                        ; preds = %if.else111, %if.end107.sink.split, %if.then88.if.end121_crit_edge
  %.sink = phi i8 [ %dp_lane_count.0, %if.end107.sink.split ], [ %dp_lane_count.0, %if.then88.if.end121_crit_edge ], [ %., %if.else111 ]
  %58 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 %.sink, ptr %7, align 1
  %59 = zext i32 %shr to i64
  call void @__sanitizer_cov_trace_switch(i64 %59, ptr @__sancov_gen_cov_switch_values.48)
  switch i32 %shr, label %if.end121.sw.epilog_crit_edge [
    i32 3, label %sw.bb134
    i32 2, label %if.end121.sw.epilog.sink.split_crit_edge
  ]

if.end121.sw.epilog.sink.split_crit_edge:         ; preds = %if.end121
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.sink.split

if.end121.sw.epilog_crit_edge:                    ; preds = %if.end121
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb134:                                         ; preds = %if.end121
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %sw.bb134, %if.end121.sw.epilog.sink.split_crit_edge
  %.sink192 = phi i8 [ 32, %sw.bb134 ], [ 16, %if.end121.sw.epilog.sink.split_crit_edge ]
  %60 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %4, align 2
  %62 = or i8 %61, %.sink192
  store i8 %62, ptr %4, align 2
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %if.end121.sw.epilog_crit_edge
  %crtc.i = getelementptr inbounds %struct.drm_encoder, ptr %encoder, i32 0, i32 8
  %63 = ptrtoint ptr %crtc.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %crtc.i, align 4
  %tobool.not.i = icmp eq ptr %64, null
  br i1 %tobool.not.i, label %sw.epilog.if.end.i_crit_edge, label %if.then.i

sw.epilog.if.end.i_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

if.then.i:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  %bpc2.i = getelementptr inbounds %struct.radeon_crtc, ptr %64, i32 0, i32 30
  %65 = ptrtoint ptr %bpc2.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %bpc2.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %sw.epilog.if.end.i_crit_edge
  %bpc.0.i = phi i32 [ %66, %if.then.i ], [ 8, %sw.epilog.if.end.i_crit_edge ]
  %67 = call i32 @llvm.fshl.i32(i32 %bpc.0.i, i32 %bpc.0.i, i32 31) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %67)
  %68 = icmp ult i32 %67, 9
  br i1 %68, label %switch.lookup, label %if.end.i.radeon_atom_get_bpc.exit_crit_edge

if.end.i.radeon_atom_get_bpc.exit_crit_edge:      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %radeon_atom_get_bpc.exit

switch.lookup:                                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %switch.gep = getelementptr inbounds [9 x i8], ptr @switch.table.atombios_external_encoder_setup, i32 0, i32 %67
  %69 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load1_noabort(i32 %69)
  %switch.load = load i8, ptr %switch.gep, align 1
  br label %radeon_atom_get_bpc.exit

radeon_atom_get_bpc.exit:                         ; preds = %switch.lookup, %if.end.i.radeon_atom_get_bpc.exit_crit_edge
  %retval.0.i = phi i8 [ %switch.load, %switch.lookup ], [ 2, %if.end.i.radeon_atom_get_bpc.exit_crit_edge ]
  %70 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 %retval.0.i, ptr %8, align 2
  br label %sw.epilog148

sw.default:                                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  %conv20 = zext i8 %28 to i32
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.13, i32 noundef 2, i32 noundef %conv20) #10
  br label %cleanup

sw.default145:                                    ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #12
  %conv19 = zext i8 %25 to i32
  %71 = ptrtoint ptr %crev to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %crev, align 1
  %conv147 = zext i8 %72 to i32
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.13, i32 noundef %conv19, i32 noundef %conv147) #10
  br label %cleanup

sw.epilog148:                                     ; preds = %radeon_atom_get_bpc.exit, %if.else54, %if.then51, %if.end45, %if.end18.sw.epilog148_crit_edge
  %73 = ptrtoint ptr %mode_info to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %mode_info, align 4
  %call151 = call i32 @atom_execute_table(ptr noundef %74, i32 noundef 50, ptr noundef nonnull %args) #10
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog148, %sw.default145, %sw.default, %if.end15.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %crev) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %frev) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %args) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @radeon_atom_ext_encoder_setup_ddc(ptr noundef %encoder) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @radeon_get_external_encoder(ptr noundef %encoder) #10
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @atombios_external_encoder_setup(ptr noundef %encoder, ptr noundef nonnull %call, i32 noundef 20)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @radeon_enc_destroy(ptr noundef %encoder) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %devices = getelementptr inbounds %struct.radeon_encoder, ptr %encoder, i32 0, i32 3
  %0 = ptrtoint ptr %devices to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %devices, align 4
  %and = and i32 %1, 34
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  %2 = ptrtoint ptr %encoder to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %encoder, align 4
  %dev_private.i = getelementptr inbounds %struct.drm_device, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev_private.i, align 4
  %enc_priv.i = getelementptr inbounds %struct.radeon_encoder, ptr %encoder, i32 0, i32 12
  %6 = ptrtoint ptr %enc_priv.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %enc_priv.i, align 4
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %if.then.if.end_crit_edge, label %if.end.i

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.end.i:                                         ; preds = %if.then
  %is_atom_bios.i = getelementptr inbounds %struct.radeon_device, ptr %5, i32 0, i32 14
  %8 = ptrtoint ptr %is_atom_bios.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %is_atom_bios.i, align 4, !range !61
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool2.not.i = icmp eq i8 %9, 0
  br i1 %tobool2.not.i, label %if.end.i.if.end_crit_edge, label %if.end4.i

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.end4.i:                                        ; preds = %if.end.i
  %firmware_flags.i = getelementptr inbounds %struct.radeon_device, ptr %5, i32 0, i32 44, i32 19
  %10 = ptrtoint ptr %firmware_flags.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %firmware_flags.i, align 4
  %12 = and i16 %11, 32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %12)
  %tobool5.not.i = icmp eq i16 %12, 0
  br i1 %tobool5.not.i, label %if.end4.i.if.end_crit_edge, label %if.end7.i

if.end4.i.if.end_crit_edge:                       ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.end7.i:                                        ; preds = %if.end4.i
  %bl_dev.i = getelementptr inbounds %struct.radeon_encoder_atom_dig, ptr %7, i32 0, i32 7
  %13 = ptrtoint ptr %bl_dev.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %bl_dev.i, align 4
  store ptr null, ptr %bl_dev.i, align 4
  %tobool10.not.i = icmp eq ptr %14, null
  br i1 %tobool10.not.i, label %if.end7.i.if.end_crit_edge, label %if.then11.i

if.end7.i.if.end_crit_edge:                       ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then11.i:                                      ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #12
  %driver_data.i.i.i = getelementptr inbounds %struct.backlight_device, ptr %14, i32 0, i32 6, i32 8
  %15 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %driver_data.i.i.i, align 4
  tail call void @backlight_device_unregister(ptr noundef nonnull %14) #10
  tail call void @kfree(ptr noundef %16) #10
  %call12.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14) #14
  br label %if.end

if.end:                                           ; preds = %if.then11.i, %if.end7.i.if.end_crit_edge, %if.end4.i.if.end_crit_edge, %if.end.i.if.end_crit_edge, %if.then.if.end_crit_edge, %entry.if.end_crit_edge
  %enc_priv = getelementptr inbounds %struct.radeon_encoder, ptr %encoder, i32 0, i32 12
  %17 = ptrtoint ptr %enc_priv to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %enc_priv, align 4
  tail call void @kfree(ptr noundef %18) #10
  tail call void @drm_encoder_cleanup(ptr noundef %encoder) #10
  tail call void @kfree(ptr noundef %encoder) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_encoder_cleanup(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @radeon_add_atom_encoder(ptr noundef %dev, i32 noundef %encoder_enum, i32 noundef %supported_device, i16 noundef zeroext %caps) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
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
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %7, i32 noundef 3520, i32 noundef 256) #13
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %for.end.cleanup_crit_edge, label %if.end14

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end14:                                         ; preds = %for.end
  %num_crtc = getelementptr inbounds %struct.radeon_device, ptr %1, i32 0, i32 91
  %8 = ptrtoint ptr %num_crtc to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %num_crtc, align 4
  %switch.tableidx = add i32 %9, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %switch.tableidx)
  %10 = icmp ult i32 %switch.tableidx, 6
  br i1 %10, label %switch.lookup, label %if.end14.sw.epilog_crit_edge

if.end14.sw.epilog_crit_edge:                     ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

switch.lookup:                                    ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  %switch.gep = getelementptr inbounds [6 x i32], ptr @switch.table.radeon_add_atom_encoder, i32 0, i32 %switch.tableidx
  %11 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %11)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %switch.lookup, %if.end14.sw.epilog_crit_edge
  %.sink = phi i32 [ %switch.load, %switch.lookup ], [ 3, %if.end14.sw.epilog_crit_edge ]
  %possible_crtcs20 = getelementptr inbounds %struct.drm_encoder, ptr %call7.i.i, i32 0, i32 6
  %12 = ptrtoint ptr %possible_crtcs20 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %.sink, ptr %possible_crtcs20, align 4
  %enc_priv = getelementptr inbounds %struct.radeon_encoder, ptr %call7.i.i, i32 0, i32 12
  %13 = ptrtoint ptr %enc_priv to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %enc_priv, align 8
  %encoder_enum21 = getelementptr inbounds %struct.radeon_encoder, ptr %call7.i.i, i32 0, i32 1
  %14 = ptrtoint ptr %encoder_enum21 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %encoder_enum, ptr %encoder_enum21, align 8
  %and = and i32 %encoder_enum, 255
  %encoder_id = getelementptr inbounds %struct.radeon_encoder, ptr %call7.i.i, i32 0, i32 2
  %15 = ptrtoint ptr %encoder_id to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %and, ptr %encoder_id, align 4
  %devices22 = getelementptr inbounds %struct.radeon_encoder, ptr %call7.i.i, i32 0, i32 3
  %16 = ptrtoint ptr %devices22 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %supported_device, ptr %devices22, align 8
  %rmx_type = getelementptr inbounds %struct.radeon_encoder, ptr %call7.i.i, i32 0, i32 7
  %17 = ptrtoint ptr %rmx_type to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %rmx_type, align 8
  %underscan_type = getelementptr inbounds %struct.radeon_encoder, ptr %call7.i.i, i32 0, i32 8
  %18 = ptrtoint ptr %underscan_type to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %underscan_type, align 4
  %is_ext_encoder = getelementptr inbounds %struct.radeon_encoder, ptr %call7.i.i, i32 0, i32 14
  %19 = ptrtoint ptr %is_ext_encoder to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 0, ptr %is_ext_encoder, align 8
  %caps23 = getelementptr inbounds %struct.radeon_encoder, ptr %call7.i.i, i32 0, i32 15
  %20 = ptrtoint ptr %caps23 to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 %caps, ptr %caps23, align 2
  %trunc = trunc i32 %encoder_enum to i8
  %21 = zext i8 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values.49)
  switch i8 %trunc, label %sw.epilog.cleanup_crit_edge [
    i8 1, label %sw.epilog.sw.bb25_crit_edge
    i8 2, label %sw.epilog.sw.bb25_crit_edge173
    i8 19, label %sw.epilog.sw.bb25_crit_edge174
    i8 15, label %sw.epilog.sw.bb25_crit_edge175
    i8 4, label %sw.bb38
    i8 5, label %sw.epilog.sw.bb42_crit_edge
    i8 21, label %sw.epilog.sw.bb42_crit_edge176
    i8 22, label %sw.epilog.sw.bb42_crit_edge177
    i8 11, label %sw.epilog.sw.bb46_crit_edge
    i8 20, label %sw.epilog.sw.bb46_crit_edge178
    i8 25, label %sw.epilog.sw.bb46_crit_edge179
    i8 30, label %sw.epilog.sw.bb46_crit_edge180
    i8 31, label %sw.epilog.sw.bb46_crit_edge181
    i8 32, label %sw.epilog.sw.bb46_crit_edge182
    i8 33, label %sw.epilog.sw.bb46_crit_edge183
    i8 37, label %sw.epilog.sw.bb46_crit_edge184
    i8 8, label %sw.epilog.sw.bb69_crit_edge
    i8 9, label %sw.epilog.sw.bb69_crit_edge185
    i8 12, label %sw.epilog.sw.bb69_crit_edge186
    i8 13, label %sw.epilog.sw.bb69_crit_edge187
    i8 14, label %sw.epilog.sw.bb69_crit_edge188
    i8 16, label %sw.epilog.sw.bb69_crit_edge189
    i8 17, label %sw.epilog.sw.bb69_crit_edge190
    i8 35, label %sw.epilog.sw.bb69_crit_edge191
    i8 34, label %sw.epilog.sw.bb69_crit_edge192
  ]

sw.epilog.sw.bb69_crit_edge192:                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb69

sw.epilog.sw.bb69_crit_edge191:                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb69

sw.epilog.sw.bb69_crit_edge190:                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb69

sw.epilog.sw.bb69_crit_edge189:                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb69

sw.epilog.sw.bb69_crit_edge188:                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb69

sw.epilog.sw.bb69_crit_edge187:                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb69

sw.epilog.sw.bb69_crit_edge186:                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb69

sw.epilog.sw.bb69_crit_edge185:                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb69

sw.epilog.sw.bb69_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb69

sw.epilog.sw.bb46_crit_edge184:                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb46

sw.epilog.sw.bb46_crit_edge183:                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb46

sw.epilog.sw.bb46_crit_edge182:                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb46

sw.epilog.sw.bb46_crit_edge181:                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb46

sw.epilog.sw.bb46_crit_edge180:                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb46

sw.epilog.sw.bb46_crit_edge179:                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb46

sw.epilog.sw.bb46_crit_edge178:                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb46

sw.epilog.sw.bb46_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb46

sw.epilog.sw.bb42_crit_edge177:                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb42

sw.epilog.sw.bb42_crit_edge176:                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb42

sw.epilog.sw.bb42_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb42

sw.epilog.sw.bb25_crit_edge175:                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb25

sw.epilog.sw.bb25_crit_edge174:                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb25

sw.epilog.sw.bb25_crit_edge173:                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb25

sw.epilog.sw.bb25_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb25

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.bb25:                                          ; preds = %sw.epilog.sw.bb25_crit_edge, %sw.epilog.sw.bb25_crit_edge173, %sw.epilog.sw.bb25_crit_edge174, %sw.epilog.sw.bb25_crit_edge175
  %and27 = and i32 %supported_device, 34
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27)
  %tobool28.not = icmp eq i32 %and27, 0
  br i1 %tobool28.not, label %if.else, label %if.then29

if.then29:                                        ; preds = %sw.bb25
  call void @__sanitizer_cov_trace_pc() #12
  %22 = ptrtoint ptr %rmx_type to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 1, ptr %rmx_type, align 8
  %call31 = tail call i32 (ptr, ptr, ptr, i32, ptr, ...) @drm_encoder_init(ptr noundef %dev, ptr noundef nonnull %call7.i.i, ptr noundef nonnull @radeon_atom_enc_funcs, i32 noundef 3, ptr noundef null) #10
  %call32 = tail call ptr @radeon_atombios_get_lvds_info(ptr noundef nonnull %call7.i.i) #10
  br label %if.end37

if.else:                                          ; preds = %sw.bb25
  call void @__sanitizer_cov_trace_pc() #12
  %call34 = tail call i32 (ptr, ptr, ptr, i32, ptr, ...) @drm_encoder_init(ptr noundef %dev, ptr noundef nonnull %call7.i.i, ptr noundef nonnull @radeon_atom_enc_funcs, i32 noundef 2, ptr noundef null) #10
  %call35 = tail call fastcc ptr @radeon_atombios_set_dig_info(ptr noundef nonnull %call7.i.i)
  br label %if.end37

if.end37:                                         ; preds = %if.else, %if.then29
  %storemerge = phi ptr [ %call35, %if.else ], [ %call32, %if.then29 ]
  %23 = ptrtoint ptr %enc_priv to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %storemerge, ptr %enc_priv, align 8
  %helper_private.i = getelementptr inbounds %struct.drm_encoder, ptr %call7.i.i, i32 0, i32 11
  %24 = ptrtoint ptr %helper_private.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr @radeon_atom_dig_helper_funcs, ptr %helper_private.i, align 4
  br label %cleanup

sw.bb38:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  %call39 = tail call i32 (ptr, ptr, ptr, i32, ptr, ...) @drm_encoder_init(ptr noundef %dev, ptr noundef nonnull %call7.i.i, ptr noundef nonnull @radeon_atom_enc_funcs, i32 noundef 1, ptr noundef null) #10
  %call40 = tail call fastcc ptr @radeon_atombios_set_dac_info(ptr noundef nonnull %call7.i.i)
  %25 = ptrtoint ptr %enc_priv to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call40, ptr %enc_priv, align 8
  %helper_private.i159 = getelementptr inbounds %struct.drm_encoder, ptr %call7.i.i, i32 0, i32 11
  %26 = ptrtoint ptr %helper_private.i159 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @radeon_atom_dac_helper_funcs, ptr %helper_private.i159, align 4
  br label %cleanup

sw.bb42:                                          ; preds = %sw.epilog.sw.bb42_crit_edge, %sw.epilog.sw.bb42_crit_edge176, %sw.epilog.sw.bb42_crit_edge177
  %call43 = tail call i32 (ptr, ptr, ptr, i32, ptr, ...) @drm_encoder_init(ptr noundef %dev, ptr noundef nonnull %call7.i.i, ptr noundef nonnull @radeon_atom_enc_funcs, i32 noundef 4, ptr noundef null) #10
  %27 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %call7.i.i, align 8
  %dev_private.i = getelementptr inbounds %struct.drm_device, ptr %28, i32 0, i32 5
  %29 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dev_private.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %31 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %31, i32 noundef 3520, i32 noundef 4) #13
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %sw.bb42.radeon_atombios_set_dac_info.exit_crit_edge, label %if.end.i

sw.bb42.radeon_atombios_set_dac_info.exit_crit_edge: ; preds = %sw.bb42
  call void @__sanitizer_cov_trace_pc() #12
  br label %radeon_atombios_set_dac_info.exit

if.end.i:                                         ; preds = %sw.bb42
  call void @__sanitizer_cov_trace_pc() #12
  %call2.i = tail call i32 @radeon_atombios_get_tv_info(ptr noundef %30) #10
  %32 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %call2.i, ptr %call7.i.i.i, align 8
  br label %radeon_atombios_set_dac_info.exit

radeon_atombios_set_dac_info.exit:                ; preds = %if.end.i, %sw.bb42.radeon_atombios_set_dac_info.exit_crit_edge
  %33 = ptrtoint ptr %enc_priv to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %call7.i.i.i, ptr %enc_priv, align 8
  %helper_private.i160 = getelementptr inbounds %struct.drm_encoder, ptr %call7.i.i, i32 0, i32 11
  %34 = ptrtoint ptr %helper_private.i160 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr @radeon_atom_dac_helper_funcs, ptr %helper_private.i160, align 4
  br label %cleanup

sw.bb46:                                          ; preds = %sw.epilog.sw.bb46_crit_edge, %sw.epilog.sw.bb46_crit_edge178, %sw.epilog.sw.bb46_crit_edge179, %sw.epilog.sw.bb46_crit_edge180, %sw.epilog.sw.bb46_crit_edge181, %sw.epilog.sw.bb46_crit_edge182, %sw.epilog.sw.bb46_crit_edge183, %sw.epilog.sw.bb46_crit_edge184
  %and48 = and i32 %supported_device, 34
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and48)
  %tobool49.not = icmp eq i32 %and48, 0
  br i1 %tobool49.not, label %if.else55, label %if.then50

if.then50:                                        ; preds = %sw.bb46
  call void @__sanitizer_cov_trace_pc() #12
  %35 = ptrtoint ptr %rmx_type to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 1, ptr %rmx_type, align 8
  %call52 = tail call i32 (ptr, ptr, ptr, i32, ptr, ...) @drm_encoder_init(ptr noundef %dev, ptr noundef nonnull %call7.i.i, ptr noundef nonnull @radeon_atom_enc_funcs, i32 noundef 3, ptr noundef null) #10
  %call53 = tail call ptr @radeon_atombios_get_lvds_info(ptr noundef nonnull %call7.i.i) #10
  br label %if.end68

if.else55:                                        ; preds = %sw.bb46
  %and57 = and i32 %supported_device, 17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and57)
  %tobool58.not = icmp eq i32 %and57, 0
  br i1 %tobool58.not, label %if.else63, label %if.then59

if.then59:                                        ; preds = %if.else55
  %call60 = tail call i32 (ptr, ptr, ptr, i32, ptr, ...) @drm_encoder_init(ptr noundef %dev, ptr noundef nonnull %call7.i.i, ptr noundef nonnull @radeon_atom_enc_funcs, i32 noundef 1, ptr noundef null) #10
  %36 = ptrtoint ptr %encoder_enum21 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %encoder_enum21, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %38 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i.i161 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %38, i32 noundef 3520, i32 noundef 160) #13
  %tobool.not.i162 = icmp eq ptr %call7.i.i.i161, null
  br i1 %tobool.not.i162, label %if.then59.if.end68_crit_edge, label %if.end.i163

if.then59.if.end68_crit_edge:                     ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end68

if.end.i163:                                      ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #12
  %coherent_mode.i = getelementptr inbounds %struct.radeon_encoder_atom_dig, ptr %call7.i.i.i161, i32 0, i32 1
  %39 = ptrtoint ptr %coherent_mode.i to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 1, ptr %coherent_mode.i, align 1
  %dig_encoder.i = getelementptr inbounds %struct.radeon_encoder_atom_dig, ptr %call7.i.i.i161, i32 0, i32 2
  %40 = ptrtoint ptr %dig_encoder.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 -1, ptr %dig_encoder.i, align 4
  %41 = and i32 %37, 1792
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %41)
  %cmp.i = icmp eq i32 %41, 512
  %..i = zext i1 %cmp.i to i8
  %42 = ptrtoint ptr %call7.i.i.i161 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %..i, ptr %call7.i.i.i161, align 8
  br label %if.end68

if.else63:                                        ; preds = %if.else55
  call void @__sanitizer_cov_trace_pc() #12
  %call64 = tail call i32 (ptr, ptr, ptr, i32, ptr, ...) @drm_encoder_init(ptr noundef %dev, ptr noundef nonnull %call7.i.i, ptr noundef nonnull @radeon_atom_enc_funcs, i32 noundef 2, ptr noundef null) #10
  %call65 = tail call fastcc ptr @radeon_atombios_set_dig_info(ptr noundef nonnull %call7.i.i)
  br label %if.end68

if.end68:                                         ; preds = %if.else63, %if.end.i163, %if.then59.if.end68_crit_edge, %if.then50
  %call7.i.i.i161.sink = phi ptr [ %call65, %if.else63 ], [ %call53, %if.then50 ], [ %call7.i.i.i161, %if.then59.if.end68_crit_edge ], [ %call7.i.i.i161, %if.end.i163 ]
  %43 = ptrtoint ptr %enc_priv to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %call7.i.i.i161.sink, ptr %enc_priv, align 8
  %helper_private.i164 = getelementptr inbounds %struct.drm_encoder, ptr %call7.i.i, i32 0, i32 11
  %44 = ptrtoint ptr %helper_private.i164 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr @radeon_atom_dig_helper_funcs, ptr %helper_private.i164, align 4
  br label %cleanup

sw.bb69:                                          ; preds = %sw.epilog.sw.bb69_crit_edge, %sw.epilog.sw.bb69_crit_edge185, %sw.epilog.sw.bb69_crit_edge186, %sw.epilog.sw.bb69_crit_edge187, %sw.epilog.sw.bb69_crit_edge188, %sw.epilog.sw.bb69_crit_edge189, %sw.epilog.sw.bb69_crit_edge190, %sw.epilog.sw.bb69_crit_edge191, %sw.epilog.sw.bb69_crit_edge192
  %45 = ptrtoint ptr %is_ext_encoder to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 1, ptr %is_ext_encoder, align 8
  %and72 = and i32 %supported_device, 34
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and72)
  %tobool73.not = icmp eq i32 %and72, 0
  %and78 = and i32 %supported_device, 17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and78)
  %tobool79.not = icmp eq i32 %and78, 0
  %. = select i1 %tobool79.not, i32 2, i32 1
  %.sink169 = select i1 %tobool73.not, i32 %., i32 3
  %call81 = tail call i32 (ptr, ptr, ptr, i32, ptr, ...) @drm_encoder_init(ptr noundef %dev, ptr noundef nonnull %call7.i.i, ptr noundef nonnull @radeon_atom_enc_funcs, i32 noundef %.sink169, ptr noundef null) #10
  %helper_private.i165 = getelementptr inbounds %struct.drm_encoder, ptr %call7.i.i, i32 0, i32 11
  %46 = ptrtoint ptr %helper_private.i165 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr @radeon_atom_ext_helper_funcs, ptr %helper_private.i165, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.bb69, %if.end68, %radeon_atombios_set_dac_info.exit, %sw.bb38, %if.end37, %sw.epilog.cleanup_crit_edge, %for.end.cleanup_crit_edge, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_encoder_init(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @radeon_atombios_get_lvds_info(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc noalias ptr @radeon_atombios_set_dig_info(ptr nocapture noundef readonly %radeon_encoder) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %encoder_enum1 = getelementptr inbounds %struct.radeon_encoder, ptr %radeon_encoder, i32 0, i32 1
  %0 = ptrtoint ptr %encoder_enum1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %encoder_enum1, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 160) #13
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %coherent_mode = getelementptr inbounds %struct.radeon_encoder_atom_dig, ptr %call7.i.i, i32 0, i32 1
  %3 = ptrtoint ptr %coherent_mode to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 1, ptr %coherent_mode, align 1
  %dig_encoder = getelementptr inbounds %struct.radeon_encoder_atom_dig, ptr %call7.i.i, i32 0, i32 2
  %4 = ptrtoint ptr %dig_encoder to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %dig_encoder, align 4
  %5 = and i32 %1, 1792
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %5)
  %cmp = icmp eq i32 %5, 512
  %. = zext i1 %cmp to i8
  %6 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %., ptr %call7.i.i, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret ptr %call7.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc noalias ptr @radeon_atombios_set_dac_info(ptr nocapture noundef readonly %radeon_encoder) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %radeon_encoder to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %radeon_encoder, align 4
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_private, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 4) #13
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call2 = tail call i32 @radeon_atombios_get_tv_info(ptr noundef %3) #10
  %5 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %call2, ptr %call7.i.i, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret ptr %call7.i.i
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @r100_mm_wreg_slow(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @radeon_atom_backlight_update_status(ptr nocapture noundef readonly %bd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
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
  %6 = tail call i32 @llvm.smin.i32(i32 %5, i32 255) #10
  %7 = tail call i32 @llvm.smax.i32(i32 %6, i32 0) #10
  %8 = trunc i32 %7 to i8
  tail call void @atombios_set_backlight_level(ptr noundef %3, i8 noundef zeroext %8)
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @backlight_device_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @radeon_atom_encoder_dpms(ptr noundef %encoder, i32 noundef %mode) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %encoder to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %encoder, align 4
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_private, align 4
  %call = tail call i32 @atombios_get_encoder_mode(ptr noundef %encoder)
  %encoder_id = getelementptr inbounds %struct.radeon_encoder, ptr %encoder, i32 0, i32 2
  %4 = ptrtoint ptr %encoder_id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %encoder_id, align 4
  %devices = getelementptr inbounds %struct.radeon_encoder, ptr %encoder, i32 0, i32 3
  %6 = ptrtoint ptr %devices to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %devices, align 4
  %active_device = getelementptr inbounds %struct.radeon_encoder, ptr %encoder, i32 0, i32 4
  %8 = ptrtoint ptr %active_device to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %active_device, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.16, i32 noundef %5, i32 noundef %mode, i32 noundef %7, i32 noundef %9) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @radeon_audio to i32))
  %10 = load i32, ptr @radeon_audio, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp.not = icmp eq i32 %10, 0
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %11 = zext i32 %call to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.50)
  switch i32 %call, label %land.lhs.true.if.end_crit_edge [
    i32 3, label %land.lhs.true.if.then_crit_edge
    i32 0, label %land.lhs.true.if.then_crit_edge62
    i32 5, label %land.lhs.true.if.then_crit_edge63
  ]

land.lhs.true.if.then_crit_edge63:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

land.lhs.true.if.then_crit_edge62:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

land.lhs.true.if.then_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %land.lhs.true.if.then_crit_edge, %land.lhs.true.if.then_crit_edge62, %land.lhs.true.if.then_crit_edge63
  tail call void @radeon_audio_dpms(ptr noundef %encoder, i32 noundef %mode) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %12 = ptrtoint ptr %encoder_id to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %encoder_id, align 4
  %14 = zext i32 %13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.51)
  switch i32 %13, label %if.end.cleanup_crit_edge [
    i32 2, label %if.end.sw.bb_crit_edge
    i32 19, label %if.end.sw.bb_crit_edge64
    i32 1, label %if.end.sw.bb_crit_edge65
    i32 15, label %if.end.sw.bb_crit_edge66
    i32 11, label %if.end.sw.bb_crit_edge67
    i32 25, label %if.end.sw.bb_crit_edge68
    i32 5, label %if.end.sw.bb_crit_edge69
    i32 22, label %if.end.sw.bb_crit_edge70
    i32 30, label %if.end.sw.bb7_crit_edge
    i32 32, label %if.end.sw.bb7_crit_edge71
    i32 33, label %if.end.sw.bb7_crit_edge72
    i32 37, label %if.end.sw.bb7_crit_edge73
    i32 31, label %if.end.sw.bb7_crit_edge74
    i32 20, label %sw.bb8
    i32 4, label %if.end.sw.bb19_crit_edge
    i32 21, label %if.end.sw.bb19_crit_edge75
  ]

if.end.sw.bb19_crit_edge75:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb19

if.end.sw.bb19_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb19

if.end.sw.bb7_crit_edge74:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb7

if.end.sw.bb7_crit_edge73:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb7

if.end.sw.bb7_crit_edge72:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb7

if.end.sw.bb7_crit_edge71:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb7

if.end.sw.bb7_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb7

if.end.sw.bb_crit_edge70:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

if.end.sw.bb_crit_edge69:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

if.end.sw.bb_crit_edge68:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

if.end.sw.bb_crit_edge67:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

if.end.sw.bb_crit_edge66:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

if.end.sw.bb_crit_edge65:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

if.end.sw.bb_crit_edge64:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

if.end.sw.bb_crit_edge:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.bb:                                            ; preds = %if.end.sw.bb_crit_edge, %if.end.sw.bb_crit_edge64, %if.end.sw.bb_crit_edge65, %if.end.sw.bb_crit_edge66, %if.end.sw.bb_crit_edge67, %if.end.sw.bb_crit_edge68, %if.end.sw.bb_crit_edge69, %if.end.sw.bb_crit_edge70
  tail call fastcc void @radeon_atom_encoder_dpms_avivo(ptr noundef %encoder, i32 noundef %mode)
  br label %sw.epilog28

sw.bb7:                                           ; preds = %if.end.sw.bb7_crit_edge, %if.end.sw.bb7_crit_edge71, %if.end.sw.bb7_crit_edge72, %if.end.sw.bb7_crit_edge73, %if.end.sw.bb7_crit_edge74
  tail call fastcc void @radeon_atom_encoder_dpms_dig(ptr noundef %encoder, i32 noundef %mode)
  br label %sw.epilog28

sw.bb8:                                           ; preds = %if.end
  %family = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 6
  %15 = ptrtoint ptr %family to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %family, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 46, i32 %16)
  %cmp9 = icmp ugt i32 %16, 46
  br i1 %cmp9, label %if.then10, label %if.else

if.then10:                                        ; preds = %sw.bb8
  %17 = zext i32 %mode to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.52)
  switch i32 %mode, label %if.then10.sw.epilog28_crit_edge [
    i32 0, label %sw.bb11
    i32 1, label %if.then10.sw.bb12_crit_edge
    i32 2, label %if.then10.sw.bb12_crit_edge76
    i32 3, label %if.then10.sw.bb12_crit_edge77
  ]

if.then10.sw.bb12_crit_edge77:                    ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb12

if.then10.sw.bb12_crit_edge76:                    ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb12

if.then10.sw.bb12_crit_edge:                      ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb12

if.then10.sw.epilog28_crit_edge:                  ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog28

sw.bb11:                                          ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @atombios_dvo_setup(ptr noundef %encoder, i32 noundef 1)
  br label %sw.epilog28

sw.bb12:                                          ; preds = %if.then10.sw.bb12_crit_edge, %if.then10.sw.bb12_crit_edge76, %if.then10.sw.bb12_crit_edge77
  tail call void @atombios_dvo_setup(ptr noundef %encoder, i32 noundef 0)
  br label %sw.epilog28

if.else:                                          ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_const_cmp4(i32 30, i32 %16)
  %cmp14 = icmp ugt i32 %16, 30
  br i1 %cmp14, label %if.then15, label %if.else16

if.then15:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @radeon_atom_encoder_dpms_dig(ptr noundef %encoder, i32 noundef %mode)
  br label %sw.epilog28

if.else16:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @radeon_atom_encoder_dpms_avivo(ptr noundef %encoder, i32 noundef %mode)
  br label %sw.epilog28

sw.bb19:                                          ; preds = %if.end.sw.bb19_crit_edge, %if.end.sw.bb19_crit_edge75
  %family20 = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 6
  %18 = ptrtoint ptr %family20 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %family20, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 46, i32 %19)
  %cmp21 = icmp ugt i32 %19, 46
  br i1 %cmp21, label %if.then22, label %if.else26

if.then22:                                        ; preds = %sw.bb19
  %20 = zext i32 %mode to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values.53)
  switch i32 %mode, label %if.then22.sw.epilog28_crit_edge [
    i32 0, label %sw.bb23
    i32 1, label %if.then22.sw.bb24_crit_edge
    i32 2, label %if.then22.sw.bb24_crit_edge78
    i32 3, label %if.then22.sw.bb24_crit_edge79
  ]

if.then22.sw.bb24_crit_edge79:                    ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb24

if.then22.sw.bb24_crit_edge78:                    ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb24

if.then22.sw.bb24_crit_edge:                      ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb24

if.then22.sw.epilog28_crit_edge:                  ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog28

sw.bb23:                                          ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @atombios_dac_setup(ptr noundef %encoder, i32 noundef 1)
  br label %sw.epilog28

sw.bb24:                                          ; preds = %if.then22.sw.bb24_crit_edge, %if.then22.sw.bb24_crit_edge78, %if.then22.sw.bb24_crit_edge79
  tail call fastcc void @atombios_dac_setup(ptr noundef %encoder, i32 noundef 0)
  br label %sw.epilog28

if.else26:                                        ; preds = %sw.bb19
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @radeon_atom_encoder_dpms_avivo(ptr noundef %encoder, i32 noundef %mode)
  br label %sw.epilog28

sw.epilog28:                                      ; preds = %if.else26, %sw.bb24, %sw.bb23, %if.then22.sw.epilog28_crit_edge, %if.else16, %if.then15, %sw.bb12, %sw.bb11, %if.then10.sw.epilog28_crit_edge, %sw.bb7, %sw.bb
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mode)
  %cmp29 = icmp eq i32 %mode, 0
  tail call void @radeon_atombios_encoder_dpms_scratch_regs(ptr noundef %encoder, i1 noundef zeroext %cmp29) #10
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog28, %if.end.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @radeon_atom_mode_fixup(ptr noundef %encoder, ptr nocapture noundef readonly %mode, ptr noundef %adjusted_mode) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %encoder to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %encoder, align 4
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_private, align 4
  tail call void @radeon_encoder_set_active_device(ptr noundef %encoder) #10
  tail call void @drm_mode_set_crtcinfo(ptr noundef %adjusted_mode, i32 noundef 0) #10
  %flags = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 11
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags, align 4
  %and = and i32 %5, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %crtc_vsync_start = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 23
  %6 = ptrtoint ptr %crtc_vsync_start to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %crtc_vsync_start, align 4
  %conv = zext i16 %7 to i32
  %crtc_vdisplay = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 20
  %8 = ptrtoint ptr %crtc_vdisplay to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %crtc_vdisplay, align 2
  %conv2 = zext i16 %9 to i32
  %add = add nuw nsw i32 %conv2, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %conv)
  %cmp = icmp ugt i32 %add, %conv
  br i1 %cmp, label %if.then, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  %crtc_vdisplay4 = getelementptr inbounds %struct.drm_display_mode, ptr %adjusted_mode, i32 0, i32 20
  %10 = ptrtoint ptr %crtc_vdisplay4 to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %crtc_vdisplay4, align 2
  %add6 = add i16 %11, 2
  %crtc_vsync_start8 = getelementptr inbounds %struct.drm_display_mode, ptr %adjusted_mode, i32 0, i32 23
  %12 = ptrtoint ptr %crtc_vsync_start8 to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %add6, ptr %crtc_vsync_start8, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %crtc_vsync_start9 = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 23
  %13 = ptrtoint ptr %crtc_vsync_start9 to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %crtc_vsync_start9, align 4
  %crtc_vdisplay11 = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 20
  %15 = ptrtoint ptr %crtc_vdisplay11 to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %crtc_vdisplay11, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %14, i16 %16)
  %cmp13 = icmp eq i16 %14, %16
  br i1 %cmp13, label %if.then15, label %if.end.if.end17_crit_edge

if.end.if.end17_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end17

if.then15:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %crtc_vsync_start16 = getelementptr inbounds %struct.drm_display_mode, ptr %adjusted_mode, i32 0, i32 23
  %17 = ptrtoint ptr %crtc_vsync_start16 to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %crtc_vsync_start16, align 4
  %inc = add i16 %18, 1
  store i16 %inc, ptr %crtc_vsync_start16, align 4
  br label %if.end17

if.end17:                                         ; preds = %if.then15, %if.end.if.end17_crit_edge
  %active_device = getelementptr inbounds %struct.radeon_encoder, ptr %encoder, i32 0, i32 4
  %19 = ptrtoint ptr %active_device to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %active_device, align 4
  %and18 = and i32 %20, 34
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18)
  %tobool19.not = icmp eq i32 %and18, 0
  br i1 %tobool19.not, label %if.else, label %if.then20

if.then20:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @radeon_panel_mode_fixup(ptr noundef %encoder, ptr noundef %adjusted_mode) #10
  br label %if.end47

if.else:                                          ; preds = %if.end17
  %and22 = and i32 %20, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22)
  %tobool23.not = icmp eq i32 %and22, 0
  br i1 %tobool23.not, label %if.else41, label %if.then24

if.then24:                                        ; preds = %if.else
  %enc_priv = getelementptr inbounds %struct.radeon_encoder, ptr %encoder, i32 0, i32 12
  %21 = ptrtoint ptr %enc_priv to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %enc_priv, align 4
  %tobool25.not = icmp eq ptr %22, null
  br i1 %tobool25.not, label %if.then24.if.end47_crit_edge, label %if.then26

if.then24.if.end47_crit_edge:                     ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end47

if.then26:                                        ; preds = %if.then24
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %22, align 4
  %25 = zext i32 %24 to i64
  call void @__sanitizer_cov_trace_switch(i64 %25, ptr @__sancov_gen_cov_switch_values.54)
  switch i32 %24, label %if.else37 [
    i32 0, label %if.then26.if.then36_crit_edge
    i32 4, label %if.then26.if.then36_crit_edge90
    i32 2, label %if.then26.if.then36_crit_edge91
  ]

if.then26.if.then36_crit_edge91:                  ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then36

if.then26.if.then36_crit_edge90:                  ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then36

if.then26.if.then36_crit_edge:                    ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then36

if.then36:                                        ; preds = %if.then26.if.then36_crit_edge, %if.then26.if.then36_crit_edge90, %if.then26.if.then36_crit_edge91
  %call = tail call zeroext i1 @radeon_atom_get_tv_timings(ptr noundef %3, i32 noundef 0, ptr noundef %adjusted_mode) #10
  br label %if.end47

if.else37:                                        ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #12
  %call38 = tail call zeroext i1 @radeon_atom_get_tv_timings(ptr noundef %3, i32 noundef 1, ptr noundef %adjusted_mode) #10
  br label %if.end47

if.else41:                                        ; preds = %if.else
  %rmx_type = getelementptr inbounds %struct.radeon_encoder, ptr %encoder, i32 0, i32 7
  %26 = ptrtoint ptr %rmx_type to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %rmx_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %cmp42.not = icmp eq i32 %27, 0
  br i1 %cmp42.not, label %if.else41.if.end47_crit_edge, label %if.then44

if.else41.if.end47_crit_edge:                     ; preds = %if.else41
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end47

if.then44:                                        ; preds = %if.else41
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @radeon_panel_mode_fixup(ptr noundef %encoder, ptr noundef %adjusted_mode) #10
  br label %if.end47

if.end47:                                         ; preds = %if.then44, %if.else41.if.end47_crit_edge, %if.else37, %if.then36, %if.then24.if.end47_crit_edge, %if.then20
  %family = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 6
  %28 = ptrtoint ptr %family to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %family, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 30, i32 %29)
  %cmp48 = icmp ugt i32 %29, 30
  br i1 %cmp48, label %land.lhs.true50, label %if.end47.if.end61_crit_edge

if.end47.if.end61_crit_edge:                      ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end61

land.lhs.true50:                                  ; preds = %if.end47
  %30 = ptrtoint ptr %active_device to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %active_device, align 4
  %and52 = and i32 %31, 3818
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and52)
  %tobool53.not = icmp eq i32 %and52, 0
  br i1 %tobool53.not, label %lor.lhs.false54, label %land.lhs.true50.if.then59_crit_edge

land.lhs.true50.if.then59_crit_edge:              ; preds = %land.lhs.true50
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then59

lor.lhs.false54:                                  ; preds = %land.lhs.true50
  %call55 = tail call zeroext i16 @radeon_encoder_get_dp_bridge_encoder_id(ptr noundef %encoder) #10
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %call55)
  %cmp57.not = icmp eq i16 %call55, 0
  br i1 %cmp57.not, label %lor.lhs.false54.if.end61_crit_edge, label %lor.lhs.false54.if.then59_crit_edge

lor.lhs.false54.if.then59_crit_edge:              ; preds = %lor.lhs.false54
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then59

lor.lhs.false54.if.end61_crit_edge:               ; preds = %lor.lhs.false54
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end61

if.then59:                                        ; preds = %lor.lhs.false54.if.then59_crit_edge, %land.lhs.true50.if.then59_crit_edge
  %call60 = tail call ptr @radeon_get_connector_for_encoder(ptr noundef %encoder) #10
  tail call void @radeon_dp_set_link_config(ptr noundef %call60, ptr noundef %adjusted_mode) #10
  br label %if.end61

if.end61:                                         ; preds = %if.then59, %lor.lhs.false54.if.end61_crit_edge, %if.end47.if.end61_crit_edge
  ret i1 true
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @radeon_atom_encoder_prepare(ptr noundef %encoder) #0 align 64 {
entry:
  %args.i97 = alloca %union.crtc_source_param, align 4
  %frev.i98 = alloca i8, align 1
  %crev.i99 = alloca i8, align 1
  %args.i = alloca %union.dig_transmitter_control, align 2
  %frev.i = alloca i8, align 1
  %crev.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %encoder to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %encoder, align 4
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_private, align 4
  %call = tail call ptr @radeon_get_connector_for_encoder(ptr noundef %encoder) #10
  %active_device = getelementptr inbounds %struct.radeon_encoder, ptr %encoder, i32 0, i32 4
  %4 = ptrtoint ptr %active_device to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %active_device, align 4
  %and = and i32 %5, 3818
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %call1 = tail call zeroext i16 @radeon_encoder_get_dp_bridge_encoder_id(ptr noundef %encoder) #10
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %call1)
  %cmp.not = icmp eq i16 %call1, 0
  br i1 %cmp.not, label %lor.lhs.false.if.end27_crit_edge, label %lor.lhs.false.if.then_crit_edge

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

lor.lhs.false.if.end27_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end27

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  %enc_priv = getelementptr inbounds %struct.radeon_encoder, ptr %encoder, i32 0, i32 12
  %6 = ptrtoint ptr %enc_priv to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %enc_priv, align 4
  %tobool3.not = icmp eq ptr %7, null
  br i1 %tobool3.not, label %if.then.if.end27_crit_edge, label %if.then4

if.then.if.end27_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end27

if.then4:                                         ; preds = %if.then
  %dig_encoder = getelementptr inbounds %struct.radeon_encoder_atom_dig, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %dig_encoder to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %dig_encoder, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %9)
  %cmp5 = icmp sgt i32 %9, -1
  br i1 %cmp5, label %radeon_atom_release_dig_encoder.exit, label %if.then4.if.end_crit_edge

if.then4.if.end_crit_edge:                        ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

radeon_atom_release_dig_encoder.exit:             ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #12
  %shl.i = shl nuw i32 1, %9
  %neg.i = xor i32 %shl.i, -1
  %active_encoders.i = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 44, i32 21
  %10 = ptrtoint ptr %active_encoders.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %active_encoders.i, align 4
  %and.i = and i32 %11, %neg.i
  store i32 %and.i, ptr %active_encoders.i, align 4
  br label %if.end

if.end:                                           ; preds = %radeon_atom_release_dig_encoder.exit, %if.then4.if.end_crit_edge
  %call9 = tail call i32 @radeon_atom_pick_dig_encoder(ptr noundef %encoder, i32 noundef -1)
  %12 = ptrtoint ptr %dig_encoder to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %call9, ptr %dig_encoder, align 4
  %13 = ptrtoint ptr %active_device to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %active_device, align 4
  %and12 = and i32 %14, 3784
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %tobool13.not = icmp eq i32 %and12, 0
  br i1 %tobool13.not, label %if.end.if.end27_crit_edge, label %if.then14

if.end.if.end27_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end27

if.then14:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %family = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 6
  %15 = ptrtoint ptr %family to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %family, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 26, i32 %16)
  %cmp15 = icmp ugt i32 %16, 26
  %arrayidx = getelementptr %struct.radeon_device, ptr %3, i32 0, i32 44, i32 5, i32 %call9
  %afmt21 = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 44, i32 5
  %arrayidx.sink = select i1 %cmp15, ptr %arrayidx, ptr %afmt21
  %17 = ptrtoint ptr %arrayidx.sink to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx.sink, align 4
  %afmt19 = getelementptr inbounds %struct.radeon_encoder_atom_dig, ptr %7, i32 0, i32 11
  %19 = ptrtoint ptr %afmt19 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %18, ptr %afmt19, align 4
  br label %if.end27

if.end27:                                         ; preds = %if.then14, %if.end.if.end27_crit_edge, %if.then.if.end27_crit_edge, %lor.lhs.false.if.end27_crit_edge
  tail call void @radeon_atom_output_lock(ptr noundef %encoder, i1 noundef zeroext true) #10
  %tobool28.not = icmp eq ptr %call, null
  br i1 %tobool28.not, label %if.end27.if.end41_crit_edge, label %if.then29

if.end27.if.end41_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end41

if.then29:                                        ; preds = %if.end27
  %cd_valid = getelementptr inbounds %struct.radeon_connector, ptr %call, i32 0, i32 13, i32 7
  %20 = ptrtoint ptr %cd_valid to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %cd_valid, align 1, !range !61
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool33.not = icmp eq i8 %21, 0
  br i1 %tobool33.not, label %if.then29.if.end35_crit_edge, label %if.then34

if.then29.if.end35_crit_edge:                     ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end35

if.then34:                                        ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @radeon_router_select_cd_port(ptr noundef nonnull %call) #10
  br label %if.end35

if.end35:                                         ; preds = %if.then34, %if.then29.if.end35_crit_edge
  %connector_type = getelementptr inbounds %struct.drm_connector, ptr %call, i32 0, i32 10
  %22 = ptrtoint ptr %connector_type to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %connector_type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %23)
  %cmp36 = icmp eq i32 %23, 14
  br i1 %cmp36, label %if.end.i96, label %if.end35.if.end41_crit_edge

if.end35.if.end41_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end41

if.end.i96:                                       ; preds = %if.end35
  %24 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %call, align 8
  %dev_private.i = getelementptr inbounds %struct.drm_device, ptr %25, i32 0, i32 5
  %26 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev_private.i, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %args.i) #10
  %28 = getelementptr inbounds %struct._DIG_TRANSMITTER_CONTROL_PARAMETERS_V1_5, ptr %args.i, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %frev.i) #10
  %29 = ptrtoint ptr %frev.i to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 -1, ptr %frev.i, align 1, !annotation !62
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %crev.i) #10
  %30 = ptrtoint ptr %crev.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 -1, ptr %crev.i, align 1, !annotation !62
  %family.i = getelementptr inbounds %struct.radeon_device, ptr %27, i32 0, i32 6
  %31 = ptrtoint ptr %family.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %family.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 38, i32 %32)
  %cmp2.i = icmp ugt i32 %32, 38
  br i1 %cmp2.i, label %if.end8.i, label %if.end.i96.atombios_set_edp_panel_power.exit_crit_edge

if.end.i96.atombios_set_edp_panel_power.exit_crit_edge: ; preds = %if.end.i96
  call void @__sanitizer_cov_trace_pc() #12
  br label %atombios_set_edp_panel_power.exit

if.end8.i:                                        ; preds = %if.end.i96
  %mode_info.i = getelementptr inbounds %struct.radeon_device, ptr %27, i32 0, i32 44
  %33 = ptrtoint ptr %mode_info.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %mode_info.i, align 4
  %call.i = call zeroext i1 @atom_parse_cmd_header(ptr noundef %34, i32 noundef 76, ptr noundef nonnull %frev.i, ptr noundef nonnull %crev.i) #10
  br i1 %call.i, label %if.end10.i, label %if.end8.i.atombios_set_edp_panel_power.exit_crit_edge

if.end8.i.atombios_set_edp_panel_power.exit_crit_edge: ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %atombios_set_edp_panel_power.exit

if.end10.i:                                       ; preds = %if.end8.i
  %35 = call ptr @memset(ptr %args.i, i32 0, i32 12)
  %36 = ptrtoint ptr %28 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 12, ptr %28, align 1
  %37 = ptrtoint ptr %mode_info.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %mode_info.i, align 4
  %call13.i = call i32 @atom_execute_table(ptr noundef %38, i32 noundef 76, ptr noundef nonnull %args.i) #10
  %asic.i = getelementptr inbounds %struct.radeon_device, ptr %27, i32 0, i32 56
  %hpd19.i = getelementptr inbounds %struct.radeon_connector, ptr %call, i32 0, i32 12
  br label %for.body.i

for.body.i:                                       ; preds = %if.end23.i.for.body.i_crit_edge, %if.end10.i
  %i.043.i = phi i32 [ 0, %if.end10.i ], [ %inc.i, %if.end23.i.for.body.i_crit_edge ]
  %39 = ptrtoint ptr %asic.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %asic.i, align 8
  %sense.i = getelementptr inbounds %struct.radeon_asic, ptr %40, i32 0, i32 19, i32 2
  %41 = ptrtoint ptr %sense.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %sense.i, align 4
  %43 = ptrtoint ptr %hpd19.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %hpd19.i, align 8
  %call21.i = call zeroext i1 %42(ptr noundef %27, i32 noundef %44) #10
  br i1 %call21.i, label %for.body.i.atombios_set_edp_panel_power.exit_crit_edge, label %if.end23.i

for.body.i.atombios_set_edp_panel_power.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %atombios_set_edp_panel_power.exit

if.end23.i:                                       ; preds = %for.body.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %45 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %45(i32 noundef 214748000) #10
  %inc.i = add nuw nsw i32 %i.043.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 300
  br i1 %exitcond.not.i, label %if.end23.i.atombios_set_edp_panel_power.exit_crit_edge, label %if.end23.i.for.body.i_crit_edge

if.end23.i.for.body.i_crit_edge:                  ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

if.end23.i.atombios_set_edp_panel_power.exit_crit_edge: ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %atombios_set_edp_panel_power.exit

atombios_set_edp_panel_power.exit:                ; preds = %if.end23.i.atombios_set_edp_panel_power.exit_crit_edge, %for.body.i.atombios_set_edp_panel_power.exit_crit_edge, %if.end8.i.atombios_set_edp_panel_power.exit_crit_edge, %if.end.i96.atombios_set_edp_panel_power.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %crev.i) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %frev.i) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %args.i) #10
  br label %if.end41

if.end41:                                         ; preds = %atombios_set_edp_panel_power.exit, %if.end35.if.end41_crit_edge, %if.end27.if.end41_crit_edge
  %46 = ptrtoint ptr %encoder to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %encoder, align 4
  %dev_private.i100 = getelementptr inbounds %struct.drm_device, ptr %47, i32 0, i32 5
  %48 = ptrtoint ptr %dev_private.i100 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %dev_private.i100, align 4
  %crtc.i = getelementptr inbounds %struct.drm_encoder, ptr %encoder, i32 0, i32 8
  %50 = ptrtoint ptr %crtc.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %crtc.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %args.i97) #10
  %52 = getelementptr inbounds %struct._SELECT_CRTC_SOURCE_PARAMETERS, ptr %args.i97, i32 0, i32 1
  %53 = getelementptr inbounds %struct._SELECT_CRTC_SOURCE_PARAMETERS, ptr %args.i97, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %frev.i98) #10
  %54 = ptrtoint ptr %frev.i98 to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 -1, ptr %frev.i98, align 1, !annotation !62
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %crev.i99) #10
  %55 = ptrtoint ptr %crev.i99 to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 -1, ptr %crev.i99, align 1, !annotation !62
  %56 = ptrtoint ptr %args.i97 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 0, ptr %args.i97, align 4
  %mode_info.i101 = getelementptr inbounds %struct.radeon_device, ptr %49, i32 0, i32 44
  %57 = ptrtoint ptr %mode_info.i101 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %mode_info.i101, align 4
  %call.i102 = call zeroext i1 @atom_parse_cmd_header(ptr noundef %58, i32 noundef 42, ptr noundef nonnull %frev.i98, ptr noundef nonnull %crev.i99) #10
  br i1 %call.i102, label %if.end.i103, label %if.end41.atombios_set_encoder_crtc_source.exit_crit_edge

if.end41.atombios_set_encoder_crtc_source.exit_crit_edge: ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #12
  br label %atombios_set_encoder_crtc_source.exit

if.end.i103:                                      ; preds = %if.end41
  %59 = ptrtoint ptr %frev.i98 to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %frev.i98, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %60)
  %cond.i = icmp eq i8 %60, 1
  br i1 %cond.i, label %sw.bb.i, label %sw.default152.i

sw.bb.i:                                          ; preds = %if.end.i103
  %61 = ptrtoint ptr %crev.i99 to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %crev.i99, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %62)
  %cond168.i = icmp eq i8 %62, 2
  br i1 %cond168.i, label %sw.bb63.i, label %sw.default.i

sw.default.i:                                     ; preds = %sw.bb.i
  %family.i104 = getelementptr inbounds %struct.radeon_device, ptr %49, i32 0, i32 6
  %63 = ptrtoint ptr %family.i104 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %family.i104, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %64)
  %cmp.i105 = icmp ugt i32 %64, 17
  br i1 %cmp.i105, label %if.then8.i, label %if.else.i

if.then8.i:                                       ; preds = %sw.default.i
  call void @__sanitizer_cov_trace_pc() #12
  %crtc_id.i = getelementptr inbounds %struct.radeon_crtc, ptr %51, i32 0, i32 1
  %65 = ptrtoint ptr %crtc_id.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %crtc_id.i, align 8
  %conv9.i = trunc i32 %66 to i8
  %67 = ptrtoint ptr %args.i97 to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 %conv9.i, ptr %args.i97, align 4
  br label %if.end21.i

if.else.i:                                        ; preds = %sw.default.i
  %encoder_id.i = getelementptr inbounds %struct.radeon_encoder, ptr %encoder, i32 0, i32 2
  %68 = ptrtoint ptr %encoder_id.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %encoder_id.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %69)
  %cmp10.i = icmp eq i32 %69, 4
  %crtc_id13.i = getelementptr inbounds %struct.radeon_crtc, ptr %51, i32 0, i32 1
  %70 = ptrtoint ptr %crtc_id13.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %crtc_id13.i, align 8
  %conv14.i = trunc i32 %71 to i8
  br i1 %cmp10.i, label %if.then12.i, label %if.else16.i

if.then12.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  %72 = ptrtoint ptr %args.i97 to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 %conv14.i, ptr %args.i97, align 4
  br label %if.end21.i

if.else16.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  %conv18.i = shl i8 %conv14.i, 2
  %73 = ptrtoint ptr %args.i97 to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 %conv18.i, ptr %args.i97, align 4
  br label %if.end21.i

if.end21.i:                                       ; preds = %if.else16.i, %if.then12.i, %if.then8.i
  %encoder_id22.i = getelementptr inbounds %struct.radeon_encoder, ptr %encoder, i32 0, i32 2
  %74 = ptrtoint ptr %encoder_id22.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %encoder_id22.i, align 4
  %76 = zext i32 %75 to i64
  call void @__sanitizer_cov_trace_switch(i64 %76, ptr @__sancov_gen_cov_switch_values.55)
  switch i32 %75, label %if.end21.i.sw.epilog155.i_crit_edge [
    i32 2, label %if.end21.i.sw.epilog155.sink.split.i_crit_edge
    i32 19, label %if.end21.i.sw.epilog155.sink.split.i_crit_edge108
    i32 1, label %if.end21.i.sw.bb24.i_crit_edge
    i32 15, label %if.end21.i.sw.bb24.i_crit_edge109
    i32 11, label %if.end21.i.sw.bb30.i_crit_edge
    i32 25, label %if.end21.i.sw.bb30.i_crit_edge110
    i32 20, label %if.end21.i.sw.bb30.i_crit_edge111
    i32 4, label %if.end21.i.sw.bb32.i_crit_edge
    i32 21, label %if.end21.i.sw.bb32.i_crit_edge112
    i32 5, label %if.end21.i.sw.bb47.i_crit_edge
    i32 22, label %if.end21.i.sw.bb47.i_crit_edge113
  ]

if.end21.i.sw.bb47.i_crit_edge113:                ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb47.i

if.end21.i.sw.bb47.i_crit_edge:                   ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb47.i

if.end21.i.sw.bb32.i_crit_edge112:                ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb32.i

if.end21.i.sw.bb32.i_crit_edge:                   ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb32.i

if.end21.i.sw.bb30.i_crit_edge111:                ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb30.i

if.end21.i.sw.bb30.i_crit_edge110:                ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb30.i

if.end21.i.sw.bb30.i_crit_edge:                   ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb30.i

if.end21.i.sw.bb24.i_crit_edge109:                ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb24.i

if.end21.i.sw.bb24.i_crit_edge:                   ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb24.i

if.end21.i.sw.epilog155.sink.split.i_crit_edge108: ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog155.sink.split.i

if.end21.i.sw.epilog155.sink.split.i_crit_edge:   ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog155.sink.split.i

if.end21.i.sw.epilog155.i_crit_edge:              ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog155.i

sw.bb24.i:                                        ; preds = %if.end21.i.sw.bb24.i_crit_edge, %if.end21.i.sw.bb24.i_crit_edge109
  %devices.i = getelementptr inbounds %struct.radeon_encoder, ptr %encoder, i32 0, i32 3
  %77 = ptrtoint ptr %devices.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %devices.i, align 4
  %and.i106 = and i32 %78, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i106)
  %tobool.not.i = icmp eq i32 %and.i106, 0
  %..i = select i1 %tobool.not.i, i8 9, i8 1
  br label %sw.epilog155.sink.split.i

sw.bb30.i:                                        ; preds = %if.end21.i.sw.bb30.i_crit_edge, %if.end21.i.sw.bb30.i_crit_edge110, %if.end21.i.sw.bb30.i_crit_edge111
  br label %sw.epilog155.sink.split.i

sw.bb32.i:                                        ; preds = %if.end21.i.sw.bb32.i_crit_edge, %if.end21.i.sw.bb32.i_crit_edge112
  %79 = ptrtoint ptr %active_device to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %active_device, align 4
  %and33.i = and i32 %80, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and33.i)
  %tobool34.not.i = icmp eq i32 %and33.i, 0
  br i1 %tobool34.not.i, label %if.else37.i, label %sw.bb32.i.sw.epilog155.sink.split.i_crit_edge

sw.bb32.i.sw.epilog155.sink.split.i_crit_edge:    ; preds = %sw.bb32.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog155.sink.split.i

if.else37.i:                                      ; preds = %sw.bb32.i
  call void @__sanitizer_cov_trace_pc() #12
  %and39.i = lshr i32 %80, 5
  %81 = trunc i32 %and39.i to i8
  %82 = and i8 %81, 8
  br label %sw.epilog155.sink.split.i

sw.bb47.i:                                        ; preds = %if.end21.i.sw.bb47.i_crit_edge, %if.end21.i.sw.bb47.i_crit_edge113
  %83 = ptrtoint ptr %active_device to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %active_device, align 4
  %and49.i = and i32 %84, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and49.i)
  %tobool50.not.i = icmp eq i32 %and49.i, 0
  br i1 %tobool50.not.i, label %if.else53.i, label %sw.bb47.i.sw.epilog155.sink.split.i_crit_edge

sw.bb47.i.sw.epilog155.sink.split.i_crit_edge:    ; preds = %sw.bb47.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog155.sink.split.i

if.else53.i:                                      ; preds = %sw.bb47.i
  call void @__sanitizer_cov_trace_pc() #12
  %and55.i = and i32 %84, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and55.i)
  %tobool56.not.i = icmp eq i32 %and55.i, 0
  %.199.i = select i1 %tobool56.not.i, i8 4, i8 8
  br label %sw.epilog155.sink.split.i

sw.bb63.i:                                        ; preds = %sw.bb.i
  %crtc_id64.i = getelementptr inbounds %struct.radeon_crtc, ptr %51, i32 0, i32 1
  %85 = ptrtoint ptr %crtc_id64.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %crtc_id64.i, align 8
  %conv65.i = trunc i32 %86 to i8
  %87 = ptrtoint ptr %args.i97 to i32
  call void @__asan_store1_noabort(i32 %87)
  store i8 %conv65.i, ptr %args.i97, align 4
  %call67.i = call zeroext i16 @radeon_encoder_get_dp_bridge_encoder_id(ptr noundef %encoder) #10
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %call67.i)
  %cmp69.not.i = icmp eq i16 %call67.i, 0
  br i1 %cmp69.not.i, label %if.else88.i, label %if.then71.i

if.then71.i:                                      ; preds = %sw.bb63.i
  %call72.i = call ptr @radeon_get_connector_for_encoder(ptr noundef %encoder) #10
  %connector_type.i107 = getelementptr inbounds %struct.drm_connector, ptr %call72.i, i32 0, i32 10
  %88 = ptrtoint ptr %connector_type.i107 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %connector_type.i107, align 8
  %90 = zext i32 %89 to i64
  call void @__sanitizer_cov_trace_switch(i64 %90, ptr @__sancov_gen_cov_switch_values.56)
  switch i32 %89, label %if.else82.i [
    i32 7, label %if.then71.i.if.end99.i_crit_edge
    i32 1, label %if.then80.i
  ]

if.then71.i.if.end99.i_crit_edge:                 ; preds = %if.then71.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end99.i

if.then80.i:                                      ; preds = %if.then71.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end99.i

if.else82.i:                                      ; preds = %if.then71.i
  call void @__sanitizer_cov_trace_pc() #12
  %call83.i = call i32 @atombios_get_encoder_mode(ptr noundef %encoder) #10
  %conv84.i = trunc i32 %call83.i to i8
  br label %if.end99.i

if.else88.i:                                      ; preds = %sw.bb63.i
  %devices89.i = getelementptr inbounds %struct.radeon_encoder, ptr %encoder, i32 0, i32 3
  %91 = ptrtoint ptr %devices89.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %devices89.i, align 4
  %and90.i = and i32 %92, 34
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and90.i)
  %tobool91.not.i = icmp eq i32 %and90.i, 0
  br i1 %tobool91.not.i, label %if.else94.i, label %if.else88.i.if.end99.i_crit_edge

if.else88.i.if.end99.i_crit_edge:                 ; preds = %if.else88.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end99.i

if.else94.i:                                      ; preds = %if.else88.i
  call void @__sanitizer_cov_trace_pc() #12
  %call95.i = call i32 @atombios_get_encoder_mode(ptr noundef %encoder) #10
  %conv96.i = trunc i32 %call95.i to i8
  br label %if.end99.i

if.end99.i:                                       ; preds = %if.else94.i, %if.else88.i.if.end99.i_crit_edge, %if.else82.i, %if.then80.i, %if.then71.i.if.end99.i_crit_edge
  %.sink.i = phi i8 [ %conv84.i, %if.else82.i ], [ 15, %if.then80.i ], [ %conv96.i, %if.else94.i ], [ 1, %if.then71.i.if.end99.i_crit_edge ], [ 1, %if.else88.i.if.end99.i_crit_edge ]
  %93 = ptrtoint ptr %53 to i32
  call void @__asan_store1_noabort(i32 %93)
  store i8 %.sink.i, ptr %53, align 2
  %encoder_id100.i = getelementptr inbounds %struct.radeon_encoder, ptr %encoder, i32 0, i32 2
  %94 = ptrtoint ptr %encoder_id100.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %encoder_id100.i, align 4
  %96 = zext i32 %95 to i64
  call void @__sanitizer_cov_trace_switch(i64 %96, ptr @__sancov_gen_cov_switch_values.57)
  switch i32 %95, label %if.end99.i.sw.epilog155.i_crit_edge [
    i32 30, label %if.end99.i.sw.bb101.i_crit_edge
    i32 32, label %if.end99.i.sw.bb101.i_crit_edge114
    i32 33, label %if.end99.i.sw.bb101.i_crit_edge115
    i32 37, label %if.end99.i.sw.bb101.i_crit_edge116
    i32 31, label %if.end99.i.sw.bb101.i_crit_edge117
    i32 20, label %if.end99.i.sw.epilog155.sink.split.i_crit_edge
    i32 21, label %sw.bb118.i
    i32 22, label %sw.bb134.i
  ]

if.end99.i.sw.epilog155.sink.split.i_crit_edge:   ; preds = %if.end99.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog155.sink.split.i

if.end99.i.sw.bb101.i_crit_edge117:               ; preds = %if.end99.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb101.i

if.end99.i.sw.bb101.i_crit_edge116:               ; preds = %if.end99.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb101.i

if.end99.i.sw.bb101.i_crit_edge115:               ; preds = %if.end99.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb101.i

if.end99.i.sw.bb101.i_crit_edge114:               ; preds = %if.end99.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb101.i

if.end99.i.sw.bb101.i_crit_edge:                  ; preds = %if.end99.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb101.i

if.end99.i.sw.epilog155.i_crit_edge:              ; preds = %if.end99.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog155.i

sw.bb101.i:                                       ; preds = %if.end99.i.sw.bb101.i_crit_edge, %if.end99.i.sw.bb101.i_crit_edge114, %if.end99.i.sw.bb101.i_crit_edge115, %if.end99.i.sw.bb101.i_crit_edge116, %if.end99.i.sw.bb101.i_crit_edge117
  %enc_priv.i = getelementptr inbounds %struct.radeon_encoder, ptr %encoder, i32 0, i32 12
  %97 = ptrtoint ptr %enc_priv.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %enc_priv.i, align 4
  %dig_encoder.i = getelementptr inbounds %struct.radeon_encoder_atom_dig, ptr %98, i32 0, i32 2
  %99 = ptrtoint ptr %dig_encoder.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %dig_encoder.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %100)
  %101 = icmp ult i32 %100, 7
  br i1 %101, label %switch.lookup, label %sw.bb101.i.sw.epilog155.i_crit_edge

sw.bb101.i.sw.epilog155.i_crit_edge:              ; preds = %sw.bb101.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog155.i

sw.bb118.i:                                       ; preds = %if.end99.i
  %102 = ptrtoint ptr %active_device to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %active_device, align 4
  %and120.i = and i32 %103, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and120.i)
  %tobool121.not.i = icmp eq i32 %and120.i, 0
  br i1 %tobool121.not.i, label %if.else124.i, label %sw.bb118.i.sw.epilog155.sink.split.i_crit_edge

sw.bb118.i.sw.epilog155.sink.split.i_crit_edge:   ; preds = %sw.bb118.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog155.sink.split.i

if.else124.i:                                     ; preds = %sw.bb118.i
  call void @__sanitizer_cov_trace_pc() #12
  %and126.i = lshr i32 %103, 7
  %104 = trunc i32 %and126.i to i8
  %105 = and i8 %104, 2
  br label %sw.epilog155.sink.split.i

sw.bb134.i:                                       ; preds = %if.end99.i
  %106 = ptrtoint ptr %active_device to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %active_device, align 4
  %and136.i = and i32 %107, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and136.i)
  %tobool137.not.i = icmp eq i32 %and136.i, 0
  br i1 %tobool137.not.i, label %if.else140.i, label %sw.bb134.i.sw.epilog155.sink.split.i_crit_edge

sw.bb134.i.sw.epilog155.sink.split.i_crit_edge:   ; preds = %sw.bb134.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog155.sink.split.i

if.else140.i:                                     ; preds = %sw.bb134.i
  call void @__sanitizer_cov_trace_pc() #12
  %and142.i = and i32 %107, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and142.i)
  %tobool143.not.i = icmp eq i32 %and142.i, 0
  %.201.i = select i1 %tobool143.not.i, i8 4, i8 2
  br label %sw.epilog155.sink.split.i

sw.default152.i:                                  ; preds = %if.end.i103
  call void @__sanitizer_cov_trace_pc() #12
  %conv.i = zext i8 %60 to i32
  %108 = ptrtoint ptr %crev.i99 to i32
  call void @__asan_load1_noabort(i32 %108)
  %109 = load i8, ptr %crev.i99, align 1
  %conv154.i = zext i8 %109 to i32
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.13, i32 noundef %conv.i, i32 noundef %conv154.i) #10
  br label %atombios_set_encoder_crtc_source.exit

switch.lookup:                                    ; preds = %sw.bb101.i
  call void @__sanitizer_cov_trace_pc() #12
  %switch.gep = getelementptr inbounds [7 x i8], ptr @switch.table.radeon_atom_encoder_prepare, i32 0, i32 %100
  %110 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load1_noabort(i32 %110)
  %switch.load = load i8, ptr %switch.gep, align 1
  br label %sw.epilog155.sink.split.i

sw.epilog155.sink.split.i:                        ; preds = %switch.lookup, %if.else140.i, %sw.bb134.i.sw.epilog155.sink.split.i_crit_edge, %if.else124.i, %sw.bb118.i.sw.epilog155.sink.split.i_crit_edge, %if.end99.i.sw.epilog155.sink.split.i_crit_edge, %if.else53.i, %sw.bb47.i.sw.epilog155.sink.split.i_crit_edge, %if.else37.i, %sw.bb32.i.sw.epilog155.sink.split.i_crit_edge, %sw.bb30.i, %sw.bb24.i, %if.end21.i.sw.epilog155.sink.split.i_crit_edge, %if.end21.i.sw.epilog155.sink.split.i_crit_edge108
  %.sink197.i = phi i8 [ 7, %sw.bb30.i ], [ 3, %if.end21.i.sw.epilog155.sink.split.i_crit_edge ], [ 3, %if.end21.i.sw.epilog155.sink.split.i_crit_edge108 ], [ %..i, %sw.bb24.i ], [ 2, %sw.bb32.i.sw.epilog155.sink.split.i_crit_edge ], [ %82, %if.else37.i ], [ 2, %sw.bb47.i.sw.epilog155.sink.split.i_crit_edge ], [ %.199.i, %if.else53.i ], [ 7, %if.end99.i.sw.epilog155.sink.split.i_crit_edge ], [ 2, %sw.bb118.i.sw.epilog155.sink.split.i_crit_edge ], [ %105, %if.else124.i ], [ 2, %sw.bb134.i.sw.epilog155.sink.split.i_crit_edge ], [ %.201.i, %if.else140.i ], [ %switch.load, %switch.lookup ]
  %111 = ptrtoint ptr %52 to i32
  call void @__asan_store1_noabort(i32 %111)
  store i8 %.sink197.i, ptr %52, align 1
  br label %sw.epilog155.i

sw.epilog155.i:                                   ; preds = %sw.epilog155.sink.split.i, %sw.bb101.i.sw.epilog155.i_crit_edge, %if.end99.i.sw.epilog155.i_crit_edge, %if.end21.i.sw.epilog155.i_crit_edge
  %112 = ptrtoint ptr %mode_info.i101 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %mode_info.i101, align 4
  %call158.i = call i32 @atom_execute_table(ptr noundef %113, i32 noundef 42, ptr noundef nonnull %args.i97) #10
  %crtc_id159.i = getelementptr inbounds %struct.radeon_crtc, ptr %51, i32 0, i32 1
  %114 = ptrtoint ptr %crtc_id159.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %crtc_id159.i, align 8
  call void @radeon_atombios_encoder_crtc_scratch_regs(ptr noundef %encoder, i32 noundef %115) #10
  br label %atombios_set_encoder_crtc_source.exit

atombios_set_encoder_crtc_source.exit:            ; preds = %sw.epilog155.i, %sw.default152.i, %if.end41.atombios_set_encoder_crtc_source.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %crev.i99) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %frev.i98) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %args.i97) #10
  %family42 = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 6
  %116 = ptrtoint ptr %family42 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %family42, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 56, i32 %117)
  %cmp43 = icmp ugt i32 %117, 56
  br i1 %cmp43, label %if.then45, label %if.else46

if.then45:                                        ; preds = %atombios_set_encoder_crtc_source.exit
  call void @__sanitizer_cov_trace_pc() #12
  call void @dce8_program_fmt(ptr noundef %encoder) #10
  br label %if.end64

if.else46:                                        ; preds = %atombios_set_encoder_crtc_source.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 38, i32 %117)
  %cmp48 = icmp ugt i32 %117, 38
  br i1 %cmp48, label %if.then50, label %if.else51

if.then50:                                        ; preds = %if.else46
  call void @__sanitizer_cov_trace_pc() #12
  call void @dce4_program_fmt(ptr noundef %encoder) #10
  br label %if.end64

if.else51:                                        ; preds = %if.else46
  call void @__sanitizer_cov_trace_const_cmp4(i32 30, i32 %117)
  %cmp53 = icmp ugt i32 %117, 30
  br i1 %cmp53, label %if.then55, label %if.else56

if.then55:                                        ; preds = %if.else51
  call void @__sanitizer_cov_trace_pc() #12
  call void @dce3_program_fmt(ptr noundef %encoder) #10
  br label %if.end64

if.else56:                                        ; preds = %if.else51
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %117)
  %cmp58 = icmp ugt i32 %117, 17
  br i1 %cmp58, label %if.then60, label %if.else56.if.end64_crit_edge

if.else56.if.end64_crit_edge:                     ; preds = %if.else56
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end64

if.then60:                                        ; preds = %if.else56
  call void @__sanitizer_cov_trace_pc() #12
  call void @avivo_program_fmt(ptr noundef %encoder) #10
  br label %if.end64

if.end64:                                         ; preds = %if.then60, %if.else56.if.end64_crit_edge, %if.then55, %if.then50, %if.then45
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @radeon_atom_encoder_commit(ptr noundef %encoder) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @radeon_atom_encoder_dpms(ptr noundef %encoder, i32 noundef 0)
  tail call void @radeon_atom_output_lock(ptr noundef %encoder, i1 noundef zeroext false) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @radeon_atom_encoder_mode_set(ptr noundef %encoder, ptr nocapture noundef readnone %mode, ptr noundef %adjusted_mode) #0 align 64 {
entry:
  %args.i52 = alloca %struct._TV_ENCODER_CONTROL_PS_ALLOCATION, align 2
  %args.i = alloca %struct._TV_ENCODER_CONTROL_PS_ALLOCATION, align 2
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %encoder to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %encoder, align 4
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_private, align 4
  %call = tail call ptr @radeon_get_connector_for_encoder(ptr noundef %encoder) #10
  %4 = ptrtoint ptr %adjusted_mode to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %adjusted_mode, align 4
  %pixel_clock = getelementptr inbounds %struct.radeon_encoder, ptr %encoder, i32 0, i32 6
  %6 = ptrtoint ptr %pixel_clock to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %pixel_clock, align 4
  tail call void @radeon_atom_encoder_dpms(ptr noundef %encoder, i32 noundef 3)
  %family = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 6
  %7 = ptrtoint ptr %family to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %family, align 4
  %9 = add i32 %8, -39
  call void @__sanitizer_cov_trace_const_cmp4(i32 -21, i32 %9)
  %10 = icmp ult i32 %9, -21
  br i1 %10, label %entry.if.end5_crit_edge, label %if.then

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end5

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %active_device = getelementptr inbounds %struct.radeon_encoder, ptr %encoder, i32 0, i32 4
  %11 = ptrtoint ptr %active_device to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %active_device, align 4
  %and = and i32 %12, 260
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp ne i32 %and, 0
  tail call fastcc void @atombios_yuv_setup(ptr noundef %encoder, i1 noundef zeroext %tobool.not)
  br label %if.end5

if.end5:                                          ; preds = %if.then, %entry.if.end5_crit_edge
  %encoder_id = getelementptr inbounds %struct.radeon_encoder, ptr %encoder, i32 0, i32 2
  %13 = ptrtoint ptr %encoder_id to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %encoder_id, align 4
  %15 = zext i32 %14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.58)
  switch i32 %14, label %if.end5.sw.epilog_crit_edge [
    i32 2, label %if.end5.sw.bb_crit_edge
    i32 19, label %if.end5.sw.bb_crit_edge82
    i32 1, label %if.end5.sw.bb_crit_edge83
    i32 15, label %if.end5.sw.bb_crit_edge84
    i32 22, label %if.end5.sw.bb8_crit_edge
    i32 5, label %if.end5.sw.bb8_crit_edge85
    i32 21, label %if.end5.sw.bb8_crit_edge86
    i32 4, label %if.end5.sw.bb8_crit_edge87
    i32 20, label %if.end5.sw.bb7_crit_edge
    i32 25, label %if.end5.sw.bb7_crit_edge88
    i32 11, label %if.end5.sw.bb7_crit_edge89
  ]

if.end5.sw.bb7_crit_edge89:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb7

if.end5.sw.bb7_crit_edge88:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb7

if.end5.sw.bb7_crit_edge:                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb7

if.end5.sw.bb8_crit_edge87:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb8

if.end5.sw.bb8_crit_edge86:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb8

if.end5.sw.bb8_crit_edge85:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb8

if.end5.sw.bb8_crit_edge:                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb8

if.end5.sw.bb_crit_edge84:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

if.end5.sw.bb_crit_edge83:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

if.end5.sw.bb_crit_edge82:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

if.end5.sw.bb_crit_edge:                          ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

if.end5.sw.epilog_crit_edge:                      ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end5.sw.bb_crit_edge, %if.end5.sw.bb_crit_edge82, %if.end5.sw.bb_crit_edge83, %if.end5.sw.bb_crit_edge84
  tail call void @atombios_digital_setup(ptr noundef %encoder, i32 noundef 1)
  br label %sw.epilog

sw.bb7:                                           ; preds = %if.end5.sw.bb7_crit_edge, %if.end5.sw.bb7_crit_edge88, %if.end5.sw.bb7_crit_edge89
  tail call void @atombios_dvo_setup(ptr noundef %encoder, i32 noundef 1)
  br label %sw.epilog

sw.bb8:                                           ; preds = %if.end5.sw.bb8_crit_edge, %if.end5.sw.bb8_crit_edge85, %if.end5.sw.bb8_crit_edge86, %if.end5.sw.bb8_crit_edge87
  tail call fastcc void @atombios_dac_setup(ptr noundef %encoder, i32 noundef 1)
  %devices = getelementptr inbounds %struct.radeon_encoder, ptr %encoder, i32 0, i32 3
  %16 = ptrtoint ptr %devices to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %devices, align 4
  %and9 = and i32 %17, 260
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool10.not = icmp eq i32 %and9, 0
  br i1 %tobool10.not, label %sw.bb8.sw.epilog_crit_edge, label %if.then11

sw.bb8.sw.epilog_crit_edge:                       ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

if.then11:                                        ; preds = %sw.bb8
  %active_device12 = getelementptr inbounds %struct.radeon_encoder, ptr %encoder, i32 0, i32 4
  %18 = ptrtoint ptr %active_device12 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %active_device12, align 4
  %and13 = and i32 %19, 260
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %tobool14.not = icmp eq i32 %and13, 0
  %20 = ptrtoint ptr %encoder to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %encoder, align 4
  %dev_private.i53 = getelementptr inbounds %struct.drm_device, ptr %21, i32 0, i32 5
  %22 = ptrtoint ptr %dev_private.i53 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev_private.i53, align 4
  br i1 %tobool14.not, label %if.else16, label %if.then15

if.then15:                                        ; preds = %if.then11
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %args.i) #10
  %24 = getelementptr inbounds %struct._TV_ENCODER_CONTROL_PARAMETERS, ptr %args.i, i32 0, i32 2
  %enc_priv.i = getelementptr inbounds %struct.radeon_encoder, ptr %encoder, i32 0, i32 12
  %25 = ptrtoint ptr %enc_priv.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %enc_priv.i, align 4
  %27 = getelementptr inbounds i8, ptr %args.i, i32 2
  %28 = call ptr @memset(ptr %27, i32 0, i32 10)
  %29 = ptrtoint ptr %24 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 1, ptr %24, align 1
  %and.i = and i32 %19, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then15.atombios_tv_setup.exit_crit_edge

if.then15.atombios_tv_setup.exit_crit_edge:       ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #12
  br label %atombios_tv_setup.exit

if.else.i:                                        ; preds = %if.then15
  %30 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %26, align 4
  %switch.tableidx = add i32 %31, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %switch.tableidx)
  %32 = icmp ult i32 %switch.tableidx, 7
  br i1 %32, label %switch.lookup, label %if.else.i.atombios_tv_setup.exit_crit_edge

if.else.i.atombios_tv_setup.exit_crit_edge:       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %atombios_tv_setup.exit

switch.lookup:                                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  %switch.gep = getelementptr inbounds [7 x i8], ptr @switch.table.radeon_atom_encoder_mode_set, i32 0, i32 %switch.tableidx
  %33 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load1_noabort(i32 %33)
  %switch.load = load i8, ptr %switch.gep, align 1
  br label %atombios_tv_setup.exit

atombios_tv_setup.exit:                           ; preds = %switch.lookup, %if.else.i.atombios_tv_setup.exit_crit_edge, %if.then15.atombios_tv_setup.exit_crit_edge
  %.sink.i = phi i8 [ 16, %if.then15.atombios_tv_setup.exit_crit_edge ], [ 1, %if.else.i.atombios_tv_setup.exit_crit_edge ], [ %switch.load, %switch.lookup ]
  %34 = ptrtoint ptr %27 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %.sink.i, ptr %27, align 2
  %35 = ptrtoint ptr %pixel_clock to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %pixel_clock, align 4
  %div.i = udiv i32 %36, 10
  %conv28.i = trunc i32 %div.i to i16
  %37 = tail call i16 @llvm.bswap.i16(i16 %conv28.i) #10
  %38 = ptrtoint ptr %args.i to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 %37, ptr %args.i, align 2
  %mode_info.i = getelementptr inbounds %struct.radeon_device, ptr %23, i32 0, i32 44
  %39 = ptrtoint ptr %mode_info.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %mode_info.i, align 4
  %call.i = call i32 @atom_execute_table(ptr noundef %40, i32 noundef 29, ptr noundef nonnull %args.i) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %args.i) #10
  br label %sw.epilog

if.else16:                                        ; preds = %if.then11
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %args.i52) #10
  %enc_priv.i54 = getelementptr inbounds %struct.radeon_encoder, ptr %encoder, i32 0, i32 12
  %41 = ptrtoint ptr %enc_priv.i54 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %enc_priv.i54, align 4
  %43 = getelementptr inbounds i8, ptr %args.i52, i32 2
  %and.i56 = and i32 %19, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i56)
  %tobool.not.i57 = icmp eq i32 %and.i56, 0
  %44 = call ptr @memset(ptr %43, i32 0, i32 10)
  br i1 %tobool.not.i57, label %if.else.i58, label %if.else16.atombios_tv_setup.exit72_crit_edge

if.else16.atombios_tv_setup.exit72_crit_edge:     ; preds = %if.else16
  call void @__sanitizer_cov_trace_pc() #12
  br label %atombios_tv_setup.exit72

if.else.i58:                                      ; preds = %if.else16
  %45 = ptrtoint ptr %42 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %42, align 4
  %switch.tableidx79 = add i32 %46, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %switch.tableidx79)
  %47 = icmp ult i32 %switch.tableidx79, 7
  br i1 %47, label %switch.lookup78, label %if.else.i58.atombios_tv_setup.exit72_crit_edge

if.else.i58.atombios_tv_setup.exit72_crit_edge:   ; preds = %if.else.i58
  call void @__sanitizer_cov_trace_pc() #12
  br label %atombios_tv_setup.exit72

switch.lookup78:                                  ; preds = %if.else.i58
  call void @__sanitizer_cov_trace_pc() #12
  %switch.gep80 = getelementptr inbounds [7 x i8], ptr @switch.table.radeon_atom_encoder_mode_set.20, i32 0, i32 %switch.tableidx79
  %48 = ptrtoint ptr %switch.gep80 to i32
  call void @__asan_load1_noabort(i32 %48)
  %switch.load81 = load i8, ptr %switch.gep80, align 1
  br label %atombios_tv_setup.exit72

atombios_tv_setup.exit72:                         ; preds = %switch.lookup78, %if.else.i58.atombios_tv_setup.exit72_crit_edge, %if.else16.atombios_tv_setup.exit72_crit_edge
  %.sink.i66 = phi i8 [ 16, %if.else16.atombios_tv_setup.exit72_crit_edge ], [ 1, %if.else.i58.atombios_tv_setup.exit72_crit_edge ], [ %switch.load81, %switch.lookup78 ]
  %49 = ptrtoint ptr %43 to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 %.sink.i66, ptr %43, align 2
  %50 = ptrtoint ptr %pixel_clock to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %pixel_clock, align 4
  %div.i68 = udiv i32 %51, 10
  %conv28.i69 = trunc i32 %div.i68 to i16
  %52 = tail call i16 @llvm.bswap.i16(i16 %conv28.i69) #10
  %53 = ptrtoint ptr %args.i52 to i32
  call void @__asan_store2_noabort(i32 %53)
  store i16 %52, ptr %args.i52, align 2
  %mode_info.i70 = getelementptr inbounds %struct.radeon_device, ptr %23, i32 0, i32 44
  %54 = ptrtoint ptr %mode_info.i70 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %mode_info.i70, align 4
  %call.i71 = call i32 @atom_execute_table(ptr noundef %55, i32 noundef 29, ptr noundef nonnull %args.i52) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %args.i52) #10
  br label %sw.epilog

sw.epilog:                                        ; preds = %atombios_tv_setup.exit72, %atombios_tv_setup.exit, %sw.bb8.sw.epilog_crit_edge, %sw.bb7, %sw.bb, %if.end5.sw.epilog_crit_edge
  %56 = ptrtoint ptr %encoder to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %encoder, align 4
  %dev_private.i73 = getelementptr inbounds %struct.drm_device, ptr %57, i32 0, i32 5
  %58 = ptrtoint ptr %dev_private.i73 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %dev_private.i73, align 4
  %crtc.i = getelementptr inbounds %struct.drm_encoder, ptr %encoder, i32 0, i32 8
  %60 = ptrtoint ptr %crtc.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %crtc.i, align 4
  %pdev.i = getelementptr inbounds %struct.radeon_device, ptr %59, i32 0, i32 2
  %62 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %pdev.i, align 8
  %device.i = getelementptr inbounds %struct.pci_dev, ptr %63, i32 0, i32 8
  %64 = ptrtoint ptr %device.i to i32
  call void @__asan_load2_noabort(i32 %64)
  %65 = load i16, ptr %device.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 29125, i16 %65)
  %cmp.i = icmp eq i16 %65, 29125
  br i1 %cmp.i, label %land.lhs.true.i, label %sw.epilog.if.end18.i_crit_edge

sw.epilog.if.end18.i_crit_edge:                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end18.i

land.lhs.true.i:                                  ; preds = %sw.epilog
  %subsystem_vendor.i = getelementptr inbounds %struct.pci_dev, ptr %63, i32 0, i32 9
  %66 = ptrtoint ptr %subsystem_vendor.i to i32
  call void @__asan_load2_noabort(i32 %66)
  %67 = load i16, ptr %subsystem_vendor.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 4203, i16 %67)
  %cmp8.i = icmp eq i16 %67, 4203
  br i1 %cmp8.i, label %land.lhs.true10.i, label %land.lhs.true.i.if.end18.i_crit_edge

land.lhs.true.i.if.end18.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end18.i

land.lhs.true10.i:                                ; preds = %land.lhs.true.i
  %subsystem_device.i = getelementptr inbounds %struct.pci_dev, ptr %63, i32 0, i32 10
  %68 = ptrtoint ptr %subsystem_device.i to i32
  call void @__asan_load2_noabort(i32 %68)
  %69 = load i16, ptr %subsystem_device.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 128, i16 %69)
  %cmp13.i = icmp eq i16 %69, 128
  br i1 %cmp13.i, label %if.then.i, label %land.lhs.true10.i.if.end18.i_crit_edge

land.lhs.true10.i.if.end18.i_crit_edge:           ; preds = %land.lhs.true10.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end18.i

if.then.i:                                        ; preds = %land.lhs.true10.i
  %devices.i = getelementptr inbounds %struct.radeon_encoder, ptr %encoder, i32 0, i32 3
  %70 = ptrtoint ptr %devices.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %devices.i, align 4
  %and.i74 = and i32 %71, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i74)
  %tobool.not.i75 = icmp eq i32 %and.i74, 0
  br i1 %tobool.not.i75, label %if.then.i.if.end18.i_crit_edge, label %if.then15.i

if.then.i.if.end18.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end18.i

if.then15.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  %rmmio.i.i = getelementptr inbounds %struct.radeon_device, ptr %59, i32 0, i32 31
  %72 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %73, i32 31380
  %74 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #10, !srcloc !58
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !59
  %75 = and i32 %74, -16842753
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !63
  call void @arm_heavy_mb() #10
  %76 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i90.i = getelementptr i8, ptr %77, i32 31380
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i90.i, i32 %75) #10, !srcloc !60
  br label %if.end18.i

if.end18.i:                                       ; preds = %if.then15.i, %if.then.i.if.end18.i_crit_edge, %land.lhs.true10.i.if.end18.i_crit_edge, %land.lhs.true.i.if.end18.i_crit_edge, %sw.epilog.if.end18.i_crit_edge
  %family.i = getelementptr inbounds %struct.radeon_device, ptr %59, i32 0, i32 6
  %78 = ptrtoint ptr %family.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %family.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %79)
  %cmp19.i = icmp ugt i32 %79, 17
  br i1 %cmp19.i, label %land.lhs.true21.i, label %if.end18.i.atombios_apply_encoder_quirks.exit_crit_edge

if.end18.i.atombios_apply_encoder_quirks.exit_crit_edge: ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %atombios_apply_encoder_quirks.exit

land.lhs.true21.i:                                ; preds = %if.end18.i
  %active_device.i76 = getelementptr inbounds %struct.radeon_encoder, ptr %encoder, i32 0, i32 4
  %80 = ptrtoint ptr %active_device.i76 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %active_device.i76, align 4
  %and22.i = and i32 %81, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22.i)
  %tobool23.not.i = icmp eq i32 %and22.i, 0
  br i1 %tobool23.not.i, label %if.then24.i, label %land.lhs.true21.i.atombios_apply_encoder_quirks.exit_crit_edge

land.lhs.true21.i.atombios_apply_encoder_quirks.exit_crit_edge: ; preds = %land.lhs.true21.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %atombios_apply_encoder_quirks.exit

if.then24.i:                                      ; preds = %land.lhs.true21.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 56, i32 %79)
  %cmp26.i = icmp ugt i32 %79, 56
  br i1 %cmp26.i, label %if.then28.i, label %if.else35.i

if.then28.i:                                      ; preds = %if.then24.i
  %flags.i = getelementptr inbounds %struct.drm_display_mode, ptr %adjusted_mode, i32 0, i32 11
  %82 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %flags.i, align 4
  %and29.i = and i32 %83, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29.i)
  %tobool30.not.i = icmp eq i32 %and29.i, 0
  %crtc_offset32.i = getelementptr inbounds %struct.radeon_crtc, ptr %61, i32 0, i32 5
  %84 = ptrtoint ptr %crtc_offset32.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %crtc_offset32.i, align 8
  %add33.i = add i32 %85, 27392
  %rmmio_size.i95.i = getelementptr inbounds %struct.radeon_device, ptr %59, i32 0, i32 18
  %86 = ptrtoint ptr %rmmio_size.i95.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %rmmio_size.i95.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %87, i32 %add33.i)
  %cmp.i96.i = icmp ugt i32 %87, %add33.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %add33.i)
  %cmp1.i97.i = icmp ult i32 %add33.i, 65536
  %or.cond.i98.i = or i1 %cmp1.i97.i, %cmp.i96.i
  br i1 %tobool30.not.i, label %if.else.i77, label %if.then31.i

if.then31.i:                                      ; preds = %if.then28.i
  br i1 %or.cond.i98.i, label %do.body.i.i, label %if.else.i.i

do.body.i.i:                                      ; preds = %if.then31.i
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !63
  call void @arm_heavy_mb() #10
  %rmmio.i93.i = getelementptr inbounds %struct.radeon_device, ptr %59, i32 0, i32 31
  %88 = ptrtoint ptr %rmmio.i93.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %rmmio.i93.i, align 4
  %add.ptr.i94.i = getelementptr i8, ptr %89, i32 %add33.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i94.i, i32 134217728) #10, !srcloc !60
  br label %atombios_apply_encoder_quirks.exit

if.else.i.i:                                      ; preds = %if.then31.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @r100_mm_wreg_slow(ptr noundef %59, i32 noundef %add33.i, i32 noundef 8) #10
  br label %atombios_apply_encoder_quirks.exit

if.else.i77:                                      ; preds = %if.then28.i
  br i1 %or.cond.i98.i, label %do.body.i101.i, label %if.else.i102.i

do.body.i101.i:                                   ; preds = %if.else.i77
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !63
  call void @arm_heavy_mb() #10
  %rmmio.i99.i = getelementptr inbounds %struct.radeon_device, ptr %59, i32 0, i32 31
  %90 = ptrtoint ptr %rmmio.i99.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %rmmio.i99.i, align 4
  %add.ptr.i100.i = getelementptr i8, ptr %91, i32 %add33.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i100.i, i32 0) #10, !srcloc !60
  br label %atombios_apply_encoder_quirks.exit

if.else.i102.i:                                   ; preds = %if.else.i77
  call void @__sanitizer_cov_trace_pc() #12
  call void @r100_mm_wreg_slow(ptr noundef %59, i32 noundef %add33.i, i32 noundef 0) #10
  br label %atombios_apply_encoder_quirks.exit

if.else35.i:                                      ; preds = %if.then24.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 38, i32 %79)
  %cmp37.i = icmp ugt i32 %79, 38
  %flags40.i = getelementptr inbounds %struct.drm_display_mode, ptr %adjusted_mode, i32 0, i32 11
  %92 = ptrtoint ptr %flags40.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %flags40.i, align 4
  %and41.i = and i32 %93, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and41.i)
  %tobool42.not.i = icmp eq i32 %and41.i, 0
  %crtc_offset47.i = getelementptr inbounds %struct.radeon_crtc, ptr %61, i32 0, i32 5
  %94 = ptrtoint ptr %crtc_offset47.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %crtc_offset47.i, align 8
  br i1 %cmp37.i, label %if.then39.i, label %if.else50.i

if.then39.i:                                      ; preds = %if.else35.i
  %add48.i = add i32 %95, 27392
  %rmmio_size.i113.i = getelementptr inbounds %struct.radeon_device, ptr %59, i32 0, i32 18
  %96 = ptrtoint ptr %rmmio_size.i113.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %rmmio_size.i113.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %97, i32 %add48.i)
  %cmp.i114.i = icmp ugt i32 %97, %add48.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %add48.i)
  %cmp1.i115.i = icmp ult i32 %add48.i, 65536
  %or.cond.i116.i = or i1 %cmp1.i115.i, %cmp.i114.i
  br i1 %tobool42.not.i, label %if.else46.i, label %if.then43.i

if.then43.i:                                      ; preds = %if.then39.i
  br i1 %or.cond.i116.i, label %do.body.i110.i, label %if.else.i111.i

do.body.i110.i:                                   ; preds = %if.then43.i
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !63
  call void @arm_heavy_mb() #10
  %rmmio.i108.i = getelementptr inbounds %struct.radeon_device, ptr %59, i32 0, i32 31
  %98 = ptrtoint ptr %rmmio.i108.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %rmmio.i108.i, align 4
  %add.ptr.i109.i = getelementptr i8, ptr %99, i32 %add48.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i109.i, i32 16777216) #10, !srcloc !60
  br label %atombios_apply_encoder_quirks.exit

if.else.i111.i:                                   ; preds = %if.then43.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @r100_mm_wreg_slow(ptr noundef %59, i32 noundef %add48.i, i32 noundef 1) #10
  br label %atombios_apply_encoder_quirks.exit

if.else46.i:                                      ; preds = %if.then39.i
  br i1 %or.cond.i116.i, label %do.body.i119.i, label %if.else.i120.i

do.body.i119.i:                                   ; preds = %if.else46.i
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !63
  call void @arm_heavy_mb() #10
  %rmmio.i117.i = getelementptr inbounds %struct.radeon_device, ptr %59, i32 0, i32 31
  %100 = ptrtoint ptr %rmmio.i117.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %rmmio.i117.i, align 4
  %add.ptr.i118.i = getelementptr i8, ptr %101, i32 %add48.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i118.i, i32 0) #10, !srcloc !60
  br label %atombios_apply_encoder_quirks.exit

if.else.i120.i:                                   ; preds = %if.else46.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @r100_mm_wreg_slow(ptr noundef %59, i32 noundef %add48.i, i32 noundef 0) #10
  br label %atombios_apply_encoder_quirks.exit

if.else50.i:                                      ; preds = %if.else35.i
  %add59.i = add i32 %95, 25896
  %rmmio_size.i131.i = getelementptr inbounds %struct.radeon_device, ptr %59, i32 0, i32 18
  %102 = ptrtoint ptr %rmmio_size.i131.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %rmmio_size.i131.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %103, i32 %add59.i)
  %cmp.i132.i = icmp ugt i32 %103, %add59.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %add59.i)
  %cmp1.i133.i = icmp ult i32 %add59.i, 65536
  %or.cond.i134.i = or i1 %cmp1.i133.i, %cmp.i132.i
  br i1 %tobool42.not.i, label %if.else57.i, label %if.then54.i

if.then54.i:                                      ; preds = %if.else50.i
  br i1 %or.cond.i134.i, label %do.body.i128.i, label %if.else.i129.i

do.body.i128.i:                                   ; preds = %if.then54.i
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !63
  call void @arm_heavy_mb() #10
  %rmmio.i126.i = getelementptr inbounds %struct.radeon_device, ptr %59, i32 0, i32 31
  %104 = ptrtoint ptr %rmmio.i126.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %rmmio.i126.i, align 4
  %add.ptr.i127.i = getelementptr i8, ptr %105, i32 %add59.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i127.i, i32 16777216) #10, !srcloc !60
  br label %atombios_apply_encoder_quirks.exit

if.else.i129.i:                                   ; preds = %if.then54.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @r100_mm_wreg_slow(ptr noundef %59, i32 noundef %add59.i, i32 noundef 1) #10
  br label %atombios_apply_encoder_quirks.exit

if.else57.i:                                      ; preds = %if.else50.i
  br i1 %or.cond.i134.i, label %do.body.i137.i, label %if.else.i138.i

do.body.i137.i:                                   ; preds = %if.else57.i
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !63
  call void @arm_heavy_mb() #10
  %rmmio.i135.i = getelementptr inbounds %struct.radeon_device, ptr %59, i32 0, i32 31
  %106 = ptrtoint ptr %rmmio.i135.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %rmmio.i135.i, align 4
  %add.ptr.i136.i = getelementptr i8, ptr %107, i32 %add59.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i136.i, i32 0) #10, !srcloc !60
  br label %atombios_apply_encoder_quirks.exit

if.else.i138.i:                                   ; preds = %if.else57.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @r100_mm_wreg_slow(ptr noundef %59, i32 noundef %add59.i, i32 noundef 0) #10
  br label %atombios_apply_encoder_quirks.exit

atombios_apply_encoder_quirks.exit:               ; preds = %if.else.i138.i, %do.body.i137.i, %if.else.i129.i, %do.body.i128.i, %if.else.i120.i, %do.body.i119.i, %if.else.i111.i, %do.body.i110.i, %if.else.i102.i, %do.body.i101.i, %if.else.i.i, %do.body.i.i, %land.lhs.true21.i.atombios_apply_encoder_quirks.exit_crit_edge, %if.end18.i.atombios_apply_encoder_quirks.exit_crit_edge
  %call19 = call i32 @atombios_get_encoder_mode(ptr noundef %encoder)
  %tobool20.not = icmp eq ptr %call, null
  br i1 %tobool20.not, label %atombios_apply_encoder_quirks.exit.if.end29_crit_edge, label %land.lhs.true21

atombios_apply_encoder_quirks.exit.if.end29_crit_edge: ; preds = %atombios_apply_encoder_quirks.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end29

land.lhs.true21:                                  ; preds = %atombios_apply_encoder_quirks.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @radeon_audio to i32))
  %108 = load i32, ptr @radeon_audio, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %108)
  %cmp22.not = icmp eq i32 %108, 0
  br i1 %cmp22.not, label %land.lhs.true21.if.end29_crit_edge, label %land.lhs.true23

land.lhs.true21.if.end29_crit_edge:               ; preds = %land.lhs.true21
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end29

land.lhs.true23:                                  ; preds = %land.lhs.true21
  %109 = zext i32 %call19 to i64
  call void @__sanitizer_cov_trace_switch(i64 %109, ptr @__sancov_gen_cov_switch_values.59)
  switch i32 %call19, label %land.lhs.true23.if.end29_crit_edge [
    i32 3, label %land.lhs.true23.if.then28_crit_edge
    i32 0, label %land.lhs.true23.if.then28_crit_edge90
    i32 5, label %land.lhs.true23.if.then28_crit_edge91
  ]

land.lhs.true23.if.then28_crit_edge91:            ; preds = %land.lhs.true23
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then28

land.lhs.true23.if.then28_crit_edge90:            ; preds = %land.lhs.true23
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then28

land.lhs.true23.if.then28_crit_edge:              ; preds = %land.lhs.true23
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then28

land.lhs.true23.if.end29_crit_edge:               ; preds = %land.lhs.true23
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end29

if.then28:                                        ; preds = %land.lhs.true23.if.then28_crit_edge, %land.lhs.true23.if.then28_crit_edge90, %land.lhs.true23.if.then28_crit_edge91
  call void @radeon_audio_mode_set(ptr noundef %encoder, ptr noundef %adjusted_mode) #10
  br label %if.end29

if.end29:                                         ; preds = %if.then28, %land.lhs.true23.if.end29_crit_edge, %land.lhs.true21.if.end29_crit_edge, %atombios_apply_encoder_quirks.exit.if.end29_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @radeon_atom_dig_detect(ptr noundef %encoder, ptr nocapture noundef readonly %connector) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %encoder to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %encoder, align 4
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_private, align 4
  %call = tail call ptr @radeon_get_external_encoder(ptr noundef %encoder) #10
  %family = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %family to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %family, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 39, i32 %5)
  %cmp = icmp ult i32 %5, 39
  %tobool.not = icmp eq ptr %call, null
  %or.cond73 = select i1 %cmp, i1 true, i1 %tobool.not
  br i1 %or.cond73, label %entry.cleanup_crit_edge, label %if.end6

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end6:                                          ; preds = %entry
  %devices = getelementptr inbounds %struct.radeon_connector, ptr %connector, i32 0, i32 2
  %6 = ptrtoint ptr %devices to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %devices, align 4
  %and = and i32 %7, 17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp7 = icmp eq i32 %and, 0
  br i1 %cmp7, label %if.end6.cleanup_crit_edge, label %if.end9

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end9:                                          ; preds = %if.end6
  tail call fastcc void @atombios_external_encoder_setup(ptr noundef %encoder, ptr noundef nonnull %call, i32 noundef 18)
  %rmmio.i = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 31
  %8 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %9, i32 5924
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #10, !srcloc !58
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !59
  %11 = tail call i32 @llvm.bswap.i32(i32 %10) #10
  %devices11 = getelementptr inbounds %struct.radeon_encoder, ptr %encoder, i32 0, i32 3
  %12 = ptrtoint ptr %devices11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %devices11, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.17, i32 noundef %11, i32 noundef %13) #10
  %14 = ptrtoint ptr %devices to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %devices, align 4
  %and13 = and i32 %15, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %tobool14.not = icmp eq i32 %and13, 0
  %and16 = and i32 %11, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16)
  %tobool17.not = icmp eq i32 %and16, 0
  %or.cond = or i1 %tobool17.not, %tobool14.not
  br i1 %or.cond, label %if.end20, label %if.end9.cleanup_crit_edge

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end20:                                         ; preds = %if.end9
  %and22 = and i32 %15, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22)
  %tobool23.not = icmp eq i32 %and22, 0
  %and25 = and i32 %11, 768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25)
  %tobool26.not = icmp eq i32 %and25, 0
  %or.cond71 = or i1 %tobool26.not, %tobool23.not
  br i1 %or.cond71, label %if.end29, label %if.end20.cleanup_crit_edge

if.end20.cleanup_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end29:                                         ; preds = %if.end20
  %and31 = and i32 %15, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and31)
  %tobool32.not = icmp eq i32 %and31, 0
  %and34 = and i32 %11, 12336
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and34)
  %tobool35.not = icmp eq i32 %and34, 0
  %or.cond72 = or i1 %tobool35.not, %tobool32.not
  br i1 %or.cond72, label %if.end38, label %if.end29.cleanup_crit_edge

if.end29.cleanup_crit_edge:                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end38:                                         ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #12
  %and40 = and i32 %15, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and40)
  %tobool41.not = icmp eq i32 %and40, 0
  %16 = and i32 %11, 3084
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %17 = icmp eq i32 %16, 0
  %or.cond76 = or i1 %17, %tobool41.not
  %spec.select = select i1 %or.cond76, i32 2, i32 1
  br label %cleanup

cleanup:                                          ; preds = %if.end38, %if.end29.cleanup_crit_edge, %if.end20.cleanup_crit_edge, %if.end9.cleanup_crit_edge, %if.end6.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 3, %entry.cleanup_crit_edge ], [ 3, %if.end6.cleanup_crit_edge ], [ 1, %if.end9.cleanup_crit_edge ], [ 1, %if.end20.cleanup_crit_edge ], [ 1, %if.end29.cleanup_crit_edge ], [ %spec.select, %if.end38 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @radeon_atom_encoder_disable(ptr noundef %encoder) #0 align 64 {
entry:
  %args.i = alloca %struct._TV_ENCODER_CONTROL_PS_ALLOCATION, align 2
  call void @__sanitizer_cov_trace_pc() #12
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
  call void @__sanitizer_cov_trace_const_cmp4(i32 30, i32 %5)
  %cmp = icmp ugt i32 %5, 30
  br i1 %cmp, label %entry.if.end20_crit_edge, label %if.then

entry.if.end20_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end20

if.then:                                          ; preds = %entry
  %encoder_list = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 30, i32 16
  %6 = ptrtoint ptr %encoder_list to i32
  call void @__asan_load4_noabort(i32 %6)
  %.pn73 = load ptr, ptr %encoder_list, align 4
  %cmp7.not75 = icmp eq ptr %.pn73, %encoder_list
  br i1 %cmp7.not75, label %if.then.if.end20_crit_edge, label %for.body.lr.ph

if.then.if.end20_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end20

for.body.lr.ph:                                   ; preds = %if.then
  %encoder_id = getelementptr inbounds %struct.radeon_encoder, ptr %encoder, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %.pn76 = phi ptr [ %.pn73, %for.body.lr.ph ], [ %.pn, %for.inc.for.body_crit_edge ]
  %7 = ptrtoint ptr %encoder_id to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %encoder_id, align 4
  %encoder_id11 = getelementptr i8, ptr %.pn76, i32 72
  %9 = ptrtoint ptr %encoder_id11 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %encoder_id11, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %10)
  %cmp12 = icmp eq i32 %8, %10
  br i1 %cmp12, label %land.lhs.true, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %other_encoder.077 = getelementptr i8, ptr %.pn76, i32 -4
  %call = tail call zeroext i1 @drm_helper_encoder_in_use(ptr noundef %other_encoder.077) #10
  br i1 %call, label %land.lhs.true.disable_done_crit_edge, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

land.lhs.true.disable_done_crit_edge:             ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %disable_done

for.inc:                                          ; preds = %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %11 = ptrtoint ptr %.pn76 to i32
  call void @__asan_load4_noabort(i32 %11)
  %.pn = load ptr, ptr %.pn76, align 4
  %cmp7.not = icmp eq ptr %.pn, %encoder_list
  br i1 %cmp7.not, label %for.inc.if.end20_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.inc.if.end20_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end20

if.end20:                                         ; preds = %for.inc.if.end20_crit_edge, %if.then.if.end20_crit_edge, %entry.if.end20_crit_edge
  tail call void @radeon_atom_encoder_dpms(ptr noundef %encoder, i32 noundef 3)
  %encoder_id21 = getelementptr inbounds %struct.radeon_encoder, ptr %encoder, i32 0, i32 2
  %12 = ptrtoint ptr %encoder_id21 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %encoder_id21, align 4
  %14 = zext i32 %13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.60)
  switch i32 %13, label %if.end20.disable_done_crit_edge [
    i32 2, label %if.end20.sw.bb_crit_edge
    i32 19, label %if.end20.sw.bb_crit_edge78
    i32 1, label %if.end20.sw.bb_crit_edge79
    i32 15, label %if.end20.sw.bb_crit_edge80
    i32 22, label %if.end20.sw.bb24_crit_edge
    i32 5, label %if.end20.sw.bb24_crit_edge81
    i32 21, label %if.end20.sw.bb24_crit_edge82
    i32 4, label %if.end20.sw.bb24_crit_edge83
    i32 20, label %if.end20.sw.bb23_crit_edge
    i32 25, label %if.end20.sw.bb23_crit_edge84
    i32 11, label %if.end20.sw.bb23_crit_edge85
  ]

if.end20.sw.bb23_crit_edge85:                     ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb23

if.end20.sw.bb23_crit_edge84:                     ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb23

if.end20.sw.bb23_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb23

if.end20.sw.bb24_crit_edge83:                     ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb24

if.end20.sw.bb24_crit_edge82:                     ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb24

if.end20.sw.bb24_crit_edge81:                     ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb24

if.end20.sw.bb24_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb24

if.end20.sw.bb_crit_edge80:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

if.end20.sw.bb_crit_edge79:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

if.end20.sw.bb_crit_edge78:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

if.end20.sw.bb_crit_edge:                         ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

if.end20.disable_done_crit_edge:                  ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #12
  br label %disable_done

sw.bb:                                            ; preds = %if.end20.sw.bb_crit_edge, %if.end20.sw.bb_crit_edge78, %if.end20.sw.bb_crit_edge79, %if.end20.sw.bb_crit_edge80
  tail call void @atombios_digital_setup(ptr noundef %encoder, i32 noundef 0)
  br label %disable_done

sw.bb23:                                          ; preds = %if.end20.sw.bb23_crit_edge, %if.end20.sw.bb23_crit_edge84, %if.end20.sw.bb23_crit_edge85
  tail call void @atombios_dvo_setup(ptr noundef %encoder, i32 noundef 0)
  br label %disable_done

sw.bb24:                                          ; preds = %if.end20.sw.bb24_crit_edge, %if.end20.sw.bb24_crit_edge81, %if.end20.sw.bb24_crit_edge82, %if.end20.sw.bb24_crit_edge83
  tail call fastcc void @atombios_dac_setup(ptr noundef %encoder, i32 noundef 0)
  %devices = getelementptr inbounds %struct.radeon_encoder, ptr %encoder, i32 0, i32 3
  %15 = ptrtoint ptr %devices to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %devices, align 4
  %and = and i32 %16, 260
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %sw.bb24.disable_done_crit_edge, label %if.then25

sw.bb24.disable_done_crit_edge:                   ; preds = %sw.bb24
  call void @__sanitizer_cov_trace_pc() #12
  br label %disable_done

if.then25:                                        ; preds = %sw.bb24
  %17 = ptrtoint ptr %encoder to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %encoder, align 4
  %dev_private.i = getelementptr inbounds %struct.drm_device, ptr %18, i32 0, i32 5
  %19 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev_private.i, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %args.i) #10
  %enc_priv.i = getelementptr inbounds %struct.radeon_encoder, ptr %encoder, i32 0, i32 12
  %21 = ptrtoint ptr %enc_priv.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %enc_priv.i, align 4
  %23 = getelementptr inbounds i8, ptr %args.i, i32 2
  %active_device.i = getelementptr inbounds %struct.radeon_encoder, ptr %encoder, i32 0, i32 4
  %24 = call ptr @memset(ptr %23, i32 0, i32 10)
  %25 = ptrtoint ptr %active_device.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %active_device.i, align 4
  %and.i = and i32 %26, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then25.atombios_tv_setup.exit_crit_edge

if.then25.atombios_tv_setup.exit_crit_edge:       ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #12
  br label %atombios_tv_setup.exit

if.else.i:                                        ; preds = %if.then25
  %27 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %22, align 4
  %switch.tableidx = add i32 %28, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %switch.tableidx)
  %29 = icmp ult i32 %switch.tableidx, 7
  br i1 %29, label %switch.lookup, label %if.else.i.atombios_tv_setup.exit_crit_edge

if.else.i.atombios_tv_setup.exit_crit_edge:       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %atombios_tv_setup.exit

switch.lookup:                                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  %switch.gep = getelementptr inbounds [7 x i8], ptr @switch.table.radeon_atom_encoder_disable, i32 0, i32 %switch.tableidx
  %30 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load1_noabort(i32 %30)
  %switch.load = load i8, ptr %switch.gep, align 1
  br label %atombios_tv_setup.exit

atombios_tv_setup.exit:                           ; preds = %switch.lookup, %if.else.i.atombios_tv_setup.exit_crit_edge, %if.then25.atombios_tv_setup.exit_crit_edge
  %.sink.i = phi i8 [ 16, %if.then25.atombios_tv_setup.exit_crit_edge ], [ 1, %if.else.i.atombios_tv_setup.exit_crit_edge ], [ %switch.load, %switch.lookup ]
  %31 = ptrtoint ptr %23 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %.sink.i, ptr %23, align 2
  %pixel_clock.i = getelementptr inbounds %struct.radeon_encoder, ptr %encoder, i32 0, i32 6
  %32 = ptrtoint ptr %pixel_clock.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %pixel_clock.i, align 4
  %div.i = udiv i32 %33, 10
  %conv28.i = trunc i32 %div.i to i16
  %34 = tail call i16 @llvm.bswap.i16(i16 %conv28.i) #10
  %35 = ptrtoint ptr %args.i to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 %34, ptr %args.i, align 2
  %mode_info.i = getelementptr inbounds %struct.radeon_device, ptr %20, i32 0, i32 44
  %36 = ptrtoint ptr %mode_info.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %mode_info.i, align 4
  %call.i = call i32 @atom_execute_table(ptr noundef %37, i32 noundef 29, ptr noundef nonnull %args.i) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %args.i) #10
  br label %disable_done

disable_done:                                     ; preds = %atombios_tv_setup.exit, %sw.bb24.disable_done_crit_edge, %sw.bb23, %sw.bb, %if.end20.disable_done_crit_edge, %land.lhs.true.disable_done_crit_edge
  %call27 = call zeroext i1 @radeon_encoder_is_digital(ptr noundef %encoder) #10
  br i1 %call27, label %if.then28, label %disable_done.if.end45.sink.split_crit_edge

disable_done.if.end45.sink.split_crit_edge:       ; preds = %disable_done
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end45.sink.split

if.then28:                                        ; preds = %disable_done
  %call29 = call i32 @atombios_get_encoder_mode(ptr noundef %encoder)
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call29)
  %cmp30 = icmp eq i32 %call29, 3
  br i1 %cmp30, label %if.then31, label %if.then28.if.end38_crit_edge

if.then28.if.end38_crit_edge:                     ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end38

if.then31:                                        ; preds = %if.then28
  %asic = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 56
  %38 = ptrtoint ptr %asic to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %asic, align 8
  %hdmi_enable = getelementptr inbounds %struct.radeon_asic, ptr %39, i32 0, i32 16, i32 5
  %40 = ptrtoint ptr %hdmi_enable to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %hdmi_enable, align 4
  %tobool32.not = icmp eq ptr %41, null
  br i1 %tobool32.not, label %if.then31.if.end38_crit_edge, label %if.then33

if.then31.if.end38_crit_edge:                     ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end38

if.then33:                                        ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #12
  call void %41(ptr noundef %encoder, i1 noundef zeroext false) #10
  br label %if.end38

if.end38:                                         ; preds = %if.then33, %if.then31.if.end38_crit_edge, %if.then28.if.end38_crit_edge
  %call39 = call i32 @atombios_get_encoder_mode(ptr noundef %encoder)
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %call39)
  %cmp40.not = icmp eq i32 %call39, 5
  br i1 %cmp40.not, label %if.end38.if.end45_crit_edge, label %if.then41

if.end38.if.end45_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end45

if.then41:                                        ; preds = %if.end38
  %enc_priv = getelementptr inbounds %struct.radeon_encoder, ptr %encoder, i32 0, i32 12
  %42 = ptrtoint ptr %enc_priv to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %enc_priv, align 4
  %dig_encoder = getelementptr inbounds %struct.radeon_encoder_atom_dig, ptr %43, i32 0, i32 2
  %44 = ptrtoint ptr %dig_encoder to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %dig_encoder, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %cmp.i = icmp slt i32 %45, 0
  br i1 %cmp.i, label %if.then41.radeon_atom_release_dig_encoder.exit_crit_edge, label %if.end.i

if.then41.radeon_atom_release_dig_encoder.exit_crit_edge: ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #12
  br label %radeon_atom_release_dig_encoder.exit

if.end.i:                                         ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #12
  %shl.i = shl nuw i32 1, %45
  %neg.i = xor i32 %shl.i, -1
  %active_encoders.i = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 44, i32 21
  %46 = ptrtoint ptr %active_encoders.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %active_encoders.i, align 4
  %and.i70 = and i32 %47, %neg.i
  store i32 %and.i70, ptr %active_encoders.i, align 4
  br label %radeon_atom_release_dig_encoder.exit

radeon_atom_release_dig_encoder.exit:             ; preds = %if.end.i, %if.then41.radeon_atom_release_dig_encoder.exit_crit_edge
  %48 = ptrtoint ptr %dig_encoder to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 -1, ptr %dig_encoder, align 4
  br label %if.end45.sink.split

if.end45.sink.split:                              ; preds = %radeon_atom_release_dig_encoder.exit, %disable_done.if.end45.sink.split_crit_edge
  %active_device = getelementptr inbounds %struct.radeon_encoder, ptr %encoder, i32 0, i32 4
  %49 = ptrtoint ptr %active_device to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 0, ptr %active_device, align 4
  br label %if.end45

if.end45:                                         ; preds = %if.end45.sink.split, %if.end38.if.end45_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @radeon_audio_dpms(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @radeon_atom_encoder_dpms_avivo(ptr noundef %encoder, i32 noundef %mode) unnamed_addr #0 align 64 {
entry:
  %args = alloca %struct._DISPLAY_DEVICE_OUTPUT_CONTROL_PARAMETERS, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %encoder to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %encoder, align 4
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_private, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %args) #10
  %4 = ptrtoint ptr %args to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %args, align 4
  %encoder_id = getelementptr inbounds %struct.radeon_encoder, ptr %encoder, i32 0, i32 2
  %5 = ptrtoint ptr %encoder_id to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %encoder_id, align 4
  %7 = zext i32 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.61)
  switch i32 %6, label %entry.cleanup_crit_edge [
    i32 2, label %entry.sw.epilog_crit_edge
    i32 19, label %entry.sw.epilog_crit_edge105
    i32 11, label %entry.sw.bb2_crit_edge
    i32 25, label %entry.sw.bb2_crit_edge106
    i32 20, label %entry.sw.bb2_crit_edge107
    i32 1, label %sw.bb3
    i32 15, label %sw.bb4
    i32 4, label %entry.sw.bb5_crit_edge
    i32 21, label %entry.sw.bb5_crit_edge108
    i32 5, label %entry.sw.bb17_crit_edge
    i32 22, label %entry.sw.bb17_crit_edge109
  ]

entry.sw.bb17_crit_edge109:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb17

entry.sw.bb17_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb17

entry.sw.bb5_crit_edge108:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb5

entry.sw.bb5_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb5

entry.sw.bb2_crit_edge107:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb2

entry.sw.bb2_crit_edge106:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb2

entry.sw.bb2_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb2

entry.sw.epilog_crit_edge105:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.bb2:                                           ; preds = %entry.sw.bb2_crit_edge, %entry.sw.bb2_crit_edge106, %entry.sw.bb2_crit_edge107
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %devices = getelementptr inbounds %struct.radeon_encoder, ptr %encoder, i32 0, i32 3
  %8 = ptrtoint ptr %devices to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %devices, align 4
  %and = and i32 %9, 34
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %. = select i1 %tobool.not, i32 51, i32 23
  br label %sw.epilog

sw.bb5:                                           ; preds = %entry.sw.bb5_crit_edge, %entry.sw.bb5_crit_edge108
  %active_device = getelementptr inbounds %struct.radeon_encoder, ptr %encoder, i32 0, i32 4
  %10 = ptrtoint ptr %active_device to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %active_device, align 4
  %and6 = and i32 %11, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool7.not = icmp eq i32 %and6, 0
  br i1 %tobool7.not, label %if.else9, label %sw.bb5.sw.epilog_crit_edge

sw.bb5.sw.epilog_crit_edge:                       ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

if.else9:                                         ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #12
  %and11 = and i32 %11, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool12.not = icmp eq i32 %and11, 0
  %.97 = select i1 %tobool12.not, i32 68, i32 27
  br label %sw.epilog

sw.bb17:                                          ; preds = %entry.sw.bb17_crit_edge, %entry.sw.bb17_crit_edge109
  %active_device18 = getelementptr inbounds %struct.radeon_encoder, ptr %encoder, i32 0, i32 4
  %12 = ptrtoint ptr %active_device18 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %active_device18, align 4
  %and19 = and i32 %13, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19)
  %tobool20.not = icmp eq i32 %and19, 0
  br i1 %tobool20.not, label %if.else22, label %sw.bb17.sw.epilog_crit_edge

sw.bb17.sw.epilog_crit_edge:                      ; preds = %sw.bb17
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

if.else22:                                        ; preds = %sw.bb17
  call void @__sanitizer_cov_trace_pc() #12
  %and24 = and i32 %13, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24)
  %tobool25.not = icmp eq i32 %and24, 0
  %.98 = select i1 %tobool25.not, i32 69, i32 27
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.else22, %sw.bb17.sw.epilog_crit_edge, %if.else9, %sw.bb5.sw.epilog_crit_edge, %sw.bb4, %sw.bb3, %sw.bb2, %entry.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge105
  %index.0 = phi i32 [ 23, %sw.bb3 ], [ 26, %sw.bb2 ], [ 66, %entry.sw.epilog_crit_edge ], [ 66, %entry.sw.epilog_crit_edge105 ], [ %., %sw.bb4 ], [ 32, %sw.bb5.sw.epilog_crit_edge ], [ %.97, %if.else9 ], [ 32, %sw.bb17.sw.epilog_crit_edge ], [ %.98, %if.else22 ]
  %14 = zext i32 %mode to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.62)
  switch i32 %mode, label %sw.epilog.cleanup_crit_edge [
    i32 0, label %sw.bb30
    i32 1, label %sw.epilog.sw.bb54_crit_edge
    i32 2, label %sw.epilog.sw.bb54_crit_edge110
    i32 3, label %sw.epilog.sw.bb54_crit_edge111
  ]

sw.epilog.sw.bb54_crit_edge111:                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb54

sw.epilog.sw.bb54_crit_edge110:                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb54

sw.epilog.sw.bb54_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb54

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.bb30:                                          ; preds = %sw.epilog
  %15 = ptrtoint ptr %args to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 1, ptr %args, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 25, i32 %6)
  %cmp = icmp eq i32 %6, 25
  br i1 %cmp, label %if.then32, label %if.else35

if.then32:                                        ; preds = %sw.bb30
  call void @__sanitizer_cov_trace_pc() #12
  %rmmio.i = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 31
  %16 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %17, i32 28
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #10, !srcloc !58
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !59
  %19 = and i32 %18, -131073
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !63
  tail call void @arm_heavy_mb() #10
  %20 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i100 = getelementptr i8, ptr %21, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i100, i32 %19) #10, !srcloc !60
  %mode_info = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 44
  %22 = ptrtoint ptr %mode_info to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %mode_info, align 4
  %call34 = call i32 @atom_execute_table(ptr noundef %23, i32 noundef %index.0, ptr noundef nonnull %args) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !63
  call void @arm_heavy_mb() #10
  %24 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i104 = getelementptr i8, ptr %25, i32 28
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i104, i32 %18) #10, !srcloc !60
  br label %if.end39

if.else35:                                        ; preds = %sw.bb30
  call void @__sanitizer_cov_trace_pc() #12
  %mode_info36 = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 44
  %26 = ptrtoint ptr %mode_info36 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %mode_info36, align 4
  %call38 = call i32 @atom_execute_table(ptr noundef %27, i32 noundef %index.0, ptr noundef nonnull %args) #10
  br label %if.end39

if.end39:                                         ; preds = %if.else35, %if.then32
  %devices40 = getelementptr inbounds %struct.radeon_encoder, ptr %encoder, i32 0, i32 3
  %28 = ptrtoint ptr %devices40 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %devices40, align 4
  %and41 = and i32 %29, 34
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and41)
  %tobool42.not = icmp eq i32 %and41, 0
  br i1 %tobool42.not, label %if.end39.cleanup_crit_edge, label %if.then43

if.end39.cleanup_crit_edge:                       ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then43:                                        ; preds = %if.end39
  %bl_encoder = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 44, i32 20
  %30 = ptrtoint ptr %bl_encoder to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %bl_encoder, align 4
  %tobool45.not = icmp eq ptr %31, null
  br i1 %tobool45.not, label %if.else47, label %if.then46

if.then46:                                        ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #12
  %enc_priv = getelementptr inbounds %struct.radeon_encoder, ptr %encoder, i32 0, i32 12
  %32 = ptrtoint ptr %enc_priv to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %enc_priv, align 4
  %backlight_level = getelementptr inbounds %struct.radeon_encoder_atom_dig, ptr %33, i32 0, i32 9
  %34 = ptrtoint ptr %backlight_level to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %backlight_level, align 4
  call void @atombios_set_backlight_level(ptr noundef %encoder, i8 noundef zeroext %35)
  br label %cleanup

if.else47:                                        ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #12
  %mode_info44 = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 44
  %36 = ptrtoint ptr %args to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 3, ptr %args, align 4
  %37 = ptrtoint ptr %mode_info44 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %mode_info44, align 4
  %call51 = call i32 @atom_execute_table(ptr noundef %38, i32 noundef %index.0, ptr noundef nonnull %args) #10
  br label %cleanup

sw.bb54:                                          ; preds = %sw.epilog.sw.bb54_crit_edge, %sw.epilog.sw.bb54_crit_edge110, %sw.epilog.sw.bb54_crit_edge111
  %39 = ptrtoint ptr %args to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 0, ptr %args, align 4
  %mode_info56 = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 44
  %40 = ptrtoint ptr %mode_info56 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %mode_info56, align 4
  %call58 = call i32 @atom_execute_table(ptr noundef %41, i32 noundef %index.0, ptr noundef nonnull %args) #10
  %devices59 = getelementptr inbounds %struct.radeon_encoder, ptr %encoder, i32 0, i32 3
  %42 = ptrtoint ptr %devices59 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %devices59, align 4
  %and60 = and i32 %43, 34
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and60)
  %tobool61.not = icmp eq i32 %and60, 0
  br i1 %tobool61.not, label %sw.bb54.cleanup_crit_edge, label %if.then62

sw.bb54.cleanup_crit_edge:                        ; preds = %sw.bb54
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then62:                                        ; preds = %sw.bb54
  call void @__sanitizer_cov_trace_pc() #12
  %44 = ptrtoint ptr %args to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 2, ptr %args, align 4
  %45 = ptrtoint ptr %mode_info56 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %mode_info56, align 4
  %call66 = call i32 @atom_execute_table(ptr noundef %46, i32 noundef %index.0, ptr noundef nonnull %args) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then62, %sw.bb54.cleanup_crit_edge, %if.else47, %if.then46, %if.end39.cleanup_crit_edge, %sw.epilog.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %args) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @radeon_atom_encoder_dpms_dig(ptr noundef %encoder, i32 noundef %mode) unnamed_addr #0 align 64 {
entry:
  %args.i258 = alloca %union.dig_transmitter_control, align 2
  %frev.i259 = alloca i8, align 1
  %crev.i260 = alloca i8, align 1
  %args.i = alloca %union.dig_transmitter_control, align 2
  %frev.i = alloca i8, align 1
  %crev.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %encoder to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %encoder, align 4
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_private, align 4
  %call = tail call ptr @radeon_get_external_encoder(ptr noundef %encoder) #10
  %enc_priv = getelementptr inbounds %struct.radeon_encoder, ptr %encoder, i32 0, i32 12
  %4 = ptrtoint ptr %enc_priv to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %enc_priv, align 4
  %call2 = tail call ptr @radeon_get_connector_for_encoder(ptr noundef %encoder) #10
  %tobool.not = icmp eq ptr %call2, null
  br i1 %tobool.not, label %entry.if.end13_crit_edge, label %if.then

entry.if.end13_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end13

if.then:                                          ; preds = %entry
  %con_priv = getelementptr inbounds %struct.radeon_connector, ptr %call2, i32 0, i32 7
  %6 = ptrtoint ptr %con_priv to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %con_priv, align 4
  %call6 = tail call zeroext i16 @radeon_connector_encoder_get_dp_bridge_encoder_id(ptr noundef nonnull %call2) #10
  call void @__sanitizer_cov_trace_const_cmp2(i16 35, i16 %call6)
  %cmp = icmp eq i16 %call6, 35
  br i1 %cmp, label %land.lhs.true, label %if.then.if.end13_crit_edge

if.then.if.end13_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end13

land.lhs.true:                                    ; preds = %if.then
  %devices = getelementptr inbounds %struct.radeon_encoder, ptr %encoder, i32 0, i32 3
  %8 = ptrtoint ptr %devices to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %devices, align 4
  %and = and i32 %9, 34
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool8.not = icmp eq i32 %and, 0
  br i1 %tobool8.not, label %land.lhs.true.if.end13_crit_edge, label %land.lhs.true9

land.lhs.true.if.end13_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end13

land.lhs.true9:                                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  %family = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 6
  %10 = ptrtoint ptr %family to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %family, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 47, i32 %11)
  %cmp10 = icmp ult i32 %11, 47
  br label %if.end13

if.end13:                                         ; preds = %land.lhs.true9, %land.lhs.true.if.end13_crit_edge, %if.then.if.end13_crit_edge, %entry.if.end13_crit_edge
  %brmerge256 = phi i1 [ %cmp10, %land.lhs.true9 ], [ false, %if.then.if.end13_crit_edge ], [ false, %land.lhs.true.if.end13_crit_edge ], [ true, %entry.if.end13_crit_edge ]
  %radeon_dig_connector.0 = phi ptr [ %7, %land.lhs.true9 ], [ %7, %if.then.if.end13_crit_edge ], [ %7, %land.lhs.true.if.end13_crit_edge ], [ null, %entry.if.end13_crit_edge ]
  %travis_quirk.0.off0 = phi i1 [ %cmp10, %land.lhs.true9 ], [ false, %if.then.if.end13_crit_edge ], [ false, %land.lhs.true.if.end13_crit_edge ], [ false, %entry.if.end13_crit_edge ]
  %12 = zext i32 %mode to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.63)
  switch i32 %mode, label %if.end13.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %if.end13.sw.bb102_crit_edge
    i32 2, label %if.end13.sw.bb102_crit_edge277
    i32 3, label %if.end13.sw.bb102_crit_edge278
  ]

if.end13.sw.bb102_crit_edge278:                   ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb102

if.end13.sw.bb102_crit_edge277:                   ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb102

if.end13.sw.bb102_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb102

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.bb:                                            ; preds = %if.end13
  %family14 = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 6
  %13 = ptrtoint ptr %family14 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %family14, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 43, i32 %14)
  %cmp15 = icmp ugt i32 %14, 43
  br i1 %cmp15, label %land.lhs.true17, label %if.else50

land.lhs.true17:                                  ; preds = %sw.bb
  %flags = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 7
  %15 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %flags, align 8
  %and18 = and i32 %16, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18)
  %tobool19.not = icmp ne i32 %and18, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 46, i32 %14)
  %cmp21 = icmp ugt i32 %14, 46
  %or.cond = select i1 %tobool19.not, i1 true, i1 %cmp21
  br i1 %or.cond, label %if.then23, label %land.lhs.true17.if.then54_crit_edge

land.lhs.true17.if.then54_crit_edge:              ; preds = %land.lhs.true17
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then54

if.then23:                                        ; preds = %land.lhs.true17
  br i1 %tobool.not, label %if.then23.if.end28_crit_edge, label %if.else

if.then23.if.end28_crit_edge:                     ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end28

if.else:                                          ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #12
  %call26 = tail call i32 @radeon_dp_get_panel_mode(ptr noundef %encoder, ptr noundef nonnull %call2) #10
  br label %if.end28

if.end28:                                         ; preds = %if.else, %if.then23.if.end28_crit_edge
  %call26.sink = phi i32 [ %call26, %if.else ], [ 0, %if.then23.if.end28_crit_edge ]
  %17 = getelementptr inbounds %struct.radeon_encoder_atom_dig, ptr %5, i32 0, i32 10
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %call26.sink, ptr %17, align 4
  tail call void @atombios_dig_encoder_setup2(ptr noundef %encoder, i32 noundef 15, i32 noundef 0, i32 noundef -1) #10
  %19 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %17, align 4
  tail call void @atombios_dig_encoder_setup2(ptr noundef %encoder, i32 noundef 16, i32 noundef %20, i32 noundef -1) #10
  %tobool30.not = icmp eq ptr %call, null
  br i1 %tobool30.not, label %if.end28.if.end57_crit_edge, label %if.then31

if.end28.if.end57_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end57

if.then31:                                        ; preds = %if.end28
  %21 = ptrtoint ptr %family14 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %family14, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 43, i32 %22)
  %cmp33 = icmp ugt i32 %22, 43
  br i1 %cmp33, label %land.lhs.true35, label %if.then31.if.end57_crit_edge

if.then31.if.end57_crit_edge:                     ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end57

land.lhs.true35:                                  ; preds = %if.then31
  %23 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %flags, align 8
  %and37 = and i32 %24, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and37)
  %tobool38.not = icmp eq i32 %and37, 0
  br i1 %tobool38.not, label %lor.lhs.false39, label %land.lhs.true35.if.then47_crit_edge

land.lhs.true35.if.then47_crit_edge:              ; preds = %land.lhs.true35
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then47

lor.lhs.false39:                                  ; preds = %land.lhs.true35
  call void @__sanitizer_cov_trace_const_cmp4(i32 50, i32 %22)
  %cmp41 = icmp ugt i32 %22, 50
  br i1 %cmp41, label %land.lhs.true43, label %lor.lhs.false39.if.end57_crit_edge

lor.lhs.false39.if.end57_crit_edge:               ; preds = %lor.lhs.false39
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end57

land.lhs.true43:                                  ; preds = %lor.lhs.false39
  %25 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %flags, align 8
  %and45 = and i32 %26, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and45)
  %tobool46.not = icmp eq i32 %and45, 0
  br i1 %tobool46.not, label %land.lhs.true43.if.end57_crit_edge, label %land.lhs.true43.if.then47_crit_edge

land.lhs.true43.if.then47_crit_edge:              ; preds = %land.lhs.true43
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then47

land.lhs.true43.if.end57_crit_edge:               ; preds = %land.lhs.true43
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end57

if.then47:                                        ; preds = %land.lhs.true43.if.then47_crit_edge, %land.lhs.true35.if.then47_crit_edge
  tail call fastcc void @atombios_external_encoder_setup(ptr noundef %encoder, ptr noundef nonnull %call, i32 noundef 15)
  br label %if.end57

if.else50:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_const_cmp4(i32 38, i32 %14)
  %cmp52 = icmp ugt i32 %14, 38
  br i1 %cmp52, label %if.else50.if.then54_crit_edge, label %if.else55

if.else50.if.then54_crit_edge:                    ; preds = %if.else50
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then54

if.then54:                                        ; preds = %if.else50.if.then54_crit_edge, %land.lhs.true17.if.then54_crit_edge
  tail call void @atombios_dig_encoder_setup2(ptr noundef %encoder, i32 noundef 15, i32 noundef 0, i32 noundef -1) #10
  br label %if.end57

if.else55:                                        ; preds = %if.else50
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @atombios_dig_encoder_setup2(ptr noundef %encoder, i32 noundef 1, i32 noundef 0, i32 noundef -1) #10
  tail call void @atombios_dig_transmitter_setup2(ptr noundef %encoder, i32 noundef 10, i8 noundef zeroext 0, i8 noundef zeroext 0, i32 noundef -1) #10
  br label %if.end57

if.end57:                                         ; preds = %if.else55, %if.then54, %if.then47, %land.lhs.true43.if.end57_crit_edge, %lor.lhs.false39.if.end57_crit_edge, %if.then31.if.end57_crit_edge, %if.end28.if.end57_crit_edge
  %call58 = tail call i32 @atombios_get_encoder_mode(ptr noundef %encoder)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %cmp59 = icmp eq i32 %call58, 0
  br i1 %cmp59, label %land.lhs.true65, label %lor.lhs.false61

lor.lhs.false61:                                  ; preds = %if.end57
  %call62 = tail call i32 @atombios_get_encoder_mode(ptr noundef %encoder)
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %call62)
  %cmp63 = icmp ne i32 %call62, 5
  %brmerge = select i1 %cmp63, i1 true, i1 %tobool.not
  br i1 %brmerge, label %lor.lhs.false61.if.end73_crit_edge, label %lor.lhs.false61.if.then67_crit_edge

lor.lhs.false61.if.then67_crit_edge:              ; preds = %lor.lhs.false61
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then67

lor.lhs.false61.if.end73_crit_edge:               ; preds = %lor.lhs.false61
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end73

land.lhs.true65:                                  ; preds = %if.end57
  br i1 %tobool.not, label %land.lhs.true65.if.end73_crit_edge, label %land.lhs.true65.if.then67_crit_edge

land.lhs.true65.if.then67_crit_edge:              ; preds = %land.lhs.true65
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then67

land.lhs.true65.if.end73_crit_edge:               ; preds = %land.lhs.true65
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end73

if.then67:                                        ; preds = %land.lhs.true65.if.then67_crit_edge, %lor.lhs.false61.if.then67_crit_edge
  %connector_type = getelementptr inbounds %struct.drm_connector, ptr %call2, i32 0, i32 10
  %27 = ptrtoint ptr %connector_type to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %connector_type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %28)
  %cmp68 = icmp eq i32 %28, 14
  br i1 %cmp68, label %if.end.i, label %if.then67.if.end73_crit_edge

if.then67.if.end73_crit_edge:                     ; preds = %if.then67
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end73

if.end.i:                                         ; preds = %if.then67
  %29 = ptrtoint ptr %call2 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %call2, align 8
  %dev_private.i = getelementptr inbounds %struct.drm_device, ptr %30, i32 0, i32 5
  %31 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dev_private.i, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %args.i) #10
  %33 = getelementptr inbounds %struct._DIG_TRANSMITTER_CONTROL_PARAMETERS_V1_5, ptr %args.i, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %frev.i) #10
  %34 = ptrtoint ptr %frev.i to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 -1, ptr %frev.i, align 1, !annotation !62
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %crev.i) #10
  %35 = ptrtoint ptr %crev.i to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 -1, ptr %crev.i, align 1, !annotation !62
  %family.i = getelementptr inbounds %struct.radeon_device, ptr %32, i32 0, i32 6
  %36 = ptrtoint ptr %family.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %family.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 38, i32 %37)
  %cmp2.i = icmp ugt i32 %37, 38
  br i1 %cmp2.i, label %if.end8.i, label %if.end.i.atombios_set_edp_panel_power.exit_crit_edge

if.end.i.atombios_set_edp_panel_power.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %atombios_set_edp_panel_power.exit

if.end8.i:                                        ; preds = %if.end.i
  %mode_info.i = getelementptr inbounds %struct.radeon_device, ptr %32, i32 0, i32 44
  %38 = ptrtoint ptr %mode_info.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %mode_info.i, align 4
  %call.i = call zeroext i1 @atom_parse_cmd_header(ptr noundef %39, i32 noundef 76, ptr noundef nonnull %frev.i, ptr noundef nonnull %crev.i) #10
  br i1 %call.i, label %if.end10.i, label %if.end8.i.atombios_set_edp_panel_power.exit_crit_edge

if.end8.i.atombios_set_edp_panel_power.exit_crit_edge: ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %atombios_set_edp_panel_power.exit

if.end10.i:                                       ; preds = %if.end8.i
  %40 = call ptr @memset(ptr %args.i, i32 0, i32 12)
  %41 = ptrtoint ptr %33 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 12, ptr %33, align 1
  %42 = ptrtoint ptr %mode_info.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %mode_info.i, align 4
  %call13.i = call i32 @atom_execute_table(ptr noundef %43, i32 noundef 76, ptr noundef nonnull %args.i) #10
  %asic.i = getelementptr inbounds %struct.radeon_device, ptr %32, i32 0, i32 56
  %hpd19.i = getelementptr inbounds %struct.radeon_connector, ptr %call2, i32 0, i32 12
  br label %for.body.i

for.body.i:                                       ; preds = %if.end23.i.for.body.i_crit_edge, %if.end10.i
  %i.043.i = phi i32 [ 0, %if.end10.i ], [ %inc.i, %if.end23.i.for.body.i_crit_edge ]
  %44 = ptrtoint ptr %asic.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %asic.i, align 8
  %sense.i = getelementptr inbounds %struct.radeon_asic, ptr %45, i32 0, i32 19, i32 2
  %46 = ptrtoint ptr %sense.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %sense.i, align 4
  %48 = ptrtoint ptr %hpd19.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %hpd19.i, align 8
  %call21.i = call zeroext i1 %47(ptr noundef %32, i32 noundef %49) #10
  br i1 %call21.i, label %for.body.i.atombios_set_edp_panel_power.exit_crit_edge, label %if.end23.i

for.body.i.atombios_set_edp_panel_power.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %atombios_set_edp_panel_power.exit

if.end23.i:                                       ; preds = %for.body.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %50 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %50(i32 noundef 214748000) #10
  %inc.i = add nuw nsw i32 %i.043.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 300
  br i1 %exitcond.not.i, label %if.end23.i.atombios_set_edp_panel_power.exit_crit_edge, label %if.end23.i.for.body.i_crit_edge

if.end23.i.for.body.i_crit_edge:                  ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

if.end23.i.atombios_set_edp_panel_power.exit_crit_edge: ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %atombios_set_edp_panel_power.exit

atombios_set_edp_panel_power.exit:                ; preds = %if.end23.i.atombios_set_edp_panel_power.exit_crit_edge, %for.body.i.atombios_set_edp_panel_power.exit_crit_edge, %if.end8.i.atombios_set_edp_panel_power.exit_crit_edge, %if.end.i.atombios_set_edp_panel_power.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %crev.i) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %frev.i) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %args.i) #10
  %edp_on = getelementptr inbounds %struct.radeon_connector_atom_dig, ptr %radeon_dig_connector.0, i32 0, i32 5
  %51 = ptrtoint ptr %edp_on to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 1, ptr %edp_on, align 4
  br label %if.end73

if.end73:                                         ; preds = %atombios_set_edp_panel_power.exit, %if.then67.if.end73_crit_edge, %land.lhs.true65.if.end73_crit_edge, %lor.lhs.false61.if.end73_crit_edge
  call void @atombios_dig_transmitter_setup2(ptr noundef %encoder, i32 noundef 1, i8 noundef zeroext 0, i8 noundef zeroext 0, i32 noundef -1) #10
  %call74 = call i32 @atombios_get_encoder_mode(ptr noundef %encoder)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call74)
  %cmp75 = icmp eq i32 %call74, 0
  br i1 %cmp75, label %land.lhs.true81, label %lor.lhs.false77

lor.lhs.false77:                                  ; preds = %if.end73
  %call78 = call i32 @atombios_get_encoder_mode(ptr noundef %encoder)
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %call78)
  %cmp79 = icmp ne i32 %call78, 5
  %brmerge252 = select i1 %cmp79, i1 true, i1 %tobool.not
  br i1 %brmerge252, label %lor.lhs.false77.if.end89_crit_edge, label %lor.lhs.false77.if.then83_crit_edge

lor.lhs.false77.if.then83_crit_edge:              ; preds = %lor.lhs.false77
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then83

lor.lhs.false77.if.end89_crit_edge:               ; preds = %lor.lhs.false77
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end89

land.lhs.true81:                                  ; preds = %if.end73
  br i1 %tobool.not, label %land.lhs.true81.if.end89_crit_edge, label %land.lhs.true81.if.then83_crit_edge

land.lhs.true81.if.then83_crit_edge:              ; preds = %land.lhs.true81
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then83

land.lhs.true81.if.end89_crit_edge:               ; preds = %land.lhs.true81
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end89

if.then83:                                        ; preds = %land.lhs.true81.if.then83_crit_edge, %lor.lhs.false77.if.then83_crit_edge
  call void @radeon_dp_link_train(ptr noundef %encoder, ptr noundef nonnull %call2) #10
  %52 = ptrtoint ptr %family14 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %family14, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 38, i32 %53)
  %cmp85 = icmp ugt i32 %53, 38
  br i1 %cmp85, label %if.then87, label %if.then83.if.end89_crit_edge

if.then83.if.end89_crit_edge:                     ; preds = %if.then83
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end89

if.then87:                                        ; preds = %if.then83
  call void @__sanitizer_cov_trace_pc() #12
  call void @atombios_dig_encoder_setup2(ptr noundef %encoder, i32 noundef 13, i32 noundef 0, i32 noundef -1) #10
  br label %if.end89

if.end89:                                         ; preds = %if.then87, %if.then83.if.end89_crit_edge, %land.lhs.true81.if.end89_crit_edge, %lor.lhs.false77.if.end89_crit_edge
  %devices90 = getelementptr inbounds %struct.radeon_encoder, ptr %encoder, i32 0, i32 3
  %54 = ptrtoint ptr %devices90 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %devices90, align 4
  %and91 = and i32 %55, 34
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and91)
  %tobool92.not = icmp eq i32 %and91, 0
  br i1 %tobool92.not, label %if.end89.if.end98_crit_edge, label %if.then93

if.end89.if.end98_crit_edge:                      ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end98

if.then93:                                        ; preds = %if.end89
  %bl_encoder = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 44, i32 20
  %56 = ptrtoint ptr %bl_encoder to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %bl_encoder, align 4
  %tobool94.not = icmp eq ptr %57, null
  br i1 %tobool94.not, label %if.else96, label %if.then95

if.then95:                                        ; preds = %if.then93
  call void @__sanitizer_cov_trace_pc() #12
  %backlight_level = getelementptr inbounds %struct.radeon_encoder_atom_dig, ptr %5, i32 0, i32 9
  %58 = ptrtoint ptr %backlight_level to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %backlight_level, align 4
  call void @atombios_set_backlight_level(ptr noundef %encoder, i8 noundef zeroext %59)
  br label %if.end98

if.else96:                                        ; preds = %if.then93
  call void @__sanitizer_cov_trace_pc() #12
  call void @atombios_dig_transmitter_setup2(ptr noundef %encoder, i32 noundef 3, i8 noundef zeroext 0, i8 noundef zeroext 0, i32 noundef -1) #10
  br label %if.end98

if.end98:                                         ; preds = %if.else96, %if.then95, %if.end89.if.end98_crit_edge
  %tobool99.not = icmp eq ptr %call, null
  br i1 %tobool99.not, label %if.end98.cleanup_crit_edge, label %if.then100

if.end98.cleanup_crit_edge:                       ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then100:                                       ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @atombios_external_encoder_setup(ptr noundef %encoder, ptr noundef nonnull %call, i32 noundef 1)
  br label %cleanup

sw.bb102:                                         ; preds = %if.end13.sw.bb102_crit_edge, %if.end13.sw.bb102_crit_edge277, %if.end13.sw.bb102_crit_edge278
  %active_mst_links = getelementptr inbounds %struct.radeon_encoder_atom_dig, ptr %5, i32 0, i32 13
  %60 = ptrtoint ptr %active_mst_links to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %active_mst_links, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %61)
  %tobool103.not = icmp eq i32 %61, 0
  br i1 %tobool103.not, label %if.end105, label %sw.bb102.cleanup_crit_edge

sw.bb102.cleanup_crit_edge:                       ; preds = %sw.bb102
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end105:                                        ; preds = %sw.bb102
  %family106 = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 6
  %62 = ptrtoint ptr %family106 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %family106, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 38, i32 %63)
  %cmp107 = icmp ugt i32 %63, 38
  br i1 %cmp107, label %if.then109, label %if.end105.if.end121_crit_edge

if.end105.if.end121_crit_edge:                    ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end121

if.then109:                                       ; preds = %if.end105
  %call110 = tail call i32 @atombios_get_encoder_mode(ptr noundef %encoder)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call110)
  %cmp111 = icmp eq i32 %call110, 0
  br i1 %cmp111, label %land.lhs.true117, label %lor.lhs.false113

lor.lhs.false113:                                 ; preds = %if.then109
  %call114 = tail call i32 @atombios_get_encoder_mode(ptr noundef %encoder)
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %call114)
  %cmp115 = icmp ne i32 %call114, 5
  %brmerge253 = select i1 %cmp115, i1 true, i1 %tobool.not
  br i1 %brmerge253, label %lor.lhs.false113.if.end121_crit_edge, label %lor.lhs.false113.if.then119_crit_edge

lor.lhs.false113.if.then119_crit_edge:            ; preds = %lor.lhs.false113
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then119

lor.lhs.false113.if.end121_crit_edge:             ; preds = %lor.lhs.false113
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end121

land.lhs.true117:                                 ; preds = %if.then109
  br i1 %tobool.not, label %land.lhs.true117.if.end121_crit_edge, label %land.lhs.true117.if.then119_crit_edge

land.lhs.true117.if.then119_crit_edge:            ; preds = %land.lhs.true117
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then119

land.lhs.true117.if.end121_crit_edge:             ; preds = %land.lhs.true117
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end121

if.then119:                                       ; preds = %land.lhs.true117.if.then119_crit_edge, %lor.lhs.false113.if.then119_crit_edge
  tail call void @atombios_dig_encoder_setup2(ptr noundef %encoder, i32 noundef 12, i32 noundef 0, i32 noundef -1) #10
  br label %if.end121

if.end121:                                        ; preds = %if.then119, %land.lhs.true117.if.end121_crit_edge, %lor.lhs.false113.if.end121_crit_edge, %if.end105.if.end121_crit_edge
  %tobool122.not = icmp eq ptr %call, null
  br i1 %tobool122.not, label %if.end121.if.end124_crit_edge, label %if.then123

if.end121.if.end124_crit_edge:                    ; preds = %if.end121
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end124

if.then123:                                       ; preds = %if.end121
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @atombios_external_encoder_setup(ptr noundef %encoder, ptr noundef nonnull %call, i32 noundef 0)
  br label %if.end124

if.end124:                                        ; preds = %if.then123, %if.end121.if.end124_crit_edge
  %devices125 = getelementptr inbounds %struct.radeon_encoder, ptr %encoder, i32 0, i32 3
  %64 = ptrtoint ptr %devices125 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %devices125, align 4
  %and126 = and i32 %65, 34
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and126)
  %tobool127.not = icmp eq i32 %and126, 0
  br i1 %tobool127.not, label %if.end124.if.end129_crit_edge, label %if.then128

if.end124.if.end129_crit_edge:                    ; preds = %if.end124
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end129

if.then128:                                       ; preds = %if.end124
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @atombios_dig_transmitter_setup2(ptr noundef %encoder, i32 noundef 2, i8 noundef zeroext 0, i8 noundef zeroext 0, i32 noundef -1) #10
  br label %if.end129

if.end129:                                        ; preds = %if.then128, %if.end124.if.end129_crit_edge
  %call130 = tail call i32 @atombios_get_encoder_mode(ptr noundef %encoder)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call130)
  %cmp131 = icmp eq i32 %call130, 0
  br i1 %cmp131, label %land.lhs.true137, label %lor.lhs.false133

lor.lhs.false133:                                 ; preds = %if.end129
  %call134 = tail call i32 @atombios_get_encoder_mode(ptr noundef %encoder)
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %call134)
  %cmp135 = icmp ne i32 %call134, 5
  %brmerge254 = select i1 %cmp135, i1 true, i1 %tobool.not
  %brmerge255 = select i1 %brmerge254, i1 true, i1 %travis_quirk.0.off0
  br i1 %brmerge255, label %lor.lhs.false133.if.end142_crit_edge, label %lor.lhs.false133.if.then141_crit_edge

lor.lhs.false133.if.then141_crit_edge:            ; preds = %lor.lhs.false133
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then141

lor.lhs.false133.if.end142_crit_edge:             ; preds = %lor.lhs.false133
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end142

land.lhs.true137:                                 ; preds = %if.end129
  br i1 %brmerge256, label %land.lhs.true137.if.end142_crit_edge, label %land.lhs.true137.if.then141_crit_edge

land.lhs.true137.if.then141_crit_edge:            ; preds = %land.lhs.true137
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then141

land.lhs.true137.if.end142_crit_edge:             ; preds = %land.lhs.true137
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end142

if.then141:                                       ; preds = %land.lhs.true137.if.then141_crit_edge, %lor.lhs.false133.if.then141_crit_edge
  tail call void @radeon_dp_set_rx_power_state(ptr noundef nonnull %call2, i8 noundef zeroext 2) #10
  br label %if.end142

if.end142:                                        ; preds = %if.then141, %land.lhs.true137.if.end142_crit_edge, %lor.lhs.false133.if.end142_crit_edge
  %66 = ptrtoint ptr %family106 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %family106, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 38, i32 %67)
  %cmp144 = icmp ugt i32 %67, 38
  tail call void @atombios_dig_transmitter_setup2(ptr noundef %encoder, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i32 noundef -1) #10
  br i1 %cmp144, label %if.end142.if.end148_crit_edge, label %if.else147

if.end142.if.end148_crit_edge:                    ; preds = %if.end142
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end148

if.else147:                                       ; preds = %if.end142
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @atombios_dig_encoder_setup2(ptr noundef %encoder, i32 noundef 0, i32 noundef 0, i32 noundef -1) #10
  br label %if.end148

if.end148:                                        ; preds = %if.else147, %if.end142.if.end148_crit_edge
  %call149 = tail call i32 @atombios_get_encoder_mode(ptr noundef %encoder)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call149)
  %cmp150 = icmp eq i32 %call149, 0
  br i1 %cmp150, label %land.lhs.true156, label %lor.lhs.false152

lor.lhs.false152:                                 ; preds = %if.end148
  %call153 = tail call i32 @atombios_get_encoder_mode(ptr noundef %encoder)
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %call153)
  %cmp154 = icmp ne i32 %call153, 5
  %brmerge257 = select i1 %cmp154, i1 true, i1 %tobool.not
  br i1 %brmerge257, label %lor.lhs.false152.cleanup_crit_edge, label %lor.lhs.false152.if.then158_crit_edge

lor.lhs.false152.if.then158_crit_edge:            ; preds = %lor.lhs.false152
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then158

lor.lhs.false152.cleanup_crit_edge:               ; preds = %lor.lhs.false152
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

land.lhs.true156:                                 ; preds = %if.end148
  br i1 %tobool.not, label %land.lhs.true156.cleanup_crit_edge, label %land.lhs.true156.if.then158_crit_edge

land.lhs.true156.if.then158_crit_edge:            ; preds = %land.lhs.true156
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then158

land.lhs.true156.cleanup_crit_edge:               ; preds = %land.lhs.true156
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then158:                                       ; preds = %land.lhs.true156.if.then158_crit_edge, %lor.lhs.false152.if.then158_crit_edge
  br i1 %travis_quirk.0.off0, label %if.then160, label %if.then158.if.end161_crit_edge

if.then158.if.end161_crit_edge:                   ; preds = %if.then158
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end161

if.then160:                                       ; preds = %if.then158
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @radeon_dp_set_rx_power_state(ptr noundef nonnull %call2, i8 noundef zeroext 2) #10
  br label %if.end161

if.end161:                                        ; preds = %if.then160, %if.then158.if.end161_crit_edge
  %connector_type162 = getelementptr inbounds %struct.drm_connector, ptr %call2, i32 0, i32 10
  %68 = ptrtoint ptr %connector_type162 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %connector_type162, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %69)
  %cmp163 = icmp eq i32 %69, 14
  br i1 %cmp163, label %if.end.i266, label %if.end161.cleanup_crit_edge

if.end161.cleanup_crit_edge:                      ; preds = %if.end161
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.i266:                                      ; preds = %if.end161
  %70 = ptrtoint ptr %call2 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %call2, align 8
  %dev_private.i261 = getelementptr inbounds %struct.drm_device, ptr %71, i32 0, i32 5
  %72 = ptrtoint ptr %dev_private.i261 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %dev_private.i261, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %args.i258) #10
  %74 = getelementptr inbounds %struct._DIG_TRANSMITTER_CONTROL_PARAMETERS_V1_5, ptr %args.i258, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %frev.i259) #10
  %75 = ptrtoint ptr %frev.i259 to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 -1, ptr %frev.i259, align 1, !annotation !62
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %crev.i260) #10
  %76 = ptrtoint ptr %crev.i260 to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 -1, ptr %crev.i260, align 1, !annotation !62
  %family.i264 = getelementptr inbounds %struct.radeon_device, ptr %73, i32 0, i32 6
  %77 = ptrtoint ptr %family.i264 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %family.i264, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 38, i32 %78)
  %cmp2.i265 = icmp ugt i32 %78, 38
  br i1 %cmp2.i265, label %if.end8.i269, label %if.end.i266.atombios_set_edp_panel_power.exit273_crit_edge

if.end.i266.atombios_set_edp_panel_power.exit273_crit_edge: ; preds = %if.end.i266
  call void @__sanitizer_cov_trace_pc() #12
  br label %atombios_set_edp_panel_power.exit273

if.end8.i269:                                     ; preds = %if.end.i266
  %mode_info.i267 = getelementptr inbounds %struct.radeon_device, ptr %73, i32 0, i32 44
  %79 = ptrtoint ptr %mode_info.i267 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %mode_info.i267, align 4
  %call.i268 = call zeroext i1 @atom_parse_cmd_header(ptr noundef %80, i32 noundef 76, ptr noundef nonnull %frev.i259, ptr noundef nonnull %crev.i260) #10
  br i1 %call.i268, label %if.end10.i271, label %if.end8.i269.atombios_set_edp_panel_power.exit273_crit_edge

if.end8.i269.atombios_set_edp_panel_power.exit273_crit_edge: ; preds = %if.end8.i269
  call void @__sanitizer_cov_trace_pc() #12
  br label %atombios_set_edp_panel_power.exit273

if.end10.i271:                                    ; preds = %if.end8.i269
  call void @__sanitizer_cov_trace_pc() #12
  %81 = call ptr @memset(ptr %args.i258, i32 0, i32 12)
  %82 = ptrtoint ptr %74 to i32
  call void @__asan_store1_noabort(i32 %82)
  store i8 13, ptr %74, align 1
  %83 = ptrtoint ptr %mode_info.i267 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %mode_info.i267, align 4
  %call13.i270 = call i32 @atom_execute_table(ptr noundef %84, i32 noundef 76, ptr noundef nonnull %args.i258) #10
  br label %atombios_set_edp_panel_power.exit273

atombios_set_edp_panel_power.exit273:             ; preds = %if.end10.i271, %if.end8.i269.atombios_set_edp_panel_power.exit273_crit_edge, %if.end.i266.atombios_set_edp_panel_power.exit273_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %crev.i260) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %frev.i259) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %args.i258) #10
  %edp_on167 = getelementptr inbounds %struct.radeon_connector_atom_dig, ptr %radeon_dig_connector.0, i32 0, i32 5
  %85 = ptrtoint ptr %edp_on167 to i32
  call void @__asan_store1_noabort(i32 %85)
  store i8 0, ptr %edp_on167, align 4
  br label %cleanup

cleanup:                                          ; preds = %atombios_set_edp_panel_power.exit273, %if.end161.cleanup_crit_edge, %land.lhs.true156.cleanup_crit_edge, %lor.lhs.false152.cleanup_crit_edge, %sw.bb102.cleanup_crit_edge, %if.then100, %if.end98.cleanup_crit_edge, %if.end13.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @atombios_dac_setup(ptr nocapture noundef readonly %encoder, i32 noundef %action) unnamed_addr #0 align 64 {
entry:
  %args = alloca %struct._DAC_ENCODER_CONTROL_PARAMETERS, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %encoder to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %encoder, align 4
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_private, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %args) #10
  %4 = getelementptr inbounds %struct._DAC_ENCODER_CONTROL_PARAMETERS, ptr %args, i32 0, i32 2
  %enc_priv = getelementptr inbounds %struct.radeon_encoder, ptr %encoder, i32 0, i32 12
  %5 = ptrtoint ptr %enc_priv to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %enc_priv, align 4
  %7 = ptrtoint ptr %args to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %args, align 4
  %encoder_id = getelementptr inbounds %struct.radeon_encoder, ptr %encoder, i32 0, i32 2
  %8 = ptrtoint ptr %encoder_id to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %encoder_id, align 4
  %10 = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.64)
  switch i32 %9, label %entry.sw.epilog_crit_edge [
    i32 4, label %entry.sw.bb_crit_edge
    i32 21, label %entry.sw.bb_crit_edge21
    i32 5, label %entry.sw.bb2_crit_edge
    i32 22, label %entry.sw.bb2_crit_edge22
  ]

entry.sw.bb2_crit_edge22:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb2

entry.sw.bb2_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb2

entry.sw.bb_crit_edge21:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge21
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry.sw.bb2_crit_edge, %entry.sw.bb2_crit_edge22
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb2, %sw.bb, %entry.sw.epilog_crit_edge
  %index.0 = phi i32 [ 0, %entry.sw.epilog_crit_edge ], [ 25, %sw.bb2 ], [ 24, %sw.bb ]
  %conv = trunc i32 %action to i8
  %11 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv, ptr %4, align 1
  %active_device = getelementptr inbounds %struct.radeon_encoder, ptr %encoder, i32 0, i32 4
  %12 = ptrtoint ptr %active_device to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %active_device, align 4
  %and = and i32 %13, 17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %sw.epilog.if.end14_crit_edge

sw.epilog.if.end14_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end14

if.else:                                          ; preds = %sw.epilog
  %and4 = and i32 %13, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool5.not = icmp eq i32 %and4, 0
  br i1 %tobool5.not, label %if.else8, label %if.else.if.end14_crit_edge

if.else.if.end14_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end14

if.else8:                                         ; preds = %if.else
  %14 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %6, align 4
  %switch.tableidx = add i32 %15, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %switch.tableidx)
  %16 = icmp ult i32 %switch.tableidx, 7
  br i1 %16, label %switch.lookup, label %if.else8.if.end14_crit_edge

if.else8.if.end14_crit_edge:                      ; preds = %if.else8
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end14

switch.lookup:                                    ; preds = %if.else8
  call void @__sanitizer_cov_trace_pc() #12
  %switch.gep = getelementptr inbounds [7 x i8], ptr @switch.table.atombios_dac_setup, i32 0, i32 %switch.tableidx
  %17 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load1_noabort(i32 %17)
  %switch.load = load i8, ptr %switch.gep, align 1
  br label %if.end14

if.end14:                                         ; preds = %switch.lookup, %if.else8.if.end14_crit_edge, %if.else.if.end14_crit_edge, %sw.epilog.if.end14_crit_edge
  %.sink = phi i8 [ 1, %sw.epilog.if.end14_crit_edge ], [ 2, %if.else.if.end14_crit_edge ], [ %switch.load, %switch.lookup ], [ 3, %if.else8.if.end14_crit_edge ]
  %18 = getelementptr inbounds %struct._DAC_ENCODER_CONTROL_PARAMETERS, ptr %args, i32 0, i32 1
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %.sink, ptr %18, align 2
  %pixel_clock = getelementptr inbounds %struct.radeon_encoder, ptr %encoder, i32 0, i32 6
  %20 = ptrtoint ptr %pixel_clock to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %pixel_clock, align 4
  %div = udiv i32 %21, 10
  %conv15 = trunc i32 %div to i16
  %22 = tail call i16 @llvm.bswap.i16(i16 %conv15)
  %23 = ptrtoint ptr %args to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 %22, ptr %args, align 4
  %mode_info = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 44
  %24 = ptrtoint ptr %mode_info to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %mode_info, align 4
  %call = call i32 @atom_execute_table(ptr noundef %25, i32 noundef %index.0, ptr noundef nonnull %args) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %args) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @radeon_atombios_encoder_dpms_scratch_regs(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @radeon_connector_encoder_get_dp_bridge_encoder_id(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @radeon_dp_get_panel_mode(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @radeon_dp_link_train(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @radeon_dp_set_rx_power_state(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @radeon_encoder_set_active_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_mode_set_crtcinfo(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @radeon_panel_mode_fixup(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @radeon_atom_get_tv_timings(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @radeon_dp_set_link_config(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @radeon_atom_output_lock(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @radeon_router_select_cd_port(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dce8_program_fmt(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dce4_program_fmt(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dce3_program_fmt(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @avivo_program_fmt(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @radeon_atombios_encoder_crtc_scratch_regs(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @atombios_yuv_setup(ptr nocapture noundef readonly %encoder, i1 noundef zeroext %enable) unnamed_addr #0 align 64 {
entry:
  %args = alloca %struct._ENABLE_YUV_PARAMETERS, align 4
  call void @__sanitizer_cov_trace_pc() #12
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
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %args) #10
  %6 = ptrtoint ptr %args to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %args, align 4
  %family = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 6
  %7 = ptrtoint ptr %family to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %family, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 26, i32 %8)
  %cmp = icmp ugt i32 %8, 26
  %. = select i1 %cmp, i32 5936, i32 28
  %rmmio.i = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 31
  %9 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %10, i32 %.
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #10, !srcloc !58
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !59
  %active_device = getelementptr inbounds %struct.radeon_encoder, ptr %encoder, i32 0, i32 4
  %12 = ptrtoint ptr %active_device to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %active_device, align 4
  %and = and i32 %13, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else6, label %if.then5

if.then5:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %crtc_id = getelementptr inbounds %struct.radeon_crtc, ptr %5, i32 0, i32 1
  %14 = ptrtoint ptr %crtc_id to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %crtc_id, align 8
  %shl = shl i32 %15, 18
  %or = or i32 %shl, 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !63
  tail call void @arm_heavy_mb() #10
  %16 = tail call i32 @llvm.bswap.i32(i32 %or) #10
  %17 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i38 = getelementptr i8, ptr %18, i32 %.
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i38, i32 %16) #10, !srcloc !60
  br label %if.end16

if.else6:                                         ; preds = %entry
  %and8 = and i32 %13, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool9.not = icmp eq i32 %and8, 0
  br i1 %tobool9.not, label %if.else14, label %if.then10

if.then10:                                        ; preds = %if.else6
  call void @__sanitizer_cov_trace_pc() #12
  %crtc_id11 = getelementptr inbounds %struct.radeon_crtc, ptr %5, i32 0, i32 1
  %19 = ptrtoint ptr %crtc_id11 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %crtc_id11, align 8
  %shl12 = shl i32 %20, 24
  %or13 = or i32 %shl12, 256
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !63
  tail call void @arm_heavy_mb() #10
  %21 = tail call i32 @llvm.bswap.i32(i32 %or13) #10
  %22 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i42 = getelementptr i8, ptr %23, i32 %.
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i42, i32 %21) #10, !srcloc !60
  br label %if.end16

if.else14:                                        ; preds = %if.else6
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !63
  tail call void @arm_heavy_mb() #10
  %24 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i46 = getelementptr i8, ptr %25, i32 %.
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i46, i32 0) #10, !srcloc !60
  br label %if.end16

if.end16:                                         ; preds = %if.else14, %if.then10, %if.then5
  br i1 %enable, label %if.then18, label %if.end16.if.end19_crit_edge

if.end16.if.end19_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end19

if.then18:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  %26 = ptrtoint ptr %args to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 1, ptr %args, align 4
  br label %if.end19

if.end19:                                         ; preds = %if.then18, %if.end16.if.end19_crit_edge
  %27 = getelementptr inbounds %struct._ENABLE_YUV_PARAMETERS, ptr %args, i32 0, i32 1
  %crtc_id20 = getelementptr inbounds %struct.radeon_crtc, ptr %5, i32 0, i32 1
  %28 = ptrtoint ptr %crtc_id20 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %crtc_id20, align 8
  %conv = trunc i32 %29 to i8
  %30 = ptrtoint ptr %27 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %conv, ptr %27, align 1
  %mode_info = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 44
  %31 = ptrtoint ptr %mode_info to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %mode_info, align 4
  %call21 = call i32 @atom_execute_table(ptr noundef %32, i32 noundef 73, ptr noundef nonnull %args) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !63
  call void @arm_heavy_mb() #10
  %33 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i50 = getelementptr i8, ptr %34, i32 %.
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i50, i32 %11) #10, !srcloc !60
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %args) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @radeon_audio_mode_set(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @drm_helper_encoder_in_use(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @radeon_atombios_get_tv_info(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @radeon_atom_dac_detect(ptr nocapture noundef readonly %encoder, ptr nocapture noundef readonly %connector) #0 align 64 {
entry:
  %args.i = alloca %struct._DAC_LOAD_DETECTION_PS_ALLOCATION, align 2
  %frev.i = alloca i8, align 1
  %crev.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %encoder to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %encoder, align 4
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_private, align 4
  %devices.i = getelementptr inbounds %struct.radeon_encoder, ptr %encoder, i32 0, i32 3
  %4 = ptrtoint ptr %devices.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %devices.i, align 4
  %and.i = and i32 %5, 277
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.if.then_crit_edge, label %if.then.i

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

if.then.i:                                        ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %args.i) #10
  %6 = getelementptr inbounds %struct._DAC_LOAD_DETECTION_PARAMETERS, ptr %args.i, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %frev.i) #10
  %7 = ptrtoint ptr %frev.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 -1, ptr %frev.i, align 1, !annotation !62
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %crev.i) #10
  %8 = ptrtoint ptr %crev.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 -1, ptr %crev.i, align 1, !annotation !62
  %9 = call ptr @memset(ptr %args.i, i32 0, i32 12)
  %mode_info.i = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 44
  %10 = ptrtoint ptr %mode_info.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mode_info.i, align 4
  %call.i = call zeroext i1 @atom_parse_cmd_header(ptr noundef %11, i32 noundef 21, ptr noundef nonnull %frev.i, ptr noundef nonnull %crev.i) #10
  br i1 %call.i, label %if.end.i, label %atombios_dac_load_detect.exit

if.end.i:                                         ; preds = %if.then.i
  %12 = getelementptr inbounds %struct._DAC_LOAD_DETECTION_PARAMETERS, ptr %args.i, i32 0, i32 1
  %13 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %6, align 1
  %encoder_id.i = getelementptr inbounds %struct.radeon_encoder, ptr %encoder, i32 0, i32 2
  %14 = ptrtoint ptr %encoder_id.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %encoder_id.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %15)
  %switch.selectcmp.case1.i = icmp ne i32 %15, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 21, i32 %15)
  %switch.selectcmp.case2.i = icmp ne i32 %15, 21
  %not.switch.selectcmp.i = and i1 %switch.selectcmp.case1.i, %switch.selectcmp.case2.i
  %16 = zext i1 %not.switch.selectcmp.i to i8
  %17 = ptrtoint ptr %12 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %16, ptr %12, align 2
  %devices13.i = getelementptr inbounds %struct.radeon_connector, ptr %connector, i32 0, i32 2
  %18 = ptrtoint ptr %devices13.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %devices13.i, align 4
  %and14.i = and i32 %19, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14.i)
  %tobool15.not.i = icmp eq i32 %and14.i, 0
  br i1 %tobool15.not.i, label %if.else18.i, label %if.then16.i

if.then16.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %20 = ptrtoint ptr %args.i to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 256, ptr %args.i, align 2
  br label %if.end

if.else18.i:                                      ; preds = %if.end.i
  %and20.i = and i32 %19, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20.i)
  %tobool21.not.i = icmp eq i32 %and20.i, 0
  br i1 %tobool21.not.i, label %if.else25.i, label %if.then22.i

if.then22.i:                                      ; preds = %if.else18.i
  call void @__sanitizer_cov_trace_pc() #12
  %21 = ptrtoint ptr %args.i to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 4096, ptr %args.i, align 2
  br label %if.end

if.else25.i:                                      ; preds = %if.else18.i
  %and27.i = and i32 %19, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27.i)
  %tobool28.not.i = icmp eq i32 %and27.i, 0
  br i1 %tobool28.not.i, label %if.else38.i, label %if.then29.i

if.then29.i:                                      ; preds = %if.else25.i
  %22 = ptrtoint ptr %args.i to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 1, ptr %args.i, align 2
  %23 = ptrtoint ptr %crev.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %crev.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %24)
  %cmp32.i = icmp ugt i8 %24, 2
  br i1 %cmp32.i, label %if.then34.i, label %if.then29.i.if.end_crit_edge

if.then29.i.if.end_crit_edge:                     ; preds = %if.then29.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then34.i:                                      ; preds = %if.then29.i
  call void @__sanitizer_cov_trace_pc() #12
  %25 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 1, ptr %6, align 1
  br label %if.end

if.else38.i:                                      ; preds = %if.else25.i
  %and40.i = and i32 %19, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and40.i)
  %tobool41.not.i = icmp eq i32 %and40.i, 0
  br i1 %tobool41.not.i, label %if.else38.i.if.end_crit_edge, label %if.then42.i

if.else38.i.if.end_crit_edge:                     ; preds = %if.else38.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then42.i:                                      ; preds = %if.else38.i
  %26 = ptrtoint ptr %args.i to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 1024, ptr %args.i, align 2
  %27 = ptrtoint ptr %crev.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %crev.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %28)
  %cmp46.i = icmp ugt i8 %28, 2
  br i1 %cmp46.i, label %if.then48.i, label %if.then42.i.if.end_crit_edge

if.then42.i.if.end_crit_edge:                     ; preds = %if.then42.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then48.i:                                      ; preds = %if.then42.i
  call void @__sanitizer_cov_trace_pc() #12
  %29 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 1, ptr %6, align 1
  br label %if.end

atombios_dac_load_detect.exit:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %crev.i) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %frev.i) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %args.i) #10
  br label %if.then

if.then:                                          ; preds = %atombios_dac_load_detect.exit, %entry.if.then_crit_edge
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.18) #10
  br label %cleanup

if.end:                                           ; preds = %if.then48.i, %if.then42.i.if.end_crit_edge, %if.else38.i.if.end_crit_edge, %if.then34.i, %if.then29.i.if.end_crit_edge, %if.then22.i, %if.then16.i
  %30 = ptrtoint ptr %mode_info.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %mode_info.i, align 4
  %call58.i = call i32 @atom_execute_table(ptr noundef %31, i32 noundef 21, ptr noundef nonnull %args.i) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %crev.i) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %frev.i) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %args.i) #10
  %family = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 6
  %32 = ptrtoint ptr %family to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %family, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 26, i32 %33)
  %cmp = icmp ugt i32 %33, 26
  %rmmio.i = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 31
  %34 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %rmmio.i, align 4
  br i1 %cmp, label %if.then5, label %if.else

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i = getelementptr i8, ptr %35, i32 5924
  %36 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #10, !srcloc !58
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !59
  br label %if.end8

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i69 = getelementptr i8, ptr %35, i32 16
  %37 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i69) #10, !srcloc !58
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !59
  br label %if.end8

if.end8:                                          ; preds = %if.else, %if.then5
  %.sink = phi i32 [ %37, %if.else ], [ %36, %if.then5 ]
  %38 = call i32 @llvm.bswap.i32(i32 %.sink) #10
  %39 = ptrtoint ptr %devices.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %devices.i, align 4
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.17, i32 noundef %38, i32 noundef %40) #10
  %41 = ptrtoint ptr %devices13.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %devices13.i, align 4
  %and = and i32 %42, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %and11 = and i32 %38, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool12.not = icmp eq i32 %and11, 0
  %or.cond = or i1 %tobool12.not, %tobool.not
  br i1 %or.cond, label %if.end15, label %if.end8.cleanup_crit_edge

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end15:                                         ; preds = %if.end8
  %and17 = and i32 %42, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17)
  %tobool18.not = icmp eq i32 %and17, 0
  %and20 = and i32 %38, 768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20)
  %tobool21.not = icmp eq i32 %and20, 0
  %or.cond65 = or i1 %tobool21.not, %tobool18.not
  br i1 %or.cond65, label %if.end24, label %if.end15.cleanup_crit_edge

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end24:                                         ; preds = %if.end15
  %and26 = and i32 %42, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26)
  %tobool27.not = icmp eq i32 %and26, 0
  %and29 = and i32 %38, 12336
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29)
  %tobool30.not = icmp eq i32 %and29, 0
  %or.cond66 = or i1 %tobool30.not, %tobool27.not
  br i1 %or.cond66, label %if.end33, label %if.end24.cleanup_crit_edge

if.end24.cleanup_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end33:                                         ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #12
  %and35 = and i32 %42, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and35)
  %tobool36.not = icmp eq i32 %and35, 0
  %43 = and i32 %38, 3084
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %44 = icmp eq i32 %43, 0
  %or.cond73 = or i1 %44, %tobool36.not
  %spec.select = select i1 %or.cond73, i32 2, i32 1
  br label %cleanup

cleanup:                                          ; preds = %if.end33, %if.end24.cleanup_crit_edge, %if.end15.cleanup_crit_edge, %if.end8.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ 3, %if.then ], [ 1, %if.end8.cleanup_crit_edge ], [ 1, %if.end15.cleanup_crit_edge ], [ 1, %if.end24.cleanup_crit_edge ], [ %spec.select, %if.end33 ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @radeon_atom_ext_dpms(ptr nocapture noundef %encoder, i32 noundef %mode) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @radeon_atom_ext_prepare(ptr nocapture noundef %encoder) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @radeon_atom_ext_commit(ptr nocapture noundef %encoder) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @radeon_atom_ext_mode_set(ptr nocapture noundef %encoder, ptr nocapture noundef %mode, ptr nocapture noundef %adjusted_mode) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @radeon_atom_ext_disable(ptr nocapture noundef %encoder) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

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

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 35)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 35)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { nounwind allocsize(2) }
attributes #14 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !12, !13, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !33, !34, !35, !37, !39, !41, !43, !45, !47}
!llvm.module.flags = !{!49, !50, !51, !52, !53, !54, !55, !56}
!llvm.ident = !{!57}

!0 = distinct !{null, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/radeon/atombios_encoders.c", i32 202, i32 35}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/radeon/atombios_encoders.c", i32 216, i32 3}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/radeon/atombios_encoders.c", i32 224, i32 4}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/radeon/atombios_encoders.c", i32 228, i32 3}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/radeon/atombios_encoders.c", i32 248, i32 2}
!10 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @radeon_atom_backlight_init._entry, !9, !"_entry", i1 false, i1 false}
!13 = !{ptr @radeon_atom_backlight_init._entry_ptr, !9, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/radeon/atombios_encoders.c", i32 545, i32 4}
!16 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/radeon/atombios_encoders.c", i32 2025, i32 3}
!18 = distinct !{null, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/gpu/drm/radeon/atombios_encoders.c", i32 2195, i32 35}
!20 = !{ptr @.str.10, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/gpu/drm/radeon/atombios_encoders.c", i32 2222, i32 4}
!22 = !{ptr @.str.11, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/gpu/drm/radeon/atombios_encoders.c", i32 2231, i32 3}
!24 = !{ptr @.str.12, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/gpu/drm/radeon/atombios_encoders.c", i32 2235, i32 3}
!26 = !{ptr @radeon_atom_backlight_ops, !27, !"radeon_atom_backlight_ops", i1 false, i1 false}
!27 = !{!"../drivers/gpu/drm/radeon/atombios_encoders.c", i32 181, i32 35}
!28 = !{ptr @.str.13, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/gpu/drm/radeon/atombios_encoders.c", i32 1527, i32 4}
!30 = !{ptr @.str.14, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/gpu/drm/radeon/atombios_encoders.c", i32 285, i32 3}
!32 = !{ptr @.str.15, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @radeon_atom_backlight_exit._entry, !31, !"_entry", i1 false, i1 false}
!34 = !{ptr @radeon_atom_backlight_exit._entry_ptr, !31, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @radeon_atom_enc_funcs, !36, !"radeon_atom_enc_funcs", i1 false, i1 false}
!36 = !{!"../drivers/gpu/drm/radeon/atombios_encoders.c", i32 2682, i32 39}
!37 = !{ptr @radeon_atom_dig_helper_funcs, !38, !"radeon_atom_dig_helper_funcs", i1 false, i1 false}
!38 = !{!"../drivers/gpu/drm/radeon/atombios_encoders.c", i32 2653, i32 46}
!39 = !{ptr @.str.16, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/gpu/drm/radeon/atombios_encoders.c", i32 1788, i32 2}
!41 = !{ptr @.str.17, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/gpu/drm/radeon/atombios_encoders.c", i32 2450, i32 2}
!43 = !{ptr @radeon_atom_dac_helper_funcs, !44, !"radeon_atom_dac_helper_funcs", i1 false, i1 false}
!44 = !{!"../drivers/gpu/drm/radeon/atombios_encoders.c", i32 2663, i32 46}
!45 = !{ptr @.str.18, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/gpu/drm/radeon/atombios_encoders.c", i32 2394, i32 3}
!47 = !{ptr @radeon_atom_ext_helper_funcs, !48, !"radeon_atom_ext_helper_funcs", i1 false, i1 false}
!48 = !{!"../drivers/gpu/drm/radeon/atombios_encoders.c", i32 2644, i32 46}
!49 = !{i32 1, !"wchar_size", i32 2}
!50 = !{i32 1, !"min_enum_size", i32 4}
!51 = !{i32 8, !"branch-target-enforcement", i32 0}
!52 = !{i32 8, !"sign-return-address", i32 0}
!53 = !{i32 8, !"sign-return-address-all", i32 0}
!54 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!55 = !{i32 7, !"uwtable", i32 1}
!56 = !{i32 7, !"frame-pointer", i32 2}
!57 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!58 = !{i64 5060823}
!59 = !{i64 2158391654}
!60 = !{i64 5060405}
!61 = !{i8 0, i8 2}
!62 = !{!"auto-init"}
!63 = !{i64 2158392061}
