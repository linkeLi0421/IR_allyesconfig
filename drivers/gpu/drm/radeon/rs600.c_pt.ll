; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/radeon/rs600.c_pt.bc'
source_filename = "../drivers/gpu/drm/radeon/rs600.c"
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
%struct.ttm_pool = type { ptr, i8, i8, [3 x %struct.anon.90] }
%struct.anon.90 = type { [12 x %struct.ttm_pool_type] }
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
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.78, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.89, ptr, i32, ptr, i8, i32 }
%struct.anon.78 = type { %struct.list_head, ptr, %struct.spinlock }
%struct.drm_mode_config = type { %struct.mutex, %struct.drm_modeset_lock, ptr, %struct.mutex, %struct.idr, %struct.idr, %struct.mutex, i32, %struct.list_head, %struct.spinlock, i32, %struct.ida, %struct.list_head, %struct.llist_head, %struct.work_struct, i32, %struct.list_head, i32, %struct.list_head, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, ptr, i32, i8, i8, i8, %struct.delayed_work, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, ptr, i32, i32, ptr, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.llist_head = type { ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.drm_open_hash = type { ptr, i8 }
%struct.anon.89 = type { i32, ptr }
%struct.radeon_connector = type { %struct.drm_connector, i32, i32, ptr, i8, i8, ptr, ptr, i8, i8, i8, i16, %struct.radeon_hpd, %struct.radeon_router, ptr, i32, i32, i32, i8, ptr, ptr, %struct.drm_dp_mst_topology_mgr, ptr, [6 x %struct.stream_attribs], i32 }
%struct.drm_connector = type { ptr, ptr, ptr, ptr, %struct.list_head, %struct.list_head, %struct.drm_mode_object, ptr, %struct.mutex, i32, i32, i32, i8, i8, i8, i8, i32, %struct.list_head, i32, %struct.list_head, %struct.drm_display_info, ptr, ptr, %struct.drm_object_properties, ptr, ptr, ptr, ptr, ptr, ptr, %struct.notifier_block, ptr, ptr, i8, i32, ptr, %struct.drm_cmdline_mode, i32, i8, i64, i32, ptr, [128 x i8], [2 x i8], [2 x i32], [2 x i32], ptr, i32, i32, i8, i8, ptr, ptr, ptr, i8, ptr, i8, i8, i8, i8, i8, i16, i16, %struct.llist_node, %struct.hdr_sink_metadata }
%struct.drm_display_info = type { i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i8, %struct.drm_hdmi_info, i8, %struct.drm_monitor_range_info, i8, i8 }
%struct.drm_hdmi_info = type { %struct.drm_scdc, [8 x i32], [8 x i32], i64, i8, i8, i8, %struct.drm_hdmi_dsc_cap }
%struct.drm_scdc = type { i8, i8, %struct.drm_scrambling }
%struct.drm_scrambling = type { i8, i8 }
%struct.drm_hdmi_dsc_cap = type { i8, i8, i8, i8, i8, i32, i8, i8, i8 }
%struct.drm_monitor_range_info = type { i8, i8 }
%struct.drm_cmdline_mode = type { [32 x i8], i8, i8, i8, i32, i32, i32, i32, i8, i8, i8, i8, i32, i32, i32, %struct.drm_connector_tv_margins }
%struct.drm_connector_tv_margins = type { i32, i32, i32, i32 }
%struct.llist_node = type { ptr }
%struct.hdr_sink_metadata = type { i32, %union.anon.87 }
%union.anon.87 = type { %struct.hdr_static_metadata }
%struct.hdr_static_metadata = type { i8, i8, i16, i16, i16 }
%struct.radeon_hpd = type { i32, i8, %struct.radeon_gpio_rec }
%struct.radeon_gpio_rec = type { i8, i8, i32, i32, i32 }
%struct.radeon_router = type { i32, %struct.radeon_i2c_bus_rec, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.radeon_i2c_bus_rec = type { i8, i8, i32, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.drm_dp_mst_topology_mgr = type { %struct.drm_private_obj, ptr, ptr, i32, ptr, i32, i32, i32, i32, %struct.drm_dp_sideband_msg_rx, %struct.drm_dp_sideband_msg_rx, %struct.mutex, %struct.mutex, i8, ptr, [15 x i8], i8, i32, ptr, %struct.mutex, %struct.list_head, %struct.mutex, ptr, ptr, i32, i32, %struct.wait_queue_head, %struct.work_struct, %struct.work_struct, %struct.list_head, %struct.list_head, %struct.mutex, ptr, %struct.work_struct, %struct.list_head, %struct.mutex, %struct.work_struct, %struct.mutex }
%struct.drm_private_obj = type { %struct.list_head, %struct.drm_modeset_lock, ptr, ptr }
%struct.drm_dp_sideband_msg_rx = type { [48 x i8], [256 x i8], i8, i8, i8, i8, i8, i8, %struct.drm_dp_sideband_msg_hdr }
%struct.drm_dp_sideband_msg_hdr = type { i8, i8, [8 x i8], i8, i8, i8, i8, i8, i8 }
%struct.stream_attribs = type { i16, i16 }
%struct.radeon_encoder = type { %struct.drm_encoder, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.drm_display_mode, ptr, i32, i8, i16, ptr, i32, i8, i32, i8 }
%struct.drm_encoder = type { ptr, %struct.list_head, %struct.drm_mode_object, ptr, i32, i32, i32, i32, ptr, %struct.list_head, ptr, ptr }
%struct.radeon_power_state = type { i32, ptr, i32, ptr, i32, i32, i32, i32 }
%struct.radeon_pm_clock_info = type { i32, i32, %struct.radeon_voltage, i32 }
%struct.radeon_voltage = type { i32, %struct.radeon_gpio_rec, i32, i8, i8, i8, i8, i16, i16 }
%struct.radeon_asic = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.anon.96, %struct.anon.97, [8 x ptr], %struct.anon.98, %struct.anon.99, %struct.anon.100, %struct.anon.101, %struct.anon.102, %struct.anon.103, %struct.anon.104, %struct.anon.105 }
%struct.anon.96 = type { ptr, ptr, ptr }
%struct.anon.97 = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.anon.98 = type { ptr, ptr }
%struct.anon.99 = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.anon.100 = type { ptr, i32, ptr, i32, ptr, i32 }
%struct.anon.101 = type { ptr, ptr }
%struct.anon.102 = type { ptr, ptr, ptr, ptr }
%struct.anon.103 = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.anon.104 = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.anon.105 = type { ptr, ptr }
%struct.rv515_mc_save = type { i32, i32, [2 x i8] }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.88, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
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
%union.anon.88 = type { ptr }

@crtc_offsets = internal constant { [2 x i32], [24 x i8] } { [2 x i32] [i32 0, i32 2048], [24 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"Update pending now high. Unlocking vupdate_lock.\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Setting: p: %d\0A\00", [16 x i8] zeroinitializer }, align 32
@rs600_asic_reset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 475, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"(%s:%d) RBBM_STATUS=0x%08X\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"rs600_asic_reset\00", [47 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"drivers/gpu/drm/radeon/rs600.c\00", [33 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@rs600_asic_reset._entry_ptr = internal global ptr @rs600_asic_reset._entry, section ".printk_index", align 4
@rs600_asic_reset._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 495, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@rs600_asic_reset._entry_ptr.8 = internal global ptr @rs600_asic_reset._entry.7, section ".printk_index", align 4
@rs600_asic_reset._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 503, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@rs600_asic_reset._entry_ptr.10 = internal global ptr @rs600_asic_reset._entry.9, section ".printk_index", align 4
@rs600_asic_reset._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 511, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@rs600_asic_reset._entry_ptr.12 = internal global ptr @rs600_asic_reset._entry.11, section ".printk_index", align 4
@rs600_asic_reset._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.3, ptr @.str.4, i32 516, ptr @.str.15, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"failed to reset GPU\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@rs600_asic_reset._entry_ptr.16 = internal global ptr @rs600_asic_reset._entry.13, section ".printk_index", align 4
@rs600_asic_reset._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.3, ptr @.str.4, i32 519, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"GPU reset succeed\0A\00", [45 x i8] zeroinitializer }, align 32
@rs600_asic_reset._entry_ptr.19 = internal global ptr @rs600_asic_reset._entry.17, section ".printk_index", align 4
@.str.20 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"Can't enable IRQ/MSI because no handler is installed\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"HPD1\0A\00", [26 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"HPD2\0A\00", [26 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"HDMI0\0A\00", [25 x i8] zeroinitializer }, align 32
@rs600_reg_safe_bm = internal constant { [219 x i32], [212 x i8] } { [219 x i32] [i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 402595839, i32 -4, i32 -1, i32 -13566017, i32 -8, i32 -1008271361, i32 -2337, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -4033, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -4146, i32 -267468801, i32 8126464, i32 -268435336, i32 -16777207, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -2049, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -952, i32 -1, i32 -2, i32 -1, i32 956272464, i32 -491390, i32 -268435444, i32 -85980161, i32 65535, i32 -1, i32 -1, i32 0, i32 0, i32 256, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 -8388608, i32 0, i32 0, i32 0, i32 0, i32 261131, i32 -769, i32 -4195431, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1], [212 x i8] zeroinitializer }, align 32
@rs600_resume._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.25, ptr @.str.4, i32 1054, ptr @.str.26, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"GPU reset failed ! (0xE40=0x%08X, 0x7C0=0x%08X)\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"rs600_resume\00", [19 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@rs600_resume._entry_ptr = internal global ptr @rs600_resume._entry, section ".printk_index", align 4
@rs600_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.28, ptr @.str.4, i32 1121, ptr @.str.15, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Expecting atombios for RS600 GPU\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"rs600_init\00", [21 x i8] zeroinitializer }, align 32
@rs600_init._entry_ptr = internal global ptr @rs600_init._entry, section ".printk_index", align 4
@rs600_init._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.28, ptr @.str.4, i32 1129, ptr @.str.26, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@rs600_init._entry_ptr.30 = internal global ptr @rs600_init._entry.29, section ".printk_index", align 4
@rs600_init._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.28, ptr @.str.4, i32 1158, ptr @.str.15, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Disabling GPU acceleration\0A\00", [36 x i8] zeroinitializer }, align 32
@rs600_init._entry_ptr.33 = internal global ptr @rs600_init._entry.31, section ".printk_index", align 4
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@rs600_startup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.35, ptr @.str.4, i32 1007, ptr @.str.15, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"failed initializing CP fences (%d).\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"rs600_startup\00", [18 x i8] zeroinitializer }, align 32
@rs600_startup._entry_ptr = internal global ptr @rs600_startup._entry, section ".printk_index", align 4
@rs600_startup._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.35, ptr @.str.4, i32 1023, ptr @.str.15, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed initializing CP (%d).\0A\00", [34 x i8] zeroinitializer }, align 32
@rs600_startup._entry_ptr.38 = internal global ptr @rs600_startup._entry.36, section ".printk_index", align 4
@rs600_startup._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.35, ptr @.str.4, i32 1029, ptr @.str.15, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"IB initialization failed (%d).\0A\00", [32 x i8] zeroinitializer }, align 32
@rs600_startup._entry_ptr.41 = internal global ptr @rs600_startup._entry.39, section ".printk_index", align 4
@rs600_startup._entry.42 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.35, ptr @.str.4, i32 1035, ptr @.str.15, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"failed initializing audio\0A\00", [37 x i8] zeroinitializer }, align 32
@rs600_startup._entry_ptr.44 = internal global ptr @rs600_startup._entry.42, section ".printk_index", align 4
@rs600_mc_program._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.46, ptr @.str.4, i32 969, ptr @.str.26, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Wait MC idle timeout before updating MC.\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"rs600_mc_program\00", [47 x i8] zeroinitializer }, align 32
@rs600_mc_program._entry_ptr = internal global ptr @rs600_mc_program._entry, section ".printk_index", align 4
@rs600_gpu_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.47, ptr @.str.4, i32 876, ptr @.str.26, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"rs600_gpu_init\00", [17 x i8] zeroinitializer }, align 32
@rs600_gpu_init._entry_ptr = internal global ptr @rs600_gpu_init._entry, section ".printk_index", align 4
@rs600_gart_enable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.49, ptr @.str.4, i32 568, ptr @.str.15, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"No VRAM object for PCIE GART.\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"rs600_gart_enable\00", [46 x i8] zeroinitializer }, align 32
@rs600_gart_enable._entry_ptr = internal global ptr @rs600_gart_enable._entry, section ".printk_index", align 4
@rs600_gart_enable._entry.50 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.49, ptr @.str.4, i32 621, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\016[drm] PCIE GART of %uM enabled (table at 0x%016llX).\0A\00", [40 x i8] zeroinitializer }, align 32
@rs600_gart_enable._entry_ptr.52 = internal global ptr @rs600_gart_enable._entry.50, section ".printk_index", align 4
@.str.53 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"RS600 GART already initialized\0A\00", [32 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 6, i64 8]
@__sancov_gen_cov_switch_values.54 = internal global [6 x i64] [i64 4, i64 32, i64 15, i64 19, i64 20, i64 25]
@__sancov_gen_cov_switch_values.55 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.56 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.57 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.58 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.59 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.60 = private unnamed_addr constant [13 x i8] c"crtc_offsets\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 56, i32 18 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 148, i32 2 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 318, i32 3 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 475, i32 2 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 495, i32 2 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 503, i32 2 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 511, i32 2 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 516, i32 3 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 519, i32 3 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 682, i32 3 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 818, i32 4 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 822, i32 4 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 826, i32 4 }
@___asan_gen_.123 = private unnamed_addr constant [18 x i8] c"rs600_reg_safe_bm\00", align 1
@___asan_gen_.124 = private unnamed_addr constant [42 x i8] c"./drivers/gpu/drm/radeon/rs600_reg_safe.h\00", align 1
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 1, i32 23 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 1052, i32 3 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 1121, i32 3 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 1126, i32 3 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 1158, i32 3 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 1007, i32 3 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 1023, i32 3 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 1029, i32 3 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 1035, i32 3 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 969, i32 3 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 876, i32 3 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 568, i32 3 }
@___asan_gen_.207 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 619, i32 2 }
@___asan_gen_.213 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.214 = private constant [34 x i8] c"../drivers/gpu/drm/radeon/rs600.c\00", align 1
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 550, i32 3 }
@llvm.compiler.used = appending global [70 x ptr] [ptr @rs600_asic_reset._entry, ptr @rs600_asic_reset._entry.11, ptr @rs600_asic_reset._entry.13, ptr @rs600_asic_reset._entry.17, ptr @rs600_asic_reset._entry.7, ptr @rs600_asic_reset._entry.9, ptr @rs600_asic_reset._entry_ptr, ptr @rs600_asic_reset._entry_ptr.10, ptr @rs600_asic_reset._entry_ptr.12, ptr @rs600_asic_reset._entry_ptr.16, ptr @rs600_asic_reset._entry_ptr.19, ptr @rs600_asic_reset._entry_ptr.8, ptr @rs600_gart_enable._entry, ptr @rs600_gart_enable._entry.50, ptr @rs600_gart_enable._entry_ptr, ptr @rs600_gart_enable._entry_ptr.52, ptr @rs600_gpu_init._entry, ptr @rs600_gpu_init._entry_ptr, ptr @rs600_init._entry, ptr @rs600_init._entry.29, ptr @rs600_init._entry.31, ptr @rs600_init._entry_ptr, ptr @rs600_init._entry_ptr.30, ptr @rs600_init._entry_ptr.33, ptr @rs600_mc_program._entry, ptr @rs600_mc_program._entry_ptr, ptr @rs600_resume._entry, ptr @rs600_resume._entry_ptr, ptr @rs600_startup._entry, ptr @rs600_startup._entry.36, ptr @rs600_startup._entry.39, ptr @rs600_startup._entry.42, ptr @rs600_startup._entry_ptr, ptr @rs600_startup._entry_ptr.38, ptr @rs600_startup._entry_ptr.41, ptr @rs600_startup._entry_ptr.44, ptr @crtc_offsets, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.14, ptr @.str.15, ptr @.str.18, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @rs600_reg_safe_bm, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.32, ptr @.str.34, ptr @.str.35, ptr @.str.37, ptr @.str.40, ptr @.str.43, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.51, ptr @.str.53], section "llvm.metadata"
@0 = internal global [52 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @crtc_offsets to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rs600_asic_reset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rs600_asic_reset._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rs600_asic_reset._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rs600_asic_reset._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rs600_asic_reset._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rs600_asic_reset._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rs600_reg_safe_bm to i32), i32 876, i32 1088, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rs600_resume._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rs600_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rs600_init._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rs600_init._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rs600_startup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rs600_startup._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rs600_startup._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rs600_startup._entry.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rs600_mc_program._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rs600_gpu_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rs600_gart_enable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rs600_gart_enable._entry.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @avivo_wait_for_vblank(ptr noundef %rdev, i32 noundef %crtc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %num_crtc = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 91
  %0 = ptrtoint ptr %num_crtc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_crtc, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %crtc)
  %cmp.not = icmp sgt i32 %1, %crtc
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %arrayidx = getelementptr [2 x i32], ptr @crtc_offsets, i32 0, i32 %crtc
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  %add = add i32 %3, 24704
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

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %rmmio.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %6 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %7, i32 %add
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !106
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !107
  br label %r100_mm_rreg.exit

if.else.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %call3.i = tail call i32 @r100_mm_rreg_slow(ptr noundef %rdev, i32 noundef %add) #8
  br label %r100_mm_rreg.exit

r100_mm_rreg.exit:                                ; preds = %if.else.i, %if.then.i
  %retval.0.i = phi i32 [ %call3.i, %if.else.i ], [ %9, %if.then.i ]
  %and = and i32 %retval.0.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %r100_mm_rreg.exit.cleanup_crit_edge, label %while.cond.preheader

r100_mm_rreg.exit.cleanup_crit_edge:              ; preds = %r100_mm_rreg.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

while.cond.preheader:                             ; preds = %r100_mm_rreg.exit
  %add.i = add i32 %3, 24732
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %add.i)
  %cmp1.i.i = icmp ult i32 %add.i, 65536
  %rmmio.i.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %add.i34 = add i32 %3, 24736
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %add.i34)
  %cmp1.i.i37 = icmp ult i32 %add.i34, 65536
  br label %while.cond

while.cond:                                       ; preds = %while.cond.backedge, %while.cond.preheader
  %i.0 = phi i32 [ 0, %while.cond.preheader ], [ %inc, %while.cond.backedge ]
  %10 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %add.i)
  %cmp.i.i = icmp ugt i32 %11, %add.i
  %or.cond.i.i = or i1 %cmp1.i.i, %cmp.i.i
  br i1 %or.cond.i.i, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #10
  %12 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %13, i32 %add.i
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #8, !srcloc !106
  %15 = tail call i32 @llvm.bswap.i32(i32 %14) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !107
  br label %avivo_is_in_vblank.exit

if.else.i.i:                                      ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #10
  %call3.i.i = tail call i32 @r100_mm_rreg_slow(ptr noundef %rdev, i32 noundef %add.i) #8
  br label %avivo_is_in_vblank.exit

avivo_is_in_vblank.exit:                          ; preds = %if.else.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %call3.i.i, %if.else.i.i ], [ %15, %if.then.i.i ]
  %and.i = and i32 %retval.0.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i.not, label %avivo_is_in_vblank.exit.while.cond10.preheader_crit_edge, label %while.body

avivo_is_in_vblank.exit.while.cond10.preheader_crit_edge: ; preds = %avivo_is_in_vblank.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond10.preheader

while.body:                                       ; preds = %avivo_is_in_vblank.exit
  %inc = add i32 %i.0, 1
  %rem = urem i32 %i.0, 100
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %cmp4 = icmp eq i32 %rem, 0
  br i1 %cmp4, label %if.then5, label %while.body.while.cond.backedge_crit_edge

while.body.while.cond.backedge_crit_edge:         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond.backedge

if.then5:                                         ; preds = %while.body
  %16 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %add.i34)
  %cmp.i.i36 = icmp ugt i32 %17, %add.i34
  %or.cond.i.i38 = or i1 %cmp1.i.i37, %cmp.i.i36
  br i1 %or.cond.i.i38, label %if.then.i.i41, label %if.else.i.i43

if.then.i.i41:                                    ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #10
  %18 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i.i40 = getelementptr i8, ptr %19, i32 %add.i34
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i40) #8, !srcloc !106
  %21 = tail call i32 @llvm.bswap.i32(i32 %20) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !107
  br label %r100_mm_rreg.exit.i

if.else.i.i43:                                    ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #10
  %call3.i.i42 = tail call i32 @r100_mm_rreg_slow(ptr noundef %rdev, i32 noundef %add.i34) #8
  br label %r100_mm_rreg.exit.i

r100_mm_rreg.exit.i:                              ; preds = %if.else.i.i43, %if.then.i.i41
  %retval.0.i.i44 = phi i32 [ %call3.i.i42, %if.else.i.i43 ], [ %21, %if.then.i.i41 ]
  %22 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %add.i34)
  %cmp.i8.i = icmp ugt i32 %23, %add.i34
  %or.cond.i10.i = or i1 %cmp1.i.i37, %cmp.i8.i
  br i1 %or.cond.i10.i, label %if.then.i13.i, label %if.else.i15.i

if.then.i13.i:                                    ; preds = %r100_mm_rreg.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %24 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i12.i = getelementptr i8, ptr %25, i32 %add.i34
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i12.i) #8, !srcloc !106
  %27 = tail call i32 @llvm.bswap.i32(i32 %26) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !107
  br label %avivo_is_counter_moving.exit

if.else.i15.i:                                    ; preds = %r100_mm_rreg.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %call3.i14.i = tail call i32 @r100_mm_rreg_slow(ptr noundef %rdev, i32 noundef %add.i34) #8
  br label %avivo_is_counter_moving.exit

avivo_is_counter_moving.exit:                     ; preds = %if.else.i15.i, %if.then.i13.i
  %retval.0.i16.i = phi i32 [ %call3.i14.i, %if.else.i15.i ], [ %27, %if.then.i13.i ]
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i.i44, i32 %retval.0.i16.i)
  %cmp.not.i.not = icmp eq i32 %retval.0.i.i44, %retval.0.i16.i
  br i1 %cmp.not.i.not, label %avivo_is_counter_moving.exit.while.cond10.preheader_crit_edge, label %avivo_is_counter_moving.exit.while.cond.backedge_crit_edge

avivo_is_counter_moving.exit.while.cond.backedge_crit_edge: ; preds = %avivo_is_counter_moving.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond.backedge

avivo_is_counter_moving.exit.while.cond10.preheader_crit_edge: ; preds = %avivo_is_counter_moving.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond10.preheader

while.cond.backedge:                              ; preds = %avivo_is_counter_moving.exit.while.cond.backedge_crit_edge, %while.body.while.cond.backedge_crit_edge
  br label %while.cond

while.cond10.preheader:                           ; preds = %avivo_is_counter_moving.exit.while.cond10.preheader_crit_edge, %avivo_is_in_vblank.exit.while.cond10.preheader_crit_edge
  %i.2.ph = phi i32 [ %i.0, %avivo_is_in_vblank.exit.while.cond10.preheader_crit_edge ], [ %inc, %avivo_is_counter_moving.exit.while.cond10.preheader_crit_edge ]
  br label %while.cond10

while.cond10:                                     ; preds = %while.cond10.backedge, %while.cond10.preheader
  %i.2 = phi i32 [ %i.2.ph, %while.cond10.preheader ], [ %inc13, %while.cond10.backedge ]
  %28 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %29, i32 %add.i)
  %cmp.i.i48 = icmp ugt i32 %29, %add.i
  %or.cond.i.i50 = or i1 %cmp1.i.i, %cmp.i.i48
  br i1 %or.cond.i.i50, label %if.then.i.i53, label %if.else.i.i55

if.then.i.i53:                                    ; preds = %while.cond10
  call void @__sanitizer_cov_trace_pc() #10
  %30 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i.i52 = getelementptr i8, ptr %31, i32 %add.i
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i52) #8, !srcloc !106
  %33 = tail call i32 @llvm.bswap.i32(i32 %32) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !107
  br label %avivo_is_in_vblank.exit60

if.else.i.i55:                                    ; preds = %while.cond10
  call void @__sanitizer_cov_trace_pc() #10
  %call3.i.i54 = tail call i32 @r100_mm_rreg_slow(ptr noundef %rdev, i32 noundef %add.i) #8
  br label %avivo_is_in_vblank.exit60

avivo_is_in_vblank.exit60:                        ; preds = %if.else.i.i55, %if.then.i.i53
  %retval.0.i.i56 = phi i32 [ %call3.i.i54, %if.else.i.i55 ], [ %33, %if.then.i.i53 ]
  %and.i57 = and i32 %retval.0.i.i56, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i57)
  %tobool.not.i58.not = icmp eq i32 %and.i57, 0
  br i1 %tobool.not.i58.not, label %while.body12, label %avivo_is_in_vblank.exit60.cleanup_crit_edge

avivo_is_in_vblank.exit60.cleanup_crit_edge:      ; preds = %avivo_is_in_vblank.exit60
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

while.body12:                                     ; preds = %avivo_is_in_vblank.exit60
  %inc13 = add i32 %i.2, 1
  %rem14 = urem i32 %i.2, 100
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem14)
  %cmp15 = icmp eq i32 %rem14, 0
  br i1 %cmp15, label %if.then16, label %while.body12.while.cond10.backedge_crit_edge

while.body12.while.cond10.backedge_crit_edge:     ; preds = %while.body12
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond10.backedge

if.then16:                                        ; preds = %while.body12
  %34 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %35, i32 %add.i34)
  %cmp.i.i64 = icmp ugt i32 %35, %add.i34
  %or.cond.i.i66 = or i1 %cmp1.i.i37, %cmp.i.i64
  br i1 %or.cond.i.i66, label %if.then.i.i69, label %if.else.i.i71

if.then.i.i69:                                    ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #10
  %36 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i.i68 = getelementptr i8, ptr %37, i32 %add.i34
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i68) #8, !srcloc !106
  %39 = tail call i32 @llvm.bswap.i32(i32 %38) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !107
  br label %r100_mm_rreg.exit.i75

if.else.i.i71:                                    ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #10
  %call3.i.i70 = tail call i32 @r100_mm_rreg_slow(ptr noundef %rdev, i32 noundef %add.i34) #8
  br label %r100_mm_rreg.exit.i75

r100_mm_rreg.exit.i75:                            ; preds = %if.else.i.i71, %if.then.i.i69
  %retval.0.i.i72 = phi i32 [ %call3.i.i70, %if.else.i.i71 ], [ %39, %if.then.i.i69 ]
  %40 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %41, i32 %add.i34)
  %cmp.i8.i73 = icmp ugt i32 %41, %add.i34
  %or.cond.i10.i74 = or i1 %cmp1.i.i37, %cmp.i8.i73
  br i1 %or.cond.i10.i74, label %if.then.i13.i78, label %if.else.i15.i80

if.then.i13.i78:                                  ; preds = %r100_mm_rreg.exit.i75
  call void @__sanitizer_cov_trace_pc() #10
  %42 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i12.i77 = getelementptr i8, ptr %43, i32 %add.i34
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i12.i77) #8, !srcloc !106
  %45 = tail call i32 @llvm.bswap.i32(i32 %44) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !107
  br label %avivo_is_counter_moving.exit83

if.else.i15.i80:                                  ; preds = %r100_mm_rreg.exit.i75
  call void @__sanitizer_cov_trace_pc() #10
  %call3.i14.i79 = tail call i32 @r100_mm_rreg_slow(ptr noundef %rdev, i32 noundef %add.i34) #8
  br label %avivo_is_counter_moving.exit83

avivo_is_counter_moving.exit83:                   ; preds = %if.else.i15.i80, %if.then.i13.i78
  %retval.0.i16.i81 = phi i32 [ %call3.i14.i79, %if.else.i15.i80 ], [ %45, %if.then.i13.i78 ]
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i.i72, i32 %retval.0.i16.i81)
  %cmp.not.i82.not = icmp eq i32 %retval.0.i.i72, %retval.0.i16.i81
  br i1 %cmp.not.i82.not, label %avivo_is_counter_moving.exit83.cleanup_crit_edge, label %avivo_is_counter_moving.exit83.while.cond10.backedge_crit_edge

avivo_is_counter_moving.exit83.while.cond10.backedge_crit_edge: ; preds = %avivo_is_counter_moving.exit83
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond10.backedge

avivo_is_counter_moving.exit83.cleanup_crit_edge: ; preds = %avivo_is_counter_moving.exit83
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

while.cond10.backedge:                            ; preds = %avivo_is_counter_moving.exit83.while.cond10.backedge_crit_edge, %while.body12.while.cond10.backedge_crit_edge
  br label %while.cond10

cleanup:                                          ; preds = %avivo_is_counter_moving.exit83.cleanup_crit_edge, %avivo_is_in_vblank.exit60.cleanup_crit_edge, %r100_mm_rreg.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rs600_page_flip(ptr noundef %rdev, i32 noundef %crtc_id, i64 noundef %crtc_base, i1 noundef zeroext %async) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
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
  call void @__sanitizer_cov_trace_pc() #10
  %rmmio.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %10 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %11, i32 %add
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !106
  %13 = tail call i32 @llvm.bswap.i32(i32 %12) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !107
  br label %r100_mm_rreg.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call3.i = tail call i32 @r100_mm_rreg_slow(ptr noundef %rdev, i32 noundef %add) #8
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
  %cmp.i48 = icmp ugt i32 %17, %add3
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %add3)
  %cmp1.i49 = icmp ult i32 %add3, 65536
  %or.cond.i50 = or i1 %cmp1.i49, %cmp.i48
  br i1 %or.cond.i50, label %do.body.i, label %if.else.i53

do.body.i:                                        ; preds = %r100_mm_rreg.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !108
  tail call void @arm_heavy_mb() #8
  %18 = tail call i32 @llvm.bswap.i32(i32 %or) #8
  %rmmio.i51 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %19 = ptrtoint ptr %rmmio.i51 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %rmmio.i51, align 4
  %add.ptr.i52 = getelementptr i8, ptr %20, i32 %add3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i52, i32 %18) #8, !srcloc !109
  br label %r100_mm_wreg.exit

if.else.i53:                                      ; preds = %r100_mm_rreg.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @r100_mm_wreg_slow(ptr noundef %rdev, i32 noundef %add3, i32 noundef %or) #8
  br label %r100_mm_wreg.exit

r100_mm_wreg.exit:                                ; preds = %if.else.i53, %do.body.i
  %21 = ptrtoint ptr %crtc_offset to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %crtc_offset, align 8
  %add5 = add i32 %22, 24904
  %23 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %24, i32 %add5)
  %cmp.i55 = icmp ugt i32 %24, %add5
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %add5)
  %cmp1.i56 = icmp ult i32 %add5, 65536
  %or.cond.i57 = or i1 %cmp1.i56, %cmp.i55
  br i1 %or.cond.i57, label %do.body.i60, label %if.else.i61

do.body.i60:                                      ; preds = %r100_mm_wreg.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !108
  tail call void @arm_heavy_mb() #8
  %25 = select i1 %async, i32 16777216, i32 0
  %rmmio.i58 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %26 = ptrtoint ptr %rmmio.i58 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %rmmio.i58, align 4
  %add.ptr.i59 = getelementptr i8, ptr %27, i32 %add5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i59, i32 %25) #8, !srcloc !109
  br label %r100_mm_wreg.exit62

if.else.i61:                                      ; preds = %r100_mm_wreg.exit
  call void @__sanitizer_cov_trace_pc() #10
  %cond = zext i1 %async to i32
  tail call void @r100_mm_wreg_slow(ptr noundef %rdev, i32 noundef %add5, i32 noundef %cond) #8
  br label %r100_mm_wreg.exit62

r100_mm_wreg.exit62:                              ; preds = %if.else.i61, %do.body.i60
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
  %cmp.i64 = icmp ugt i32 %38, %add7
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %add7)
  %cmp1.i65 = icmp ult i32 %add7, 65536
  %or.cond.i66 = or i1 %cmp1.i65, %cmp.i64
  br i1 %or.cond.i66, label %do.body.i69, label %if.else.i70

do.body.i69:                                      ; preds = %r100_mm_wreg.exit62
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !108
  tail call void @arm_heavy_mb() #8
  %39 = tail call i32 @llvm.bswap.i32(i32 %div) #8
  %rmmio.i67 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %40 = ptrtoint ptr %rmmio.i67 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %rmmio.i67, align 4
  %add.ptr.i68 = getelementptr i8, ptr %41, i32 %add7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i68, i32 %39) #8, !srcloc !109
  br label %r100_mm_wreg.exit71

if.else.i70:                                      ; preds = %r100_mm_wreg.exit62
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @r100_mm_wreg_slow(ptr noundef %rdev, i32 noundef %add7, i32 noundef %div) #8
  br label %r100_mm_wreg.exit71

r100_mm_wreg.exit71:                              ; preds = %if.else.i70, %do.body.i69
  %42 = ptrtoint ptr %crtc_offset to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %crtc_offset, align 8
  %add11 = add i32 %43, 24856
  %conv12 = trunc i64 %crtc_base to i32
  %44 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %45, i32 %add11)
  %cmp.i73 = icmp ugt i32 %45, %add11
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %add11)
  %cmp1.i74 = icmp ult i32 %add11, 65536
  %or.cond.i75 = or i1 %cmp1.i74, %cmp.i73
  br i1 %or.cond.i75, label %do.body.i78, label %if.else.i79

do.body.i78:                                      ; preds = %r100_mm_wreg.exit71
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !108
  tail call void @arm_heavy_mb() #8
  %46 = tail call i32 @llvm.bswap.i32(i32 %conv12) #8
  %rmmio.i76 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %47 = ptrtoint ptr %rmmio.i76 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %rmmio.i76, align 4
  %add.ptr.i77 = getelementptr i8, ptr %48, i32 %add11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i77, i32 %46) #8, !srcloc !109
  br label %r100_mm_wreg.exit80

if.else.i79:                                      ; preds = %r100_mm_wreg.exit71
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @r100_mm_wreg_slow(ptr noundef %rdev, i32 noundef %add11, i32 noundef %conv12) #8
  br label %r100_mm_wreg.exit80

r100_mm_wreg.exit80:                              ; preds = %if.else.i79, %do.body.i78
  %49 = ptrtoint ptr %crtc_offset to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %crtc_offset, align 8
  %add14 = add i32 %50, 24848
  %51 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %52, i32 %add14)
  %cmp.i82 = icmp ugt i32 %52, %add14
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %add14)
  %cmp1.i83 = icmp ult i32 %add14, 65536
  %or.cond.i84 = or i1 %cmp1.i83, %cmp.i82
  br i1 %or.cond.i84, label %do.body.i87, label %if.else.i88

do.body.i87:                                      ; preds = %r100_mm_wreg.exit80
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !108
  tail call void @arm_heavy_mb() #8
  %53 = tail call i32 @llvm.bswap.i32(i32 %conv12) #8
  %rmmio.i85 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %54 = ptrtoint ptr %rmmio.i85 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %rmmio.i85, align 4
  %add.ptr.i86 = getelementptr i8, ptr %55, i32 %add14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i86, i32 %53) #8, !srcloc !109
  br label %r100_mm_wreg.exit89

if.else.i88:                                      ; preds = %r100_mm_wreg.exit80
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @r100_mm_wreg_slow(ptr noundef %rdev, i32 noundef %add14, i32 noundef %conv12) #8
  br label %r100_mm_wreg.exit89

r100_mm_wreg.exit89:                              ; preds = %if.else.i88, %do.body.i87
  %usec_timeout = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 8
  %56 = ptrtoint ptr %usec_timeout to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %usec_timeout, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %cmp110 = icmp sgt i32 %57, 0
  br i1 %cmp110, label %for.body.lr.ph, label %r100_mm_wreg.exit89.for.end_crit_edge

r100_mm_wreg.exit89.for.end_crit_edge:            ; preds = %r100_mm_wreg.exit89
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %r100_mm_wreg.exit89
  %rmmio.i94 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  br label %for.body

for.body:                                         ; preds = %if.end.for.body_crit_edge, %for.body.lr.ph
  %i.0111 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end.for.body_crit_edge ]
  %58 = ptrtoint ptr %crtc_offset to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %crtc_offset, align 8
  %add18 = add i32 %59, 24900
  %60 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %61, i32 %add18)
  %cmp.i91 = icmp ugt i32 %61, %add18
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %add18)
  %cmp1.i92 = icmp ult i32 %add18, 65536
  %or.cond.i93 = or i1 %cmp1.i92, %cmp.i91
  br i1 %or.cond.i93, label %if.then.i96, label %if.else.i98

if.then.i96:                                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %62 = ptrtoint ptr %rmmio.i94 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %rmmio.i94, align 4
  %add.ptr.i95 = getelementptr i8, ptr %63, i32 %add18
  %64 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i95) #8, !srcloc !106
  %65 = tail call i32 @llvm.bswap.i32(i32 %64) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !107
  br label %r100_mm_rreg.exit100

if.else.i98:                                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %call3.i97 = tail call i32 @r100_mm_rreg_slow(ptr noundef %rdev, i32 noundef %add18) #8
  br label %r100_mm_rreg.exit100

r100_mm_rreg.exit100:                             ; preds = %if.else.i98, %if.then.i96
  %retval.0.i99 = phi i32 [ %call3.i97, %if.else.i98 ], [ %65, %if.then.i96 ]
  %and = and i32 %retval.0.i99, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool20.not = icmp eq i32 %and, 0
  br i1 %tobool20.not, label %if.end, label %r100_mm_rreg.exit100.for.end_crit_edge

r100_mm_rreg.exit100.for.end_crit_edge:           ; preds = %r100_mm_rreg.exit100
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

if.end:                                           ; preds = %r100_mm_rreg.exit100
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %66 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %66(i32 noundef 214748) #8
  %inc = add nuw nsw i32 %i.0111, 1
  %67 = ptrtoint ptr %usec_timeout to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %usec_timeout, align 4
  %cmp = icmp slt i32 %inc, %68
  br i1 %cmp, label %if.end.for.body_crit_edge, label %if.end.for.end_crit_edge

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %if.end.for.end_crit_edge, %r100_mm_rreg.exit100.for.end_crit_edge, %r100_mm_wreg.exit89.for.end_crit_edge
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str) #8
  %and21 = and i32 %retval.0.i, -65537
  %69 = ptrtoint ptr %crtc_offset to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %crtc_offset, align 8
  %add23 = add i32 %70, 24900
  %71 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %72, i32 %add23)
  %cmp.i102 = icmp ugt i32 %72, %add23
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %add23)
  %cmp1.i103 = icmp ult i32 %add23, 65536
  %or.cond.i104 = or i1 %cmp1.i103, %cmp.i102
  br i1 %or.cond.i104, label %do.body.i107, label %if.else.i108

do.body.i107:                                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !108
  tail call void @arm_heavy_mb() #8
  %73 = tail call i32 @llvm.bswap.i32(i32 %and21) #8
  %rmmio.i105 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %74 = ptrtoint ptr %rmmio.i105 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %rmmio.i105, align 4
  %add.ptr.i106 = getelementptr i8, ptr %75, i32 %add23
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i106, i32 %73) #8, !srcloc !109
  br label %r100_mm_wreg.exit109

if.else.i108:                                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @r100_mm_wreg_slow(ptr noundef %rdev, i32 noundef %add23, i32 noundef %and21) #8
  br label %r100_mm_wreg.exit109

r100_mm_wreg.exit109:                             ; preds = %if.else.i108, %do.body.i107
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @rs600_page_flip_pending(ptr noundef %rdev, i32 noundef %crtc_id) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
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
  call void @__sanitizer_cov_trace_pc() #10
  %rmmio.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %6 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %7, i32 %add
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !106
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !107
  br label %r100_mm_rreg.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call3.i = tail call i32 @r100_mm_rreg_slow(ptr noundef %rdev, i32 noundef %add) #8
  br label %r100_mm_rreg.exit

r100_mm_rreg.exit:                                ; preds = %if.else.i, %if.then.i
  %retval.0.i = phi i32 [ %call3.i, %if.else.i ], [ %9, %if.then.i ]
  %and = and i32 %retval.0.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool = icmp ne i32 %and, 0
  ret i1 %tobool
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @avivo_program_fmt(ptr noundef %encoder) local_unnamed_addr #0 align 64 {
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
  %call = tail call ptr @radeon_get_connector_for_encoder(ptr noundef %encoder) #8
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call6 = tail call i32 @radeon_get_monitor_bpc(ptr noundef nonnull %call) #8
  %dither7 = getelementptr inbounds %struct.radeon_connector, ptr %call, i32 0, i32 16
  %4 = ptrtoint ptr %dither7 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %dither7, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %bpc.0 = phi i32 [ %call6, %if.then ], [ 0, %entry.if.end_crit_edge ]
  %dither.0 = phi i32 [ %5, %if.then ], [ 0, %entry.if.end_crit_edge ]
  %devices = getelementptr inbounds %struct.radeon_encoder, ptr %encoder, i32 0, i32 3
  %6 = ptrtoint ptr %devices to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %devices, align 4
  %and = and i32 %7, 34
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool8.not = icmp eq i32 %and, 0
  br i1 %tobool8.not, label %if.end10, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end10:                                         ; preds = %if.end
  %8 = zext i32 %bpc.0 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values)
  switch i32 %bpc.0, label %if.end10.sw.epilog_crit_edge [
    i32 0, label %if.end10.cleanup_crit_edge
    i32 6, label %sw.bb
    i32 8, label %sw.bb17
  ]

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end10.sw.epilog_crit_edge:                     ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dither.0)
  %cmp13 = icmp eq i32 %dither.0, 1
  %. = select i1 %cmp13, i32 256, i32 1
  br label %sw.epilog

sw.bb17:                                          ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dither.0)
  %cmp18 = icmp eq i32 %dither.0, 1
  %.54 = select i1 %cmp18, i32 4352, i32 17
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb17, %sw.bb, %if.end10.sw.epilog_crit_edge
  %tmp2.0 = phi i32 [ 0, %if.end10.sw.epilog_crit_edge ], [ %., %sw.bb ], [ %.54, %sw.bb17 ]
  %encoder_id = getelementptr inbounds %struct.radeon_encoder, ptr %encoder, i32 0, i32 2
  %9 = ptrtoint ptr %encoder_id to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %encoder_id, align 4
  %11 = zext i32 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.54)
  switch i32 %10, label %sw.epilog.cleanup_crit_edge [
    i32 19, label %sw.bb25
    i32 15, label %sw.bb26
    i32 20, label %sw.bb27
    i32 25, label %sw.bb28
  ]

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb25:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !108
  tail call void @arm_heavy_mb() #8
  %12 = tail call i32 @llvm.bswap.i32(i32 %tmp2.0) #8
  %rmmio.i = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 31
  %13 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %14, i32 30868
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %12) #8, !srcloc !109
  br label %cleanup

sw.bb26:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !108
  tail call void @arm_heavy_mb() #8
  %15 = tail call i32 @llvm.bswap.i32(i32 %tmp2.0) #8
  %rmmio.i57 = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 31
  %16 = ptrtoint ptr %rmmio.i57 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %rmmio.i57, align 4
  %add.ptr.i58 = getelementptr i8, ptr %17, i32 31380
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i58, i32 %15) #8, !srcloc !109
  br label %cleanup

sw.bb27:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !108
  tail call void @arm_heavy_mb() #8
  %18 = tail call i32 @llvm.bswap.i32(i32 %tmp2.0) #8
  %rmmio.i61 = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 31
  %19 = ptrtoint ptr %rmmio.i61 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %rmmio.i61, align 4
  %add.ptr.i62 = getelementptr i8, ptr %20, i32 31112
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i62, i32 %18) #8, !srcloc !109
  br label %cleanup

sw.bb28:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !108
  tail call void @arm_heavy_mb() #8
  %21 = tail call i32 @llvm.bswap.i32(i32 %tmp2.0) #8
  %rmmio.i65 = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 31
  %22 = ptrtoint ptr %rmmio.i65 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %rmmio.i65, align 4
  %add.ptr.i66 = getelementptr i8, ptr %23, i32 29204
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i66, i32 %21) #8, !srcloc !109
  br label %cleanup

cleanup:                                          ; preds = %sw.bb28, %sw.bb27, %sw.bb26, %sw.bb25, %sw.epilog.cleanup_crit_edge, %if.end10.cleanup_crit_edge, %if.end.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @radeon_get_connector_for_encoder(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @radeon_get_monitor_bpc(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rs600_pm_misc(ptr noundef %rdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %requested_power_state_index = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 22
  %0 = ptrtoint ptr %requested_power_state_index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %requested_power_state_index, align 4
  %power_state = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 18
  %2 = ptrtoint ptr %power_state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %power_state, align 4
  %clock_info = getelementptr %struct.radeon_power_state, ptr %3, i32 %1, i32 1
  %4 = ptrtoint ptr %clock_info to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %clock_info, align 4
  %voltage3 = getelementptr inbounds %struct.radeon_pm_clock_info, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %voltage3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %voltage3, align 4
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.55)
  switch i32 %7, label %entry.if.end66_crit_edge [
    i32 1, label %land.lhs.true
    i32 2, label %if.then64
  ]

entry.if.end66_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end66

land.lhs.true:                                    ; preds = %entry
  %gpio = getelementptr inbounds %struct.radeon_pm_clock_info, ptr %5, i32 0, i32 2, i32 1
  %9 = ptrtoint ptr %gpio to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %gpio, align 4, !range !110
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool.not = icmp eq i8 %10, 0
  br i1 %tobool.not, label %land.lhs.true.if.end66_crit_edge, label %if.then

land.lhs.true.if.end66_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end66

if.then:                                          ; preds = %land.lhs.true
  %misc = getelementptr %struct.radeon_power_state, ptr %3, i32 %1, i32 5
  %11 = ptrtoint ptr %misc to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %misc, align 4
  %and = and i32 %12, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool4.not = icmp eq i32 %and, 0
  %reg28 = getelementptr inbounds %struct.radeon_pm_clock_info, ptr %5, i32 0, i32 2, i32 1, i32 2
  %13 = ptrtoint ptr %reg28 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %reg28, align 4
  %rmmio_size.i256 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 18
  %15 = ptrtoint ptr %rmmio_size.i256 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %rmmio_size.i256, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %14)
  %cmp.i257 = icmp ugt i32 %16, %14
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %14)
  %cmp1.i258 = icmp ult i32 %14, 65536
  %or.cond.i259 = or i1 %cmp1.i258, %cmp.i257
  br i1 %tobool4.not, label %if.else26, label %if.then5

if.then5:                                         ; preds = %if.then
  br i1 %or.cond.i259, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #10
  %rmmio.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %17 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %18, i32 %14
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !106
  %20 = tail call i32 @llvm.bswap.i32(i32 %19) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !107
  br label %r100_mm_rreg.exit

if.else.i:                                        ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #10
  %call3.i = tail call i32 @r100_mm_rreg_slow(ptr noundef %rdev, i32 noundef %14) #8
  br label %r100_mm_rreg.exit

r100_mm_rreg.exit:                                ; preds = %if.else.i, %if.then.i
  %retval.0.i = phi i32 [ %call3.i, %if.else.i ], [ %20, %if.then.i ]
  %active_high = getelementptr inbounds %struct.radeon_pm_clock_info, ptr %5, i32 0, i32 2, i32 3
  %21 = ptrtoint ptr %active_high to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %active_high, align 4, !range !110
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool7.not = icmp eq i8 %22, 0
  %mask11 = getelementptr inbounds %struct.radeon_pm_clock_info, ptr %5, i32 0, i32 2, i32 1, i32 3
  %23 = ptrtoint ptr %mask11 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %mask11, align 4
  %or = or i32 %24, %retval.0.i
  %neg = xor i32 %24, -1
  %and12 = and i32 %retval.0.i, %neg
  %tmp.0 = select i1 %tobool7.not, i32 %and12, i32 %or
  %25 = ptrtoint ptr %reg28 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %reg28, align 4
  %27 = ptrtoint ptr %rmmio_size.i256 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %rmmio_size.i256, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %28, i32 %26)
  %cmp.i250 = icmp ugt i32 %28, %26
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %26)
  %cmp1.i251 = icmp ult i32 %26, 65536
  %or.cond.i252 = or i1 %cmp1.i251, %cmp.i250
  br i1 %or.cond.i252, label %do.body.i, label %if.else.i255

do.body.i:                                        ; preds = %r100_mm_rreg.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !108
  tail call void @arm_heavy_mb() #8
  %29 = tail call i32 @llvm.bswap.i32(i32 %tmp.0) #8
  %rmmio.i253 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %30 = ptrtoint ptr %rmmio.i253 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %rmmio.i253, align 4
  %add.ptr.i254 = getelementptr i8, ptr %31, i32 %26
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i254, i32 %29) #8, !srcloc !109
  br label %r100_mm_wreg.exit

if.else.i255:                                     ; preds = %r100_mm_rreg.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @r100_mm_wreg_slow(ptr noundef %rdev, i32 noundef %26, i32 noundef %tmp.0) #8
  br label %r100_mm_wreg.exit

r100_mm_wreg.exit:                                ; preds = %if.else.i255, %do.body.i
  %delay = getelementptr inbounds %struct.radeon_pm_clock_info, ptr %5, i32 0, i32 2, i32 2
  %32 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool15.not = icmp eq i32 %33, 0
  br i1 %tobool15.not, label %r100_mm_wreg.exit.if.end66_crit_edge, label %cond.false22

r100_mm_wreg.exit.if.end66_crit_edge:             ; preds = %r100_mm_wreg.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end66

cond.false22:                                     ; preds = %r100_mm_wreg.exit
  call void @__sanitizer_cov_trace_pc() #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %34 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %34(i32 noundef %33) #8
  br label %if.end66

if.else26:                                        ; preds = %if.then
  br i1 %or.cond.i259, label %if.then.i262, label %if.else.i264

if.then.i262:                                     ; preds = %if.else26
  call void @__sanitizer_cov_trace_pc() #10
  %rmmio.i260 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %35 = ptrtoint ptr %rmmio.i260 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %rmmio.i260, align 4
  %add.ptr.i261 = getelementptr i8, ptr %36, i32 %14
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i261) #8, !srcloc !106
  %38 = tail call i32 @llvm.bswap.i32(i32 %37) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !107
  br label %r100_mm_rreg.exit266

if.else.i264:                                     ; preds = %if.else26
  call void @__sanitizer_cov_trace_pc() #10
  %call3.i263 = tail call i32 @r100_mm_rreg_slow(ptr noundef %rdev, i32 noundef %14) #8
  br label %r100_mm_rreg.exit266

r100_mm_rreg.exit266:                             ; preds = %if.else.i264, %if.then.i262
  %retval.0.i265 = phi i32 [ %call3.i263, %if.else.i264 ], [ %38, %if.then.i262 ]
  %active_high30 = getelementptr inbounds %struct.radeon_pm_clock_info, ptr %5, i32 0, i32 2, i32 3
  %39 = ptrtoint ptr %active_high30 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %active_high30, align 4, !range !110
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %40)
  %tobool31.not = icmp eq i8 %40, 0
  %mask39 = getelementptr inbounds %struct.radeon_pm_clock_info, ptr %5, i32 0, i32 2, i32 1, i32 3
  %41 = ptrtoint ptr %mask39 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %mask39, align 4
  %neg35 = xor i32 %42, -1
  %and36 = and i32 %retval.0.i265, %neg35
  %or40 = or i32 %42, %retval.0.i265
  %tmp.1 = select i1 %tobool31.not, i32 %or40, i32 %and36
  %43 = ptrtoint ptr %reg28 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %reg28, align 4
  %45 = ptrtoint ptr %rmmio_size.i256 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %rmmio_size.i256, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %46, i32 %44)
  %cmp.i268 = icmp ugt i32 %46, %44
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %44)
  %cmp1.i269 = icmp ult i32 %44, 65536
  %or.cond.i270 = or i1 %cmp1.i269, %cmp.i268
  br i1 %or.cond.i270, label %do.body.i273, label %if.else.i274

do.body.i273:                                     ; preds = %r100_mm_rreg.exit266
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !108
  tail call void @arm_heavy_mb() #8
  %47 = tail call i32 @llvm.bswap.i32(i32 %tmp.1) #8
  %rmmio.i271 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %48 = ptrtoint ptr %rmmio.i271 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %rmmio.i271, align 4
  %add.ptr.i272 = getelementptr i8, ptr %49, i32 %44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i272, i32 %47) #8, !srcloc !109
  br label %r100_mm_wreg.exit275

if.else.i274:                                     ; preds = %r100_mm_rreg.exit266
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @r100_mm_wreg_slow(ptr noundef %rdev, i32 noundef %44, i32 noundef %tmp.1) #8
  br label %r100_mm_wreg.exit275

r100_mm_wreg.exit275:                             ; preds = %if.else.i274, %do.body.i273
  %delay44 = getelementptr inbounds %struct.radeon_pm_clock_info, ptr %5, i32 0, i32 2, i32 2
  %50 = ptrtoint ptr %delay44 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %delay44, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %tobool45.not = icmp eq i32 %51, 0
  br i1 %tobool45.not, label %r100_mm_wreg.exit275.if.end66_crit_edge, label %cond.false56

r100_mm_wreg.exit275.if.end66_crit_edge:          ; preds = %r100_mm_wreg.exit275
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end66

cond.false56:                                     ; preds = %r100_mm_wreg.exit275
  call void @__sanitizer_cov_trace_pc() #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %52 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %52(i32 noundef %51) #8
  br label %if.end66

if.then64:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %vddc_id = getelementptr inbounds %struct.radeon_pm_clock_info, ptr %5, i32 0, i32 2, i32 4
  %53 = ptrtoint ptr %vddc_id to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %vddc_id, align 1
  %conv = zext i8 %54 to i16
  tail call void @radeon_atom_set_voltage(ptr noundef %rdev, i16 noundef zeroext %conv, i8 noundef zeroext 1) #8
  br label %if.end66

if.end66:                                         ; preds = %if.then64, %cond.false56, %r100_mm_wreg.exit275.if.end66_crit_edge, %cond.false22, %r100_mm_wreg.exit.if.end66_crit_edge, %land.lhs.true.if.end66_crit_edge, %entry.if.end66_crit_edge
  %pll_rreg = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 34
  %55 = ptrtoint ptr %pll_rreg to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %pll_rreg, align 8
  %call67 = tail call i32 %56(ptr noundef %rdev, i32 noundef 12) #8
  %and69 = and i32 %call67, -65281
  %misc70 = getelementptr %struct.radeon_power_state, ptr %3, i32 %1, i32 5
  %57 = ptrtoint ptr %misc70 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %misc70, align 4
  %and71 = and i32 %58, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and71)
  %tobool72.not = icmp eq i32 %and71, 0
  br i1 %tobool72.not, label %if.else89, label %if.then73

if.then73:                                        ; preds = %if.end66
  %and75 = and i32 %58, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and75)
  %tobool76.not = icmp eq i32 %and75, 0
  br i1 %tobool76.not, label %if.else80, label %if.then77

if.then77:                                        ; preds = %if.then73
  call void @__sanitizer_cov_trace_pc() #10
  %or79 = or i32 %and69, 8704
  br label %if.end92

if.else80:                                        ; preds = %if.then73
  call void @__sanitizer_cov_trace_pc() #10
  %and82 = and i32 %58, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and82)
  %tobool83.not = icmp eq i32 %and82, 0
  %or86 = or i32 %and69, 17408
  %spec.select = select i1 %tobool83.not, i32 %and69, i32 %or86
  br label %if.end92

if.else89:                                        ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #10
  %or91 = or i32 %and69, 4352
  br label %if.end92

if.end92:                                         ; preds = %if.else89, %if.else80, %if.then77
  %dyn_pwrmgt_sclk_length.0 = phi i32 [ %or79, %if.then77 ], [ %or91, %if.else89 ], [ %spec.select, %if.else80 ]
  %pll_wreg = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 35
  %59 = ptrtoint ptr %pll_wreg to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %pll_wreg, align 4
  tail call void %60(ptr noundef %rdev, i32 noundef 12, i32 noundef %dyn_pwrmgt_sclk_length.0) #8
  %61 = ptrtoint ptr %pll_rreg to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %pll_rreg, align 8
  %call94 = tail call i32 %62(ptr noundef %rdev, i32 noundef 14) #8
  %63 = ptrtoint ptr %misc70 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %misc70, align 4
  %and96 = and i32 %64, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and96)
  %tobool97.not = icmp eq i32 %and96, 0
  br i1 %tobool97.not, label %if.else109, label %if.then98

if.then98:                                        ; preds = %if.end92
  %delay100 = getelementptr inbounds %struct.radeon_pm_clock_info, ptr %5, i32 0, i32 2, i32 2
  %65 = ptrtoint ptr %delay100 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %delay100, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %66)
  %tobool101.not = icmp eq i32 %66, 0
  br i1 %tobool101.not, label %if.else106, label %if.then102

if.then102:                                       ; preds = %if.then98
  call void @__sanitizer_cov_trace_pc() #10
  %shl = shl i32 %66, 3
  %or103 = or i32 %call94, %shl
  %or105 = or i32 %or103, 5
  br label %if.end111

if.else106:                                       ; preds = %if.then98
  call void @__sanitizer_cov_trace_pc() #10
  %or99 = and i32 %call94, -6
  %and107 = or i32 %or99, 1
  br label %if.end111

if.else109:                                       ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #10
  %and110 = and i32 %call94, -2
  br label %if.end111

if.end111:                                        ; preds = %if.else109, %if.else106, %if.then102
  %dyn_sclk_vol_cntl.0 = phi i32 [ %or105, %if.then102 ], [ %and107, %if.else106 ], [ %and110, %if.else109 ]
  %67 = ptrtoint ptr %pll_wreg to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %pll_wreg, align 4
  tail call void %68(ptr noundef %rdev, i32 noundef 14, i32 noundef %dyn_sclk_vol_cntl.0) #8
  %69 = ptrtoint ptr %pll_rreg to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %pll_rreg, align 8
  %call114 = tail call i32 %70(ptr noundef %rdev, i32 noundef 16) #8
  %71 = ptrtoint ptr %misc70 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %misc70, align 4
  %and119 = and i32 %call114, -2
  %and116 = lshr i32 %72, 25
  %and116.lobit = and i32 %and116, 1
  %73 = or i32 %and116.lobit, %and119
  %hdp_dyn_cntl.0 = xor i32 %73, 1
  %74 = ptrtoint ptr %pll_wreg to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %pll_wreg, align 4
  tail call void %75(ptr noundef %rdev, i32 noundef 16, i32 noundef %hdp_dyn_cntl.0) #8
  %76 = ptrtoint ptr %pll_rreg to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %pll_rreg, align 8
  %call125 = tail call i32 %77(ptr noundef %rdev, i32 noundef 41) #8
  %78 = ptrtoint ptr %misc70 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %misc70, align 4
  %and132 = and i32 %call125, -2
  %and127 = lshr i32 %79, 2
  %and127.lobit = and i32 %and127, 1
  %dyn_backbias_cntl.0 = or i32 %and127.lobit, %and132
  %80 = ptrtoint ptr %pll_wreg to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %pll_wreg, align 4
  tail call void %81(ptr noundef %rdev, i32 noundef 41, i32 noundef %dyn_backbias_cntl.0) #8
  %flags = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 7
  %82 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %flags, align 8
  %84 = and i32 %83, 2228224
  call void @__sanitizer_cov_trace_const_cmp4(i32 2097152, i32 %84)
  %85 = icmp eq i32 %84, 2097152
  br i1 %85, label %land.lhs.true141, label %if.end111.if.end158_crit_edge

if.end111.if.end158_crit_edge:                    ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end158

land.lhs.true141:                                 ; preds = %if.end111
  %asic = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 56
  %86 = ptrtoint ptr %asic to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %asic, align 8
  %set_pcie_lanes = getelementptr inbounds %struct.radeon_asic, ptr %87, i32 0, i32 20, i32 10
  %88 = ptrtoint ptr %set_pcie_lanes to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %set_pcie_lanes, align 4
  %tobool143.not = icmp eq ptr %89, null
  br i1 %tobool143.not, label %land.lhs.true141.if.end158_crit_edge, label %land.lhs.true144

land.lhs.true141.if.end158_crit_edge:             ; preds = %land.lhs.true141
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end158

land.lhs.true144:                                 ; preds = %land.lhs.true141
  %pcie_lanes = getelementptr %struct.radeon_power_state, ptr %3, i32 %1, i32 7
  %90 = ptrtoint ptr %pcie_lanes to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %pcie_lanes, align 4
  %92 = ptrtoint ptr %power_state to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %power_state, align 4
  %current_power_state_index = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 20
  %94 = ptrtoint ptr %current_power_state_index to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %current_power_state_index, align 4
  %pcie_lanes149 = getelementptr %struct.radeon_power_state, ptr %93, i32 %95, i32 7
  %96 = ptrtoint ptr %pcie_lanes149 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %pcie_lanes149, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %91, i32 %97)
  %cmp150.not = icmp eq i32 %91, %97
  br i1 %cmp150.not, label %land.lhs.true144.if.end158_crit_edge, label %if.then152

land.lhs.true144.if.end158_crit_edge:             ; preds = %land.lhs.true144
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end158

if.then152:                                       ; preds = %land.lhs.true144
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %89(ptr noundef %rdev, i32 noundef %91) #8
  %98 = ptrtoint ptr %pcie_lanes to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %pcie_lanes, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.1, i32 noundef %99) #8
  br label %if.end158

if.end158:                                        ; preds = %if.then152, %land.lhs.true144.if.end158_crit_edge, %land.lhs.true141.if.end158_crit_edge, %if.end111.if.end158_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @radeon_atom_set_voltage(ptr noundef, i16 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rs600_pm_prepare(ptr noundef %rdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %ddev1 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 1
  %0 = ptrtoint ptr %ddev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ddev1, align 4
  %crtc_list = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 30, i32 20
  %2 = ptrtoint ptr %crtc_list to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn30 = load ptr, ptr %crtc_list, align 4
  %cmp.not31 = icmp eq ptr %.pn30, %crtc_list
  br i1 %cmp.not31, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %rmmio_size.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 18
  %rmmio.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %.pn32 = phi ptr [ %.pn30, %for.body.lr.ph ], [ %.pn, %for.inc.for.body_crit_edge ]
  %enabled = getelementptr i8, ptr %.pn32, i32 988
  %3 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %enabled, align 4, !range !110
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.then

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then:                                          ; preds = %for.body
  %crtc_offset = getelementptr i8, ptr %.pn32, i32 992
  %5 = ptrtoint ptr %crtc_offset to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %crtc_offset, align 8
  %add = add i32 %6, 24704
  %7 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %add)
  %cmp.i = icmp ugt i32 %8, %add
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %add)
  %cmp1.i = icmp ult i32 %add, 65536
  %or.cond.i = or i1 %cmp1.i, %cmp.i
  br i1 %or.cond.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %9 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %10, i32 %add
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !106
  %12 = tail call i32 @llvm.bswap.i32(i32 %11) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !107
  br label %r100_mm_rreg.exit

if.else.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %call3.i = tail call i32 @r100_mm_rreg_slow(ptr noundef %rdev, i32 noundef %add) #8
  br label %r100_mm_rreg.exit

r100_mm_rreg.exit:                                ; preds = %if.else.i, %if.then.i
  %retval.0.i = phi i32 [ %call3.i, %if.else.i ], [ %12, %if.then.i ]
  %or = or i32 %retval.0.i, 16777216
  %13 = ptrtoint ptr %crtc_offset to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %crtc_offset, align 8
  %add9 = add i32 %14, 24704
  %15 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %add9)
  %cmp.i24 = icmp ugt i32 %16, %add9
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %add9)
  %cmp1.i25 = icmp ult i32 %add9, 65536
  %or.cond.i26 = or i1 %cmp1.i25, %cmp.i24
  br i1 %or.cond.i26, label %do.body.i, label %if.else.i29

do.body.i:                                        ; preds = %r100_mm_rreg.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !108
  tail call void @arm_heavy_mb() #8
  %17 = tail call i32 @llvm.bswap.i32(i32 %or) #8
  %18 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i28 = getelementptr i8, ptr %19, i32 %add9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i28, i32 %17) #8, !srcloc !109
  br label %for.inc

if.else.i29:                                      ; preds = %r100_mm_rreg.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @r100_mm_wreg_slow(ptr noundef %rdev, i32 noundef %add9, i32 noundef %or) #8
  br label %for.inc

for.inc:                                          ; preds = %if.else.i29, %do.body.i, %for.body.for.inc_crit_edge
  %20 = ptrtoint ptr %.pn32 to i32
  call void @__asan_load4_noabort(i32 %20)
  %.pn = load ptr, ptr %.pn32, align 4
  %cmp.not = icmp eq ptr %.pn, %crtc_list
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rs600_pm_finish(ptr noundef %rdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %ddev1 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 1
  %0 = ptrtoint ptr %ddev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ddev1, align 4
  %crtc_list = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 30, i32 20
  %2 = ptrtoint ptr %crtc_list to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn30 = load ptr, ptr %crtc_list, align 4
  %cmp.not31 = icmp eq ptr %.pn30, %crtc_list
  br i1 %cmp.not31, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %rmmio_size.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 18
  %rmmio.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %.pn32 = phi ptr [ %.pn30, %for.body.lr.ph ], [ %.pn, %for.inc.for.body_crit_edge ]
  %enabled = getelementptr i8, ptr %.pn32, i32 988
  %3 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %enabled, align 4, !range !110
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.then

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then:                                          ; preds = %for.body
  %crtc_offset = getelementptr i8, ptr %.pn32, i32 992
  %5 = ptrtoint ptr %crtc_offset to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %crtc_offset, align 8
  %add = add i32 %6, 24704
  %7 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %add)
  %cmp.i = icmp ugt i32 %8, %add
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %add)
  %cmp1.i = icmp ult i32 %add, 65536
  %or.cond.i = or i1 %cmp1.i, %cmp.i
  br i1 %or.cond.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %9 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %10, i32 %add
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !106
  %12 = tail call i32 @llvm.bswap.i32(i32 %11) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !107
  br label %r100_mm_rreg.exit

if.else.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %call3.i = tail call i32 @r100_mm_rreg_slow(ptr noundef %rdev, i32 noundef %add) #8
  br label %r100_mm_rreg.exit

r100_mm_rreg.exit:                                ; preds = %if.else.i, %if.then.i
  %retval.0.i = phi i32 [ %call3.i, %if.else.i ], [ %12, %if.then.i ]
  %and = and i32 %retval.0.i, -16777217
  %13 = ptrtoint ptr %crtc_offset to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %crtc_offset, align 8
  %add9 = add i32 %14, 24704
  %15 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %add9)
  %cmp.i24 = icmp ugt i32 %16, %add9
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %add9)
  %cmp1.i25 = icmp ult i32 %add9, 65536
  %or.cond.i26 = or i1 %cmp1.i25, %cmp.i24
  br i1 %or.cond.i26, label %do.body.i, label %if.else.i29

do.body.i:                                        ; preds = %r100_mm_rreg.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !108
  tail call void @arm_heavy_mb() #8
  %17 = tail call i32 @llvm.bswap.i32(i32 %and) #8
  %18 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i28 = getelementptr i8, ptr %19, i32 %add9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i28, i32 %17) #8, !srcloc !109
  br label %for.inc

if.else.i29:                                      ; preds = %r100_mm_rreg.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @r100_mm_wreg_slow(ptr noundef %rdev, i32 noundef %add9, i32 noundef %and) #8
  br label %for.inc

for.inc:                                          ; preds = %if.else.i29, %do.body.i, %for.body.for.inc_crit_edge
  %20 = ptrtoint ptr %.pn32 to i32
  call void @__asan_load4_noabort(i32 %20)
  %.pn = load ptr, ptr %.pn32, align 4
  %cmp.not = icmp eq ptr %.pn, %crtc_list
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @rs600_hpd_sense(ptr nocapture noundef readonly %rdev, i32 noundef %hpd) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %hpd to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.56)
  switch i32 %hpd, label %entry.sw.epilog_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb1
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %rmmio.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %1 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %2, i32 32004
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !106
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !107
  %4 = and i32 %3, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp ne i32 %4, 0
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %rmmio.i14 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %5 = ptrtoint ptr %rmmio.i14 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %rmmio.i14, align 4
  %add.ptr.i15 = getelementptr i8, ptr %6, i32 32020
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i15) #8, !srcloc !106
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !107
  %8 = and i32 %7, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool5.not = icmp ne i32 %8, 0
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb1, %sw.bb, %entry.sw.epilog_crit_edge
  %connected.0.off0 = phi i1 [ false, %entry.sw.epilog_crit_edge ], [ %tobool.not, %sw.bb ], [ %tobool5.not, %sw.bb1 ]
  ret i1 %connected.0.off0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rs600_hpd_set_polarity(ptr nocapture noundef readonly %rdev, i32 noundef %hpd) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %hpd to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.57)
  switch i32 %hpd, label %entry.sw.epilog_crit_edge [
    i32 0, label %rs600_hpd_sense.exit.thread
    i32 1, label %rs600_hpd_sense.exit.thread35
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

rs600_hpd_sense.exit.thread:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %rmmio.i.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %1 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %2, i32 32004
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #8, !srcloc !106
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !107
  %4 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 32008
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !106
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !107
  %7 = and i32 %6, -65537
  %8 = tail call i32 @llvm.bswap.i32(i32 %7)
  %9 = lshr i32 %3, 17
  %10 = and i32 %9, 256
  %11 = or i32 %8, %10
  %tmp.0 = xor i32 %11, 256
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !108
  tail call void @arm_heavy_mb() #8
  %12 = tail call i32 @llvm.bswap.i32(i32 %tmp.0) #8
  %13 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i24 = getelementptr i8, ptr %14, i32 32008
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i24, i32 %12) #8, !srcloc !109
  br label %sw.epilog

rs600_hpd_sense.exit.thread35:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %rmmio.i14.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %15 = ptrtoint ptr %rmmio.i14.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %rmmio.i14.i, align 4
  %add.ptr.i15.i = getelementptr i8, ptr %16, i32 32020
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i15.i) #8, !srcloc !106
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !107
  %18 = ptrtoint ptr %rmmio.i14.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %rmmio.i14.i, align 4
  %add.ptr.i28 = getelementptr i8, ptr %19, i32 32024
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i28) #8, !srcloc !106
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !107
  %21 = and i32 %20, -65537
  %22 = tail call i32 @llvm.bswap.i32(i32 %21)
  %23 = lshr i32 %17, 17
  %24 = and i32 %23, 256
  %25 = or i32 %22, %24
  %tmp.1 = xor i32 %25, 256
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !108
  tail call void @arm_heavy_mb() #8
  %26 = tail call i32 @llvm.bswap.i32(i32 %tmp.1) #8
  %27 = ptrtoint ptr %rmmio.i14.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %rmmio.i14.i, align 4
  %add.ptr.i32 = getelementptr i8, ptr %28, i32 32024
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i32, i32 %26) #8, !srcloc !109
  br label %sw.epilog

sw.epilog:                                        ; preds = %rs600_hpd_sense.exit.thread35, %rs600_hpd_sense.exit.thread, %entry.sw.epilog_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rs600_hpd_init(ptr noundef %rdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %ddev = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 1
  %0 = ptrtoint ptr %ddev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ddev, align 4
  %connector_list = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 30, i32 12
  %2 = ptrtoint ptr %connector_list to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn37 = load ptr, ptr %connector_list, align 4
  %cmp.not38 = icmp eq ptr %.pn37, %connector_list
  br i1 %cmp.not38, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %rmmio.i35 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %asic = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 56
  br label %for.body

for.body:                                         ; preds = %sw.epilog.for.body_crit_edge, %for.body.lr.ph
  %.pn40 = phi ptr [ %.pn37, %for.body.lr.ph ], [ %.pn, %sw.epilog.for.body_crit_edge ]
  %enable.039 = phi i32 [ 0, %for.body.lr.ph ], [ %enable.1, %sw.epilog.for.body_crit_edge ]
  %hpd = getelementptr i8, ptr %.pn40, i32 1056
  %3 = ptrtoint ptr %hpd to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %hpd, align 8
  %5 = zext i32 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.58)
  switch i32 %4, label %for.body.sw.epilog_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb7
  ]

for.body.sw.epilog_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb:                                            ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !108
  tail call void @arm_heavy_mb() #8
  %6 = ptrtoint ptr %rmmio.i35 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rmmio.i35, align 4
  %add.ptr.i = getelementptr i8, ptr %7, i32 32000
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 16777216) #8, !srcloc !109
  br label %sw.epilog

sw.bb7:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !108
  tail call void @arm_heavy_mb() #8
  %8 = ptrtoint ptr %rmmio.i35 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %rmmio.i35, align 4
  %add.ptr.i36 = getelementptr i8, ptr %9, i32 32016
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i36, i32 16777216) #8, !srcloc !109
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb7, %sw.bb, %for.body.sw.epilog_crit_edge
  %10 = ptrtoint ptr %hpd to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %hpd, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %11)
  %cmp10.not = icmp eq i32 %11, 255
  %shl = shl nuw i32 1, %11
  %or = select i1 %cmp10.not, i32 0, i32 %shl
  %enable.1 = or i32 %or, %enable.039
  %12 = ptrtoint ptr %asic to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %asic, align 8
  %set_polarity = getelementptr inbounds %struct.radeon_asic, ptr %13, i32 0, i32 19, i32 3
  %14 = ptrtoint ptr %set_polarity to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %set_polarity, align 4
  tail call void %15(ptr noundef %rdev, i32 noundef %11) #8
  %16 = ptrtoint ptr %.pn40 to i32
  call void @__asan_load4_noabort(i32 %16)
  %.pn = load ptr, ptr %.pn40, align 4
  %cmp.not = icmp eq ptr %.pn, %connector_list
  br i1 %cmp.not, label %sw.epilog.for.end_crit_edge, label %sw.epilog.for.body_crit_edge

sw.epilog.for.body_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

sw.epilog.for.end_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %sw.epilog.for.end_crit_edge, %entry.for.end_crit_edge
  %enable.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %enable.1, %sw.epilog.for.end_crit_edge ]
  tail call void @radeon_irq_kms_enable_hpd(ptr noundef %rdev, i32 noundef %enable.0.lcssa) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @radeon_irq_kms_enable_hpd(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rs600_hpd_fini(ptr noundef %rdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %ddev = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 1
  %0 = ptrtoint ptr %ddev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ddev, align 4
  %connector_list = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 30, i32 12
  %2 = ptrtoint ptr %connector_list to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn31 = load ptr, ptr %connector_list, align 4
  %cmp.not32 = icmp eq ptr %.pn31, %connector_list
  br i1 %cmp.not32, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %rmmio.i29 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  br label %for.body

for.body:                                         ; preds = %sw.epilog.for.body_crit_edge, %for.body.lr.ph
  %.pn34 = phi ptr [ %.pn31, %for.body.lr.ph ], [ %.pn, %sw.epilog.for.body_crit_edge ]
  %disable.033 = phi i32 [ 0, %for.body.lr.ph ], [ %disable.1, %sw.epilog.for.body_crit_edge ]
  %hpd = getelementptr i8, ptr %.pn34, i32 1056
  %3 = ptrtoint ptr %hpd to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %hpd, align 8
  %5 = zext i32 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.59)
  switch i32 %4, label %for.body.sw.epilog_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb7
  ]

for.body.sw.epilog_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb:                                            ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !108
  tail call void @arm_heavy_mb() #8
  %6 = ptrtoint ptr %rmmio.i29 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rmmio.i29, align 4
  %add.ptr.i = getelementptr i8, ptr %7, i32 32000
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #8, !srcloc !109
  br label %sw.epilog

sw.bb7:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !108
  tail call void @arm_heavy_mb() #8
  %8 = ptrtoint ptr %rmmio.i29 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %rmmio.i29, align 4
  %add.ptr.i30 = getelementptr i8, ptr %9, i32 32016
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i30, i32 0) #8, !srcloc !109
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb7, %sw.bb, %for.body.sw.epilog_crit_edge
  %10 = ptrtoint ptr %hpd to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %hpd, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %11)
  %cmp10.not = icmp eq i32 %11, 255
  %shl = shl nuw i32 1, %11
  %or = select i1 %cmp10.not, i32 0, i32 %shl
  %disable.1 = or i32 %or, %disable.033
  %12 = ptrtoint ptr %.pn34 to i32
  call void @__asan_load4_noabort(i32 %12)
  %.pn = load ptr, ptr %.pn34, align 4
  %cmp.not = icmp eq ptr %.pn, %connector_list
  br i1 %cmp.not, label %sw.epilog.for.end_crit_edge, label %sw.epilog.for.body_crit_edge

sw.epilog.for.body_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

sw.epilog.for.end_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %sw.epilog.for.end_crit_edge, %entry.for.end_crit_edge
  %disable.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %disable.1, %sw.epilog.for.end_crit_edge ]
  tail call void @radeon_irq_kms_disable_hpd(ptr noundef %rdev, i32 noundef %disable.0.lcssa) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @radeon_irq_kms_disable_hpd(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rs600_asic_reset(ptr noundef %rdev, i1 noundef zeroext %hard) local_unnamed_addr #0 align 64 {
entry:
  %save = alloca %struct.rv515_mc_save, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %save) #8
  %0 = call ptr @memset(ptr %save, i32 255, i32 12)
  %rmmio.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %1 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %2, i32 3648
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !106
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !107
  %.mask = and i32 %3, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask)
  %tobool.not = icmp eq i32 %.mask, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @rv515_mc_stop(ptr noundef %rdev, ptr noundef nonnull %save) #8
  %4 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i96 = getelementptr i8, ptr %5, i32 3648
  %6 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i96) #8, !srcloc !106
  %7 = call i32 @llvm.bswap.i32(i32 %6) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !107
  %8 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %rdev, align 8
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %9, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, i32 noundef 475, i32 noundef %7) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !108
  call void @arm_heavy_mb() #8
  %10 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i100 = getelementptr i8, ptr %11, i32 1856
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i100, i32 0) #8, !srcloc !109
  %12 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i104 = getelementptr i8, ptr %13, i32 1796
  %14 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i104) #8, !srcloc !106
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !107
  %15 = or i32 %14, 128
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !108
  call void @arm_heavy_mb() #8
  %16 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i108 = getelementptr i8, ptr %17, i32 1796
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i108, i32 %15) #8, !srcloc !109
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !108
  call void @arm_heavy_mb() #8
  %18 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i112 = getelementptr i8, ptr %19, i32 1820
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i112, i32 0) #8, !srcloc !109
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !108
  call void @arm_heavy_mb() #8
  %20 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i116 = getelementptr i8, ptr %21, i32 1812
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i116, i32 0) #8, !srcloc !109
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !108
  call void @arm_heavy_mb() #8
  %22 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i120 = getelementptr i8, ptr %23, i32 1796
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i120, i32 %14) #8, !srcloc !109
  %pdev = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 2
  %24 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %pdev, align 8
  %call3 = call i32 @pci_save_state(ptr noundef %25) #8
  %26 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %pdev, align 8
  call void @pci_clear_master(ptr noundef %27) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %28 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %28(i32 noundef 214748000) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !108
  call void @arm_heavy_mb() #8
  %29 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i124 = getelementptr i8, ptr %30, i32 240
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i124, i32 69206016) #8, !srcloc !109
  %31 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i128 = getelementptr i8, ptr %32, i32 240
  %33 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i128) #8, !srcloc !106
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !107
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %if.end
  %__ms.0169 = phi i32 [ 500, %if.end ], [ %dec, %while.body.while.body_crit_edge ]
  %dec = add nsw i32 %__ms.0169, -1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %34 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %34(i32 noundef 214748000) #8
  %tobool6.not = icmp eq i32 %dec, 0
  br i1 %tobool6.not, label %while.end, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

while.end:                                        ; preds = %while.body
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !108
  call void @arm_heavy_mb() #8
  %35 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i132 = getelementptr i8, ptr %36, i32 240
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i132, i32 0) #8, !srcloc !109
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %37 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %37(i32 noundef 214748000) #8
  %38 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i136 = getelementptr i8, ptr %39, i32 3648
  %40 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i136) #8, !srcloc !106
  %41 = call i32 @llvm.bswap.i32(i32 %40) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !107
  %42 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %rdev, align 8
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %43, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, i32 noundef 495, i32 noundef %41) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !108
  call void @arm_heavy_mb() #8
  %44 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i140 = getelementptr i8, ptr %45, i32 240
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i140, i32 16777216) #8, !srcloc !109
  %46 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i144 = getelementptr i8, ptr %47, i32 240
  %48 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i144) #8, !srcloc !106
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !107
  br label %while.body17

while.body17:                                     ; preds = %while.body17.while.body17_crit_edge, %while.end
  %__ms13.0170 = phi i32 [ 500, %while.end ], [ %dec15, %while.body17.while.body17_crit_edge ]
  %dec15 = add nsw i32 %__ms13.0170, -1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %49 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %49(i32 noundef 214748000) #8
  %tobool16.not = icmp eq i32 %dec15, 0
  br i1 %tobool16.not, label %while.end18, label %while.body17.while.body17_crit_edge

while.body17.while.body17_crit_edge:              ; preds = %while.body17
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body17

while.end18:                                      ; preds = %while.body17
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !108
  call void @arm_heavy_mb() #8
  %50 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i148 = getelementptr i8, ptr %51, i32 240
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i148, i32 0) #8, !srcloc !109
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %52 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %52(i32 noundef 214748000) #8
  %53 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i152 = getelementptr i8, ptr %54, i32 3648
  %55 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i152) #8, !srcloc !106
  %56 = call i32 @llvm.bswap.i32(i32 %55) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !107
  %57 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %rdev, align 8
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %58, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, i32 noundef 503, i32 noundef %56) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !108
  call void @arm_heavy_mb() #8
  %59 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i156 = getelementptr i8, ptr %60, i32 240
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i156, i32 65536) #8, !srcloc !109
  %61 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i160 = getelementptr i8, ptr %62, i32 240
  %63 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i160) #8, !srcloc !106
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !107
  br label %while.body29

while.body29:                                     ; preds = %while.body29.while.body29_crit_edge, %while.end18
  %__ms25.0171 = phi i32 [ 500, %while.end18 ], [ %dec27, %while.body29.while.body29_crit_edge ]
  %dec27 = add nsw i32 %__ms25.0171, -1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %64 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %64(i32 noundef 214748000) #8
  %tobool28.not = icmp eq i32 %dec27, 0
  br i1 %tobool28.not, label %while.end30, label %while.body29.while.body29_crit_edge

while.body29.while.body29_crit_edge:              ; preds = %while.body29
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body29

while.end30:                                      ; preds = %while.body29
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !108
  call void @arm_heavy_mb() #8
  %65 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i164 = getelementptr i8, ptr %66, i32 240
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i164, i32 0) #8, !srcloc !109
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %67 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %67(i32 noundef 214748000) #8
  %68 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i168 = getelementptr i8, ptr %69, i32 3648
  %70 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i168) #8, !srcloc !106
  %71 = call i32 @llvm.bswap.i32(i32 %70) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !107
  %72 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %rdev, align 8
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %73, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, i32 noundef 511, i32 noundef %71) #11
  %74 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %pdev, align 8
  call void @pci_restore_state(ptr noundef %75) #8
  %76 = and i32 %71, 68157440
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %76)
  %77 = icmp eq i32 %76, 0
  %78 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %rdev, align 8
  br i1 %77, label %do.end50, label %do.end46

do.end46:                                         ; preds = %while.end30
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %79, ptr noundef nonnull @.str.14) #11
  br label %if.end52

do.end50:                                         ; preds = %while.end30
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %79, ptr noundef nonnull @.str.18) #11
  br label %if.end52

if.end52:                                         ; preds = %do.end50, %do.end46
  %ret.0 = phi i32 [ -1, %do.end46 ], [ 0, %do.end50 ]
  call void @rv515_mc_resume(ptr noundef %rdev, ptr noundef nonnull %save) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end52, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %if.end52 ], [ 0, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %save) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rv515_mc_stop(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_save_state(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_clear_master(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_restore_state(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rv515_mc_resume(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rs600_gart_tlb_flush(ptr noundef %rdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %mc_rreg = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 32
  %0 = ptrtoint ptr %mc_rreg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mc_rreg, align 8
  %call = tail call i32 %1(ptr noundef %rdev, i32 noundef 256) #8
  %and = and i32 %call, -805306369
  %mc_wreg = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 33
  %2 = ptrtoint ptr %mc_wreg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mc_wreg, align 4
  tail call void %3(ptr noundef %rdev, i32 noundef 256, i32 noundef %and) #8
  %4 = ptrtoint ptr %mc_rreg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mc_rreg, align 8
  %call2 = tail call i32 %5(ptr noundef %rdev, i32 noundef 256) #8
  %or = or i32 %call2, 805306368
  %6 = ptrtoint ptr %mc_wreg to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mc_wreg, align 4
  tail call void %7(ptr noundef %rdev, i32 noundef 256, i32 noundef %or) #8
  %8 = ptrtoint ptr %mc_rreg to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mc_rreg, align 8
  %call5 = tail call i32 %9(ptr noundef %rdev, i32 noundef 256) #8
  %and6 = and i32 %call5, -805306369
  %10 = ptrtoint ptr %mc_wreg to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mc_wreg, align 4
  tail call void %11(ptr noundef %rdev, i32 noundef 256, i32 noundef %and6) #8
  %12 = ptrtoint ptr %mc_rreg to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %mc_rreg, align 8
  %call9 = tail call i32 %13(ptr noundef %rdev, i32 noundef 256) #8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i64 @rs600_gart_get_page_entry(i64 noundef %addr, i32 noundef %flags) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i64 %addr, -4096
  %and1 = and i32 %flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1)
  %tobool.not = icmp eq i32 %and1, 0
  %spec.select.v = select i1 %tobool.not, i64 2, i64 3
  %spec.select = or i64 %spec.select.v, %and
  %and3 = shl i32 %flags, 4
  %0 = and i32 %and3, 32
  %1 = zext i32 %0 to i64
  %2 = or i64 %spec.select, %1
  %3 = and i32 %and3, 64
  %4 = zext i32 %3 to i64
  %5 = or i64 %2, %4
  %and13 = lshr i32 %flags, 1
  %6 = and i32 %and13, 4
  %7 = zext i32 %6 to i64
  %8 = or i64 %5, %7
  ret i64 %8
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rs600_gart_set_page(ptr nocapture noundef readonly %rdev, i32 noundef %i, i64 noundef %entry1) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %ptr2 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 43, i32 2
  %0 = ptrtoint ptr %ptr2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ptr2, align 8
  %mul = shl i32 %i, 3
  %add.ptr = getelementptr i8, ptr %1, i32 %mul
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !111
  tail call void @arm_heavy_mb() #8
  %conv.i = trunc i64 %entry1 to i32
  %2 = tail call i32 @llvm.bswap.i32(i32 %conv.i) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %2) #8, !srcloc !109
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !112
  tail call void @arm_heavy_mb() #8
  %shr.i = lshr i64 %entry1, 32
  %conv3.i = trunc i64 %shr.i to i32
  %3 = tail call i32 @llvm.bswap.i32(i32 %conv3.i) #8
  %add.ptr.i = getelementptr i8, ptr %add.ptr, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %3) #8, !srcloc !109
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rs600_irq_set(ptr noundef %rdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %rmmio.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %0 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 32008
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !106
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !107
  %3 = and i32 %2, -257
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  %5 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i142 = getelementptr i8, ptr %6, i32 32024
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i142) #8, !srcloc !106
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !107
  %8 = and i32 %7, -257
  %9 = tail call i32 @llvm.bswap.i32(i32 %8)
  %family = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 6
  %10 = ptrtoint ptr %family to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %family, align 4
  %.off = add i32 %11, -18
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.off)
  %switch = icmp ult i32 %.off, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 26, i32 %11)
  %cmp10 = icmp ugt i32 %11, 26
  %or.cond = or i1 %cmp10, %switch
  br i1 %or.cond, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %12 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i146 = getelementptr i8, ptr %13, i32 29704
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i146) #8, !srcloc !106
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !107
  %15 = and i32 %14, -17
  %16 = tail call i32 @llvm.bswap.i32(i32 %15)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %hdmi0.0 = phi i32 [ %16, %if.then ], [ 0, %entry.if.end_crit_edge ]
  %irq = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 55
  %17 = ptrtoint ptr %irq to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %irq, align 8, !range !110
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool.not = icmp eq i8 %18, 0
  br i1 %tobool.not, label %do.end, label %if.end32

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 682, i32 noundef 9, ptr noundef nonnull @.str.20) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !108
  tail call void @arm_heavy_mb() #8
  %19 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i150 = getelementptr i8, ptr %20, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i150, i32 0) #8, !srcloc !109
  br label %cleanup

if.end32:                                         ; preds = %if.end
  %ring_int = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 55, i32 2
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %ring_int, i32 noundef 4) #8
  %21 = ptrtoint ptr %ring_int to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %ring_int, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool35.not = icmp eq i32 %22, 0
  %spec.select = select i1 %tobool35.not, i32 0, i32 2
  %crtc_vblank_int = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 55, i32 3
  %23 = ptrtoint ptr %crtc_vblank_int to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %crtc_vblank_int, align 8, !range !110
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool40.not = icmp eq i8 %24, 0
  br i1 %tobool40.not, label %lor.lhs.false41, label %if.end32.if.then46_crit_edge

if.end32.if.then46_crit_edge:                     ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then46

lor.lhs.false41:                                  ; preds = %if.end32
  %pflip = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 55, i32 4
  %call.i.i137 = tail call zeroext i1 @__kasan_check_read(ptr noundef %pflip, i32 noundef 4) #8
  %25 = ptrtoint ptr %pflip to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile i32, ptr %pflip, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool45.not = icmp eq i32 %26, 0
  br i1 %tobool45.not, label %lor.lhs.false41.if.end48_crit_edge, label %lor.lhs.false41.if.then46_crit_edge

lor.lhs.false41.if.then46_crit_edge:              ; preds = %lor.lhs.false41
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then46

lor.lhs.false41.if.end48_crit_edge:               ; preds = %lor.lhs.false41
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end48

if.then46:                                        ; preds = %lor.lhs.false41.if.then46_crit_edge, %if.end32.if.then46_crit_edge
  br label %if.end48

if.end48:                                         ; preds = %if.then46, %lor.lhs.false41.if.end48_crit_edge
  %mode_int.0 = phi i32 [ 1, %if.then46 ], [ 0, %lor.lhs.false41.if.end48_crit_edge ]
  %arrayidx51 = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 55, i32 3, i32 1
  %27 = ptrtoint ptr %arrayidx51 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx51, align 1, !range !110
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool52.not = icmp eq i8 %28, 0
  br i1 %tobool52.not, label %lor.lhs.false53, label %if.end48.if.then59_crit_edge

if.end48.if.then59_crit_edge:                     ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then59

lor.lhs.false53:                                  ; preds = %if.end48
  %arrayidx56 = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 55, i32 4, i32 1
  %call.i.i138 = tail call zeroext i1 @__kasan_check_read(ptr noundef %arrayidx56, i32 noundef 4) #8
  %29 = ptrtoint ptr %arrayidx56 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile i32, ptr %arrayidx56, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool58.not = icmp eq i32 %30, 0
  br i1 %tobool58.not, label %lor.lhs.false53.if.end61_crit_edge, label %lor.lhs.false53.if.then59_crit_edge

lor.lhs.false53.if.then59_crit_edge:              ; preds = %lor.lhs.false53
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then59

lor.lhs.false53.if.end61_crit_edge:               ; preds = %lor.lhs.false53
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end61

if.then59:                                        ; preds = %lor.lhs.false53.if.then59_crit_edge, %if.end48.if.then59_crit_edge
  %or60 = or i32 %mode_int.0, 256
  br label %if.end61

if.end61:                                         ; preds = %if.then59, %lor.lhs.false53.if.end61_crit_edge
  %mode_int.1 = phi i32 [ %or60, %if.then59 ], [ %mode_int.0, %lor.lhs.false53.if.end61_crit_edge ]
  %hpd = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 55, i32 6
  %31 = ptrtoint ptr %hpd to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %hpd, align 4, !range !110
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %tobool64.not = icmp eq i8 %32, 0
  %masksel = select i1 %tobool64.not, i32 0, i32 65536
  %spec.select133 = or i32 %masksel, %4
  %arrayidx70 = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 55, i32 6, i32 1
  %33 = ptrtoint ptr %arrayidx70 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %arrayidx70, align 1, !range !110
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %tobool71.not = icmp eq i8 %34, 0
  %masksel175 = select i1 %tobool71.not, i32 0, i32 65536
  %hpd2.0 = or i32 %masksel175, %9
  %afmt = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 55, i32 7
  %35 = ptrtoint ptr %afmt to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %afmt, align 1, !range !110
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !108
  tail call void @arm_heavy_mb() #8
  %37 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i154 = getelementptr i8, ptr %38, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i154, i32 %spec.select) #8, !srcloc !109
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !108
  tail call void @arm_heavy_mb() #8
  %39 = tail call i32 @llvm.bswap.i32(i32 %mode_int.1) #8
  %40 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i158 = getelementptr i8, ptr %41, i32 25920
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i158, i32 %39) #8, !srcloc !109
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !108
  tail call void @arm_heavy_mb() #8
  %42 = tail call i32 @llvm.bswap.i32(i32 %spec.select133) #8
  %43 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i162 = getelementptr i8, ptr %44, i32 32008
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i162, i32 %42) #8, !srcloc !109
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !108
  tail call void @arm_heavy_mb() #8
  %45 = tail call i32 @llvm.bswap.i32(i32 %hpd2.0) #8
  %46 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i166 = getelementptr i8, ptr %47, i32 32024
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i166, i32 %45) #8, !srcloc !109
  %48 = ptrtoint ptr %family to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %family, align 4
  %.off134 = add i32 %49, -18
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.off134)
  %switch135 = icmp ult i32 %.off134, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 26, i32 %49)
  %cmp91 = icmp ugt i32 %49, 26
  %or.cond136 = or i1 %cmp91, %switch135
  br i1 %or.cond136, label %if.then92, label %if.end61.if.end93_crit_edge

if.end61.if.end93_crit_edge:                      ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end93

if.then92:                                        ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %tobool77.not = icmp eq i8 %36, 0
  %or79 = or i32 %hdmi0.0, 268435456
  %hdmi0.1 = select i1 %tobool77.not, i32 %hdmi0.0, i32 %or79
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !108
  tail call void @arm_heavy_mb() #8
  %50 = tail call i32 @llvm.bswap.i32(i32 %hdmi0.1) #8
  %51 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i170 = getelementptr i8, ptr %52, i32 29704
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i170, i32 %50) #8, !srcloc !109
  br label %if.end93

if.end93:                                         ; preds = %if.then92, %if.end61.if.end93_crit_edge
  %53 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i174 = getelementptr i8, ptr %54, i32 64
  %55 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i174) #8, !srcloc !106
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !107
  br label %cleanup

cleanup:                                          ; preds = %if.end93, %do.end
  %retval.0 = phi i32 [ 0, %if.end93 ], [ -22, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rs600_irq_disable(ptr noundef %rdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %rmmio.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %0 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 29704
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !106
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !107
  %3 = and i32 %2, -17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !108
  tail call void @arm_heavy_mb() #8
  %4 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i9 = getelementptr i8, ptr %5, i32 29704
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i9, i32 %3) #8, !srcloc !109
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !108
  tail call void @arm_heavy_mb() #8
  %6 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i13 = getelementptr i8, ptr %7, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i13, i32 0) #8, !srcloc !109
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !108
  tail call void @arm_heavy_mb() #8
  %8 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i17 = getelementptr i8, ptr %9, i32 25920
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i17, i32 0) #8, !srcloc !109
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %10 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %10(i32 noundef 214748000) #8
  %call1 = tail call fastcc i32 @rs600_irq_ack(ptr noundef %rdev)
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rs600_irq_ack(ptr noundef %rdev) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %rmmio.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %0 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 68
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !106
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !107
  %and = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %4 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i107 = getelementptr i8, ptr %5, i32 32476
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i107) #8, !srcloc !106
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !107
  %stat_regs = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 55, i32 8
  %8 = ptrtoint ptr %stat_regs to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %stat_regs, align 4
  %9 = and i32 %7, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool7.not = icmp eq i32 %9, 0
  br i1 %tobool7.not, label %if.then.if.end_crit_edge, label %if.then8

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then8:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !108
  tail call void @arm_heavy_mb() #8
  %10 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i111 = getelementptr i8, ptr %11, i32 25908
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i111, i32 268435456) #8, !srcloc !109
  br label %if.end

if.end:                                           ; preds = %if.then8, %if.then.if.end_crit_edge
  %12 = ptrtoint ptr %stat_regs to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %stat_regs, align 4
  %14 = and i32 %13, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool14.not = icmp eq i32 %14, 0
  br i1 %tobool14.not, label %if.end.if.end16_crit_edge, label %if.then15

if.end.if.end16_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end16

if.then15:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !108
  tail call void @arm_heavy_mb() #8
  %15 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i115 = getelementptr i8, ptr %16, i32 27956
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i115, i32 268435456) #8, !srcloc !109
  br label %if.end16

if.end16:                                         ; preds = %if.then15, %if.end.if.end16_crit_edge
  %17 = ptrtoint ptr %stat_regs to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %stat_regs, align 4
  %19 = and i32 %18, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool22.not = icmp eq i32 %19, 0
  br i1 %tobool22.not, label %if.end16.if.end25_crit_edge, label %if.then23

if.end16.if.end25_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end25

if.then23:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  %20 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i119 = getelementptr i8, ptr %21, i32 32008
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i119) #8, !srcloc !106
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !107
  %23 = or i32 %22, 16777216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !108
  tail call void @arm_heavy_mb() #8
  %24 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i123 = getelementptr i8, ptr %25, i32 32008
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i123, i32 %23) #8, !srcloc !109
  br label %if.end25

if.end25:                                         ; preds = %if.then23, %if.end16.if.end25_crit_edge
  %26 = ptrtoint ptr %stat_regs to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %stat_regs, align 4
  %28 = and i32 %27, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool31.not = icmp eq i32 %28, 0
  br i1 %tobool31.not, label %if.end25.if.end39_crit_edge, label %if.then32

if.end25.if.end39_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end39

if.then32:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #10
  %29 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i127 = getelementptr i8, ptr %30, i32 32024
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i127) #8, !srcloc !106
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !107
  %32 = or i32 %31, 16777216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !108
  tail call void @arm_heavy_mb() #8
  %33 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i131 = getelementptr i8, ptr %34, i32 32024
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i131, i32 %32) #8, !srcloc !109
  br label %if.end39

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %stat_regs37 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 55, i32 8
  %35 = ptrtoint ptr %stat_regs37 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 0, ptr %stat_regs37, align 4
  br label %if.end39

if.end39:                                         ; preds = %if.else, %if.then32, %if.end25.if.end39_crit_edge
  %family = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 6
  %36 = ptrtoint ptr %family to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %family, align 4
  %.off = add i32 %37, -18
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.off)
  %switch = icmp ult i32 %.off, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 26, i32 %37)
  %cmp47 = icmp ugt i32 %37, 26
  %or.cond = or i1 %cmp47, %switch
  br i1 %or.cond, label %if.then48, label %if.else63

if.then48:                                        ; preds = %if.end39
  %38 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i135 = getelementptr i8, ptr %39, i32 29700
  %40 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i135) #8, !srcloc !106
  %41 = shl i32 %40, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !107
  %and50 = and i32 %41, 268435456
  %hdmi0_status = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 55, i32 8, i32 0, i32 0, i32 1
  %42 = ptrtoint ptr %hdmi0_status to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %and50, ptr %hdmi0_status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and50)
  %tobool58.not = icmp eq i32 %and50, 0
  br i1 %tobool58.not, label %if.then48.if.end67_crit_edge, label %if.then59

if.then48.if.end67_crit_edge:                     ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end67

if.then59:                                        ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #10
  %43 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i139 = getelementptr i8, ptr %44, i32 29704
  %45 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i139) #8, !srcloc !106
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !107
  %46 = or i32 %45, 32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !108
  tail call void @arm_heavy_mb() #8
  %47 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i143 = getelementptr i8, ptr %48, i32 29704
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i143, i32 %46) #8, !srcloc !109
  br label %if.end67

if.else63:                                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #10
  %hdmi0_status66 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 55, i32 8, i32 0, i32 0, i32 1
  %49 = ptrtoint ptr %hdmi0_status66 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 0, ptr %hdmi0_status66, align 4
  br label %if.end67

if.end67:                                         ; preds = %if.else63, %if.then59, %if.then48.if.end67_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool68.not = icmp eq i32 %2, 0
  br i1 %tobool68.not, label %if.end67.if.end70_crit_edge, label %if.then69

if.end67.if.end70_crit_edge:                      ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end70

if.then69:                                        ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !108
  tail call void @arm_heavy_mb() #8
  %50 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i147 = getelementptr i8, ptr %51, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i147, i32 %2) #8, !srcloc !109
  br label %if.end70

if.end70:                                         ; preds = %if.then69, %if.end67.if.end70_crit_edge
  %and71 = and i32 %3, 33554432
  ret i32 %and71
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rs600_irq_process(ptr noundef %rdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @rs600_irq_ack(ptr noundef %rdev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %stat_regs = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 55, i32 8
  %0 = ptrtoint ptr %stat_regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %stat_regs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool1.not = icmp eq i32 %1, 0
  br i1 %tobool1.not, label %land.lhs.true2, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true2:                                   ; preds = %land.lhs.true
  %hdmi0_status = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 55, i32 8, i32 0, i32 0, i32 1
  %2 = ptrtoint ptr %hdmi0_status to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hdmi0_status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool5.not = icmp eq i32 %3, 0
  br i1 %tobool5.not, label %land.lhs.true2.cleanup_crit_edge, label %land.lhs.true2.if.end_crit_edge

land.lhs.true2.if.end_crit_edge:                  ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true2.cleanup_crit_edge:                 ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true2.if.end_crit_edge, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %hdmi0_status13 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 55, i32 8, i32 0, i32 0, i32 1
  %stat_regs8 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 55, i32 8
  %crtc_vblank_int = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 55, i32 3
  %ddev = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 1
  %vblank_sync = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 5
  %vblank_queue = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 55, i32 5
  %pflip = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 55, i32 4
  %arrayidx47 = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 55, i32 3, i32 1
  %arrayidx59 = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 55, i32 4, i32 1
  br label %while.cond

while.cond:                                       ; preds = %if.end88, %if.end
  %status.0 = phi i32 [ %call, %if.end ], [ %call89, %if.end88 ]
  %queue_hotplug.0.off0 = phi i1 [ false, %if.end ], [ %queue_hotplug.2.off0, %if.end88 ]
  %queue_hdmi.0.off0 = phi i1 [ false, %if.end ], [ %queue_hdmi.1.off0, %if.end88 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %status.0)
  %tobool6.not = icmp eq i32 %status.0, 0
  br i1 %tobool6.not, label %lor.lhs.false, label %while.body

lor.lhs.false:                                    ; preds = %while.cond
  %4 = ptrtoint ptr %stat_regs8 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %stat_regs8, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool10.not = icmp eq i32 %5, 0
  br i1 %tobool10.not, label %lor.rhs, label %lor.lhs.false.if.end17_crit_edge

lor.lhs.false.if.end17_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end17

lor.rhs:                                          ; preds = %lor.lhs.false
  %6 = ptrtoint ptr %hdmi0_status13 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %hdmi0_status13, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool14.not = icmp eq i32 %7, 0
  br i1 %tobool14.not, label %while.end, label %lor.rhs.if.end17_crit_edge

lor.rhs.if.end17_crit_edge:                       ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end17

while.body:                                       ; preds = %while.cond
  %8 = and i32 %status.0, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool15.not = icmp eq i32 %8, 0
  br i1 %tobool15.not, label %while.body.if.end17_crit_edge, label %if.then16

while.body.if.end17_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end17

if.then16:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @radeon_fence_process(ptr noundef %rdev, i32 noundef 0) #8
  br label %if.end17

if.end17:                                         ; preds = %if.then16, %while.body.if.end17_crit_edge, %lor.rhs.if.end17_crit_edge, %lor.lhs.false.if.end17_crit_edge
  %9 = ptrtoint ptr %stat_regs8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %stat_regs8, align 4
  %11 = and i32 %10, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool23.not = icmp eq i32 %11, 0
  br i1 %tobool23.not, label %if.end17.if.end37_crit_edge, label %if.then24

if.end17.if.end37_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end37

if.then24:                                        ; preds = %if.end17
  %12 = ptrtoint ptr %crtc_vblank_int to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %crtc_vblank_int, align 8, !range !110
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool26.not = icmp eq i8 %13, 0
  br i1 %tobool26.not, label %if.then24.if.end30_crit_edge, label %if.then27

if.then24.if.end30_crit_edge:                     ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end30

if.then27:                                        ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #10
  %14 = ptrtoint ptr %ddev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ddev, align 4
  %call28 = tail call zeroext i1 @drm_handle_vblank(ptr noundef %15, i32 noundef 0) #8
  %16 = ptrtoint ptr %vblank_sync to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 1, ptr %vblank_sync, align 8
  tail call void @__wake_up(ptr noundef %vblank_queue, i32 noundef 3, i32 noundef 1, ptr noundef null) #8
  br label %if.end30

if.end30:                                         ; preds = %if.then27, %if.then24.if.end30_crit_edge
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %pflip, i32 noundef 4) #8
  %17 = ptrtoint ptr %pflip to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %pflip, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool34.not = icmp eq i32 %18, 0
  br i1 %tobool34.not, label %if.end30.if.end37_crit_edge, label %if.then35

if.end30.if.end37_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end37

if.then35:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @radeon_crtc_handle_vblank(ptr noundef %rdev, i32 noundef 0) #8
  br label %if.end37

if.end37:                                         ; preds = %if.then35, %if.end30.if.end37_crit_edge, %if.end17.if.end37_crit_edge
  %19 = ptrtoint ptr %stat_regs8 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %stat_regs8, align 4
  %21 = and i32 %20, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool43.not = icmp eq i32 %21, 0
  br i1 %tobool43.not, label %if.end37.if.end64_crit_edge, label %if.then44

if.end37.if.end64_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end64

if.then44:                                        ; preds = %if.end37
  %22 = ptrtoint ptr %arrayidx47 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx47, align 1, !range !110
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool48.not = icmp eq i8 %23, 0
  br i1 %tobool48.not, label %if.then44.if.end56_crit_edge, label %if.then49

if.then44.if.end56_crit_edge:                     ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end56

if.then49:                                        ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #10
  %24 = ptrtoint ptr %ddev to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ddev, align 4
  %call51 = tail call zeroext i1 @drm_handle_vblank(ptr noundef %25, i32 noundef 1) #8
  %26 = ptrtoint ptr %vblank_sync to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 1, ptr %vblank_sync, align 8
  tail call void @__wake_up(ptr noundef %vblank_queue, i32 noundef 3, i32 noundef 1, ptr noundef null) #8
  br label %if.end56

if.end56:                                         ; preds = %if.then49, %if.then44.if.end56_crit_edge
  %call.i.i144 = tail call zeroext i1 @__kasan_check_read(ptr noundef %arrayidx59, i32 noundef 4) #8
  %27 = ptrtoint ptr %arrayidx59 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile i32, ptr %arrayidx59, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool61.not = icmp eq i32 %28, 0
  br i1 %tobool61.not, label %if.end56.if.end64_crit_edge, label %if.then62

if.end56.if.end64_crit_edge:                      ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end64

if.then62:                                        ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @radeon_crtc_handle_vblank(ptr noundef %rdev, i32 noundef 1) #8
  br label %if.end64

if.end64:                                         ; preds = %if.then62, %if.end56.if.end64_crit_edge, %if.end37.if.end64_crit_edge
  %29 = ptrtoint ptr %stat_regs8 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %stat_regs8, align 4
  %31 = and i32 %30, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool70.not = icmp eq i32 %31, 0
  br i1 %tobool70.not, label %if.end64.if.end72_crit_edge, label %if.then71

if.end64.if.end72_crit_edge:                      ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end72

if.then71:                                        ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.21) #8
  br label %if.end72

if.end72:                                         ; preds = %if.then71, %if.end64.if.end72_crit_edge
  %queue_hotplug.1.off0 = phi i1 [ true, %if.then71 ], [ %queue_hotplug.0.off0, %if.end64.if.end72_crit_edge ]
  %32 = ptrtoint ptr %stat_regs8 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %stat_regs8, align 4
  %34 = and i32 %33, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool78.not = icmp eq i32 %34, 0
  br i1 %tobool78.not, label %if.end72.if.end80_crit_edge, label %if.then79

if.end72.if.end80_crit_edge:                      ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end80

if.then79:                                        ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.22) #8
  br label %if.end80

if.end80:                                         ; preds = %if.then79, %if.end72.if.end80_crit_edge
  %queue_hotplug.2.off0 = phi i1 [ true, %if.then79 ], [ %queue_hotplug.1.off0, %if.end72.if.end80_crit_edge ]
  %35 = ptrtoint ptr %hdmi0_status13 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %hdmi0_status13, align 4
  %37 = and i32 %36, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool86.not = icmp eq i32 %37, 0
  br i1 %tobool86.not, label %if.end80.if.end88_crit_edge, label %if.then87

if.end80.if.end88_crit_edge:                      ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end88

if.then87:                                        ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.23) #8
  br label %if.end88

if.end88:                                         ; preds = %if.then87, %if.end80.if.end88_crit_edge
  %queue_hdmi.1.off0 = phi i1 [ true, %if.then87 ], [ %queue_hdmi.0.off0, %if.end80.if.end88_crit_edge ]
  %call89 = tail call fastcc i32 @rs600_irq_ack(ptr noundef %rdev)
  br label %while.cond

while.end:                                        ; preds = %lor.rhs
  br i1 %queue_hotplug.0.off0, label %if.then91, label %while.end.if.end93_crit_edge

while.end.if.end93_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end93

if.then91:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  %hotplug_work = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 88
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %38 = load ptr, ptr @system_wq, align 4
  %call.i.i145 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %38, ptr noundef %hotplug_work, i32 noundef 0) #8
  br label %if.end93

if.end93:                                         ; preds = %if.then91, %while.end.if.end93_crit_edge
  br i1 %queue_hdmi.0.off0, label %if.then95, label %if.end93.if.end97_crit_edge

if.end93.if.end97_crit_edge:                      ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end97

if.then95:                                        ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #10
  %audio_work = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 90
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %39 = load ptr, ptr @system_wq, align 4
  %call.i.i146 = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %39, ptr noundef %audio_work) #8
  br label %if.end97

if.end97:                                         ; preds = %if.then95, %if.end93.if.end97_crit_edge
  %msi_enabled = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 84
  %40 = ptrtoint ptr %msi_enabled to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %msi_enabled, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %tobool98.not = icmp eq i32 %41, 0
  br i1 %tobool98.not, label %if.end97.cleanup_crit_edge, label %if.then99

if.end97.cleanup_crit_edge:                       ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then99:                                        ; preds = %if.end97
  %family = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 6
  %42 = ptrtoint ptr %family to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %family, align 4
  %.off = add i32 %43, -18
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.off)
  %switch = icmp ult i32 %.off, 3
  br i1 %switch, label %sw.bb, label %sw.default

sw.bb:                                            ; preds = %if.then99
  call void @__sanitizer_cov_trace_pc() #10
  %rmmio.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %44 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %45, i32 48
  %46 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !106
  %47 = tail call i32 @llvm.bswap.i32(i32 %46) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !107
  %and101 = and i32 %47, -1048577
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !108
  tail call void @arm_heavy_mb() #8
  %48 = tail call i32 @llvm.bswap.i32(i32 %and101) #8
  %49 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i150 = getelementptr i8, ptr %50, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i150, i32 %48) #8, !srcloc !109
  %or = or i32 %47, 1048576
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !108
  tail call void @arm_heavy_mb() #8
  %51 = tail call i32 @llvm.bswap.i32(i32 %or) #8
  %52 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i154 = getelementptr i8, ptr %53, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i154, i32 %51) #8, !srcloc !109
  br label %cleanup

sw.default:                                       ; preds = %if.then99
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !108
  tail call void @arm_heavy_mb() #8
  %rmmio.i157 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %54 = ptrtoint ptr %rmmio.i157 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %rmmio.i157, align 4
  %add.ptr.i158 = getelementptr i8, ptr %55, i32 352
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i158, i32 16777216) #8, !srcloc !109
  br label %cleanup

cleanup:                                          ; preds = %sw.default, %sw.bb, %if.end97.cleanup_crit_edge, %land.lhs.true2.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %land.lhs.true2.cleanup_crit_edge ], [ 1, %sw.bb ], [ 1, %sw.default ], [ 1, %if.end97.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @radeon_fence_process(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @drm_handle_vblank(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @radeon_crtc_handle_vblank(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rs600_get_vblank_counter(ptr nocapture noundef readonly %rdev, i32 noundef %crtc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %crtc)
  %cmp = icmp eq i32 %crtc, 0
  %rmmio.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %0 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rmmio.i, align 4
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr.i = getelementptr i8, ptr %1, i32 24740
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !106
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !107
  br label %return

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr.i6 = getelementptr i8, ptr %1, i32 26788
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i6) #8, !srcloc !106
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !107
  br label %return

return:                                           ; preds = %if.else, %if.then
  %retval.0 = phi i32 [ %3, %if.then ], [ %5, %if.else ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rs600_mc_wait_for_idle(ptr noundef %rdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %mc_rreg = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 32
  %usec_timeout = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 8
  %0 = ptrtoint ptr %usec_timeout to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %usec_timeout, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp4.not = icmp eq i32 %1, 0
  br i1 %cmp4.not, label %entry.cleanup_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body:                                         ; preds = %if.end.for.body_crit_edge, %entry.for.body_crit_edge
  %i.05 = phi i32 [ %inc, %if.end.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %2 = ptrtoint ptr %mc_rreg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mc_rreg, align 8
  %call = tail call i32 %3(ptr noundef %rdev, i32 noundef 0) #8
  %and = and i32 %call, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %for.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %4 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %4(i32 noundef 214748) #8
  %inc = add nuw i32 %i.05, 1
  %5 = ptrtoint ptr %usec_timeout to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %usec_timeout, align 4
  %cmp = icmp ult i32 %inc, %6
  br i1 %cmp, label %if.end.for.body_crit_edge, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

cleanup:                                          ; preds = %if.end.cleanup_crit_edge, %for.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %entry.cleanup_crit_edge ], [ -1, %if.end.cleanup_crit_edge ], [ 0, %for.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rs600_bandwidth_update(ptr noundef %rdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %mode_config_initialized = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 44, i32 3
  %0 = ptrtoint ptr %mode_config_initialized to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %mode_config_initialized, align 4, !range !110
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @radeon_update_display_priority(ptr noundef %rdev) #8
  %crtcs = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 44, i32 4
  %2 = ptrtoint ptr %crtcs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %crtcs, align 4
  %enabled = getelementptr inbounds %struct.drm_crtc, ptr %3, i32 0, i32 11
  %4 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %enabled, align 8, !range !110
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool2.not = icmp eq i8 %5, 0
  %mode = getelementptr inbounds %struct.drm_crtc, ptr %3, i32 0, i32 12
  %spec.select = select i1 %tobool2.not, ptr null, ptr %mode
  %arrayidx11 = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 44, i32 4, i32 1
  %6 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx11, align 4
  %enabled13 = getelementptr inbounds %struct.drm_crtc, ptr %7, i32 0, i32 11
  %8 = ptrtoint ptr %enabled13 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %enabled13, align 8, !range !110
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool14.not = icmp eq i8 %9, 0
  %mode20 = getelementptr inbounds %struct.drm_crtc, ptr %7, i32 0, i32 12
  %mode1.0 = select i1 %tobool14.not, ptr null, ptr %mode20
  tail call void @rs690_line_buffer_adjust(ptr noundef %rdev, ptr noundef %spec.select, ptr noundef %mode1.0) #8
  %disp_priority = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 12
  %10 = ptrtoint ptr %disp_priority to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %disp_priority, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %11)
  %cmp = icmp eq i32 %11, 2
  br i1 %cmp, label %if.then22, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then22:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %rmmio.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %12 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %13, i32 25928
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !106
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !107
  %15 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i49 = getelementptr i8, ptr %16, i32 27976
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i49) #8, !srcloc !106
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !107
  %18 = or i32 %14, 4096
  %19 = or i32 %17, 4096
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !108
  tail call void @arm_heavy_mb() #8
  %20 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i53 = getelementptr i8, ptr %21, i32 25928
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i53, i32 %18) #8, !srcloc !109
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !108
  tail call void @arm_heavy_mb() #8
  %22 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i57 = getelementptr i8, ptr %23, i32 25932
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i57, i32 %18) #8, !srcloc !109
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !108
  tail call void @arm_heavy_mb() #8
  %24 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i61 = getelementptr i8, ptr %25, i32 27976
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i61, i32 %19) #8, !srcloc !109
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !108
  tail call void @arm_heavy_mb() #8
  %26 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i65 = getelementptr i8, ptr %27, i32 27980
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i65, i32 %19) #8, !srcloc !109
  br label %cleanup

cleanup:                                          ; preds = %if.then22, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @radeon_update_display_priority(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rs690_line_buffer_adjust(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rs600_mc_rreg(ptr noundef %rdev, i32 noundef %reg) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %mc_idx_lock = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 22
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %mc_idx_lock) #8
  %and = and i32 %reg, 65535
  %or = or i32 %and, 2097152
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !108
  tail call void @arm_heavy_mb() #8
  %0 = tail call i32 @llvm.bswap.i32(i32 %or) #8
  %rmmio.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %1 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %2, i32 112
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %0) #8, !srcloc !109
  %3 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i13 = getelementptr i8, ptr %4, i32 116
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i13) #8, !srcloc !106
  %6 = tail call i32 @llvm.bswap.i32(i32 %5) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !107
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %mc_idx_lock, i32 noundef %call2) #8
  ret i32 %6
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rs600_mc_wreg(ptr noundef %rdev, i32 noundef %reg, i32 noundef %v) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %mc_idx_lock = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 22
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %mc_idx_lock) #8
  %and = and i32 %reg, 65535
  %or5 = or i32 %and, 10485760
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !108
  tail call void @arm_heavy_mb() #8
  %0 = tail call i32 @llvm.bswap.i32(i32 %or5) #8
  %rmmio.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %1 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %2, i32 112
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %0) #8, !srcloc !109
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !108
  tail call void @arm_heavy_mb() #8
  %3 = tail call i32 @llvm.bswap.i32(i32 %v) #8
  %4 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i13 = getelementptr i8, ptr %5, i32 116
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i13, i32 %3) #8, !srcloc !109
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %mc_idx_lock, i32 noundef %call2) #8
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @rs600_set_safe_registers(ptr nocapture noundef writeonly %rdev) local_unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %config = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 5
  %0 = ptrtoint ptr %config to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @rs600_reg_safe_bm, ptr %config, align 8
  %reg_safe_bm_size = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 5, i32 0, i32 1
  %1 = ptrtoint ptr %reg_safe_bm_size to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 219, ptr %reg_safe_bm_size, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rs600_resume(ptr noundef %rdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %mc_wreg.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 33
  %0 = ptrtoint ptr %mc_wreg.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mc_wreg.i, align 4
  tail call void %1(ptr noundef %rdev, i32 noundef 256, i32 noundef 0) #8
  %mc_rreg.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 32
  %2 = ptrtoint ptr %mc_rreg.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mc_rreg.i, align 8
  %call.i = tail call i32 %3(ptr noundef %rdev, i32 noundef 9) #8
  %4 = ptrtoint ptr %mc_wreg.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mc_wreg.i, align 4
  %and.i = and i32 %call.i, -67108865
  tail call void %5(ptr noundef %rdev, i32 noundef 9, i32 noundef %and.i) #8
  tail call void @radeon_gart_table_vram_unpin(ptr noundef %rdev) #8
  tail call void @rv515_clock_startup(ptr noundef %rdev) #8
  %asic = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 56
  %6 = ptrtoint ptr %asic to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %asic, align 8
  %asic_reset = getelementptr inbounds %struct.radeon_asic, ptr %7, i32 0, i32 5
  %8 = ptrtoint ptr %asic_reset to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %asic_reset, align 4
  %call = tail call i32 %9(ptr noundef %rdev, i1 noundef zeroext false) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %10 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %rdev, align 8
  %rmmio.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %12 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %13, i32 3648
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !106
  %15 = tail call i32 @llvm.bswap.i32(i32 %14) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !107
  %16 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i25 = getelementptr i8, ptr %17, i32 1984
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i25) #8, !srcloc !106
  %19 = tail call i32 @llvm.bswap.i32(i32 %18) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !107
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %11, ptr noundef nonnull @.str.24, i32 noundef %15, i32 noundef %19) #11
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %mode_info = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 44
  %20 = ptrtoint ptr %mode_info to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %mode_info, align 4
  %call3 = tail call i32 @atom_asic_init(ptr noundef %21) #8
  tail call void @rv515_clock_startup(ptr noundef %rdev) #8
  tail call void @radeon_surface_init(ptr noundef %rdev) #8
  %accel_working = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 66
  %22 = ptrtoint ptr %accel_working to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 1, ptr %accel_working, align 2
  %call4 = tail call fastcc i32 @rs600_startup(ptr noundef %rdev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end.if.end8_crit_edge, label %if.then6

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %23 = ptrtoint ptr %accel_working to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 0, ptr %accel_working, align 2
  br label %if.end8

if.end8:                                          ; preds = %if.then6, %if.end.if.end8_crit_edge
  ret i32 %call4
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rv515_clock_startup(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @atom_asic_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @radeon_surface_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rs600_startup(ptr noundef %rdev) unnamed_addr #0 align 64 {
entry:
  %save.i = alloca %struct.rv515_mc_save, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %save.i) #8
  %0 = call ptr @memset(ptr %save.i, i32 255, i32 12)
  call void @rv515_mc_stop(ptr noundef %rdev, ptr noundef nonnull %save.i) #8
  %mc_rreg.i.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 32
  %usec_timeout.i.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 8
  %1 = ptrtoint ptr %usec_timeout.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %usec_timeout.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp4.not.i.i = icmp eq i32 %2, 0
  br i1 %cmp4.not.i.i, label %entry.do.end.i_crit_edge, label %entry.for.body.i.i_crit_edge

entry.for.body.i.i_crit_edge:                     ; preds = %entry
  br label %for.body.i.i

entry.do.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i

for.body.i.i:                                     ; preds = %if.end.i.i.for.body.i.i_crit_edge, %entry.for.body.i.i_crit_edge
  %i.05.i.i = phi i32 [ %inc.i.i, %if.end.i.i.for.body.i.i_crit_edge ], [ 0, %entry.for.body.i.i_crit_edge ]
  %3 = ptrtoint ptr %mc_rreg.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %mc_rreg.i.i, align 8
  %call.i.i = call i32 %4(ptr noundef %rdev, i32 noundef 0) #8
  %and.i.i = and i32 %call.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %for.body.i.i.rs600_mc_program.exit_crit_edge

for.body.i.i.rs600_mc_program.exit_crit_edge:     ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rs600_mc_program.exit

if.end.i.i:                                       ; preds = %for.body.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %5 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %5(i32 noundef 214748) #8
  %inc.i.i = add nuw i32 %i.05.i.i, 1
  %6 = ptrtoint ptr %usec_timeout.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %usec_timeout.i.i, align 4
  %cmp.i.i = icmp ult i32 %inc.i.i, %7
  br i1 %cmp.i.i, label %if.end.i.i.for.body.i.i_crit_edge, label %if.end.i.i.do.end.i_crit_edge

if.end.i.i.do.end.i_crit_edge:                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i

if.end.i.i.for.body.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i

do.end.i:                                         ; preds = %if.end.i.i.do.end.i_crit_edge, %entry.do.end.i_crit_edge
  %8 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %rdev, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %9, ptr noundef nonnull @.str.45) #11
  br label %rs600_mc_program.exit

rs600_mc_program.exit:                            ; preds = %do.end.i, %for.body.i.i.rs600_mc_program.exit_crit_edge
  %mc_wreg.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 33
  %10 = ptrtoint ptr %mc_wreg.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mc_wreg.i, align 4
  call void %11(ptr noundef %rdev, i32 noundef 5, i32 noundef 268435455) #8
  %12 = ptrtoint ptr %mc_wreg.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %mc_wreg.i, align 4
  call void %13(ptr noundef %rdev, i32 noundef 6, i32 noundef 0) #8
  %14 = ptrtoint ptr %mc_wreg.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %mc_wreg.i, align 4
  call void %15(ptr noundef %rdev, i32 noundef 7, i32 noundef 0) #8
  %16 = ptrtoint ptr %mc_wreg.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %mc_wreg.i, align 4
  %vram_start.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 42, i32 8
  %18 = ptrtoint ptr %vram_start.i to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %vram_start.i, align 8
  %shr.i = lshr i64 %19, 16
  %and.i = and i64 %shr.i, 65535
  %vram_end.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 42, i32 9
  %20 = ptrtoint ptr %vram_end.i to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %vram_end.i, align 8
  %and6.i = and i64 %21, 4294901760
  %or.i = or i64 %and.i, %and6.i
  %conv.i = trunc i64 %or.i to i32
  call void %17(ptr noundef %rdev, i32 noundef 4, i32 noundef %conv.i) #8
  %22 = ptrtoint ptr %vram_start.i to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %vram_start.i, align 8
  %24 = trunc i64 %23 to i32
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !108
  call void @arm_heavy_mb() #8
  %25 = call i32 @llvm.bswap.i32(i32 %24) #8
  %26 = shl i32 %25, 16
  %rmmio.i.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %27 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %28, i32 308
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %26) #8, !srcloc !109
  call void @rv515_mc_resume(ptr noundef %rdev, ptr noundef nonnull %save.i) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %save.i) #8
  call void @rv515_clock_startup(ptr noundef %rdev) #8
  call void @r420_pipes_init(ptr noundef %rdev) #8
  %29 = ptrtoint ptr %usec_timeout.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %usec_timeout.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %cmp4.not.i.i77 = icmp eq i32 %30, 0
  br i1 %cmp4.not.i.i77, label %rs600_mc_program.exit.do.end.i86_crit_edge, label %rs600_mc_program.exit.for.body.i.i82_crit_edge

rs600_mc_program.exit.for.body.i.i82_crit_edge:   ; preds = %rs600_mc_program.exit
  br label %for.body.i.i82

rs600_mc_program.exit.do.end.i86_crit_edge:       ; preds = %rs600_mc_program.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i86

for.body.i.i82:                                   ; preds = %if.end.i.i85.for.body.i.i82_crit_edge, %rs600_mc_program.exit.for.body.i.i82_crit_edge
  %i.05.i.i78 = phi i32 [ %inc.i.i83, %if.end.i.i85.for.body.i.i82_crit_edge ], [ 0, %rs600_mc_program.exit.for.body.i.i82_crit_edge ]
  %31 = ptrtoint ptr %mc_rreg.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %mc_rreg.i.i, align 8
  %call.i.i79 = call i32 %32(ptr noundef %rdev, i32 noundef 0) #8
  %and.i.i80 = and i32 %call.i.i79, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i80)
  %tobool.not.i.i81 = icmp eq i32 %and.i.i80, 0
  br i1 %tobool.not.i.i81, label %if.end.i.i85, label %for.body.i.i82.rs600_gpu_init.exit_crit_edge

for.body.i.i82.rs600_gpu_init.exit_crit_edge:     ; preds = %for.body.i.i82
  call void @__sanitizer_cov_trace_pc() #10
  br label %rs600_gpu_init.exit

if.end.i.i85:                                     ; preds = %for.body.i.i82
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %33 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %33(i32 noundef 214748) #8
  %inc.i.i83 = add nuw i32 %i.05.i.i78, 1
  %34 = ptrtoint ptr %usec_timeout.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %usec_timeout.i.i, align 4
  %cmp.i.i84 = icmp ult i32 %inc.i.i83, %35
  br i1 %cmp.i.i84, label %if.end.i.i85.for.body.i.i82_crit_edge, label %if.end.i.i85.do.end.i86_crit_edge

if.end.i.i85.do.end.i86_crit_edge:                ; preds = %if.end.i.i85
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i86

if.end.i.i85.for.body.i.i82_crit_edge:            ; preds = %if.end.i.i85
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i82

do.end.i86:                                       ; preds = %if.end.i.i85.do.end.i86_crit_edge, %rs600_mc_program.exit.do.end.i86_crit_edge
  %36 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %rdev, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %37, ptr noundef nonnull @.str.45) #11
  br label %rs600_gpu_init.exit

rs600_gpu_init.exit:                              ; preds = %do.end.i86, %for.body.i.i82.rs600_gpu_init.exit_crit_edge
  %gart.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 43
  %robj.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 43, i32 1
  %38 = ptrtoint ptr %robj.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %robj.i, align 4
  %cmp.i = icmp eq ptr %39, null
  br i1 %cmp.i, label %do.end.i87, label %if.end.i

do.end.i87:                                       ; preds = %rs600_gpu_init.exit
  call void @__sanitizer_cov_trace_pc() #10
  %40 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %rdev, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %41, ptr noundef nonnull @.str.48) #11
  br label %cleanup

if.end.i:                                         ; preds = %rs600_gpu_init.exit
  %call.i = call i32 @radeon_gart_table_vram_pin(ptr noundef %rdev) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end, label %if.end.i.cleanup_crit_edge

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %if.end.i
  %42 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i.i89 = getelementptr i8, ptr %43, i32 48
  %44 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i89) #8, !srcloc !106
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !107
  %45 = and i32 %44, -4194305
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !108
  call void @arm_heavy_mb() #8
  %46 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i99.i = getelementptr i8, ptr %47, i32 48
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i99.i, i32 %45) #8, !srcloc !109
  %48 = ptrtoint ptr %mc_wreg.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %mc_wreg.i, align 4
  call void %49(ptr noundef %rdev, i32 noundef 256, i32 noundef 12779520) #8
  %50 = ptrtoint ptr %mc_wreg.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %mc_wreg.i, align 4
  call void %51(ptr noundef %rdev, i32 noundef 364, i32 noundef 121601) #8
  %52 = ptrtoint ptr %mc_wreg.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %mc_wreg.i, align 4
  call void %53(ptr noundef %rdev, i32 noundef 365, i32 noundef 121601) #8
  %54 = ptrtoint ptr %mc_wreg.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %mc_wreg.i, align 4
  call void %55(ptr noundef %rdev, i32 noundef 366, i32 noundef 121601) #8
  %56 = ptrtoint ptr %mc_wreg.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %mc_wreg.i, align 4
  call void %57(ptr noundef %rdev, i32 noundef 367, i32 noundef 121601) #8
  %58 = ptrtoint ptr %mc_wreg.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %mc_wreg.i, align 4
  call void %59(ptr noundef %rdev, i32 noundef 368, i32 noundef 121601) #8
  %60 = ptrtoint ptr %mc_wreg.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %mc_wreg.i, align 4
  call void %61(ptr noundef %rdev, i32 noundef 369, i32 noundef 121601) #8
  %62 = ptrtoint ptr %mc_wreg.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %mc_wreg.i, align 4
  call void %63(ptr noundef %rdev, i32 noundef 370, i32 noundef 121601) #8
  %64 = ptrtoint ptr %mc_wreg.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %mc_wreg.i, align 4
  call void %65(ptr noundef %rdev, i32 noundef 371, i32 noundef 121601) #8
  %66 = ptrtoint ptr %mc_wreg.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %mc_wreg.i, align 4
  call void %67(ptr noundef %rdev, i32 noundef 372, i32 noundef 121601) #8
  %68 = ptrtoint ptr %mc_wreg.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %mc_wreg.i, align 4
  call void %69(ptr noundef %rdev, i32 noundef 373, i32 noundef 121601) #8
  %70 = ptrtoint ptr %mc_wreg.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %mc_wreg.i, align 4
  call void %71(ptr noundef %rdev, i32 noundef 374, i32 noundef 121601) #8
  %72 = ptrtoint ptr %mc_wreg.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %mc_wreg.i, align 4
  call void %73(ptr noundef %rdev, i32 noundef 375, i32 noundef 121601) #8
  %74 = ptrtoint ptr %mc_wreg.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %mc_wreg.i, align 4
  call void %75(ptr noundef %rdev, i32 noundef 376, i32 noundef 121601) #8
  %76 = ptrtoint ptr %mc_wreg.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %mc_wreg.i, align 4
  call void %77(ptr noundef %rdev, i32 noundef 377, i32 noundef 121601) #8
  %78 = ptrtoint ptr %mc_wreg.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %mc_wreg.i, align 4
  call void %79(ptr noundef %rdev, i32 noundef 378, i32 noundef 121601) #8
  %80 = ptrtoint ptr %mc_wreg.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %mc_wreg.i, align 4
  call void %81(ptr noundef %rdev, i32 noundef 379, i32 noundef 121601) #8
  %82 = ptrtoint ptr %mc_wreg.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %mc_wreg.i, align 4
  call void %83(ptr noundef %rdev, i32 noundef 380, i32 noundef 121601) #8
  %84 = ptrtoint ptr %mc_wreg.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %mc_wreg.i, align 4
  call void %85(ptr noundef %rdev, i32 noundef 381, i32 noundef 121601) #8
  %86 = ptrtoint ptr %mc_wreg.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %mc_wreg.i, align 4
  call void %87(ptr noundef %rdev, i32 noundef 382, i32 noundef 121601) #8
  %88 = ptrtoint ptr %mc_wreg.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %mc_wreg.i, align 4
  call void %89(ptr noundef %rdev, i32 noundef 258, i32 noundef 1) #8
  %90 = ptrtoint ptr %mc_wreg.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %mc_wreg.i, align 4
  call void %91(ptr noundef %rdev, i32 noundef 259, i32 noundef 0) #8
  %92 = ptrtoint ptr %mc_wreg.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %mc_wreg.i, align 4
  call void %93(ptr noundef %rdev, i32 noundef 260, i32 noundef 0) #8
  %94 = ptrtoint ptr %mc_wreg.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %mc_wreg.i, align 4
  call void %95(ptr noundef %rdev, i32 noundef 261, i32 noundef 0) #8
  %96 = ptrtoint ptr %mc_wreg.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %mc_wreg.i, align 4
  call void %97(ptr noundef %rdev, i32 noundef 262, i32 noundef 0) #8
  %98 = ptrtoint ptr %mc_wreg.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %mc_wreg.i, align 4
  call void %99(ptr noundef %rdev, i32 noundef 263, i32 noundef 0) #8
  %100 = ptrtoint ptr %mc_wreg.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %mc_wreg.i, align 4
  call void %101(ptr noundef %rdev, i32 noundef 264, i32 noundef 0) #8
  %102 = ptrtoint ptr %mc_wreg.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %mc_wreg.i, align 4
  call void %103(ptr noundef %rdev, i32 noundef 265, i32 noundef 0) #8
  %104 = ptrtoint ptr %mc_wreg.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %mc_wreg.i, align 4
  %106 = ptrtoint ptr %gart.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %gart.i, align 8
  call void %105(ptr noundef %rdev, i32 noundef 300, i32 noundef %107) #8
  %108 = ptrtoint ptr %mc_wreg.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %mc_wreg.i, align 4
  %gtt_start.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 42, i32 6
  %110 = ptrtoint ptr %gtt_start.i to i32
  call void @__asan_load8_noabort(i32 %110)
  %111 = load i64, ptr %gtt_start.i, align 8
  %conv.i91 = trunc i64 %111 to i32
  call void %109(ptr noundef %rdev, i32 noundef 316, i32 noundef %conv.i91) #8
  %112 = ptrtoint ptr %mc_wreg.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %mc_wreg.i, align 4
  %gtt_end.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 42, i32 7
  %114 = ptrtoint ptr %gtt_end.i to i32
  call void @__asan_load8_noabort(i32 %114)
  %115 = load i64, ptr %gtt_end.i, align 8
  %conv20.i = trunc i64 %115 to i32
  call void %113(ptr noundef %rdev, i32 noundef 332, i32 noundef %conv20.i) #8
  %116 = ptrtoint ptr %mc_wreg.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %mc_wreg.i, align 4
  call void %117(ptr noundef %rdev, i32 noundef 284, i32 noundef 0) #8
  %118 = ptrtoint ptr %mc_wreg.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %mc_wreg.i, align 4
  %120 = ptrtoint ptr %vram_start.i to i32
  call void @__asan_load8_noabort(i32 %120)
  %121 = load i64, ptr %vram_start.i, align 8
  %conv24.i = trunc i64 %121 to i32
  call void %119(ptr noundef %rdev, i32 noundef 274, i32 noundef %conv24.i) #8
  %122 = ptrtoint ptr %mc_wreg.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %mc_wreg.i, align 4
  %124 = ptrtoint ptr %vram_end.i to i32
  call void @__asan_load8_noabort(i32 %124)
  %125 = load i64, ptr %vram_end.i, align 8
  %conv27.i = trunc i64 %125 to i32
  call void %123(ptr noundef %rdev, i32 noundef 276, i32 noundef %conv27.i) #8
  %126 = ptrtoint ptr %mc_rreg.i.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %mc_rreg.i.i, align 8
  %call28.i = call i32 %127(ptr noundef %rdev, i32 noundef 256) #8
  %128 = ptrtoint ptr %mc_wreg.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %mc_wreg.i, align 4
  %or.i94 = or i32 %call28.i, 1
  call void %129(ptr noundef %rdev, i32 noundef 256, i32 noundef %or.i94) #8
  %130 = ptrtoint ptr %mc_rreg.i.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %mc_rreg.i.i, align 8
  %call31.i = call i32 %131(ptr noundef %rdev, i32 noundef 9) #8
  %132 = ptrtoint ptr %mc_wreg.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %mc_wreg.i, align 4
  %or33.i = or i32 %call31.i, 67108864
  call void %133(ptr noundef %rdev, i32 noundef 9, i32 noundef %or33.i) #8
  %134 = ptrtoint ptr %mc_rreg.i.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %mc_rreg.i.i, align 8
  %call.i.i95 = call i32 %135(ptr noundef %rdev, i32 noundef 256) #8
  %and.i.i96 = and i32 %call.i.i95, -805306369
  %136 = ptrtoint ptr %mc_wreg.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %mc_wreg.i, align 4
  call void %137(ptr noundef %rdev, i32 noundef 256, i32 noundef %and.i.i96) #8
  %138 = ptrtoint ptr %mc_rreg.i.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %mc_rreg.i.i, align 8
  %call2.i.i = call i32 %139(ptr noundef %rdev, i32 noundef 256) #8
  %or.i.i = or i32 %call2.i.i, 805306368
  %140 = ptrtoint ptr %mc_wreg.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %mc_wreg.i, align 4
  call void %141(ptr noundef %rdev, i32 noundef 256, i32 noundef %or.i.i) #8
  %142 = ptrtoint ptr %mc_rreg.i.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %mc_rreg.i.i, align 8
  %call5.i.i = call i32 %143(ptr noundef %rdev, i32 noundef 256) #8
  %and6.i.i = and i32 %call5.i.i, -805306369
  %144 = ptrtoint ptr %mc_wreg.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %mc_wreg.i, align 4
  call void %145(ptr noundef %rdev, i32 noundef 256, i32 noundef %and6.i.i) #8
  %146 = ptrtoint ptr %mc_rreg.i.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %mc_rreg.i.i, align 8
  %call9.i.i = call i32 %147(ptr noundef %rdev, i32 noundef 256) #8
  %gtt_size.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 42, i32 5
  %148 = ptrtoint ptr %gtt_size.i to i32
  call void @__asan_load8_noabort(i32 %148)
  %149 = load i64, ptr %gtt_size.i, align 8
  %shr.i97 = lshr i64 %149, 20
  %conv39.i = trunc i64 %shr.i97 to i32
  %150 = ptrtoint ptr %gart.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %gart.i, align 8
  %conv42.i = zext i32 %151 to i64
  %call43.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.51, i32 noundef %conv39.i, i64 noundef %conv42.i) #11
  %ready.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 43, i32 8
  %152 = ptrtoint ptr %ready.i to i32
  call void @__asan_store1_noabort(i32 %152)
  store i8 1, ptr %ready.i, align 8
  %call1 = call i32 @radeon_wb_init(ptr noundef %rdev) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %call5 = call i32 @radeon_fence_driver_start_ring(ptr noundef %rdev, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end8, label %do.end

do.end:                                           ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  %153 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %rdev, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %154, ptr noundef nonnull @.str.34, i32 noundef %call5) #11
  br label %cleanup

if.end8:                                          ; preds = %if.end4
  %irq = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 55
  %155 = ptrtoint ptr %irq to i32
  call void @__asan_load1_noabort(i32 %155)
  %156 = load i8, ptr %irq, align 8, !range !110
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %156)
  %tobool9.not = icmp eq i8 %156, 0
  br i1 %tobool9.not, label %if.then10, label %if.end8.if.end15_crit_edge

if.end8.if.end15_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15

if.then10:                                        ; preds = %if.end8
  %call11 = call i32 @radeon_irq_kms_init(ptr noundef %rdev) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.then10.if.end15_crit_edge, label %if.then10.cleanup_crit_edge

if.then10.cleanup_crit_edge:                      ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then10.if.end15_crit_edge:                     ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15

if.end15:                                         ; preds = %if.then10.if.end15_crit_edge, %if.end8.if.end15_crit_edge
  %call16 = call i32 @rs600_irq_set(ptr noundef %rdev)
  %157 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i = getelementptr i8, ptr %158, i32 304
  %159 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !106
  %160 = call i32 @llvm.bswap.i32(i32 %159) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !107
  %hdp_cntl = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 5, i32 0, i32 3
  %161 = ptrtoint ptr %hdp_cntl to i32
  call void @__asan_store4_noabort(i32 %161)
  store i32 %160, ptr %hdp_cntl, align 4
  %call18 = call i32 @r100_cp_init(ptr noundef %rdev, i32 noundef 1048576) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.end25, label %do.end23

do.end23:                                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  %162 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %rdev, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %163, ptr noundef nonnull @.str.37, i32 noundef %call18) #11
  br label %cleanup

if.end25:                                         ; preds = %if.end15
  %call26 = call i32 @radeon_ib_pool_init(ptr noundef %rdev) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %if.end33, label %do.end31

do.end31:                                         ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #10
  %164 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %rdev, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %165, ptr noundef nonnull @.str.40, i32 noundef %call26) #11
  br label %cleanup

if.end33:                                         ; preds = %if.end25
  %call34 = call i32 @radeon_audio_init(ptr noundef %rdev) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %if.end33.cleanup_crit_edge, label %do.end39

if.end33.cleanup_crit_edge:                       ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end39:                                         ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #10
  %166 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %rdev, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %167, ptr noundef nonnull @.str.43) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end39, %if.end33.cleanup_crit_edge, %do.end31, %do.end23, %if.then10.cleanup_crit_edge, %do.end, %if.end.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %do.end.i87
  %retval.0 = phi i32 [ %call5, %do.end ], [ %call18, %do.end23 ], [ %call26, %do.end31 ], [ %call34, %do.end39 ], [ %call1, %if.end.cleanup_crit_edge ], [ %call11, %if.then10.cleanup_crit_edge ], [ 0, %if.end33.cleanup_crit_edge ], [ %call.i, %if.end.i.cleanup_crit_edge ], [ -22, %do.end.i87 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rs600_suspend(ptr noundef %rdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @radeon_pm_suspend(ptr noundef %rdev) #8
  tail call void @radeon_audio_fini(ptr noundef %rdev) #8
  tail call void @r100_cp_disable(ptr noundef %rdev) #8
  tail call void @radeon_wb_disable(ptr noundef %rdev) #8
  %rmmio.i.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %0 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 29704
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #8, !srcloc !106
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !107
  %3 = and i32 %2, -17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !108
  tail call void @arm_heavy_mb() #8
  %4 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i9.i = getelementptr i8, ptr %5, i32 29704
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i9.i, i32 %3) #8, !srcloc !109
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !108
  tail call void @arm_heavy_mb() #8
  %6 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i13.i = getelementptr i8, ptr %7, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i13.i, i32 0) #8, !srcloc !109
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !108
  tail call void @arm_heavy_mb() #8
  %8 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i17.i = getelementptr i8, ptr %9, i32 25920
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i17.i, i32 0) #8, !srcloc !109
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %10 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %10(i32 noundef 214748000) #8
  %call1.i = tail call fastcc i32 @rs600_irq_ack(ptr noundef %rdev) #8
  %mc_wreg.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 33
  %11 = ptrtoint ptr %mc_wreg.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %mc_wreg.i, align 4
  tail call void %12(ptr noundef %rdev, i32 noundef 256, i32 noundef 0) #8
  %mc_rreg.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 32
  %13 = ptrtoint ptr %mc_rreg.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %mc_rreg.i, align 8
  %call.i = tail call i32 %14(ptr noundef %rdev, i32 noundef 9) #8
  %15 = ptrtoint ptr %mc_wreg.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %mc_wreg.i, align 4
  %and.i = and i32 %call.i, -67108865
  tail call void %16(ptr noundef %rdev, i32 noundef 9, i32 noundef %and.i) #8
  tail call void @radeon_gart_table_vram_unpin(ptr noundef %rdev) #8
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

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rs600_fini(ptr noundef %rdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @radeon_pm_fini(ptr noundef %rdev) #8
  tail call void @radeon_audio_fini(ptr noundef %rdev) #8
  tail call void @r100_cp_fini(ptr noundef %rdev) #8
  tail call void @radeon_wb_fini(ptr noundef %rdev) #8
  tail call void @radeon_ib_pool_fini(ptr noundef %rdev) #8
  tail call void @radeon_gem_fini(ptr noundef %rdev) #8
  tail call void @radeon_gart_fini(ptr noundef %rdev) #8
  %mc_wreg.i.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 33
  %0 = ptrtoint ptr %mc_wreg.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mc_wreg.i.i, align 4
  tail call void %1(ptr noundef %rdev, i32 noundef 256, i32 noundef 0) #8
  %mc_rreg.i.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 32
  %2 = ptrtoint ptr %mc_rreg.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mc_rreg.i.i, align 8
  %call.i.i = tail call i32 %3(ptr noundef %rdev, i32 noundef 9) #8
  %4 = ptrtoint ptr %mc_wreg.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mc_wreg.i.i, align 4
  %and.i.i = and i32 %call.i.i, -67108865
  tail call void %5(ptr noundef %rdev, i32 noundef 9, i32 noundef %and.i.i) #8
  tail call void @radeon_gart_table_vram_unpin(ptr noundef %rdev) #8
  tail call void @radeon_gart_table_vram_free(ptr noundef %rdev) #8
  tail call void @radeon_irq_kms_fini(ptr noundef %rdev) #8
  tail call void @radeon_fence_driver_fini(ptr noundef %rdev) #8
  tail call void @radeon_bo_fini(ptr noundef %rdev) #8
  tail call void @radeon_atombios_fini(ptr noundef %rdev) #8
  %bios = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 13
  %6 = ptrtoint ptr %bios to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bios, align 8
  tail call void @kfree(ptr noundef %7) #8
  %8 = ptrtoint ptr %bios to i32
  call void @__asan_store4_noabort(i32 %8)
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

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rs600_gart_fini(ptr noundef %rdev) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @radeon_gart_fini(ptr noundef %rdev) #8
  %mc_wreg.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 33
  %0 = ptrtoint ptr %mc_wreg.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mc_wreg.i, align 4
  tail call void %1(ptr noundef %rdev, i32 noundef 256, i32 noundef 0) #8
  %mc_rreg.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 32
  %2 = ptrtoint ptr %mc_rreg.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mc_rreg.i, align 8
  %call.i = tail call i32 %3(ptr noundef %rdev, i32 noundef 9) #8
  %4 = ptrtoint ptr %mc_wreg.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mc_wreg.i, align 4
  %and.i = and i32 %call.i, -67108865
  tail call void %5(ptr noundef %rdev, i32 noundef 9, i32 noundef %and.i) #8
  tail call void @radeon_gart_table_vram_unpin(ptr noundef %rdev) #8
  tail call void @radeon_gart_table_vram_free(ptr noundef %rdev) #8
  ret void
}

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
define dso_local i32 @rs600_init(ptr noundef %rdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @rv515_vga_render_disable(ptr noundef %rdev) #8
  tail call void @radeon_scratch_init(ptr noundef %rdev) #8
  tail call void @radeon_surface_init(ptr noundef %rdev) #8
  tail call void @r100_restore_sanity(ptr noundef %rdev) #8
  %call = tail call zeroext i1 @radeon_get_bios(ptr noundef %rdev) #8
  br i1 %call, label %entry.if.end2_crit_edge, label %if.then

entry.if.end2_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end2

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end2:                                          ; preds = %if.then.if.end2_crit_edge, %entry.if.end2_crit_edge
  %is_atom_bios = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 14
  %2 = ptrtoint ptr %is_atom_bios to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %is_atom_bios, align 4, !range !110
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %do.end, label %if.then3

if.then3:                                         ; preds = %if.end2
  %call4 = tail call i32 @radeon_atombios_init(ptr noundef %rdev) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end8, label %if.then3.cleanup_crit_edge

if.then3.cleanup_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end:                                           ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #10
  %4 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rdev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.27) #11
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
  %call9 = tail call i32 %9(ptr noundef %rdev, i1 noundef zeroext false) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end8.if.end18_crit_edge, label %do.end14

if.end8.if.end18_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end18

do.end14:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  %10 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %rdev, align 8
  %rmmio.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %12 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %13, i32 3648
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !106
  %15 = tail call i32 @llvm.bswap.i32(i32 %14) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !107
  %16 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i82 = getelementptr i8, ptr %17, i32 1984
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i82) #8, !srcloc !106
  %19 = tail call i32 @llvm.bswap.i32(i32 %18) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !107
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %11, ptr noundef nonnull @.str.24, i32 noundef %15, i32 noundef %19) #11
  br label %if.end18

if.end18:                                         ; preds = %do.end14, %if.end8.if.end18_crit_edge
  %call19 = tail call zeroext i1 @radeon_boot_test_post_card(ptr noundef %rdev) #8
  br i1 %call19, label %if.end23, label %if.end18.cleanup_crit_edge

if.end18.cleanup_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end23:                                         ; preds = %if.end18
  %ddev = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 1
  %20 = ptrtoint ptr %ddev to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ddev, align 4
  tail call void @radeon_get_clock_info(ptr noundef %21) #8
  %pdev.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 2
  %22 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %pdev.i, align 8
  %resource.i = getelementptr inbounds %struct.pci_dev, ptr %23, i32 0, i32 47
  %24 = ptrtoint ptr %resource.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %resource.i, align 8
  %aper_base.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 42, i32 1
  %26 = ptrtoint ptr %aper_base.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %aper_base.i, align 4
  %end.i = getelementptr inbounds %struct.pci_dev, ptr %23, i32 0, i32 47, i32 0, i32 1
  %27 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %end.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %cmp.i83 = icmp eq i32 %28, 0
  br i1 %cmp.i83, label %if.end23.rs600_mc_init.exit_crit_edge, label %cond.false.i

if.end23.rs600_mc_init.exit_crit_edge:            ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #10
  br label %rs600_mc_init.exit

cond.false.i:                                     ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #10
  %29 = ptrtoint ptr %resource.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %resource.i, align 8
  %sub.i = add i32 %28, 1
  %add.i = sub i32 %sub.i, %30
  br label %rs600_mc_init.exit

rs600_mc_init.exit:                               ; preds = %cond.false.i, %if.end23.rs600_mc_init.exit_crit_edge
  %cond.i = phi i32 [ %add.i, %cond.false.i ], [ 0, %if.end23.rs600_mc_init.exit_crit_edge ]
  %mc.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 42
  %31 = ptrtoint ptr %mc.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %cond.i, ptr %mc.i, align 8
  %vram_is_ddr.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 42, i32 13
  %32 = ptrtoint ptr %vram_is_ddr.i to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 1, ptr %vram_is_ddr.i, align 4
  %vram_width.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 42, i32 10
  %33 = ptrtoint ptr %vram_width.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 128, ptr %vram_width.i, align 8
  %rmmio.i.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %34 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %35, i32 248
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #8, !srcloc !106
  %37 = tail call i32 @llvm.bswap.i32(i32 %36) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !107
  %conv.i = zext i32 %37 to i64
  %real_vram_size.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 42, i32 11
  %38 = ptrtoint ptr %real_vram_size.i to i32
  call void @__asan_store8_noabort(i32 %38)
  store i64 %conv.i, ptr %real_vram_size.i, align 8
  %mc_vram_size.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 42, i32 3
  %39 = ptrtoint ptr %mc_vram_size.i to i32
  call void @__asan_store8_noabort(i32 %39)
  store i64 %conv.i, ptr %mc_vram_size.i, align 8
  %40 = ptrtoint ptr %mc.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %mc.i, align 8
  %conv21.i = zext i32 %41 to i64
  %visible_vram_size.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 42, i32 4
  %42 = ptrtoint ptr %visible_vram_size.i to i32
  call void @__asan_store8_noabort(i32 %42)
  store i64 %conv21.i, ptr %visible_vram_size.i, align 8
  %call23.i = tail call zeroext i1 @radeon_atombios_sideport_present(ptr noundef %rdev) #8
  %igp_sideport_enabled.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 42, i32 14
  %frombool.i = zext i1 %call23.i to i8
  %43 = ptrtoint ptr %igp_sideport_enabled.i to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %frombool.i, ptr %igp_sideport_enabled.i, align 1
  %mc_rreg.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 32
  %44 = ptrtoint ptr %mc_rreg.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %mc_rreg.i, align 8
  %call25.i = tail call i32 %45(ptr noundef %rdev, i32 noundef 4) #8
  %46 = shl i32 %call25.i, 16
  %shl.i = zext i32 %46 to i64
  tail call void @radeon_vram_location(ptr noundef %rdev, ptr noundef %mc.i, i64 noundef %shl.i) #8
  %gtt_base_align.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 42, i32 15
  %47 = ptrtoint ptr %gtt_base_align.i to i32
  call void @__asan_store8_noabort(i32 %47)
  store i64 0, ptr %gtt_base_align.i, align 8
  tail call void @radeon_gtt_location(ptr noundef %rdev, ptr noundef %mc.i) #8
  tail call void @radeon_update_bandwidth_info(ptr noundef %rdev) #8
  tail call void @r100_debugfs_rbbm_init(ptr noundef %rdev) #8
  tail call void @radeon_fence_driver_init(ptr noundef %rdev) #8
  %call24 = tail call i32 @radeon_bo_init(ptr noundef %rdev) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %if.end27, label %rs600_mc_init.exit.cleanup_crit_edge

rs600_mc_init.exit.cleanup_crit_edge:             ; preds = %rs600_mc_init.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end27:                                         ; preds = %rs600_mc_init.exit
  %robj.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 43, i32 1
  %48 = ptrtoint ptr %robj.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %robj.i, align 4
  %tobool.not.i = icmp eq ptr %49, null
  br i1 %tobool.not.i, label %if.end17.i, label %rs600_gart_init.exit.thread

rs600_gart_init.exit.thread:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 550, i32 noundef 9, ptr noundef nonnull @.str.53) #8
  br label %if.end31

if.end17.i:                                       ; preds = %if.end27
  %call.i = tail call i32 @radeon_gart_init(ptr noundef %rdev) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool18.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool18.not.i, label %rs600_gart_init.exit, label %if.end17.i.cleanup_crit_edge

if.end17.i.cleanup_crit_edge:                     ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

rs600_gart_init.exit:                             ; preds = %if.end17.i
  %num_gpu_pages.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 43, i32 3
  %50 = ptrtoint ptr %num_gpu_pages.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %num_gpu_pages.i, align 4
  %mul.i = shl i32 %51, 3
  %table_size.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 43, i32 5
  %52 = ptrtoint ptr %table_size.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %mul.i, ptr %table_size.i, align 4
  %call23.i84 = tail call i32 @radeon_gart_table_vram_alloc(ptr noundef %rdev) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23.i84)
  %tobool29.not = icmp eq i32 %call23.i84, 0
  br i1 %tobool29.not, label %rs600_gart_init.exit.if.end31_crit_edge, label %rs600_gart_init.exit.cleanup_crit_edge

rs600_gart_init.exit.cleanup_crit_edge:           ; preds = %rs600_gart_init.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

rs600_gart_init.exit.if.end31_crit_edge:          ; preds = %rs600_gart_init.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end31

if.end31:                                         ; preds = %rs600_gart_init.exit.if.end31_crit_edge, %rs600_gart_init.exit.thread
  %config.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 5
  %53 = ptrtoint ptr %config.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr @rs600_reg_safe_bm, ptr %config.i, align 8
  %reg_safe_bm_size.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 5, i32 0, i32 1
  %54 = ptrtoint ptr %reg_safe_bm_size.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 219, ptr %reg_safe_bm_size.i, align 4
  %call32 = tail call i32 @radeon_pm_init(ptr noundef %rdev) #8
  %accel_working = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 66
  %55 = ptrtoint ptr %accel_working to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 1, ptr %accel_working, align 2
  %call33 = tail call fastcc i32 @rs600_startup(ptr noundef %rdev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %tobool34.not = icmp eq i32 %call33, 0
  br i1 %tobool34.not, label %if.end31.cleanup_crit_edge, label %do.end38

if.end31.cleanup_crit_edge:                       ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end38:                                         ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #10
  %56 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %rdev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %57, ptr noundef nonnull @.str.32) #11
  tail call void @r100_cp_fini(ptr noundef %rdev) #8
  tail call void @radeon_wb_fini(ptr noundef %rdev) #8
  tail call void @radeon_ib_pool_fini(ptr noundef %rdev) #8
  tail call fastcc void @rs600_gart_fini(ptr noundef %rdev)
  tail call void @radeon_irq_kms_fini(ptr noundef %rdev) #8
  %58 = ptrtoint ptr %accel_working to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 0, ptr %accel_working, align 2
  br label %cleanup

cleanup:                                          ; preds = %do.end38, %if.end31.cleanup_crit_edge, %rs600_gart_init.exit.cleanup_crit_edge, %if.end17.i.cleanup_crit_edge, %rs600_mc_init.exit.cleanup_crit_edge, %if.end18.cleanup_crit_edge, %do.end, %if.then3.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %if.then.cleanup_crit_edge ], [ %call4, %if.then3.cleanup_crit_edge ], [ -22, %if.end18.cleanup_crit_edge ], [ %call24, %rs600_mc_init.exit.cleanup_crit_edge ], [ %call23.i84, %rs600_gart_init.exit.cleanup_crit_edge ], [ 0, %do.end38 ], [ 0, %if.end31.cleanup_crit_edge ], [ %call.i, %if.end17.i.cleanup_crit_edge ]
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

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @radeon_boot_test_post_card(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @radeon_get_clock_info(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @r100_debugfs_rbbm_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @radeon_fence_driver_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @radeon_bo_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @radeon_pm_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @r100_mm_rreg_slow(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @r100_mm_wreg_slow(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @radeon_gart_table_vram_unpin(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @radeon_wb_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @radeon_fence_driver_start_ring(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @radeon_irq_kms_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @r100_cp_init(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @radeon_ib_pool_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @radeon_audio_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @r420_pipes_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @radeon_gart_table_vram_pin(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @radeon_gart_fini(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @radeon_gart_table_vram_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @radeon_atombios_sideport_present(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @radeon_vram_location(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @radeon_gtt_location(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @radeon_update_bandwidth_info(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @radeon_gart_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @radeon_gart_table_vram_alloc(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 52)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 52)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8, !9, !10, !11, !12, !14, !15, !17, !18, !20, !21, !23, !24, !25, !26, !28, !29, !30, !32, !34, !36, !38, !40, !41, !42, !43, !44, !46, !47, !48, !49, !51, !52, !54, !55, !56, !58, !60, !62, !63, !64, !65, !67, !68, !69, !71, !72, !73, !75, !76, !77, !79, !80, !81, !82, !84, !85, !86, !88, !89, !90, !91, !93, !94, !95}
!llvm.module.flags = !{!97, !98, !99, !100, !101, !102, !103, !104}
!llvm.ident = !{!105}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/radeon/rs600.c", i32 148, i32 2}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/radeon/rs600.c", i32 318, i32 3}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/radeon/rs600.c", i32 475, i32 2}
!6 = !{ptr @.str.3, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.4, !5, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.5, !5, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.6, !5, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @rs600_asic_reset._entry, !5, !"_entry", i1 false, i1 false}
!11 = !{ptr @rs600_asic_reset._entry_ptr, !5, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @rs600_asic_reset._entry.7, !13, !"_entry", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/radeon/rs600.c", i32 495, i32 2}
!14 = !{ptr @rs600_asic_reset._entry_ptr.8, !13, !"_entry_ptr", i1 false, i1 false}
!15 = !{ptr @rs600_asic_reset._entry.9, !16, !"_entry", i1 false, i1 false}
!16 = !{!"../drivers/gpu/drm/radeon/rs600.c", i32 503, i32 2}
!17 = !{ptr @rs600_asic_reset._entry_ptr.10, !16, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @rs600_asic_reset._entry.11, !19, !"_entry", i1 false, i1 false}
!19 = !{!"../drivers/gpu/drm/radeon/rs600.c", i32 511, i32 2}
!20 = !{ptr @rs600_asic_reset._entry_ptr.12, !19, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @.str.14, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/gpu/drm/radeon/rs600.c", i32 516, i32 3}
!23 = !{ptr @.str.15, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @rs600_asic_reset._entry.13, !22, !"_entry", i1 false, i1 false}
!25 = !{ptr @rs600_asic_reset._entry_ptr.16, !22, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.18, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/gpu/drm/radeon/rs600.c", i32 519, i32 3}
!28 = !{ptr @rs600_asic_reset._entry.17, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @rs600_asic_reset._entry_ptr.19, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.20, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/gpu/drm/radeon/rs600.c", i32 682, i32 3}
!32 = !{ptr @.str.21, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/gpu/drm/radeon/rs600.c", i32 818, i32 4}
!34 = !{ptr @.str.22, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/gpu/drm/radeon/rs600.c", i32 822, i32 4}
!36 = !{ptr @.str.23, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/gpu/drm/radeon/rs600.c", i32 826, i32 4}
!38 = !{ptr @.str.24, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/gpu/drm/radeon/rs600.c", i32 1052, i32 3}
!40 = !{ptr @.str.25, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @.str.26, !39, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @rs600_resume._entry, !39, !"_entry", i1 false, i1 false}
!43 = !{ptr @rs600_resume._entry_ptr, !39, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.27, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/gpu/drm/radeon/rs600.c", i32 1121, i32 3}
!46 = !{ptr @.str.28, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @rs600_init._entry, !45, !"_entry", i1 false, i1 false}
!48 = !{ptr @rs600_init._entry_ptr, !45, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @rs600_init._entry.29, !50, !"_entry", i1 false, i1 false}
!50 = !{!"../drivers/gpu/drm/radeon/rs600.c", i32 1126, i32 3}
!51 = !{ptr @rs600_init._entry_ptr.30, !50, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.32, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/gpu/drm/radeon/rs600.c", i32 1158, i32 3}
!54 = !{ptr @rs600_init._entry.31, !53, !"_entry", i1 false, i1 false}
!55 = !{ptr @rs600_init._entry_ptr.33, !53, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @crtc_offsets, !57, !"crtc_offsets", i1 false, i1 false}
!57 = !{!"../drivers/gpu/drm/radeon/rs600.c", i32 56, i32 18}
!58 = !{ptr @rs600_reg_safe_bm, !59, !"rs600_reg_safe_bm", i1 false, i1 false}
!59 = !{!"./drivers/gpu/drm/radeon/rs600_reg_safe.h", i32 1, i32 23}
!60 = !{ptr @.str.34, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/gpu/drm/radeon/rs600.c", i32 1007, i32 3}
!62 = !{ptr @.str.35, !61, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @rs600_startup._entry, !61, !"_entry", i1 false, i1 false}
!64 = !{ptr @rs600_startup._entry_ptr, !61, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @.str.37, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/gpu/drm/radeon/rs600.c", i32 1023, i32 3}
!67 = !{ptr @rs600_startup._entry.36, !66, !"_entry", i1 false, i1 false}
!68 = !{ptr @rs600_startup._entry_ptr.38, !66, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @.str.40, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/gpu/drm/radeon/rs600.c", i32 1029, i32 3}
!71 = !{ptr @rs600_startup._entry.39, !70, !"_entry", i1 false, i1 false}
!72 = !{ptr @rs600_startup._entry_ptr.41, !70, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @.str.43, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/gpu/drm/radeon/rs600.c", i32 1035, i32 3}
!75 = !{ptr @rs600_startup._entry.42, !74, !"_entry", i1 false, i1 false}
!76 = !{ptr @rs600_startup._entry_ptr.44, !74, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @.str.45, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/gpu/drm/radeon/rs600.c", i32 969, i32 3}
!79 = !{ptr @.str.46, !78, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @rs600_mc_program._entry, !78, !"_entry", i1 false, i1 false}
!81 = !{ptr @rs600_mc_program._entry_ptr, !78, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @.str.47, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/gpu/drm/radeon/rs600.c", i32 876, i32 3}
!84 = !{ptr @rs600_gpu_init._entry, !83, !"_entry", i1 false, i1 false}
!85 = !{ptr @rs600_gpu_init._entry_ptr, !83, !"_entry_ptr", i1 false, i1 false}
!86 = !{ptr @.str.48, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/gpu/drm/radeon/rs600.c", i32 568, i32 3}
!88 = !{ptr @.str.49, !87, !"<string literal>", i1 false, i1 false}
!89 = !{ptr @rs600_gart_enable._entry, !87, !"_entry", i1 false, i1 false}
!90 = !{ptr @rs600_gart_enable._entry_ptr, !87, !"_entry_ptr", i1 false, i1 false}
!91 = !{ptr @.str.51, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/gpu/drm/radeon/rs600.c", i32 619, i32 2}
!93 = !{ptr @rs600_gart_enable._entry.50, !92, !"_entry", i1 false, i1 false}
!94 = !{ptr @rs600_gart_enable._entry_ptr.52, !92, !"_entry_ptr", i1 false, i1 false}
!95 = !{ptr @.str.53, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/gpu/drm/radeon/rs600.c", i32 550, i32 3}
!97 = !{i32 1, !"wchar_size", i32 2}
!98 = !{i32 1, !"min_enum_size", i32 4}
!99 = !{i32 8, !"branch-target-enforcement", i32 0}
!100 = !{i32 8, !"sign-return-address", i32 0}
!101 = !{i32 8, !"sign-return-address-all", i32 0}
!102 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!103 = !{i32 7, !"uwtable", i32 1}
!104 = !{i32 7, !"frame-pointer", i32 2}
!105 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!106 = !{i64 720443}
!107 = !{i64 2158344372}
!108 = !{i64 2158344779}
!109 = !{i64 720025}
!110 = !{i8 0, i8 2}
!111 = !{i64 2149385872}
!112 = !{i64 2149386245}
