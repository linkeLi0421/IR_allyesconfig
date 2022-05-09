; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/radeon/radeon_dp_mst.c_pt.bc'
source_filename = "../drivers/gpu/drm/radeon/radeon_dp_mst.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.drm_dp_mst_topology_cbs = type { ptr, ptr }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_connector_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_connector_helper_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_encoder_funcs = type { ptr, ptr, ptr, ptr }
%struct.drm_encoder_helper_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
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
%struct.radeon_crtc = type { %struct.drm_crtc, i32, i8, i8, i8, i32, ptr, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, %union.dfixed, %union.dfixed, %struct.drm_display_mode, i32, ptr, ptr, i32, %struct.radeon_atom_ss, i8, i32, i32, i32, i32, i32, ptr, ptr, i32, i32, i32, i32, %struct.drm_display_mode, i32 }
%struct.drm_crtc = type { ptr, ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, ptr, ptr, i32, i32, i32, i8, %struct.drm_display_mode, %struct.drm_display_mode, i32, i32, ptr, i32, ptr, ptr, %struct.drm_object_properties, ptr, ptr, %struct.list_head, %struct.spinlock, ptr, %struct.drm_crtc_crc, i32, %struct.spinlock, i32, [32 x i8], ptr }
%struct.drm_mode_object = type { i32, i32, ptr, %struct.kref, ptr }
%struct.drm_object_properties = type { i32, [24 x ptr], [24 x i64] }
%struct.drm_crtc_crc = type { %struct.spinlock, ptr, i8, i8, ptr, i32, i32, i32, %struct.wait_queue_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%union.dfixed = type { i32 }
%struct.radeon_atom_ss = type { i16, i16, i8, i16, i8, i8, i8, i16, i16 }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }
%struct.radeon_encoder = type { %struct.drm_encoder, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.drm_display_mode, ptr, i32, i8, i16, ptr, i32, i8, i32, i8 }
%struct.drm_encoder = type { ptr, %struct.list_head, %struct.drm_mode_object, ptr, i32, i32, i32, i32, ptr, %struct.list_head, ptr, ptr }
%struct.radeon_encoder_mst = type { i32, ptr, ptr, ptr, i32, i32, i8, i8 }
%struct.radeon_connector = type { %struct.drm_connector, i32, i32, ptr, i8, i8, ptr, ptr, i8, i8, i8, i16, %struct.radeon_hpd, %struct.radeon_router, ptr, i32, i32, i32, i8, ptr, ptr, %struct.drm_dp_mst_topology_mgr, ptr, [6 x %struct.stream_attribs], i32 }
%struct.drm_connector = type { ptr, ptr, ptr, ptr, %struct.list_head, %struct.list_head, %struct.drm_mode_object, ptr, %struct.mutex, i32, i32, i32, i8, i8, i8, i8, i32, %struct.list_head, i32, %struct.list_head, %struct.drm_display_info, ptr, ptr, %struct.drm_object_properties, ptr, ptr, ptr, ptr, ptr, ptr, %struct.notifier_block, ptr, ptr, i8, i32, ptr, %struct.drm_cmdline_mode, i32, i8, i64, i32, ptr, [128 x i8], [2 x i8], [2 x i32], [2 x i32], ptr, i32, i32, i8, i8, ptr, ptr, ptr, i8, ptr, i8, i8, i8, i8, i8, i16, i16, %struct.llist_node, %struct.hdr_sink_metadata }
%struct.drm_display_info = type { i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i8, %struct.drm_hdmi_info, i8, %struct.drm_monitor_range_info, i8, i8 }
%struct.drm_hdmi_info = type { %struct.drm_scdc, [8 x i32], [8 x i32], i64, i8, i8, i8, %struct.drm_hdmi_dsc_cap }
%struct.drm_scdc = type { i8, i8, %struct.drm_scrambling }
%struct.drm_scrambling = type { i8, i8 }
%struct.drm_hdmi_dsc_cap = type { i8, i8, i8, i8, i8, i32, i8, i8, i8 }
%struct.drm_monitor_range_info = type { i8, i8 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.drm_cmdline_mode = type { [32 x i8], i8, i8, i8, i32, i32, i32, i32, i8, i8, i8, i8, i32, i32, i32, %struct.drm_connector_tv_margins }
%struct.drm_connector_tv_margins = type { i32, i32, i32, i32 }
%struct.llist_node = type { ptr }
%struct.hdr_sink_metadata = type { i32, %union.anon.86 }
%union.anon.86 = type { %struct.hdr_static_metadata }
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
%struct.radeon_connector_atom_dig = type { i32, [15 x i8], i8, i32, i32, i8, i8 }
%struct.radeon_i2c_chan = type { %struct.i2c_adapter, ptr, %struct.i2c_algo_bit_data, %struct.radeon_i2c_bus_rec, %struct.drm_dp_aux, i8, %struct.mutex }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.i2c_algo_bit_data = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8 }
%struct.drm_dp_aux = type { ptr, %struct.i2c_adapter, ptr, ptr, ptr, %struct.mutex, %struct.work_struct, i8, ptr, i32, i32, %struct.drm_dp_aux_cec, i8 }
%struct.drm_dp_aux_cec = type { %struct.mutex, ptr, ptr, %struct.delayed_work }
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
%struct.radeon_ring = type { ptr, ptr, ptr, i32, i32, i64, ptr, i32, i32, i32, i32, i32, %struct.atomic_t, %struct.atomic64_t, i64, i32, i32, i8, i32, i32, i64, i64, i32, i32, i32, ptr, i32, i32 }
%struct.radeon_sa_manager = type { %struct.wait_queue_head, ptr, ptr, [8 x %struct.list_head], %struct.list_head, i32, i64, ptr, i32, i32 }
%struct.radeon_irq = type { i8, %struct.spinlock, [8 x %struct.atomic_t], [6 x i8], [6 x %struct.atomic_t], %struct.wait_queue_head, [7 x i8], [7 x i8], %union.radeon_irq_stat_regs, i8 }
%union.radeon_irq_stat_regs = type { %struct.evergreen_irq_stat_regs }
%struct.evergreen_irq_stat_regs = type { [6 x i32], [6 x i32], [6 x i32] }
%struct.radeon_gem = type { %struct.mutex, %struct.list_head }
%struct.radeon_pm = type { %struct.mutex, %struct.rw_semaphore, i32, i32, i32, i8, %union.dfixed, %union.dfixed, %union.dfixed, %union.dfixed, %union.dfixed, %union.dfixed, %union.dfixed, %union.dfixed, %union.dfixed, %union.dfixed, %union.dfixed, %union.dfixed, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i32, i32, i16, i16, ptr, i32, %struct.delayed_work, i32, i32, i32, i8, i8, i32, i32, [7 x %struct.radeon_pm_profile], i32, ptr, i8, i8, i8, i8, i8, i8, %struct.radeon_dpm }
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
%struct.drm_minor = type { i32, i32, ptr, ptr, ptr, %struct.list_head, %struct.mutex }
%struct.radeon_encoder_atom_dig = type { i8, i8, i32, i32, i16, i32, %struct.drm_display_mode, ptr, i32, i8, i32, ptr, ptr, i32 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.79, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.80, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.81, ptr, %struct.address_space, %struct.list_head, %union.anon.82, i32, i32, ptr, ptr, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.79 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%union.anon.80 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%union.anon.81 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%union.anon.82 = type { ptr }
%struct.seq_file = type { ptr, i32, i32, i32, i32, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }

@.str = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"dp_clock %p %d\0A\00", [16 x i8] zeroinitializer }, align 32
@mst_cbs = internal constant { %struct.drm_dp_mst_topology_cbs, [24 x i8] } { %struct.drm_dp_mst_topology_cbs { ptr @radeon_dp_add_mst_connector, ptr null }, [24 x i8] zeroinitializer }, align 32
@radeon_mst = external dso_local local_unnamed_addr global i32, align 4
@.str.1 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Sink is MST capable\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Sink is not MST capable\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"got esi %3ph\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"got esi2 %3ph\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"failed to get ESI - device may have failed %d\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"radeon_mst_info\00", [16 x i8] zeroinitializer }, align 32
@radeon_debugfs_mst_info_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @radeon_debugfs_mst_info_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"checking %p vs %p\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\00", [30 x i8] zeroinitializer }, align 32
@radeon_dp_mst_connector_funcs = internal constant { %struct.drm_connector_funcs, [36 x i8] } { %struct.drm_connector_funcs { ptr @drm_helper_connector_dpms, ptr null, ptr null, ptr null, ptr @drm_helper_probe_single_connector_modes, ptr null, ptr null, ptr null, ptr @radeon_dp_mst_connector_destroy, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@radeon_dp_mst_connector_helper_funcs = internal constant { %struct.drm_connector_helper_funcs, [56 x i8] } { %struct.drm_connector_helper_funcs { ptr @radeon_dp_mst_get_modes, ptr @radeon_dp_mst_detect, ptr @radeon_dp_mst_mode_valid, ptr null, ptr @radeon_mst_best_encoder, ptr null, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.9 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"edid retrieved %p\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"enc master is %p\0A\00", [46 x i8] zeroinitializer }, align 32
@radeon_dp_mst_enc_funcs = internal constant { %struct.drm_encoder_funcs, [16 x i8] } { %struct.drm_encoder_funcs { ptr null, ptr @radeon_dp_mst_encoder_destroy, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@radeon_mst_helper_funcs = internal constant { %struct.drm_encoder_helper_funcs, [44 x i8] } { %struct.drm_encoder_helper_funcs { ptr @radeon_mst_encoder_dpms, ptr null, ptr @radeon_mst_mode_fixup, ptr @radeon_mst_encoder_prepare, ptr @radeon_mst_encoder_commit, ptr @radeon_mst_encoder_mode_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [44 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"got mst dpms on non-DCE5\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"got connector %d\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"failed to get frontend for dig encoder\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"dig encoder is %d %d %d\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"DPMS OFF %d\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"writing 0x%08x 0x%08x\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"timed out waiting for FE %d %d\0A\00", [32 x i8] zeroinitializer }, align 32
@radeon_atom_set_enc_offset.offsets = internal constant { [7 x i32], [36 x i8] } { [7 x i32] [i32 0, i32 3072, i32 38912, i32 41984, i32 45056, i32 48128, i32 51200], [36 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.19 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"timed out wait for rate cntl %d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"setting active device to %08x from %08x %08x for encoder %d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"dig clock %p %d %d\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"failed to find connector %p\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"%d %d\0A\00", [25 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"attrib %d: %d %d\0A\00", [46 x i8] zeroinitializer }, align 32
@switch.table.radeon_dp_add_mst_connector = internal constant { [6 x i32], [40 x i8] } { [6 x i32] [i32 1, i32 3, i32 3, i32 15, i32 3, i32 63], [40 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 349, i32 2 }
@___asan_gen_.28 = private unnamed_addr constant [8 x i8] c"mst_cbs\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 306, i32 45 }
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 671, i32 4 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 674, i32 4 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 700, i32 4 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 715, i32 6 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 723, i32 4 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 774, i32 22 }
@___asan_gen_.49 = private unnamed_addr constant [29 x i8] c"radeon_debugfs_mst_info_fops\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 766, i32 1 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 323, i32 3 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 293, i32 2 }
@___asan_gen_.58 = private unnamed_addr constant [30 x i8] c"radeon_dp_mst_connector_funcs\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 270, i32 41 }
@___asan_gen_.61 = private unnamed_addr constant [37 x i8] c"radeon_dp_mst_connector_helper_funcs\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 251, i32 48 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 197, i32 2 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 590, i32 2 }
@___asan_gen_.70 = private unnamed_addr constant [24 x i8] c"radeon_dp_mst_enc_funcs\00", align 1
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 575, i32 39 }
@___asan_gen_.73 = private unnamed_addr constant [24 x i8] c"radeon_mst_helper_funcs\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 561, i32 46 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 371, i32 3 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 388, i32 2 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 413, i32 5 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 418, i32 3 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 449, i32 3 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 49, i32 2 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 59, i32 4 }
@___asan_gen_.97 = private unnamed_addr constant [8 x i8] c"offsets\00", align 1
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 16, i32 19 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 184, i32 3 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 499, i32 2 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 508, i32 2 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 522, i32 3 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 544, i32 2 }
@___asan_gen_.115 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.116 = private constant [42 x i8] c"../drivers/gpu/drm/radeon/radeon_dp_mst.c\00", align 1
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 758, i32 18 }
@___asan_gen_.118 = private unnamed_addr constant [41 x i8] c"switch.table.radeon_dp_add_mst_connector\00", align 1
@llvm.compiler.used = appending global [32 x ptr] [ptr @.str, ptr @mst_cbs, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @radeon_debugfs_mst_info_fops, ptr @.str.7, ptr @.str.8, ptr @radeon_dp_mst_connector_funcs, ptr @radeon_dp_mst_connector_helper_funcs, ptr @.str.9, ptr @.str.10, ptr @radeon_dp_mst_enc_funcs, ptr @radeon_mst_helper_funcs, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @radeon_atom_set_enc_offset.offsets, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @switch.table.radeon_dp_add_mst_connector], section "llvm.metadata"
@0 = internal global [32 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mst_cbs to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radeon_debugfs_mst_info_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radeon_dp_mst_connector_funcs to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radeon_dp_mst_connector_helper_funcs to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radeon_dp_mst_enc_funcs to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radeon_mst_helper_funcs to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radeon_atom_set_enc_offset.offsets to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.radeon_dp_add_mst_connector to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @radeon_dp_mst_prepare_pll(ptr noundef %crtc, ptr nocapture noundef readonly %mode) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %crtc, align 8
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_private, align 4
  %encoder = getelementptr inbounds %struct.radeon_crtc, ptr %crtc, i32 0, i32 34
  %4 = ptrtoint ptr %encoder to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %encoder, align 4
  %enc_priv = getelementptr inbounds %struct.radeon_encoder, ptr %5, i32 0, i32 12
  %6 = ptrtoint ptr %enc_priv to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %enc_priv, align 4
  %8 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %5, align 4
  %connector_list.i = getelementptr inbounds %struct.drm_device, ptr %9, i32 0, i32 30, i32 12
  %10 = ptrtoint ptr %connector_list.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %.pn37.i = load ptr, ptr %connector_list.i, align 4
  %cmp.not38.i = icmp eq ptr %.pn37.i, %connector_list.i
  br i1 %cmp.not38.i, label %entry.radeon_mst_find_connector.exit.thread_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.radeon_mst_find_connector.exit.thread_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %radeon_mst_find_connector.exit.thread

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %.pn39.i = phi ptr [ %.pn.i, %for.inc.i.for.body.i_crit_edge ], [ %.pn37.i, %entry.for.body.i_crit_edge ]
  %encoder7.i = getelementptr i8, ptr %.pn39.i, i32 804
  %11 = ptrtoint ptr %encoder7.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %encoder7.i, align 4
  %tobool.not.i = icmp eq ptr %12, null
  br i1 %tobool.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.end.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

if.end.i:                                         ; preds = %for.body.i
  %is_mst_connector.i = getelementptr i8, ptr %.pn39.i, i32 1188
  %13 = ptrtoint ptr %is_mst_connector.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %is_mst_connector.i, align 4, !range !73
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool8.not.i = icmp eq i8 %14, 0
  br i1 %tobool8.not.i, label %if.end.i.for.inc.i_crit_edge, label %if.end10.i

if.end.i.for.inc.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

if.end10.i:                                       ; preds = %if.end.i
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.7, ptr noundef nonnull %12, ptr noundef %5) #6
  %15 = ptrtoint ptr %encoder7.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %encoder7.i, align 4
  %cmp13.i = icmp eq ptr %16, %5
  br i1 %cmp13.i, label %radeon_mst_find_connector.exit, label %if.end10.i.for.inc.i_crit_edge

if.end10.i.for.inc.i_crit_edge:                   ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end10.i.for.inc.i_crit_edge, %if.end.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %17 = ptrtoint ptr %.pn39.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %.pn.i = load ptr, ptr %.pn39.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %connector_list.i
  br i1 %cmp.not.i, label %for.inc.i.radeon_mst_find_connector.exit.thread_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.inc.i.radeon_mst_find_connector.exit.thread_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %radeon_mst_find_connector.exit.thread

radeon_mst_find_connector.exit.thread:            ; preds = %for.inc.i.radeon_mst_find_connector.exit.thread_crit_edge, %entry.radeon_mst_find_connector.exit.thread_crit_edge
  %connector29 = getelementptr inbounds %struct.radeon_encoder_mst, ptr %7, i32 0, i32 2
  %18 = ptrtoint ptr %connector29 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %connector29, align 4
  %con_priv30 = getelementptr inbounds %struct.radeon_connector, ptr %19, i32 0, i32 7
  %20 = ptrtoint ptr %con_priv30 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %con_priv30, align 4
  br label %if.end13

radeon_mst_find_connector.exit:                   ; preds = %if.end10.i
  %connector.0.le.i = getelementptr i8, ptr %.pn39.i, i32 -16
  %connector = getelementptr inbounds %struct.radeon_encoder_mst, ptr %7, i32 0, i32 2
  %22 = ptrtoint ptr %connector to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %connector, align 4
  %con_priv = getelementptr inbounds %struct.radeon_connector, ptr %23, i32 0, i32 7
  %24 = ptrtoint ptr %con_priv to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %con_priv, align 4
  %tobool.not = icmp eq ptr %connector.0.le.i, null
  br i1 %tobool.not, label %radeon_mst_find_connector.exit.if.end13_crit_edge, label %if.then

radeon_mst_find_connector.exit.if.end13_crit_edge: ; preds = %radeon_mst_find_connector.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end13

if.then:                                          ; preds = %radeon_mst_find_connector.exit
  %26 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %mode, align 4
  %pixelclock_for_modeset = getelementptr i8, ptr %.pn39.i, i32 1184
  %28 = ptrtoint ptr %pixelclock_for_modeset to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %pixelclock_for_modeset, align 8
  %bpc = getelementptr i8, ptr %.pn39.i, i32 184
  %29 = ptrtoint ptr %bpc to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %bpc, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool6.not = icmp eq i32 %30, 0
  %bpc12 = getelementptr inbounds %struct.radeon_crtc, ptr %crtc, i32 0, i32 30
  br i1 %tobool6.not, label %if.else, label %if.then7

if.then7:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %31 = ptrtoint ptr %bpc12 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %bpc12, align 4
  br label %if.end13

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %32 = ptrtoint ptr %bpc12 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 8, ptr %bpc12, align 4
  br label %if.end13

if.end13:                                         ; preds = %if.else, %if.then7, %radeon_mst_find_connector.exit.if.end13_crit_edge, %radeon_mst_find_connector.exit.thread
  %33 = phi ptr [ %21, %radeon_mst_find_connector.exit.thread ], [ %25, %if.then7 ], [ %25, %if.else ], [ %25, %radeon_mst_find_connector.exit.if.end13_crit_edge ]
  %dp_clock14 = getelementptr inbounds %struct.radeon_connector_atom_dig, ptr %33, i32 0, i32 3
  %34 = ptrtoint ptr %dp_clock14 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %dp_clock14, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str, ptr noundef %33, i32 noundef %35) #6
  %36 = ptrtoint ptr %dp_clock14 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %dp_clock14, align 4
  %ss = getelementptr inbounds %struct.radeon_crtc, ptr %crtc, i32 0, i32 27
  %call16 = tail call zeroext i1 @radeon_atombios_get_asic_ss_info(ptr noundef %3, ptr noundef %ss, i32 noundef 7, i32 noundef %37) #6
  %ss_enabled = getelementptr inbounds %struct.radeon_crtc, ptr %crtc, i32 0, i32 28
  %frombool = zext i1 %call16 to i8
  %38 = ptrtoint ptr %ss_enabled to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %frombool, ptr %ss_enabled, align 4
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @radeon_atombios_get_asic_ss_info(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @radeon_dp_mst_init(ptr noundef %radeon_connector) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %ddc_bus = getelementptr inbounds %struct.radeon_connector, ptr %radeon_connector, i32 0, i32 3
  %0 = ptrtoint ptr %ddc_bus to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ddc_bus, align 8
  %has_aux = getelementptr inbounds %struct.radeon_i2c_chan, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %has_aux to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %has_aux, align 8, !range !73
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %4 = ptrtoint ptr %radeon_connector to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %radeon_connector, align 8
  %call = tail call zeroext i1 @radeon_connector_is_dp12_capable(ptr noundef %radeon_connector) #6
  %. = select i1 %call, i8 20, i8 10
  %mst_mgr = getelementptr inbounds %struct.radeon_connector, ptr %radeon_connector, i32 0, i32 21
  %cbs = getelementptr inbounds %struct.radeon_connector, ptr %radeon_connector, i32 0, i32 21, i32 2
  %6 = ptrtoint ptr %cbs to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @mst_cbs, ptr %cbs, align 8
  %7 = ptrtoint ptr %ddc_bus to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ddc_bus, align 8
  %aux = getelementptr inbounds %struct.radeon_i2c_chan, ptr %8, i32 0, i32 4
  %call7 = tail call i32 @drm_dp_bw_code_to_link_rate(i8 noundef zeroext %.) #6
  %base9 = getelementptr inbounds %struct.drm_connector, ptr %radeon_connector, i32 0, i32 6
  %9 = ptrtoint ptr %base9 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %base9, align 8
  %call10 = tail call i32 @drm_dp_mst_topology_mgr_init(ptr noundef %mst_mgr, ptr noundef %5, ptr noundef %aux, i32 noundef 16, i32 noundef 6, i32 noundef 4, i32 noundef %call7, i32 noundef %10) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call10, %if.end ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @radeon_connector_is_dp12_capable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_dp_mst_topology_mgr_init(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_dp_bw_code_to_link_rate(i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @radeon_dp_mst_probe(ptr noundef %radeon_connector) local_unnamed_addr #0 align 64 {
entry:
  %msg = alloca [1 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %con_priv = getelementptr inbounds %struct.radeon_connector, ptr %radeon_connector, i32 0, i32 7
  %0 = ptrtoint ptr %con_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %con_priv, align 4
  %2 = ptrtoint ptr %radeon_connector to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %radeon_connector, align 8
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev_private, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %msg) #6
  %6 = ptrtoint ptr %msg to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 -1, ptr %msg, align 1, !annotation !74
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @radeon_mst to i32))
  %7 = load i32, ptr @radeon_mst, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp eq i32 %7, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %family = getelementptr inbounds %struct.radeon_device, ptr %5, i32 0, i32 6
  %8 = ptrtoint ptr %family to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %family, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 46, i32 %9)
  %cmp = icmp ugt i32 %9, 46
  br i1 %cmp, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %dpcd = getelementptr inbounds %struct.radeon_connector_atom_dig, ptr %1, i32 0, i32 1
  %10 = ptrtoint ptr %dpcd to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %dpcd, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 18, i8 %11)
  %cmp4 = icmp ult i8 %11, 18
  br i1 %cmp4, label %if.end3.cleanup_crit_edge, label %if.end7

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end7:                                          ; preds = %if.end3
  %ddc_bus = getelementptr inbounds %struct.radeon_connector, ptr %radeon_connector, i32 0, i32 3
  %12 = ptrtoint ptr %ddc_bus to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ddc_bus, align 8
  %aux = getelementptr inbounds %struct.radeon_i2c_chan, ptr %13, i32 0, i32 4
  %call = call i32 @drm_dp_dpcd_read(ptr noundef %aux, i32 noundef 33, ptr noundef nonnull %msg, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool8.not = icmp eq i32 %call, 0
  br i1 %tobool8.not, label %if.end7.if.end16_crit_edge, label %if.then9

if.end7.if.end16_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end16

if.then9:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  %14 = ptrtoint ptr %msg to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %msg, align 1
  %16 = and i8 %15, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool12.not = icmp eq i8 %16, 0
  %.str.2..str.1 = select i1 %tobool12.not, ptr @.str.2, ptr @.str.1
  %not.tobool12.not = xor i1 %tobool12.not, true
  %. = zext i1 %not.tobool12.not to i8
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull %.str.2..str.1) #6
  %is_mst = getelementptr inbounds %struct.radeon_connector_atom_dig, ptr %1, i32 0, i32 6
  %17 = ptrtoint ptr %is_mst to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %., ptr %is_mst, align 1
  br label %if.end16

if.end16:                                         ; preds = %if.then9, %if.end7.if.end16_crit_edge
  %mst_mgr = getelementptr inbounds %struct.radeon_connector, ptr %radeon_connector, i32 0, i32 21
  %is_mst17 = getelementptr inbounds %struct.radeon_connector_atom_dig, ptr %1, i32 0, i32 6
  %18 = ptrtoint ptr %is_mst17 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %is_mst17, align 1, !range !73
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool18 = icmp ne i8 %19, 0
  %call19 = call i32 @drm_dp_mst_topology_mgr_set_mst(ptr noundef %mst_mgr, i1 noundef zeroext %tobool18) #6
  %20 = ptrtoint ptr %is_mst17 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %is_mst17, align 1, !range !73
  %22 = zext i8 %21 to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %22, %if.end16 ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %if.end3.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %msg) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_dp_dpcd_read(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_dp_mst_topology_mgr_set_mst(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @radeon_dp_mst_check_status(ptr noundef %radeon_connector) local_unnamed_addr #0 align 64 {
entry:
  %esi = alloca [16 x i8], align 1
  %handled = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %con_priv = getelementptr inbounds %struct.radeon_connector, ptr %radeon_connector, i32 0, i32 7
  %0 = ptrtoint ptr %con_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %con_priv, align 4
  %is_mst = getelementptr inbounds %struct.radeon_connector_atom_dig, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %is_mst to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %is_mst, align 1, !range !73
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.cleanup36_crit_edge, label %if.then

entry.cleanup36_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup36

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %esi) #6
  %4 = call ptr @memset(ptr %esi, i32 0, i32 16)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %handled) #6
  %5 = ptrtoint ptr %handled to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 -1, ptr %handled, align 1, !annotation !74
  %ddc_bus = getelementptr inbounds %struct.radeon_connector, ptr %radeon_connector, i32 0, i32 3
  %6 = ptrtoint ptr %ddc_bus to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ddc_bus, align 8
  %aux = getelementptr inbounds %struct.radeon_i2c_chan, ptr %7, i32 0, i32 4
  %call = call i32 @drm_dp_dpcd_read(ptr noundef %aux, i32 noundef 8194, ptr noundef nonnull %esi, i32 noundef 8) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %call)
  %phi.cmp = icmp eq i32 %call, 8
  br i1 %phi.cmp, label %if.then1.lr.ph, label %cleanup29.thread50

if.then1.lr.ph:                                   ; preds = %if.then
  %mst_mgr = getelementptr inbounds %struct.radeon_connector, ptr %radeon_connector, i32 0, i32 21
  %arrayidx = getelementptr inbounds [16 x i8], ptr %esi, i32 0, i32 1
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.3, ptr noundef nonnull %esi) #6
  %call463 = call i32 @drm_dp_mst_hpd_irq(ptr noundef %mst_mgr, ptr noundef nonnull %esi, ptr noundef nonnull %handled) #6
  %8 = ptrtoint ptr %handled to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %handled, align 1, !range !73
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool5.not64 = icmp eq i8 %9, 0
  br i1 %tobool5.not64, label %if.then1.lr.ph.cleanup29.thread_crit_edge, label %if.then1.lr.ph.for.body.preheader_crit_edge

if.then1.lr.ph.for.body.preheader_crit_edge:      ; preds = %if.then1.lr.ph
  br label %for.body.preheader

if.then1.lr.ph.cleanup29.thread_crit_edge:        ; preds = %if.then1.lr.ph
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup29.thread

for.body.preheader:                               ; preds = %if.then18.for.body.preheader_crit_edge, %if.then1.lr.ph.for.body.preheader_crit_edge
  %call465 = phi i32 [ %call4, %if.then18.for.body.preheader_crit_edge ], [ %call463, %if.then1.lr.ph.for.body.preheader_crit_edge ]
  %10 = ptrtoint ptr %ddc_bus to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ddc_bus, align 8
  %aux9 = getelementptr inbounds %struct.radeon_i2c_chan, ptr %11, i32 0, i32 4
  %call10 = call i32 @drm_dp_dpcd_write(ptr noundef %aux9, i32 noundef 8195, ptr noundef %arrayidx, i32 noundef 3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call10)
  %cmp11.not = icmp eq i32 %call10, 3
  br i1 %cmp11.not, label %for.body.preheader.for.end_crit_edge, label %for.body.1

for.body.preheader.for.end_crit_edge:             ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

cleanup29.thread:                                 ; preds = %if.then18.cleanup29.thread_crit_edge, %if.then1.lr.ph.cleanup29.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %handled) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %esi) #6
  br label %cleanup36

for.body.1:                                       ; preds = %for.body.preheader
  %12 = ptrtoint ptr %ddc_bus to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ddc_bus, align 8
  %aux9.1 = getelementptr inbounds %struct.radeon_i2c_chan, ptr %13, i32 0, i32 4
  %call10.1 = call i32 @drm_dp_dpcd_write(ptr noundef %aux9.1, i32 noundef 8195, ptr noundef %arrayidx, i32 noundef 3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call10.1)
  %cmp11.1.not = icmp eq i32 %call10.1, 3
  br i1 %cmp11.1.not, label %for.body.1.for.end_crit_edge, label %for.body.2

for.body.1.for.end_crit_edge:                     ; preds = %for.body.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.2:                                       ; preds = %for.body.1
  call void @__sanitizer_cov_trace_pc() #8
  %14 = ptrtoint ptr %ddc_bus to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ddc_bus, align 8
  %aux9.2 = getelementptr inbounds %struct.radeon_i2c_chan, ptr %15, i32 0, i32 4
  %call10.2 = call i32 @drm_dp_dpcd_write(ptr noundef %aux9.2, i32 noundef 8195, ptr noundef %arrayidx, i32 noundef 3) #6
  br label %for.end

for.end:                                          ; preds = %for.body.2, %for.body.1.for.end_crit_edge, %for.body.preheader.for.end_crit_edge
  %16 = ptrtoint ptr %ddc_bus to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ddc_bus, align 8
  %aux14 = getelementptr inbounds %struct.radeon_i2c_chan, ptr %17, i32 0, i32 4
  %call16 = call i32 @drm_dp_dpcd_read(ptr noundef %aux14, i32 noundef 8194, ptr noundef nonnull %esi, i32 noundef 8) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %call16)
  %cmp17 = icmp eq i32 %call16, 8
  br i1 %cmp17, label %if.then18, label %cleanup29

if.then18:                                        ; preds = %for.end
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.4, ptr noundef nonnull %esi) #6
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.3, ptr noundef nonnull %esi) #6
  %call4 = call i32 @drm_dp_mst_hpd_irq(ptr noundef %mst_mgr, ptr noundef nonnull %esi, ptr noundef nonnull %handled) #6
  %18 = ptrtoint ptr %handled to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %handled, align 1, !range !73
  %tobool5.not = icmp eq i8 %19, 0
  br i1 %tobool5.not, label %if.then18.cleanup29.thread_crit_edge, label %if.then18.for.body.preheader_crit_edge

if.then18.for.body.preheader_crit_edge:           ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.preheader

if.then18.cleanup29.thread_crit_edge:             ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup29.thread

cleanup29.thread50:                               ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.5, i32 noundef 0) #6
  %20 = ptrtoint ptr %is_mst to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 0, ptr %is_mst, align 1
  %mst_mgr24 = getelementptr inbounds %struct.radeon_connector, ptr %radeon_connector, i32 0, i32 21
  %call27 = call i32 @drm_dp_mst_topology_mgr_set_mst(ptr noundef %mst_mgr24, i1 noundef zeroext false) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %handled) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %esi) #6
  br label %cleanup36

cleanup29:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %handled) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %esi) #6
  br label %cleanup36

cleanup36:                                        ; preds = %cleanup29, %cleanup29.thread50, %cleanup29.thread, %entry.cleanup36_crit_edge
  %retval.1 = phi i32 [ %call465, %cleanup29 ], [ 0, %cleanup29.thread ], [ -22, %cleanup29.thread50 ], [ -22, %entry.cleanup36_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_dp_mst_hpd_irq(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_dp_dpcd_write(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @radeon_mst_debugfs_init(ptr noundef %rdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %ddev = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 1
  %0 = ptrtoint ptr %ddev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ddev, align 4
  %primary = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %primary to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %primary, align 4
  %debugfs_root = getelementptr inbounds %struct.drm_minor, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %debugfs_root to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %debugfs_root, align 4
  %call = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.6, i16 noundef zeroext 292, ptr noundef %5, ptr noundef %rdev, ptr noundef nonnull @radeon_debugfs_mst_info_fops) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_file(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @radeon_dp_add_mst_connector(ptr noundef %mgr, ptr noundef %port, ptr noundef %pathprop) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %mgr, i32 -1216
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 3016) #9
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %is_mst_connector = getelementptr inbounds %struct.radeon_connector, ptr %call7.i.i, i32 0, i32 18
  %3 = ptrtoint ptr %is_mst_connector to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 1, ptr %is_mst_connector, align 4
  %port3 = getelementptr inbounds %struct.radeon_connector, ptr %call7.i.i, i32 0, i32 20
  %4 = ptrtoint ptr %port3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %port, ptr %port3, align 4
  %mst_port = getelementptr inbounds %struct.radeon_connector, ptr %call7.i.i, i32 0, i32 19
  %5 = ptrtoint ptr %mst_port to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %add.ptr, ptr %mst_port, align 8
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.8) #6
  %call4 = tail call i32 @drm_connector_init(ptr noundef %1, ptr noundef nonnull %call7.i.i, ptr noundef nonnull @radeon_dp_mst_connector_funcs, i32 noundef 10) #6
  %helper_private.i = getelementptr inbounds %struct.drm_connector, ptr %call7.i.i, i32 0, i32 35
  %6 = ptrtoint ptr %helper_private.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @radeon_dp_mst_connector_helper_funcs, ptr %helper_private.i, align 4
  %7 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %add.ptr, align 8
  %dev_private.i = getelementptr inbounds %struct.drm_device, ptr %8, i32 0, i32 5
  %9 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev_private.i, align 4
  %helper_private.i27 = getelementptr i8, ptr %mgr, i32 -508
  %11 = ptrtoint ptr %helper_private.i27 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %helper_private.i27, align 4
  %best_encoder.i = getelementptr inbounds %struct.drm_connector_helper_funcs, ptr %12, i32 0, i32 4
  %13 = ptrtoint ptr %best_encoder.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %best_encoder.i, align 4
  %call.i = tail call ptr %14(ptr noundef %add.ptr) #6
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.10, ptr noundef %call.i) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %15 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %15, i32 noundef 3520, i32 noundef 256) #9
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %if.end.radeon_dp_create_fake_mst_encoder.exit_crit_edge, label %if.end.i

if.end.radeon_dp_create_fake_mst_encoder.exit_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %radeon_dp_create_fake_mst_encoder.exit

if.end.i:                                         ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %16 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i45.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %16, i32 noundef 3520, i32 noundef 28) #9
  %enc_priv.i = getelementptr inbounds %struct.radeon_encoder, ptr %call7.i.i.i, i32 0, i32 12
  %17 = ptrtoint ptr %enc_priv.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call7.i.i45.i, ptr %enc_priv.i, align 8
  %tobool7.not.i = icmp eq ptr %call7.i.i45.i, null
  br i1 %tobool7.not.i, label %if.then8.i, label %if.end9.i

if.then8.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #6
  br label %radeon_dp_create_fake_mst_encoder.exit

if.end9.i:                                        ; preds = %if.end.i
  %num_crtc.i = getelementptr inbounds %struct.radeon_device, ptr %10, i32 0, i32 91
  %18 = ptrtoint ptr %num_crtc.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %num_crtc.i, align 4
  %switch.tableidx = add i32 %19, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %switch.tableidx)
  %20 = icmp ult i32 %switch.tableidx, 6
  br i1 %20, label %switch.lookup, label %if.end9.i.sw.epilog.i_crit_edge

if.end9.i.sw.epilog.i_crit_edge:                  ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.i

switch.lookup:                                    ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #8
  %switch.gep = getelementptr inbounds [6 x i32], ptr @switch.table.radeon_dp_add_mst_connector, i32 0, i32 %switch.tableidx
  %21 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %21)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %switch.lookup, %if.end9.i.sw.epilog.i_crit_edge
  %.sink.i = phi i32 [ %switch.load, %switch.lookup ], [ 3, %if.end9.i.sw.epilog.i_crit_edge ]
  %possible_crtcs16.i = getelementptr inbounds %struct.drm_encoder, ptr %call7.i.i.i, i32 0, i32 6
  %22 = ptrtoint ptr %possible_crtcs16.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %.sink.i, ptr %possible_crtcs16.i, align 4
  %call18.i = tail call i32 (ptr, ptr, ptr, i32, ptr, ...) @drm_encoder_init(ptr noundef %8, ptr noundef nonnull %call7.i.i.i, ptr noundef nonnull @radeon_dp_mst_enc_funcs, i32 noundef 7, ptr noundef null) #6
  %helper_private.i.i = getelementptr inbounds %struct.drm_encoder, ptr %call7.i.i.i, i32 0, i32 11
  %23 = ptrtoint ptr %helper_private.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @radeon_mst_helper_funcs, ptr %helper_private.i.i, align 4
  %24 = ptrtoint ptr %enc_priv.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %enc_priv.i, align 8
  %connector20.i = getelementptr inbounds %struct.radeon_encoder_mst, ptr %25, i32 0, i32 2
  %26 = ptrtoint ptr %connector20.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %add.ptr, ptr %connector20.i, align 4
  %primary.i = getelementptr inbounds %struct.radeon_encoder_mst, ptr %25, i32 0, i32 1
  %27 = ptrtoint ptr %primary.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call.i, ptr %primary.i, align 4
  %is_mst_encoder.i = getelementptr inbounds %struct.radeon_encoder, ptr %call7.i.i.i, i32 0, i32 20
  %28 = ptrtoint ptr %is_mst_encoder.i to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 1, ptr %is_mst_encoder.i, align 4
  br label %radeon_dp_create_fake_mst_encoder.exit

radeon_dp_create_fake_mst_encoder.exit:           ; preds = %sw.epilog.i, %if.then8.i, %if.end.radeon_dp_create_fake_mst_encoder.exit_crit_edge
  %retval.0.i = phi ptr [ %call7.i.i.i, %sw.epilog.i ], [ null, %if.then8.i ], [ null, %if.end.radeon_dp_create_fake_mst_encoder.exit_crit_edge ]
  %mst_encoder = getelementptr inbounds %struct.radeon_connector, ptr %call7.i.i, i32 0, i32 22
  %29 = ptrtoint ptr %mst_encoder to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %retval.0.i, ptr %mst_encoder, align 4
  %base6 = getelementptr inbounds %struct.drm_connector, ptr %call7.i.i, i32 0, i32 6
  %path_property = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 30, i32 37
  %30 = ptrtoint ptr %path_property to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %path_property, align 4
  tail call void @drm_object_attach_property(ptr noundef %base6, ptr noundef %31, i64 noundef 0) #6
  %tile_property = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 30, i32 38
  %32 = ptrtoint ptr %tile_property to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %tile_property, align 4
  tail call void @drm_object_attach_property(ptr noundef %base6, ptr noundef %33, i64 noundef 0) #6
  %call9 = tail call i32 @drm_connector_set_path_property(ptr noundef nonnull %call7.i.i, ptr noundef %pathprop) #6
  br label %cleanup

cleanup:                                          ; preds = %radeon_dp_create_fake_mst_encoder.exit, %entry.cleanup_crit_edge
  ret ptr %call7.i.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_connector_init(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_object_attach_property(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_connector_set_path_property(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_helper_connector_dpms(ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_helper_probe_single_connector_modes(ptr noundef, i32 noundef, i32 noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @radeon_dp_mst_connector_destroy(ptr noundef %connector) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %mst_encoder = getelementptr inbounds %struct.radeon_connector, ptr %connector, i32 0, i32 22
  %0 = ptrtoint ptr %mst_encoder to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mst_encoder, align 4
  tail call void @drm_encoder_cleanup(ptr noundef %1) #6
  tail call void @kfree(ptr noundef %1) #6
  tail call void @drm_connector_cleanup(ptr noundef %connector) #6
  tail call void @kfree(ptr noundef %connector) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_encoder_cleanup(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_connector_cleanup(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @radeon_dp_mst_get_modes(ptr noundef %connector) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %mst_port.i = getelementptr inbounds %struct.radeon_connector, ptr %connector, i32 0, i32 19
  %0 = ptrtoint ptr %mst_port.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mst_port.i, align 8
  %mst_mgr.i = getelementptr inbounds %struct.radeon_connector, ptr %1, i32 0, i32 21
  %port.i = getelementptr inbounds %struct.radeon_connector, ptr %connector, i32 0, i32 20
  %2 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %port.i, align 4
  %call.i = tail call ptr @drm_dp_mst_get_edid(ptr noundef %connector, ptr noundef %mst_mgr.i, ptr noundef %3) #6
  %edid1.i = getelementptr inbounds %struct.radeon_connector, ptr %connector, i32 0, i32 6
  %4 = ptrtoint ptr %edid1.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call.i, ptr %edid1.i, align 8
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.9, ptr noundef %call.i) #6
  %5 = ptrtoint ptr %edid1.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %edid1.i, align 8
  %tobool.not.i = icmp eq ptr %6, null
  br i1 %tobool.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call4.i = tail call i32 @drm_connector_update_edid_property(ptr noundef %connector, ptr noundef nonnull %6) #6
  %7 = ptrtoint ptr %edid1.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %edid1.i, align 8
  %call7.i = tail call i32 @drm_add_edid_modes(ptr noundef %connector, ptr noundef %8) #6
  br label %radeon_dp_mst_get_ddc_modes.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call9.i = tail call i32 @drm_connector_update_edid_property(ptr noundef %connector, ptr noundef null) #6
  br label %radeon_dp_mst_get_ddc_modes.exit

radeon_dp_mst_get_ddc_modes.exit:                 ; preds = %if.end.i, %if.then.i
  %retval.0.i = phi i32 [ %call7.i, %if.then.i ], [ 0, %if.end.i ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @radeon_dp_mst_detect(ptr noundef %connector, ptr noundef %ctx, i1 noundef zeroext %force) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %mst_port = getelementptr inbounds %struct.radeon_connector, ptr %connector, i32 0, i32 19
  %0 = ptrtoint ptr %mst_port to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mst_port, align 8
  %registration_state.i = getelementptr inbounds %struct.drm_connector, ptr %connector, i32 0, i32 16
  %2 = ptrtoint ptr %registration_state.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %registration_state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp.i = icmp eq i32 %3, 2
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %mst_mgr = getelementptr inbounds %struct.radeon_connector, ptr %1, i32 0, i32 21
  %port = getelementptr inbounds %struct.radeon_connector, ptr %connector, i32 0, i32 20
  %4 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %port, align 4
  %call1 = tail call i32 @drm_dp_mst_detect_port(ptr noundef %connector, ptr noundef %ctx, ptr noundef %mst_mgr, ptr noundef %5) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ 2, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @radeon_dp_mst_mode_valid(ptr nocapture noundef readnone %connector, ptr nocapture noundef readonly %mode) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 10000, i32 %1)
  %cmp = icmp slt i32 %1, 10000
  br i1 %cmp, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %flags = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 11
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags, align 4
  %and = and i32 %3, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %. = select i1 %tobool.not, i32 0, i32 3
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ 16, %entry.return_crit_edge ], [ %., %if.end ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal ptr @radeon_mst_best_encoder(ptr nocapture noundef readonly %connector) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %mst_encoder = getelementptr inbounds %struct.radeon_connector, ptr %connector, i32 0, i32 22
  %0 = ptrtoint ptr %mst_encoder to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mst_encoder, align 4
  ret ptr %1
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_dp_mst_get_edid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_connector_update_edid_property(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_add_edid_modes(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_dp_mst_detect_port(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_encoder_init(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @radeon_dp_mst_encoder_destroy(ptr noundef %encoder) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @drm_encoder_cleanup(ptr noundef %encoder) #6
  tail call void @kfree(ptr noundef %encoder) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @radeon_mst_encoder_dpms(ptr noundef %encoder, i32 noundef %mode) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
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
  call void @__sanitizer_cov_trace_const_cmp4(i32 46, i32 %5)
  %cmp = icmp ugt i32 %5, 46
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.11) #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %connector_list.i = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 30, i32 12
  %6 = ptrtoint ptr %connector_list.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %.pn37.i = load ptr, ptr %connector_list.i, align 4
  %cmp.not38.i = icmp eq ptr %.pn37.i, %connector_list.i
  br i1 %cmp.not38.i, label %if.end.cleanup_crit_edge, label %if.end.for.body.i_crit_edge

if.end.for.body.i_crit_edge:                      ; preds = %if.end
  br label %for.body.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end.for.body.i_crit_edge
  %.pn39.i = phi ptr [ %.pn.i, %for.inc.i.for.body.i_crit_edge ], [ %.pn37.i, %if.end.for.body.i_crit_edge ]
  %encoder7.i = getelementptr i8, ptr %.pn39.i, i32 804
  %7 = ptrtoint ptr %encoder7.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %encoder7.i, align 4
  %tobool.not.i = icmp eq ptr %8, null
  br i1 %tobool.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.end.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

if.end.i:                                         ; preds = %for.body.i
  %is_mst_connector.i = getelementptr i8, ptr %.pn39.i, i32 1188
  %9 = ptrtoint ptr %is_mst_connector.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %is_mst_connector.i, align 4, !range !73
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool8.not.i = icmp eq i8 %10, 0
  br i1 %tobool8.not.i, label %if.end.i.for.inc.i_crit_edge, label %if.end10.i

if.end.i.for.inc.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

if.end10.i:                                       ; preds = %if.end.i
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.7, ptr noundef nonnull %8, ptr noundef %encoder) #6
  %11 = ptrtoint ptr %encoder7.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %encoder7.i, align 4
  %cmp13.i = icmp eq ptr %12, %encoder
  br i1 %cmp13.i, label %radeon_mst_find_connector.exit, label %if.end10.i.for.inc.i_crit_edge

if.end10.i.for.inc.i_crit_edge:                   ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end10.i.for.inc.i_crit_edge, %if.end.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %13 = ptrtoint ptr %.pn39.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %.pn.i = load ptr, ptr %.pn39.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %connector_list.i
  br i1 %cmp.not.i, label %for.inc.i.cleanup_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.inc.i.cleanup_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

radeon_mst_find_connector.exit:                   ; preds = %if.end10.i
  %connector.0.le.i = getelementptr i8, ptr %.pn39.i, i32 -16
  %tobool.not = icmp eq ptr %connector.0.le.i, null
  br i1 %tobool.not, label %radeon_mst_find_connector.exit.cleanup_crit_edge, label %if.end3

radeon_mst_find_connector.exit.cleanup_crit_edge: ; preds = %radeon_mst_find_connector.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end3:                                          ; preds = %radeon_mst_find_connector.exit
  %enc_priv = getelementptr inbounds %struct.radeon_encoder, ptr %encoder, i32 0, i32 12
  %14 = ptrtoint ptr %enc_priv to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %enc_priv, align 4
  %primary4 = getelementptr inbounds %struct.radeon_encoder_mst, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %primary4 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %primary4, align 4
  %enc_priv5 = getelementptr inbounds %struct.radeon_encoder, ptr %17, i32 0, i32 12
  %18 = ptrtoint ptr %enc_priv5 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %enc_priv5, align 4
  %crtc6 = getelementptr inbounds %struct.drm_encoder, ptr %encoder, i32 0, i32 8
  %20 = ptrtoint ptr %crtc6 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %crtc6, align 4
  %active_mst_links = getelementptr inbounds %struct.radeon_encoder_atom_dig, ptr %19, i32 0, i32 13
  %22 = ptrtoint ptr %active_mst_links to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %active_mst_links, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.12, i32 noundef %23) #6
  %24 = zext i32 %mode to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values)
  switch i32 %mode, label %if.end3.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %if.end3.sw.bb65_crit_edge
    i32 2, label %if.end3.sw.bb65_crit_edge208
    i32 3, label %if.end3.sw.bb65_crit_edge209
  ]

if.end3.sw.bb65_crit_edge209:                     ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb65

if.end3.sw.bb65_crit_edge208:                     ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb65

if.end3.sw.bb65_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb65

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb:                                            ; preds = %if.end3
  %25 = ptrtoint ptr %active_mst_links to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %active_mst_links, align 4
  %inc = add i32 %26, 1
  store i32 %inc, ptr %active_mst_links, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %cmp12 = icmp eq i32 %26, 0
  br i1 %cmp12, label %if.then13, label %if.else

if.then13:                                        ; preds = %sw.bb
  %dig_encoder = getelementptr inbounds %struct.radeon_encoder_atom_dig, ptr %19, i32 0, i32 2
  %27 = ptrtoint ptr %dig_encoder to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %dig_encoder, align 4
  %fe = getelementptr inbounds %struct.radeon_encoder_mst, ptr %15, i32 0, i32 5
  %29 = ptrtoint ptr %fe to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %fe, align 4
  %fe_from_be = getelementptr inbounds %struct.radeon_encoder_mst, ptr %15, i32 0, i32 6
  %30 = ptrtoint ptr %fe_from_be to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 1, ptr %fe_from_be, align 4
  tail call void @atombios_set_mst_encoder_crtc_source(ptr noundef %encoder, i32 noundef %28) #6
  tail call void @atombios_dig_encoder_setup(ptr noundef %17, i32 noundef 15, i32 noundef 0) #6
  %31 = ptrtoint ptr %dig_encoder to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %dig_encoder, align 4
  tail call void @atombios_dig_transmitter_setup2(ptr noundef %17, i32 noundef 1, i8 noundef zeroext 0, i8 noundef zeroext 0, i32 noundef %32) #6
  %connector = getelementptr inbounds %struct.radeon_encoder_mst, ptr %15, i32 0, i32 2
  %33 = ptrtoint ptr %connector to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %connector, align 4
  %call17 = tail call zeroext i1 @radeon_dp_needs_link_train(ptr noundef %34) #6
  br i1 %call17, label %if.then13.if.then20_crit_edge, label %lor.lhs.false

if.then13.if.then20_crit_edge:                    ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then20

lor.lhs.false:                                    ; preds = %if.then13
  %35 = ptrtoint ptr %active_mst_links to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %active_mst_links, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %36)
  %cmp19 = icmp eq i32 %36, 1
  br i1 %cmp19, label %lor.lhs.false.if.then20_crit_edge, label %lor.lhs.false.if.end33_crit_edge

lor.lhs.false.if.end33_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end33

lor.lhs.false.if.then20_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then20

if.then20:                                        ; preds = %lor.lhs.false.if.then20_crit_edge, %if.then13.if.then20_crit_edge
  %37 = ptrtoint ptr %connector to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %connector, align 4
  tail call void @radeon_dp_link_train(ptr noundef %17, ptr noundef %38) #6
  br label %if.end33

if.else:                                          ; preds = %sw.bb
  %crtc_id = getelementptr inbounds %struct.radeon_crtc, ptr %21, i32 0, i32 1
  %39 = ptrtoint ptr %crtc_id to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %crtc_id, align 8
  %call25 = tail call i32 @radeon_atom_pick_dig_encoder(ptr noundef %encoder, i32 noundef %40) #6
  %fe26 = getelementptr inbounds %struct.radeon_encoder_mst, ptr %15, i32 0, i32 5
  %41 = ptrtoint ptr %fe26 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %call25, ptr %fe26, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call25)
  %cmp28 = icmp eq i32 %call25, -1
  br i1 %cmp28, label %if.then29, label %if.else.if.end30_crit_edge

if.else.if.end30_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end30

if.then29:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.13) #6
  br label %if.end30

if.end30:                                         ; preds = %if.then29, %if.else.if.end30_crit_edge
  %fe_from_be31 = getelementptr inbounds %struct.radeon_encoder_mst, ptr %15, i32 0, i32 6
  %42 = ptrtoint ptr %fe_from_be31 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 0, ptr %fe_from_be31, align 4
  %43 = ptrtoint ptr %fe26 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %fe26, align 4
  tail call void @atombios_set_mst_encoder_crtc_source(ptr noundef %encoder, i32 noundef %44) #6
  br label %if.end33

if.end33:                                         ; preds = %if.end30, %if.then20, %lor.lhs.false.if.end33_crit_edge
  %dig_encoder34 = getelementptr inbounds %struct.radeon_encoder_atom_dig, ptr %19, i32 0, i32 2
  %45 = ptrtoint ptr %dig_encoder34 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %dig_encoder34, align 4
  %47 = ptrtoint ptr %19 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %19, align 4, !range !73
  %49 = zext i8 %48 to i32
  %crtc_id36 = getelementptr inbounds %struct.radeon_crtc, ptr %21, i32 0, i32 1
  %50 = ptrtoint ptr %crtc_id36 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %crtc_id36, align 8
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.14, i32 noundef %46, i32 noundef %49, i32 noundef %51) #6
  %mst_port = getelementptr i8, ptr %.pn39.i, i32 1192
  %52 = ptrtoint ptr %mst_port to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %mst_port, align 8
  %mst_mgr = getelementptr inbounds %struct.radeon_connector, ptr %53, i32 0, i32 21
  %pbn = getelementptr inbounds %struct.radeon_encoder_mst, ptr %15, i32 0, i32 4
  %54 = ptrtoint ptr %pbn to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %pbn, align 4
  %call37 = tail call i32 @drm_dp_find_vcpi_slots(ptr noundef %mst_mgr, i32 noundef %55) #6
  %56 = ptrtoint ptr %mst_port to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %mst_port, align 8
  %mst_mgr39 = getelementptr inbounds %struct.radeon_connector, ptr %57, i32 0, i32 21
  %port = getelementptr i8, ptr %.pn39.i, i32 1196
  %58 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %port, align 4
  %60 = ptrtoint ptr %pbn to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %pbn, align 4
  %call41 = tail call zeroext i1 @drm_dp_mst_allocate_vcpi(ptr noundef %mst_mgr39, ptr noundef %59, i32 noundef %61, i32 noundef %call37) #6
  %62 = ptrtoint ptr %mst_port to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %mst_port, align 8
  %mst_mgr43 = getelementptr inbounds %struct.radeon_connector, ptr %63, i32 0, i32 21
  %call44 = tail call i32 @drm_dp_update_payload_part1(ptr noundef %mst_mgr43, i32 noundef 1) #6
  %64 = ptrtoint ptr %mst_port to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %mst_port, align 8
  %hpd = getelementptr inbounds %struct.radeon_connector, ptr %65, i32 0, i32 12
  %66 = ptrtoint ptr %hpd to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %hpd, align 8
  tail call fastcc void @radeon_dp_mst_set_be_cntl(ptr noundef %17, ptr noundef %15, i32 noundef %67, i1 noundef zeroext true)
  %enc_active = getelementptr inbounds %struct.radeon_encoder_mst, ptr %15, i32 0, i32 7
  %68 = ptrtoint ptr %enc_active to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 1, ptr %enc_active, align 1
  %69 = ptrtoint ptr %mst_port to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %mst_port, align 8
  tail call fastcc void @radeon_dp_mst_update_stream_attribs(ptr noundef %70, ptr noundef %17)
  %71 = ptrtoint ptr %pbn to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %pbn, align 4
  %conv1.i = zext i32 %72 to i64
  %shl.i = shl nuw i64 %conv1.i, 32
  %73 = ptrtoint ptr %mst_port to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %mst_port, align 8
  %pbn_div = getelementptr inbounds %struct.radeon_connector, ptr %74, i32 0, i32 21, i32 17
  %75 = ptrtoint ptr %pbn_div to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %pbn_div, align 8
  %conv1.i187 = zext i32 %76 to i64
  %shl.i188 = shl nuw i64 %conv1.i187, 32
  %shr12.i.i = lshr i64 %conv1.i, 31
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %if.end33
  %shift.014.i.i = phi i32 [ 62, %if.end33 ], [ %dec.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %sh_prom.i.i = zext i32 %shift.014.i.i to i64
  %shr213.i.i = lshr i64 %shl.i, %sh_prom.i.i
  %and3.i.i = and i64 %shr213.i.i, 1
  call void @__sanitizer_cov_trace_cmp8(i64 %and3.i.i, i64 %shr12.i.i)
  %cmp5.not.i.i = icmp eq i64 %and3.i.i, %shr12.i.i
  br i1 %cmp5.not.i.i, label %for.inc.i.i, label %for.body.i.i.drm_fixp_div.exit_crit_edge

for.body.i.i.drm_fixp_div.exit_crit_edge:         ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %drm_fixp_div.exit

for.inc.i.i:                                      ; preds = %for.body.i.i
  %dec.i.i = add nsw i32 %shift.014.i.i, -1
  %cmp.not.i.i = icmp eq i32 %dec.i.i, 0
  br i1 %cmp.not.i.i, label %for.inc.i.i.drm_fixp_div.exit_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i.i

for.inc.i.i.drm_fixp_div.exit_crit_edge:          ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %drm_fixp_div.exit

drm_fixp_div.exit:                                ; preds = %for.inc.i.i.drm_fixp_div.exit_crit_edge, %for.body.i.i.drm_fixp_div.exit_crit_edge
  %shift.0.lcssa.i.i = phi i32 [ 0, %for.inc.i.i.drm_fixp_div.exit_crit_edge ], [ %shift.014.i.i, %for.body.i.i.drm_fixp_div.exit_crit_edge ]
  %sub.i = sub i32 62, %shift.0.lcssa.i.i
  %sh_prom.i = zext i32 %sub.i to i64
  %shl.i189 = shl i64 %shl.i, %sh_prom.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %sub.i)
  %cmp.i = icmp ult i32 %sub.i, 32
  %sub1.i = add i32 %shift.0.lcssa.i.i, -30
  %narrow.i = select i1 %cmp.i, i32 %sub1.i, i32 0
  %shr.i = zext i32 %narrow.i to i64
  %b.addr.0.i = ashr i64 %shl.i188, %shr.i
  %call3.i = tail call i64 @div64_s64(i64 noundef %shl.i189, i64 noundef %b.addr.0.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %sub.i)
  %cmp4.i = icmp ugt i32 %sub.i, 32
  %sub6.i = sub i32 30, %shift.0.lcssa.i.i
  %narrow19.i = select i1 %cmp4.i, i32 %sub6.i, i32 0
  %shr8.i = zext i32 %narrow19.i to i64
  %retval.0.i = ashr i64 %call3.i, %shr8.i
  %77 = ptrtoint ptr %encoder to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %encoder, align 4
  %dev_private.i = getelementptr inbounds %struct.drm_device, ptr %78, i32 0, i32 5
  %79 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %dev_private.i, align 4
  %81 = ptrtoint ptr %enc_priv to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %enc_priv, align 4
  %fe.i = getelementptr inbounds %struct.radeon_encoder_mst, ptr %82, i32 0, i32 5
  %83 = ptrtoint ptr %fe.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %fe.i, align 4
  %arrayidx.i.i = getelementptr [7 x i32], ptr @radeon_atom_set_enc_offset.offsets, i32 0, i32 %84
  %85 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %arrayidx.i.i, align 4
  %87 = lshr i64 %retval.0.i, 32
  %conv.i.i = trunc i64 %87 to i32
  %sub.i190 = sub i64 %retval.0.i, %87
  %shl.i191 = shl i64 %sub.i190, 26
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %shl.i191)
  %cmp.i.i = icmp sgt i64 %shl.i191, 0
  %..i.i = select i1 %cmp.i.i, i64 4294967295, i64 288230371856744449
  %sub.i.i = add i64 %..i.i, %shl.i191
  %88 = lshr i64 %sub.i.i, 32
  %conv.i4.i.i = trunc i64 %88 to i32
  %shl4.i = shl i32 %conv.i.i, 26
  %and5.i = and i32 %conv.i4.i.i, 67108863
  %or.i = or i32 %and5.i, %shl4.i
  %add.i = add i32 %86, 29572
  %rmmio_size.i.i = getelementptr inbounds %struct.radeon_device, ptr %80, i32 0, i32 18
  %89 = ptrtoint ptr %rmmio_size.i.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %rmmio_size.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %90, i32 %add.i)
  %cmp.i1.i = icmp ugt i32 %90, %add.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %add.i)
  %cmp1.i.i = icmp ult i32 %add.i, 65536
  %or.cond.i.i = or i1 %cmp1.i.i, %cmp.i1.i
  br i1 %or.cond.i.i, label %do.body.i.i, label %if.else.i.i

do.body.i.i:                                      ; preds = %drm_fixp_div.exit
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !75
  tail call void @arm_heavy_mb() #6
  %91 = tail call i32 @llvm.bswap.i32(i32 %or.i) #6
  %rmmio.i.i = getelementptr inbounds %struct.radeon_device, ptr %80, i32 0, i32 31
  %92 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %93, i32 %add.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %91) #6, !srcloc !76
  br label %r100_mm_wreg.exit.i

if.else.i.i:                                      ; preds = %drm_fixp_div.exit
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @r100_mm_wreg_slow(ptr noundef %80, i32 noundef %add.i, i32 noundef %or.i) #6
  br label %r100_mm_wreg.exit.i

r100_mm_wreg.exit.i:                              ; preds = %if.else.i.i, %do.body.i.i
  %add7.i = add i32 %86, 29580
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %add7.i)
  %cmp1.i4.i = icmp ult i32 %add7.i, 65536
  %rmmio.i6.i = getelementptr inbounds %struct.radeon_device, ptr %80, i32 0, i32 31
  br label %do.body.i

do.body.i:                                        ; preds = %land.rhs.i.do.body.i_crit_edge, %r100_mm_wreg.exit.i
  %retries.0.i = phi i32 [ 0, %r100_mm_wreg.exit.i ], [ %inc.i, %land.rhs.i.do.body.i_crit_edge ]
  %94 = ptrtoint ptr %rmmio_size.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %rmmio_size.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %95, i32 %add7.i)
  %cmp.i3.i = icmp ugt i32 %95, %add7.i
  %or.cond.i5.i = or i1 %cmp1.i4.i, %cmp.i3.i
  br i1 %or.cond.i5.i, label %if.then.i.i, label %if.else.i8.i

if.then.i.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %96 = ptrtoint ptr %rmmio.i6.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %rmmio.i6.i, align 4
  %add.ptr.i7.i = getelementptr i8, ptr %97, i32 %add7.i
  %98 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i7.i) #6, !srcloc !77
  %99 = tail call i32 @llvm.bswap.i32(i32 %98) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !78
  br label %r100_mm_rreg.exit.i

if.else.i8.i:                                     ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %call3.i.i = tail call i32 @r100_mm_rreg_slow(ptr noundef %80, i32 noundef %add7.i) #6
  br label %r100_mm_rreg.exit.i

r100_mm_rreg.exit.i:                              ; preds = %if.else.i8.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %call3.i.i, %if.else.i8.i ], [ %99, %if.then.i.i ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %100 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %100(i32 noundef 2147480) #6
  %and9.i = and i32 %retval.0.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9.i)
  %tobool.not.i192 = icmp eq i32 %and9.i, 0
  br i1 %tobool.not.i192, label %do.end.i, label %land.rhs.i

land.rhs.i:                                       ; preds = %r100_mm_rreg.exit.i
  %inc.i = add nuw nsw i32 %retries.0.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 10001
  br i1 %exitcond.not.i, label %land.rhs.i.if.then.i_crit_edge, label %land.rhs.i.do.body.i_crit_edge

land.rhs.i.do.body.i_crit_edge:                   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i

land.rhs.i.if.then.i_crit_edge:                   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i

do.end.i:                                         ; preds = %r100_mm_rreg.exit.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 9999, i32 %retries.0.i)
  %cmp11.i = icmp ugt i32 %retries.0.i, 9999
  br i1 %cmp11.i, label %do.end.i.if.then.i_crit_edge, label %do.end.i.radeon_dp_mst_set_vcp_size.exit_crit_edge

do.end.i.radeon_dp_mst_set_vcp_size.exit_crit_edge: ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %radeon_dp_mst_set_vcp_size.exit

do.end.i.if.then.i_crit_edge:                     ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i

if.then.i:                                        ; preds = %do.end.i.if.then.i_crit_edge, %land.rhs.i.if.then.i_crit_edge
  %101 = ptrtoint ptr %fe.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %fe.i, align 4
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.19, i32 noundef %102) #6
  br label %radeon_dp_mst_set_vcp_size.exit

radeon_dp_mst_set_vcp_size.exit:                  ; preds = %if.then.i, %do.end.i.radeon_dp_mst_set_vcp_size.exit_crit_edge
  %fe58 = getelementptr inbounds %struct.radeon_encoder_mst, ptr %15, i32 0, i32 5
  %103 = ptrtoint ptr %fe58 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %fe58, align 4
  tail call void @atombios_dig_encoder_setup2(ptr noundef %17, i32 noundef 13, i32 noundef 0, i32 noundef %104) #6
  %105 = ptrtoint ptr %mst_port to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %mst_port, align 8
  %mst_mgr60 = getelementptr inbounds %struct.radeon_connector, ptr %106, i32 0, i32 21
  %call61 = tail call i32 @drm_dp_check_act_status(ptr noundef %mst_mgr60) #6
  %107 = ptrtoint ptr %mst_port to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %mst_port, align 8
  %mst_mgr63 = getelementptr inbounds %struct.radeon_connector, ptr %108, i32 0, i32 21
  %call64 = tail call i32 @drm_dp_update_payload_part2(ptr noundef %mst_mgr63) #6
  br label %cleanup

sw.bb65:                                          ; preds = %if.end3.sw.bb65_crit_edge, %if.end3.sw.bb65_crit_edge208, %if.end3.sw.bb65_crit_edge209
  %109 = ptrtoint ptr %active_mst_links to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %active_mst_links, align 4
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.15, i32 noundef %110) #6
  %enc_active67 = getelementptr inbounds %struct.radeon_encoder_mst, ptr %15, i32 0, i32 7
  %111 = ptrtoint ptr %enc_active67 to i32
  call void @__asan_load1_noabort(i32 %111)
  %112 = load i8, ptr %enc_active67, align 1, !range !73
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %112)
  %tobool68.not = icmp eq i8 %112, 0
  br i1 %tobool68.not, label %sw.bb65.cleanup_crit_edge, label %if.end70

sw.bb65.cleanup_crit_edge:                        ; preds = %sw.bb65
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end70:                                         ; preds = %sw.bb65
  %mst_port71 = getelementptr i8, ptr %.pn39.i, i32 1192
  %113 = ptrtoint ptr %mst_port71 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %mst_port71, align 8
  %mst_mgr72 = getelementptr inbounds %struct.radeon_connector, ptr %114, i32 0, i32 21
  %port73 = getelementptr inbounds %struct.radeon_encoder_mst, ptr %15, i32 0, i32 3
  %115 = ptrtoint ptr %port73 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %port73, align 4
  tail call void @drm_dp_mst_reset_vcpi_slots(ptr noundef %mst_mgr72, ptr noundef %116) #6
  %117 = ptrtoint ptr %mst_port71 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %mst_port71, align 8
  %mst_mgr75 = getelementptr inbounds %struct.radeon_connector, ptr %118, i32 0, i32 21
  %call76 = tail call i32 @drm_dp_update_payload_part1(ptr noundef %mst_mgr75, i32 noundef 1) #6
  %119 = ptrtoint ptr %mst_port71 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %mst_port71, align 8
  %mst_mgr78 = getelementptr inbounds %struct.radeon_connector, ptr %120, i32 0, i32 21
  %call79 = tail call i32 @drm_dp_check_act_status(ptr noundef %mst_mgr78) #6
  %121 = ptrtoint ptr %mst_port71 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %mst_port71, align 8
  %mst_mgr81 = getelementptr inbounds %struct.radeon_connector, ptr %122, i32 0, i32 21
  %call82 = tail call i32 @drm_dp_update_payload_part2(ptr noundef %mst_mgr81) #6
  %123 = ptrtoint ptr %mst_port71 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %mst_port71, align 8
  %mst_mgr84 = getelementptr inbounds %struct.radeon_connector, ptr %124, i32 0, i32 21
  %125 = ptrtoint ptr %port73 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %port73, align 4
  tail call void @drm_dp_mst_deallocate_vcpi(ptr noundef %mst_mgr84, ptr noundef %126) #6
  %127 = ptrtoint ptr %enc_active67 to i32
  call void @__asan_store1_noabort(i32 %127)
  store i8 0, ptr %enc_active67, align 1
  %128 = ptrtoint ptr %mst_port71 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %mst_port71, align 8
  tail call fastcc void @radeon_dp_mst_update_stream_attribs(ptr noundef %129, ptr noundef %17)
  %130 = ptrtoint ptr %mst_port71 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %mst_port71, align 8
  %hpd90 = getelementptr inbounds %struct.radeon_connector, ptr %131, i32 0, i32 12
  %132 = ptrtoint ptr %hpd90 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %hpd90, align 8
  tail call fastcc void @radeon_dp_mst_set_be_cntl(ptr noundef %17, ptr noundef %15, i32 noundef %133, i1 noundef zeroext false)
  %fe94 = getelementptr inbounds %struct.radeon_encoder_mst, ptr %15, i32 0, i32 5
  %134 = ptrtoint ptr %fe94 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %fe94, align 4
  tail call void @atombios_dig_encoder_setup2(ptr noundef %17, i32 noundef 12, i32 noundef 0, i32 noundef %135) #6
  %fe_from_be95 = getelementptr inbounds %struct.radeon_encoder_mst, ptr %15, i32 0, i32 6
  %136 = ptrtoint ptr %fe_from_be95 to i32
  call void @__asan_load1_noabort(i32 %136)
  %137 = load i8, ptr %fe_from_be95, align 4, !range !73
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %137)
  %tobool96.not = icmp eq i8 %137, 0
  br i1 %tobool96.not, label %if.then97, label %if.end70.if.end99_crit_edge

if.end70.if.end99_crit_edge:                      ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end99

if.then97:                                        ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #8
  %138 = ptrtoint ptr %fe94 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %fe94, align 4
  tail call void @radeon_atom_release_dig_encoder(ptr noundef %3, i32 noundef %139) #6
  br label %if.end99

if.end99:                                         ; preds = %if.then97, %if.end70.if.end99_crit_edge
  %140 = ptrtoint ptr %fe_from_be95 to i32
  call void @__asan_store1_noabort(i32 %140)
  store i8 0, ptr %fe_from_be95, align 4
  %141 = ptrtoint ptr %active_mst_links to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %active_mst_links, align 4
  %dec = add i32 %142, -1
  store i32 %dec, ptr %active_mst_links, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end99, %sw.bb65.cleanup_crit_edge, %radeon_dp_mst_set_vcp_size.exit, %if.end3.cleanup_crit_edge, %radeon_mst_find_connector.exit.cleanup_crit_edge, %for.inc.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @radeon_mst_mode_fixup(ptr nocapture noundef readonly %encoder, ptr nocapture noundef readnone %mode, ptr noundef %adjusted_mode) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %enc_priv = getelementptr inbounds %struct.radeon_encoder, ptr %encoder, i32 0, i32 12
  %0 = ptrtoint ptr %enc_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %enc_priv, align 4
  %2 = ptrtoint ptr %adjusted_mode to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %adjusted_mode, align 4
  %call = tail call i32 @drm_dp_calc_pbn_mode(i32 noundef %3, i32 noundef 24, i1 noundef zeroext false) #6
  %pbn = getelementptr inbounds %struct.radeon_encoder_mst, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %pbn to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %call, ptr %pbn, align 4
  %primary = getelementptr inbounds %struct.radeon_encoder_mst, ptr %1, i32 0, i32 1
  %5 = ptrtoint ptr %primary to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %primary, align 4
  %devices = getelementptr inbounds %struct.radeon_encoder, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %devices to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %devices, align 4
  %connector = getelementptr inbounds %struct.radeon_encoder_mst, ptr %1, i32 0, i32 2
  %9 = ptrtoint ptr %connector to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %connector, align 4
  %devices1 = getelementptr inbounds %struct.radeon_connector, ptr %10, i32 0, i32 2
  %11 = ptrtoint ptr %devices1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %devices1, align 4
  %and = and i32 %12, %8
  %active_device = getelementptr inbounds %struct.radeon_encoder, ptr %6, i32 0, i32 4
  %13 = ptrtoint ptr %active_device to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %and, ptr %active_device, align 4
  %14 = load ptr, ptr %primary, align 4
  %active_device4 = getelementptr inbounds %struct.radeon_encoder, ptr %14, i32 0, i32 4
  %15 = ptrtoint ptr %active_device4 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %active_device4, align 4
  %devices6 = getelementptr inbounds %struct.radeon_encoder, ptr %14, i32 0, i32 3
  %17 = ptrtoint ptr %devices6 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %devices6, align 4
  %19 = load ptr, ptr %connector, align 4
  %devices8 = getelementptr inbounds %struct.radeon_connector, ptr %19, i32 0, i32 2
  %20 = ptrtoint ptr %devices8 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %devices8, align 4
  %encoder_type = getelementptr inbounds %struct.drm_encoder, ptr %14, i32 0, i32 4
  %22 = ptrtoint ptr %encoder_type to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %encoder_type, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.20, i32 noundef %16, i32 noundef %18, i32 noundef %21, i32 noundef %23) #6
  tail call void @drm_mode_set_crtcinfo(ptr noundef %adjusted_mode, i32 noundef 0) #6
  %24 = ptrtoint ptr %connector to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %connector, align 4
  %con_priv = getelementptr inbounds %struct.radeon_connector, ptr %25, i32 0, i32 7
  %26 = ptrtoint ptr %con_priv to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %con_priv, align 4
  %arrayidx.i = getelementptr %struct.radeon_connector_atom_dig, ptr %27, i32 0, i32 1, i32 2
  %28 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx.i, align 1
  %30 = and i8 %29, 31
  %conv = zext i8 %30 to i32
  %dp_lane_count = getelementptr inbounds %struct.radeon_connector_atom_dig, ptr %27, i32 0, i32 4
  %31 = ptrtoint ptr %dp_lane_count to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %conv, ptr %dp_lane_count, align 4
  %arrayidx.i32 = getelementptr %struct.radeon_connector_atom_dig, ptr %27, i32 0, i32 1, i32 1
  %32 = ptrtoint ptr %arrayidx.i32 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %arrayidx.i32, align 1
  %call.i = tail call i32 @drm_dp_bw_code_to_link_rate(i8 noundef zeroext %33) #6
  %dp_clock = getelementptr inbounds %struct.radeon_connector_atom_dig, ptr %27, i32 0, i32 3
  %34 = ptrtoint ptr %dp_clock to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %call.i, ptr %dp_clock, align 4
  %35 = ptrtoint ptr %dp_lane_count to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %dp_lane_count, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.21, ptr noundef %27, i32 noundef %36, i32 noundef %call.i) #6
  ret i1 true
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @radeon_mst_encoder_prepare(ptr noundef %encoder) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %encoder to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %encoder, align 4
  %connector_list.i = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 30, i32 12
  %2 = ptrtoint ptr %connector_list.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn37.i = load ptr, ptr %connector_list.i, align 4
  %cmp.not38.i = icmp eq ptr %.pn37.i, %connector_list.i
  br i1 %cmp.not38.i, label %entry.if.then_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %.pn39.i = phi ptr [ %.pn.i, %for.inc.i.for.body.i_crit_edge ], [ %.pn37.i, %entry.for.body.i_crit_edge ]
  %encoder7.i = getelementptr i8, ptr %.pn39.i, i32 804
  %3 = ptrtoint ptr %encoder7.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %encoder7.i, align 4
  %tobool.not.i = icmp eq ptr %4, null
  br i1 %tobool.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.end.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

if.end.i:                                         ; preds = %for.body.i
  %is_mst_connector.i = getelementptr i8, ptr %.pn39.i, i32 1188
  %5 = ptrtoint ptr %is_mst_connector.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %is_mst_connector.i, align 4, !range !73
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool8.not.i = icmp eq i8 %6, 0
  br i1 %tobool8.not.i, label %if.end.i.for.inc.i_crit_edge, label %if.end10.i

if.end.i.for.inc.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

if.end10.i:                                       ; preds = %if.end.i
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.7, ptr noundef nonnull %4, ptr noundef %encoder) #6
  %7 = ptrtoint ptr %encoder7.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %encoder7.i, align 4
  %cmp13.i = icmp eq ptr %8, %encoder
  br i1 %cmp13.i, label %radeon_mst_find_connector.exit, label %if.end10.i.for.inc.i_crit_edge

if.end10.i.for.inc.i_crit_edge:                   ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end10.i.for.inc.i_crit_edge, %if.end.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %9 = ptrtoint ptr %.pn39.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %.pn.i = load ptr, ptr %.pn39.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %connector_list.i
  br i1 %cmp.not.i, label %for.inc.i.if.then_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.inc.i.if.then_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

radeon_mst_find_connector.exit:                   ; preds = %if.end10.i
  %connector.0.le.i = getelementptr i8, ptr %.pn39.i, i32 -16
  %tobool.not = icmp eq ptr %connector.0.le.i, null
  br i1 %tobool.not, label %radeon_mst_find_connector.exit.if.then_crit_edge, label %if.end

radeon_mst_find_connector.exit.if.then_crit_edge: ; preds = %radeon_mst_find_connector.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

if.then:                                          ; preds = %radeon_mst_find_connector.exit.if.then_crit_edge, %for.inc.i.if.then_crit_edge, %entry.if.then_crit_edge
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.22, ptr noundef %encoder) #6
  br label %cleanup

if.end:                                           ; preds = %radeon_mst_find_connector.exit
  tail call void @radeon_mst_encoder_dpms(ptr noundef %encoder, i32 noundef 3)
  %enc_priv = getelementptr inbounds %struct.radeon_encoder, ptr %encoder, i32 0, i32 12
  %10 = ptrtoint ptr %enc_priv to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %enc_priv, align 4
  %primary1 = getelementptr inbounds %struct.radeon_encoder_mst, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %primary1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %primary1, align 4
  %enc_priv2 = getelementptr inbounds %struct.radeon_encoder, ptr %13, i32 0, i32 12
  %14 = ptrtoint ptr %enc_priv2 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %enc_priv2, align 4
  %port = getelementptr i8, ptr %.pn39.i, i32 1196
  %16 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %port, align 4
  %port3 = getelementptr inbounds %struct.radeon_encoder_mst, ptr %11, i32 0, i32 3
  %18 = ptrtoint ptr %port3 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %17, ptr %port3, align 4
  %dig_encoder = getelementptr inbounds %struct.radeon_encoder_atom_dig, ptr %15, i32 0, i32 2
  %19 = ptrtoint ptr %dig_encoder to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %dig_encoder, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %20)
  %cmp = icmp eq i32 %20, -1
  br i1 %cmp, label %if.then4, label %if.end.if.end10_crit_edge

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end10

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %call5 = tail call i32 @radeon_atom_pick_dig_encoder(ptr noundef %13, i32 noundef -1) #6
  %21 = ptrtoint ptr %dig_encoder to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %call5, ptr %dig_encoder, align 4
  %arrayidx.i = getelementptr [7 x i32], ptr @radeon_atom_set_enc_offset.offsets, i32 0, i32 %call5
  %22 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx.i, align 4
  %offset = getelementptr inbounds %struct.radeon_encoder, ptr %13, i32 0, i32 19
  %24 = ptrtoint ptr %offset to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %offset, align 4
  %25 = load i32, ptr %dig_encoder, align 4
  tail call void @atombios_set_mst_encoder_crtc_source(ptr noundef %encoder, i32 noundef %25) #6
  br label %if.end10

if.end10:                                         ; preds = %if.then4, %if.end.if.end10_crit_edge
  %26 = ptrtoint ptr %dig_encoder to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %dig_encoder, align 4
  %offset12 = getelementptr inbounds %struct.radeon_encoder, ptr %13, i32 0, i32 19
  %28 = ptrtoint ptr %offset12 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %offset12, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.23, i32 noundef %27, i32 noundef %29) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @radeon_mst_encoder_commit(ptr noundef %encoder) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @radeon_mst_encoder_dpms(ptr noundef %encoder, i32 noundef 0)
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.8) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @radeon_mst_encoder_mode_set(ptr nocapture noundef readnone %encoder, ptr nocapture noundef readnone %mode, ptr nocapture noundef readnone %adjusted_mode) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.8) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_err(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @atombios_set_mst_encoder_crtc_source(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @atombios_dig_encoder_setup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @atombios_dig_transmitter_setup2(ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @radeon_dp_needs_link_train(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @radeon_dp_link_train(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @radeon_atom_pick_dig_encoder(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_dp_find_vcpi_slots(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @drm_dp_mst_allocate_vcpi(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_dp_update_payload_part1(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @radeon_dp_mst_set_be_cntl(ptr nocapture noundef readonly %primary, ptr nocapture noundef readonly %mst_enc, i32 noundef %hpd, i1 noundef zeroext %enable) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %primary to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %primary, align 4
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_private, align 4
  %offset = getelementptr inbounds %struct.radeon_encoder, ptr %primary, i32 0, i32 19
  %4 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %offset, align 4
  %add = add i32 %5, 28992
  %rmmio_size.i = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 18
  %6 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %add)
  %cmp.i = icmp ugt i32 %7, %add
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %add)
  %cmp1.i = icmp ult i32 %add, 65536
  %or.cond.i = or i1 %cmp1.i, %cmp.i
  br i1 %or.cond.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %rmmio.i = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 31
  %8 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %9, i32 %add
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !77
  %11 = tail call i32 @llvm.bswap.i32(i32 %10) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !78
  br label %r100_mm_rreg.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call3.i = tail call i32 @r100_mm_rreg_slow(ptr noundef %3, i32 noundef %add) #6
  br label %r100_mm_rreg.exit

r100_mm_rreg.exit:                                ; preds = %if.else.i, %if.then.i
  %retval.0.i = phi i32 [ %call3.i, %if.else.i ], [ %11, %if.then.i ]
  %and = and i32 %retval.0.i, -458753
  %or = or i32 %and, 327680
  %fe = getelementptr inbounds %struct.radeon_encoder_mst, ptr %mst_enc, i32 0, i32 5
  %12 = ptrtoint ptr %fe to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %fe, align 4
  %and2 = shl i32 256, %13
  %shl3 = and i32 %and2, 32512
  br i1 %enable, label %if.then, label %if.else

if.then:                                          ; preds = %r100_mm_rreg.exit
  %and10.c1 = shl i32 %hpd, 28
  %shl11.c2 = and i32 %and10.c1, 1879048192
  %or4 = or i32 %or, %shl11.c2
  %or12.c3 = or i32 %or4, %shl3
  %14 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %offset, align 4
  %add14.c4 = add i32 %15, 28992
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.16, i32 noundef %add14.c4, i32 noundef %or12.c3) #6
  %16 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %offset, align 4
  %add16.c5 = add i32 %17, 28992
  %18 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %add16.c5)
  %cmp.i7 = icmp ugt i32 %19, %add16.c5
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %add16.c5)
  %cmp1.i8 = icmp ult i32 %add16.c5, 65536
  %or.cond.i9 = or i1 %cmp1.i8, %cmp.i7
  br i1 %or.cond.i9, label %do.body.i, label %if.else.i12

do.body.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !75
  tail call void @arm_heavy_mb() #6
  %20 = tail call i32 @llvm.bswap.i32(i32 %or12.c3) #6
  %rmmio.i10 = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 31
  %21 = ptrtoint ptr %rmmio.i10 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %rmmio.i10, align 4
  %add.ptr.i11 = getelementptr i8, ptr %22, i32 %add16.c5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i11, i32 %20) #6, !srcloc !76
  br label %r100_mm_wreg.exit

if.else.i12:                                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @r100_mm_wreg_slow(ptr noundef %3, i32 noundef %add16.c5, i32 noundef %or12.c3) #6
  br label %r100_mm_wreg.exit

r100_mm_wreg.exit:                                ; preds = %if.else.i12, %do.body.i
  %23 = ptrtoint ptr %fe to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %fe, align 4
  %arrayidx.i = getelementptr [7 x i32], ptr @radeon_atom_set_enc_offset.offsets, i32 0, i32 %24
  %25 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx.i, align 4
  %add22 = add i32 %26, 28672
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %add22)
  %cmp1.i24 = icmp ult i32 %add22, 65536
  %rmmio.i26 = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 31
  br label %do.body

if.else:                                          ; preds = %r100_mm_rreg.exit
  %neg = xor i32 %shl3, -1
  %and9 = and i32 %or, %neg
  %and10.c = shl i32 %hpd, 28
  %shl11.c = and i32 %and10.c, 1879048192
  %or12.c = or i32 %and9, %shl11.c
  %27 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %offset, align 4
  %add14.c = add i32 %28, 28992
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.16, i32 noundef %add14.c, i32 noundef %or12.c) #6
  %29 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %offset, align 4
  %add16.c = add i32 %30, 28992
  %31 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %32, i32 %add16.c)
  %cmp.i14 = icmp ugt i32 %32, %add16.c
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %add16.c)
  %cmp1.i15 = icmp ult i32 %add16.c, 65536
  %or.cond.i16 = or i1 %cmp1.i15, %cmp.i14
  br i1 %or.cond.i16, label %do.body.i19, label %if.else.i20

do.body.i19:                                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !75
  tail call void @arm_heavy_mb() #6
  %33 = tail call i32 @llvm.bswap.i32(i32 %or12.c) #6
  %rmmio.i17 = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 31
  %34 = ptrtoint ptr %rmmio.i17 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %rmmio.i17, align 4
  %add.ptr.i18 = getelementptr i8, ptr %35, i32 %add16.c
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i18, i32 %33) #6, !srcloc !76
  br label %if.end31

if.else.i20:                                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @r100_mm_wreg_slow(ptr noundef %3, i32 noundef %add16.c, i32 noundef %or12.c) #6
  br label %if.end31

do.body:                                          ; preds = %land.rhs.do.body_crit_edge, %r100_mm_wreg.exit
  %retries.0 = phi i32 [ 0, %r100_mm_wreg.exit ], [ %inc, %land.rhs.do.body_crit_edge ]
  %36 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %37, i32 %add22)
  %cmp.i23 = icmp ugt i32 %37, %add22
  %or.cond.i25 = or i1 %cmp1.i24, %cmp.i23
  br i1 %or.cond.i25, label %if.then.i28, label %if.else.i30

if.then.i28:                                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %38 = ptrtoint ptr %rmmio.i26 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %rmmio.i26, align 4
  %add.ptr.i27 = getelementptr i8, ptr %39, i32 %add22
  %40 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i27) #6, !srcloc !77
  %41 = tail call i32 @llvm.bswap.i32(i32 %40) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !78
  br label %r100_mm_rreg.exit32

if.else.i30:                                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %call3.i29 = tail call i32 @r100_mm_rreg_slow(ptr noundef %3, i32 noundef %add22) #6
  br label %r100_mm_rreg.exit32

r100_mm_rreg.exit32:                              ; preds = %if.else.i30, %if.then.i28
  %retval.0.i31 = phi i32 [ %call3.i29, %if.else.i30 ], [ %41, %if.then.i28 ]
  %and24 = and i32 %retval.0.i31, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24)
  %tobool25.not = icmp eq i32 %and24, 0
  br i1 %tobool25.not, label %do.end, label %land.rhs

land.rhs:                                         ; preds = %r100_mm_rreg.exit32
  %inc = add nuw nsw i32 %retries.0, 1
  %exitcond.not = icmp eq i32 %inc, 10001
  br i1 %exitcond.not, label %land.rhs.if.end31_crit_edge, label %land.rhs.do.body_crit_edge

land.rhs.do.body_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

land.rhs.if.end31_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end31

do.end:                                           ; preds = %r100_mm_rreg.exit32
  call void @__sanitizer_cov_trace_const_cmp4(i32 10000, i32 %retries.0)
  %cmp26 = icmp eq i32 %retries.0, 10000
  br i1 %cmp26, label %if.then27, label %do.end.if.end31_crit_edge

do.end.if.end31_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end31

if.then27:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  %42 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %offset, align 4
  %44 = ptrtoint ptr %fe to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %fe, align 4
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.17, i32 noundef %43, i32 noundef %45) #6
  br label %if.end31

if.end31:                                         ; preds = %if.then27, %do.end.if.end31_crit_edge, %land.rhs.if.end31_crit_edge, %if.else.i20, %do.body.i19
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @radeon_dp_mst_update_stream_attribs(ptr noundef %mst_conn, ptr nocapture noundef readonly %primary) unnamed_addr #0 align 64 {
entry:
  %new_attribs = alloca [6 x %struct.stream_attribs], align 2
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %mst_conn to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mst_conn, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %new_attribs) #6
  %2 = call ptr @memset(ptr %new_attribs, i32 0, i32 24)
  %connector_list = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 30, i32 12
  %3 = ptrtoint ptr %connector_list to i32
  call void @__asan_load4_noabort(i32 %3)
  %.pn1 = load ptr, ptr %connector_list, align 4
  %cmp.not2 = icmp eq ptr %.pn1, %connector_list
  br i1 %cmp.not2, label %entry.for.cond65.preheader_crit_edge, label %for.body.lr.ph

entry.for.cond65.preheader_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond65.preheader

for.body.lr.ph:                                   ; preds = %entry
  %mst_mgr = getelementptr inbounds %struct.radeon_connector, ptr %mst_conn, i32 0, i32 21
  br label %for.body

for.cond22.preheader:                             ; preds = %cleanup
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %idx.1)
  %cmp235 = icmp sgt i32 %idx.1, 0
  br i1 %cmp235, label %for.cond22.preheader.for.body25_crit_edge, label %for.cond22.preheader.for.cond65.preheader_crit_edge

for.cond22.preheader.for.cond65.preheader_crit_edge: ; preds = %for.cond22.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond65.preheader

for.cond22.preheader.for.body25_crit_edge:        ; preds = %for.cond22.preheader
  br label %for.body25

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %for.body.lr.ph
  %.pn4 = phi ptr [ %.pn1, %for.body.lr.ph ], [ %.pn, %cleanup.for.body_crit_edge ]
  %idx.03 = phi i32 [ 0, %for.body.lr.ph ], [ %idx.1, %cleanup.for.body_crit_edge ]
  %is_mst_connector = getelementptr i8, ptr %.pn4, i32 1188
  %4 = ptrtoint ptr %is_mst_connector to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %is_mst_connector, align 4, !range !73
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %for.body.cleanup_crit_edge, label %if.end

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %for.body
  %mst_port = getelementptr i8, ptr %.pn4, i32 1192
  %6 = ptrtoint ptr %mst_port to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mst_port, align 8
  %cmp7.not = icmp eq ptr %7, %mst_conn
  br i1 %cmp7.not, label %if.end9, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %mst_encoder = getelementptr i8, ptr %.pn4, i32 2964
  %8 = ptrtoint ptr %mst_encoder to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mst_encoder, align 4
  %enc_priv = getelementptr inbounds %struct.radeon_encoder, ptr %9, i32 0, i32 12
  %10 = ptrtoint ptr %enc_priv to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %enc_priv, align 4
  %enc_active = getelementptr inbounds %struct.radeon_encoder_mst, ptr %11, i32 0, i32 7
  %12 = ptrtoint ptr %enc_active to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %enc_active, align 1, !range !73
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool10.not = icmp eq i8 %13, 0
  br i1 %tobool10.not, label %if.end9.cleanup_crit_edge, label %if.end12

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end12:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  %fe = getelementptr inbounds %struct.radeon_encoder_mst, ptr %11, i32 0, i32 5
  %14 = ptrtoint ptr %fe to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %fe, align 4
  %conv = trunc i32 %15 to i16
  %arrayidx = getelementptr [6 x %struct.stream_attribs], ptr %new_attribs, i32 0, i32 %idx.03
  %16 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %conv, ptr %arrayidx, align 2
  %port = getelementptr inbounds %struct.radeon_encoder_mst, ptr %11, i32 0, i32 3
  %17 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %port, align 4
  %call = tail call i32 @drm_dp_mst_get_vcpi_slots(ptr noundef %mst_mgr, ptr noundef %18) #6
  %conv14 = trunc i32 %call to i16
  %slots = getelementptr [6 x %struct.stream_attribs], ptr %new_attribs, i32 0, i32 %idx.03, i32 1
  %19 = ptrtoint ptr %slots to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %conv14, ptr %slots, align 2
  %inc = add i32 %idx.03, 1
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %if.end9.cleanup_crit_edge, %if.end.cleanup_crit_edge, %for.body.cleanup_crit_edge
  %idx.1 = phi i32 [ %inc, %if.end12 ], [ %idx.03, %for.body.cleanup_crit_edge ], [ %idx.03, %if.end.cleanup_crit_edge ], [ %idx.03, %if.end9.cleanup_crit_edge ]
  %20 = ptrtoint ptr %.pn4 to i32
  call void @__asan_load4_noabort(i32 %20)
  %.pn = load ptr, ptr %.pn4, align 4
  %cmp.not = icmp eq ptr %.pn, %connector_list
  br i1 %cmp.not, label %for.cond22.preheader, label %cleanup.for.body_crit_edge

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.cond65.preheader:                             ; preds = %for.inc62.for.cond65.preheader_crit_edge, %for.cond22.preheader.for.cond65.preheader_crit_edge, %entry.for.cond65.preheader_crit_edge
  %idx.0.lcssa12 = phi i32 [ %idx.1, %for.cond22.preheader.for.cond65.preheader_crit_edge ], [ 0, %entry.for.cond65.preheader_crit_edge ], [ %idx.1, %for.inc62.for.cond65.preheader_crit_edge ]
  %enabled_attribs = getelementptr inbounds %struct.radeon_connector, ptr %mst_conn, i32 0, i32 24
  %21 = ptrtoint ptr %enabled_attribs to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %enabled_attribs, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %idx.0.lcssa12, i32 %22)
  %cmp668 = icmp slt i32 %idx.0.lcssa12, %22
  br i1 %cmp668, label %for.cond65.preheader.for.body68_crit_edge, label %for.cond65.preheader.for.end78_crit_edge

for.cond65.preheader.for.end78_crit_edge:         ; preds = %for.cond65.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end78

for.cond65.preheader.for.body68_crit_edge:        ; preds = %for.cond65.preheader
  br label %for.body68

for.body25:                                       ; preds = %for.inc62.for.body25_crit_edge, %for.cond22.preheader.for.body25_crit_edge
  %i.06 = phi i32 [ %inc63, %for.inc62.for.body25_crit_edge ], [ 0, %for.cond22.preheader.for.body25_crit_edge ]
  %arrayidx26 = getelementptr [6 x %struct.stream_attribs], ptr %new_attribs, i32 0, i32 %i.06
  %23 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %arrayidx26, align 2
  %arrayidx29 = getelementptr %struct.radeon_connector, ptr %mst_conn, i32 0, i32 23, i32 %i.06
  %25 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %arrayidx29, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %24, i16 %26)
  %cmp32.not = icmp eq i16 %24, %26
  br i1 %cmp32.not, label %lor.lhs.false, label %for.body25.if.then43_crit_edge

for.body25.if.then43_crit_edge:                   ; preds = %for.body25
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then43

lor.lhs.false:                                    ; preds = %for.body25
  %slots35 = getelementptr [6 x %struct.stream_attribs], ptr %new_attribs, i32 0, i32 %i.06, i32 1
  %27 = ptrtoint ptr %slots35 to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %slots35, align 2
  %slots39 = getelementptr %struct.radeon_connector, ptr %mst_conn, i32 0, i32 23, i32 %i.06, i32 1
  %29 = ptrtoint ptr %slots39 to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %slots39, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %28, i16 %30)
  %cmp41.not = icmp eq i16 %28, %30
  br i1 %cmp41.not, label %lor.lhs.false.for.inc62_crit_edge, label %lor.lhs.false.if.then43_crit_edge

lor.lhs.false.if.then43_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then43

lor.lhs.false.for.inc62_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc62

if.then43:                                        ; preds = %lor.lhs.false.if.then43_crit_edge, %for.body25.if.then43_crit_edge
  %conv46 = zext i16 %24 to i32
  %slots48 = getelementptr [6 x %struct.stream_attribs], ptr %new_attribs, i32 0, i32 %i.06, i32 1
  %31 = ptrtoint ptr %slots48 to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %slots48, align 2
  %conv49 = zext i16 %32 to i32
  tail call fastcc void @radeon_dp_mst_set_stream_attrib(ptr noundef %primary, i32 noundef %i.06, i32 noundef %conv46, i32 noundef %conv49)
  %33 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 %24, ptr %arrayidx29, align 4
  %slots60 = getelementptr %struct.radeon_connector, ptr %mst_conn, i32 0, i32 23, i32 %i.06, i32 1
  %34 = ptrtoint ptr %slots60 to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 %32, ptr %slots60, align 2
  br label %for.inc62

for.inc62:                                        ; preds = %if.then43, %lor.lhs.false.for.inc62_crit_edge
  %inc63 = add nuw nsw i32 %i.06, 1
  %exitcond.not = icmp eq i32 %inc63, %idx.1
  br i1 %exitcond.not, label %for.inc62.for.cond65.preheader_crit_edge, label %for.inc62.for.body25_crit_edge

for.inc62.for.body25_crit_edge:                   ; preds = %for.inc62
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body25

for.inc62.for.cond65.preheader_crit_edge:         ; preds = %for.inc62
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond65.preheader

for.body68:                                       ; preds = %for.body68.for.body68_crit_edge, %for.cond65.preheader.for.body68_crit_edge
  %i.19 = phi i32 [ %inc77, %for.body68.for.body68_crit_edge ], [ %idx.0.lcssa12, %for.cond65.preheader.for.body68_crit_edge ]
  tail call fastcc void @radeon_dp_mst_set_stream_attrib(ptr noundef %primary, i32 noundef %i.19, i32 noundef 0, i32 noundef 0)
  %arrayidx71 = getelementptr %struct.radeon_connector, ptr %mst_conn, i32 0, i32 23, i32 %i.19
  %35 = ptrtoint ptr %arrayidx71 to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 0, ptr %arrayidx71, align 4
  %slots75 = getelementptr %struct.radeon_connector, ptr %mst_conn, i32 0, i32 23, i32 %i.19, i32 1
  %36 = ptrtoint ptr %slots75 to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 0, ptr %slots75, align 2
  %inc77 = add nsw i32 %i.19, 1
  %37 = ptrtoint ptr %enabled_attribs to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %enabled_attribs, align 8
  %cmp66 = icmp slt i32 %inc77, %38
  br i1 %cmp66, label %for.body68.for.body68_crit_edge, label %for.body68.for.end78_crit_edge

for.body68.for.end78_crit_edge:                   ; preds = %for.body68
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end78

for.body68.for.body68_crit_edge:                  ; preds = %for.body68
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body68

for.end78:                                        ; preds = %for.body68.for.end78_crit_edge, %for.cond65.preheader.for.end78_crit_edge
  %39 = ptrtoint ptr %enabled_attribs to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %idx.0.lcssa12, ptr %enabled_attribs, align 8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %new_attribs) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @atombios_dig_encoder_setup2(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_dp_check_act_status(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_dp_update_payload_part2(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_dp_mst_reset_vcpi_slots(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_dp_mst_deallocate_vcpi(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @radeon_atom_release_dig_encoder(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @r100_mm_rreg_slow(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @r100_mm_wreg_slow(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_dp_mst_get_vcpi_slots(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @radeon_dp_mst_set_stream_attrib(ptr nocapture noundef readonly %primary, i32 noundef %stream_number, i32 noundef %fe, i32 noundef %slots) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %primary to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %primary, align 4
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_private, align 4
  %shr = ashr i32 %stream_number, 1
  %add = add nsw i32 %shr, 29584
  %offset = getelementptr inbounds %struct.radeon_encoder, ptr %primary, i32 0, i32 19
  %4 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %offset, align 4
  %add2 = add i32 %5, %add
  %rmmio_size.i = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 18
  %6 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %add2)
  %cmp.i = icmp ugt i32 %7, %add2
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %add2)
  %cmp1.i = icmp ult i32 %add2, 65536
  %or.cond.i = or i1 %cmp1.i, %cmp.i
  br i1 %or.cond.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %rmmio.i = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 31
  %8 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %9, i32 %add2
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !77
  %11 = tail call i32 @llvm.bswap.i32(i32 %10) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !78
  br label %r100_mm_rreg.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call3.i = tail call i32 @r100_mm_rreg_slow(ptr noundef %3, i32 noundef %add2) #6
  br label %r100_mm_rreg.exit

r100_mm_rreg.exit:                                ; preds = %if.else.i, %if.then.i
  %retval.0.i = phi i32 [ %call3.i, %if.else.i ], [ %11, %if.then.i ]
  %and3 = shl i32 %slots, 8
  %shl = and i32 %and3, 16128
  %and4 = and i32 %fe, 7
  %or = or i32 %shl, %and4
  %and = shl i32 %stream_number, 4
  %mul = and i32 %and, 16
  %shl6 = shl i32 %or, %mul
  %shl8 = shl nuw i32 65535, %mul
  %neg = xor i32 %shl8, -1
  %and9 = and i32 %retval.0.i, %neg
  %or10 = or i32 %and9, %shl6
  %12 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %offset, align 4
  %add13 = add i32 %13, %add
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.16, i32 noundef %add13, i32 noundef %or10) #6
  %14 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %offset, align 4
  %add16 = add i32 %15, %add
  %16 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %add16)
  %cmp.i2 = icmp ugt i32 %17, %add16
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %add16)
  %cmp1.i3 = icmp ult i32 %add16, 65536
  %or.cond.i4 = or i1 %cmp1.i3, %cmp.i2
  br i1 %or.cond.i4, label %do.body.i, label %if.else.i7

do.body.i:                                        ; preds = %r100_mm_rreg.exit
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !75
  tail call void @arm_heavy_mb() #6
  %18 = tail call i32 @llvm.bswap.i32(i32 %or10) #6
  %rmmio.i5 = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 31
  %19 = ptrtoint ptr %rmmio.i5 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %rmmio.i5, align 4
  %add.ptr.i6 = getelementptr i8, ptr %20, i32 %add16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i6, i32 %18) #6, !srcloc !76
  br label %r100_mm_wreg.exit

if.else.i7:                                       ; preds = %r100_mm_rreg.exit
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @r100_mm_wreg_slow(ptr noundef %3, i32 noundef %add16, i32 noundef %or10) #6
  br label %r100_mm_wreg.exit

r100_mm_wreg.exit:                                ; preds = %if.else.i7, %do.body.i
  %21 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %offset, align 4
  %add18 = add i32 %22, 29596
  %23 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %24, i32 %add18)
  %cmp.i9 = icmp ugt i32 %24, %add18
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %add18)
  %cmp1.i10 = icmp ult i32 %add18, 65536
  %or.cond.i11 = or i1 %cmp1.i10, %cmp.i9
  br i1 %or.cond.i11, label %do.body.i14, label %if.else.i15

do.body.i14:                                      ; preds = %r100_mm_wreg.exit
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !75
  tail call void @arm_heavy_mb() #6
  %rmmio.i12 = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 31
  %25 = ptrtoint ptr %rmmio.i12 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %rmmio.i12, align 4
  %add.ptr.i13 = getelementptr i8, ptr %26, i32 %add18
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i13, i32 16777216) #6, !srcloc !76
  br label %r100_mm_wreg.exit16

if.else.i15:                                      ; preds = %r100_mm_wreg.exit
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @r100_mm_wreg_slow(ptr noundef %3, i32 noundef %add18, i32 noundef 1) #6
  br label %r100_mm_wreg.exit16

r100_mm_wreg.exit16:                              ; preds = %if.else.i15, %do.body.i14
  %rmmio.i21 = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 31
  br label %do.body

do.body:                                          ; preds = %r100_mm_rreg.exit27.do.body_crit_edge, %r100_mm_wreg.exit16
  %retries.0 = phi i32 [ 0, %r100_mm_wreg.exit16 ], [ %inc, %r100_mm_rreg.exit27.do.body_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %27 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %27(i32 noundef 2147480) #6
  %28 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %offset, align 4
  %add20 = add i32 %29, 29596
  %30 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %31, i32 %add20)
  %cmp.i18 = icmp ugt i32 %31, %add20
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %add20)
  %cmp1.i19 = icmp ult i32 %add20, 65536
  %or.cond.i20 = or i1 %cmp1.i19, %cmp.i18
  br i1 %or.cond.i20, label %if.then.i23, label %if.else.i25

if.then.i23:                                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %32 = ptrtoint ptr %rmmio.i21 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %rmmio.i21, align 4
  %add.ptr.i22 = getelementptr i8, ptr %33, i32 %add20
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i22) #6, !srcloc !77
  %35 = tail call i32 @llvm.bswap.i32(i32 %34) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !78
  br label %r100_mm_rreg.exit27

if.else.i25:                                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %call3.i24 = tail call i32 @r100_mm_rreg_slow(ptr noundef %3, i32 noundef %add20) #6
  br label %r100_mm_rreg.exit27

r100_mm_rreg.exit27:                              ; preds = %if.else.i25, %if.then.i23
  %retval.0.i26 = phi i32 [ %call3.i24, %if.else.i25 ], [ %35, %if.then.i23 ]
  %36 = and i32 %retval.0.i26, 259
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %37 = icmp eq i32 %36, 0
  %inc = add nuw nsw i32 %retries.0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 51, i32 %inc)
  %exitcond.not = icmp eq i32 %inc, 51
  %or.cond = select i1 %37, i1 true, i1 %exitcond.not
  br i1 %or.cond, label %if.end29, label %r100_mm_rreg.exit27.do.body_crit_edge

r100_mm_rreg.exit27.do.body_crit_edge:            ; preds = %r100_mm_rreg.exit27
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

if.end29:                                         ; preds = %r100_mm_rreg.exit27
  call void @__sanitizer_cov_trace_pc() #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @div64_s64(i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_dp_calc_pbn_mode(i32 noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_mode_set_crtcinfo(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @seq_lseek(ptr noundef, i64 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @radeon_debugfs_mst_info_open(ptr nocapture noundef readonly %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  %call = tail call i32 @single_open(ptr noundef %file, ptr noundef nonnull @radeon_debugfs_mst_info_show, ptr noundef %1) #6
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_release(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_open(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @radeon_debugfs_mst_info_show(ptr noundef %m, ptr nocapture noundef readnone %unused) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %m, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %ddev = getelementptr inbounds %struct.radeon_device, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %ddev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ddev, align 4
  tail call void @drm_modeset_lock_all(ptr noundef %3) #6
  %connector_list = getelementptr inbounds %struct.drm_device, ptr %3, i32 0, i32 30, i32 12
  %4 = ptrtoint ptr %connector_list to i32
  call void @__asan_load4_noabort(i32 %4)
  %.pn44 = load ptr, ptr %connector_list, align 4
  %cmp.not45 = icmp eq ptr %.pn44, %connector_list
  br i1 %cmp.not45, label %entry.for.end24_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end24_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end24

for.body:                                         ; preds = %for.inc18.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn46 = phi ptr [ %.pn, %for.inc18.for.body_crit_edge ], [ %.pn44, %entry.for.body_crit_edge ]
  %connector_type = getelementptr i8, ptr %.pn46, i32 136
  %5 = ptrtoint ptr %connector_type to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %connector_type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %6)
  %cmp3.not = icmp eq i32 %6, 10
  br i1 %cmp3.not, label %if.end, label %for.body.for.inc18_crit_edge

for.body.for.inc18_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc18

if.end:                                           ; preds = %for.body
  %is_mst_connector = getelementptr i8, ptr %.pn46, i32 1188
  %7 = ptrtoint ptr %is_mst_connector to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %is_mst_connector, align 4, !range !73
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not = icmp eq i8 %8, 0
  br i1 %tobool.not, label %if.end8, label %if.end.for.inc18_crit_edge

if.end.for.inc18_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc18

if.end8:                                          ; preds = %if.end
  %con_priv = getelementptr i8, ptr %.pn46, i32 1044
  %9 = ptrtoint ptr %con_priv to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %con_priv, align 4
  %is_mst = getelementptr inbounds %struct.radeon_connector_atom_dig, ptr %10, i32 0, i32 6
  %11 = ptrtoint ptr %is_mst to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %is_mst, align 1, !range !73
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool9.not = icmp eq i8 %12, 0
  br i1 %tobool9.not, label %if.end8.for.inc18_crit_edge, label %if.end11

if.end8.for.inc18_crit_edge:                      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc18

if.end11:                                         ; preds = %if.end8
  %mst_mgr = getelementptr i8, ptr %.pn46, i32 1200
  tail call void @drm_dp_mst_dump_topology(ptr noundef %m, ptr noundef %mst_mgr) #6
  %enabled_attribs = getelementptr i8, ptr %.pn46, i32 2992
  %13 = ptrtoint ptr %enabled_attribs to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %enabled_attribs, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp1342 = icmp sgt i32 %14, 0
  br i1 %cmp1342, label %for.body14.lr.ph, label %if.end11.for.inc18_crit_edge

if.end11.for.inc18_crit_edge:                     ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc18

for.body14.lr.ph:                                 ; preds = %if.end11
  %cur_stream_attribs = getelementptr i8, ptr %.pn46, i32 2968
  br label %for.body14

for.body14:                                       ; preds = %for.body14.for.body14_crit_edge, %for.body14.lr.ph
  %i.043 = phi i32 [ 0, %for.body14.lr.ph ], [ %inc, %for.body14.for.body14_crit_edge ]
  %arrayidx = getelementptr [6 x %struct.stream_attribs], ptr %cur_stream_attribs, i32 0, i32 %i.043
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %arrayidx, align 4
  %conv = zext i16 %16 to i32
  %slots = getelementptr inbounds %struct.stream_attribs, ptr %arrayidx, i32 0, i32 1
  %17 = ptrtoint ptr %slots to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %slots, align 2
  %conv17 = zext i16 %18 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.24, i32 noundef %i.043, i32 noundef %conv, i32 noundef %conv17) #6
  %inc = add nuw nsw i32 %i.043, 1
  %19 = ptrtoint ptr %enabled_attribs to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %enabled_attribs, align 8
  %cmp13 = icmp slt i32 %inc, %20
  br i1 %cmp13, label %for.body14.for.body14_crit_edge, label %for.body14.for.inc18_crit_edge

for.body14.for.inc18_crit_edge:                   ; preds = %for.body14
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc18

for.body14.for.body14_crit_edge:                  ; preds = %for.body14
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body14

for.inc18:                                        ; preds = %for.body14.for.inc18_crit_edge, %if.end11.for.inc18_crit_edge, %if.end8.for.inc18_crit_edge, %if.end.for.inc18_crit_edge, %for.body.for.inc18_crit_edge
  %21 = ptrtoint ptr %.pn46 to i32
  call void @__asan_load4_noabort(i32 %21)
  %.pn = load ptr, ptr %.pn46, align 4
  %cmp.not = icmp eq ptr %.pn, %connector_list
  br i1 %cmp.not, label %for.inc18.for.end24_crit_edge, label %for.inc18.for.body_crit_edge

for.inc18.for.body_crit_edge:                     ; preds = %for.inc18
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.inc18.for.end24_crit_edge:                    ; preds = %for.inc18
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end24

for.end24:                                        ; preds = %for.inc18.for.end24_crit_edge, %entry.for.end24_crit_edge
  tail call void @drm_modeset_unlock_all(ptr noundef %3) #6
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_modeset_lock_all(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_dp_mst_dump_topology(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_modeset_unlock_all(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

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
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 32)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 32)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62}
!llvm.module.flags = !{!64, !65, !66, !67, !68, !69, !70, !71}
!llvm.ident = !{!72}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/radeon/radeon_dp_mst.c", i32 349, i32 2}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/radeon/radeon_dp_mst.c", i32 671, i32 4}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/radeon/radeon_dp_mst.c", i32 674, i32 4}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/radeon/radeon_dp_mst.c", i32 700, i32 4}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/radeon/radeon_dp_mst.c", i32 715, i32 6}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/radeon/radeon_dp_mst.c", i32 723, i32 4}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/radeon/radeon_dp_mst.c", i32 774, i32 22}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/radeon/radeon_dp_mst.c", i32 323, i32 3}
!16 = !{ptr @mst_cbs, !17, !"mst_cbs", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/radeon/radeon_dp_mst.c", i32 306, i32 45}
!18 = !{ptr @.str.8, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/gpu/drm/radeon/radeon_dp_mst.c", i32 293, i32 2}
!20 = !{ptr @radeon_dp_mst_connector_funcs, !21, !"radeon_dp_mst_connector_funcs", i1 false, i1 false}
!21 = !{!"../drivers/gpu/drm/radeon/radeon_dp_mst.c", i32 270, i32 41}
!22 = !{ptr @radeon_dp_mst_connector_helper_funcs, !23, !"radeon_dp_mst_connector_helper_funcs", i1 false, i1 false}
!23 = !{!"../drivers/gpu/drm/radeon/radeon_dp_mst.c", i32 251, i32 48}
!24 = !{ptr @.str.9, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/gpu/drm/radeon/radeon_dp_mst.c", i32 197, i32 2}
!26 = !{ptr @.str.10, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/gpu/drm/radeon/radeon_dp_mst.c", i32 590, i32 2}
!28 = !{ptr @radeon_dp_mst_enc_funcs, !29, !"radeon_dp_mst_enc_funcs", i1 false, i1 false}
!29 = !{!"../drivers/gpu/drm/radeon/radeon_dp_mst.c", i32 575, i32 39}
!30 = !{ptr @radeon_mst_helper_funcs, !31, !"radeon_mst_helper_funcs", i1 false, i1 false}
!31 = !{!"../drivers/gpu/drm/radeon/radeon_dp_mst.c", i32 561, i32 46}
!32 = !{ptr @.str.11, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/gpu/drm/radeon/radeon_dp_mst.c", i32 371, i32 3}
!34 = !{ptr @.str.12, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/gpu/drm/radeon/radeon_dp_mst.c", i32 388, i32 2}
!36 = !{ptr @.str.13, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/gpu/drm/radeon/radeon_dp_mst.c", i32 413, i32 5}
!38 = !{ptr @.str.14, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/gpu/drm/radeon/radeon_dp_mst.c", i32 418, i32 3}
!40 = !{ptr @.str.15, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/gpu/drm/radeon/radeon_dp_mst.c", i32 449, i32 3}
!42 = !{ptr @.str.16, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/gpu/drm/radeon/radeon_dp_mst.c", i32 49, i32 2}
!44 = !{ptr @.str.17, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/gpu/drm/radeon/radeon_dp_mst.c", i32 59, i32 4}
!46 = !{ptr @radeon_atom_set_enc_offset.offsets, !47, !"offsets", i1 false, i1 false}
!47 = !{!"../drivers/gpu/drm/radeon/radeon_dp_mst.c", i32 16, i32 19}
!48 = distinct !{null, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/gpu/drm/radeon/radeon_dp_mst.c", i32 106, i32 3}
!50 = !{ptr @.str.19, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/gpu/drm/radeon/radeon_dp_mst.c", i32 184, i32 3}
!52 = !{ptr @.str.20, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/gpu/drm/radeon/radeon_dp_mst.c", i32 499, i32 2}
!54 = !{ptr @.str.21, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/gpu/drm/radeon/radeon_dp_mst.c", i32 508, i32 2}
!56 = !{ptr @.str.22, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/gpu/drm/radeon/radeon_dp_mst.c", i32 522, i32 3}
!58 = !{ptr @.str.23, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/gpu/drm/radeon/radeon_dp_mst.c", i32 544, i32 2}
!60 = !{ptr @radeon_debugfs_mst_info_fops, !61, !"radeon_debugfs_mst_info_fops", i1 false, i1 false}
!61 = !{!"../drivers/gpu/drm/radeon/radeon_dp_mst.c", i32 766, i32 1}
!62 = !{ptr @.str.24, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/gpu/drm/radeon/radeon_dp_mst.c", i32 758, i32 18}
!64 = !{i32 1, !"wchar_size", i32 2}
!65 = !{i32 1, !"min_enum_size", i32 4}
!66 = !{i32 8, !"branch-target-enforcement", i32 0}
!67 = !{i32 8, !"sign-return-address", i32 0}
!68 = !{i32 8, !"sign-return-address-all", i32 0}
!69 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!70 = !{i32 7, !"uwtable", i32 1}
!71 = !{i32 7, !"frame-pointer", i32 2}
!72 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!73 = !{i8 0, i8 2}
!74 = !{!"auto-init"}
!75 = !{i64 2157975798}
!76 = !{i64 6972843}
!77 = !{i64 6973261}
!78 = !{i64 2157975391}
