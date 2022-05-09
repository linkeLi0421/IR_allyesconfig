; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/radeon/radeon_connectors.c_pt.bc'
source_filename = "../drivers/gpu/drm/radeon/radeon_connectors.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.drm_connector_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_connector_helper_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mode_size = type { i32, i32 }
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
%struct.anon.87 = type { i32, ptr }
%struct.drm_connector = type { ptr, ptr, ptr, ptr, %struct.list_head, %struct.list_head, %struct.drm_mode_object, ptr, %struct.mutex, i32, i32, i32, i8, i8, i8, i8, i32, %struct.list_head, i32, %struct.list_head, %struct.drm_display_info, ptr, ptr, %struct.drm_object_properties, ptr, ptr, ptr, ptr, ptr, ptr, %struct.notifier_block, ptr, ptr, i8, i32, ptr, %struct.drm_cmdline_mode, i32, i8, i64, i32, ptr, [128 x i8], [2 x i8], [2 x i32], [2 x i32], ptr, i32, i32, i8, i8, ptr, ptr, ptr, i8, ptr, i8, i8, i8, i8, i8, i16, i16, %struct.llist_node, %struct.hdr_sink_metadata }
%struct.drm_mode_object = type { i32, i32, ptr, %struct.kref, ptr }
%struct.drm_display_info = type { i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i8, %struct.drm_hdmi_info, i8, %struct.drm_monitor_range_info, i8, i8 }
%struct.drm_hdmi_info = type { %struct.drm_scdc, [8 x i32], [8 x i32], i64, i8, i8, i8, %struct.drm_hdmi_dsc_cap }
%struct.drm_scdc = type { i8, i8, %struct.drm_scrambling }
%struct.drm_scrambling = type { i8, i8 }
%struct.drm_hdmi_dsc_cap = type { i8, i8, i8, i8, i8, i32, i8, i8, i8 }
%struct.drm_monitor_range_info = type { i8, i8 }
%struct.drm_object_properties = type { i32, [24 x ptr], [24 x i64] }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.drm_cmdline_mode = type { [32 x i8], i8, i8, i8, i32, i32, i32, i32, i8, i8, i8, i8, i32, i32, i32, %struct.drm_connector_tv_margins }
%struct.drm_connector_tv_margins = type { i32, i32, i32, i32 }
%struct.llist_node = type { ptr }
%struct.hdr_sink_metadata = type { i32, %union.anon.88 }
%union.anon.88 = type { %struct.hdr_static_metadata }
%struct.hdr_static_metadata = type { i8, i8, i16, i16, i16 }
%struct.radeon_connector = type { %struct.drm_connector, i32, i32, ptr, i8, i8, ptr, ptr, i8, i8, i8, i16, %struct.radeon_hpd, %struct.radeon_router, ptr, i32, i32, i32, i8, ptr, ptr, %struct.drm_dp_mst_topology_mgr, ptr, [6 x %struct.stream_attribs], i32 }
%struct.radeon_hpd = type { i32, i8, %struct.radeon_gpio_rec }
%struct.radeon_gpio_rec = type { i8, i8, i32, i32, i32 }
%struct.radeon_router = type { i32, %struct.radeon_i2c_bus_rec, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.radeon_i2c_bus_rec = type { i8, i8, i32, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.drm_dp_mst_topology_mgr = type { %struct.drm_private_obj, ptr, ptr, i32, ptr, i32, i32, i32, i32, %struct.drm_dp_sideband_msg_rx, %struct.drm_dp_sideband_msg_rx, %struct.mutex, %struct.mutex, i8, ptr, [15 x i8], i8, i32, ptr, %struct.mutex, %struct.list_head, %struct.mutex, ptr, ptr, i32, i32, %struct.wait_queue_head, %struct.work_struct, %struct.work_struct, %struct.list_head, %struct.list_head, %struct.mutex, ptr, %struct.work_struct, %struct.list_head, %struct.mutex, %struct.work_struct, %struct.mutex }
%struct.drm_private_obj = type { %struct.list_head, %struct.drm_modeset_lock, ptr, ptr }
%struct.drm_dp_sideband_msg_rx = type { [48 x i8], [256 x i8], i8, i8, i8, i8, i8, i8, %struct.drm_dp_sideband_msg_hdr }
%struct.drm_dp_sideband_msg_hdr = type { i8, i8, [8 x i8], i8, i8, i8, i8, i8, i8 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.stream_attribs = type { i16, i16 }
%struct.radeon_connector_atom_dig = type { i32, [15 x i8], i8, i32, i32, i8, i8 }
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
%struct.radeon_asic = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.anon.97, %struct.anon.98, [8 x ptr], %struct.anon.99, %struct.anon.100, %struct.anon.101, %struct.anon.102, %struct.anon.103, %struct.anon.104, %struct.anon.105, %struct.anon.106 }
%struct.anon.97 = type { ptr, ptr, ptr }
%struct.anon.98 = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.anon.99 = type { ptr, ptr }
%struct.anon.100 = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.anon.101 = type { ptr, i32, ptr, i32, ptr, i32 }
%struct.anon.102 = type { ptr, ptr }
%struct.anon.103 = type { ptr, ptr, ptr, ptr }
%struct.anon.104 = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.anon.105 = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.anon.106 = type { ptr, ptr }
%struct.drm_property_blob = type { %struct.drm_mode_object, ptr, %struct.list_head, %struct.list_head, i32, ptr }
%struct.radeon_encoder = type { %struct.drm_encoder, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.drm_display_mode, ptr, i32, i8, i16, ptr, i32, i8, i32, i8 }
%struct.drm_encoder = type { ptr, %struct.list_head, %struct.drm_mode_object, ptr, i32, i32, i32, i32, ptr, %struct.list_head, ptr, ptr }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }
%struct.radeon_encoder_atom_dig = type { i8, i8, i32, i32, i16, i32, %struct.drm_display_mode, ptr, i32, i8, i32, ptr, ptr, i32 }
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
%struct.drm_encoder_helper_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_crtc = type { ptr, ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, ptr, ptr, i32, i32, i32, i8, %struct.drm_display_mode, %struct.drm_display_mode, i32, i32, ptr, i32, ptr, ptr, %struct.drm_object_properties, ptr, ptr, %struct.list_head, %struct.spinlock, ptr, %struct.drm_crtc_crc, i32, %struct.spinlock, i32, [32 x i8], ptr }
%struct.drm_crtc_crc = type { %struct.spinlock, ptr, i8, i8, ptr, i32, i32, i32, %struct.wait_queue_head }
%struct.drm_plane = type { ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, i32, ptr, i32, i8, ptr, i32, ptr, ptr, ptr, ptr, %struct.drm_object_properties, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.radeon_encoder_tv_dac = type { i32, i32, i32, i32, i32, i32, i32, i8, i32, %struct.radeon_tv_regs }
%struct.radeon_tv_regs = type { i32, i32, i32, i32, i32, [32 x i16], [32 x i16] }
%struct.radeon_crtc = type { %struct.drm_crtc, i32, i8, i8, i8, i32, ptr, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, %union.dfixed, %union.dfixed, %struct.drm_display_mode, i32, ptr, ptr, i32, %struct.radeon_atom_ss, i8, i32, i32, i32, i32, i32, ptr, ptr, i32, i32, i32, i32, %struct.drm_display_mode, i32 }
%struct.radeon_atom_ss = type { i16, i16, i8, i16, i8, i8, i8, i16, i16 }
%struct.drm_crtc_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.edid = type { [8 x i8], [2 x i8], [2 x i8], i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, %struct.est_timings, [8 x %struct.std_timing], [4 x %struct.detailed_timing], i8, i8 }
%struct.est_timings = type { i8, i8, i8 }
%struct.std_timing = type { i8, i8 }
%struct.detailed_timing = type { i16, %union.anon.92 }
%union.anon.92 = type { %struct.detailed_pixel_timing }
%struct.detailed_pixel_timing = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }

@.str = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"%s: HDMI deep color %d bpc unsupported. Using 8 bpc.\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"%s: HDMI deep color %d bpc unsupported. Using 12 bpc.\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"%s: hdmi mode dotclock %d kHz, max tmds input clock %d kHz.\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"%s: HDMI deep color 12 bpc exceeds max tmds clock. Using %d bpc.\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"%s: HDMI deep color 10 bpc exceeds max tmds clock. Using %d bpc.\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [71 x i8], [57 x i8] } { [71 x i8] c"%s: Required max tmds clock for HDMI deep color missing. Using 8 bpc.\0A\00", [57 x i8] zeroinitializer }, align 32
@radeon_deep_color = external dso_local local_unnamed_addr global i32, align 4
@.str.6 = internal constant { [74 x i8], [54 x i8] } { [74 x i8] c"%s: Deep color disabled. Set radeon module param deep_color=1 to enable.\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"%s: Display bpc=%d, returned bpc=%d\0A\00", [59 x i8] zeroinitializer }, align 32
@radeon_tv = external dso_local local_unnamed_addr global i32, align 4
@.str.8 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"Failed to assign router i2c bus! Check dmesg for i2c errors.\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"DP: Failed to assign ddc bus! Check dmesg for i2c errors.\0A\00", [37 x i8] zeroinitializer }, align 32
@radeon_dp_connector_funcs = internal constant { %struct.drm_connector_funcs, [36 x i8] } { %struct.drm_connector_funcs { ptr @drm_helper_connector_dpms, ptr null, ptr @radeon_dp_detect, ptr @radeon_dvi_force, ptr @drm_helper_probe_single_connector_modes, ptr @radeon_connector_set_property, ptr null, ptr @radeon_connector_unregister, ptr @radeon_connector_destroy, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@radeon_dp_connector_helper_funcs = internal constant { %struct.drm_connector_helper_funcs, [56 x i8] } { %struct.drm_connector_helper_funcs { ptr @radeon_dp_get_modes, ptr null, ptr @radeon_dp_mode_valid, ptr null, ptr @radeon_dvi_encoder, ptr null, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@radeon_audio = external dso_local local_unnamed_addr global i32, align 4
@radeon_lvds_bridge_connector_funcs = internal constant { %struct.drm_connector_funcs, [36 x i8] } { %struct.drm_connector_funcs { ptr @drm_helper_connector_dpms, ptr null, ptr @radeon_dp_detect, ptr @radeon_dvi_force, ptr @drm_helper_probe_single_connector_modes, ptr @radeon_lvds_set_property, ptr null, ptr @radeon_connector_unregister, ptr @radeon_connector_destroy, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"VGA: Failed to assign ddc bus! Check dmesg for i2c errors.\0A\00", [36 x i8] zeroinitializer }, align 32
@radeon_vga_connector_funcs = internal constant { %struct.drm_connector_funcs, [36 x i8] } { %struct.drm_connector_funcs { ptr @drm_helper_connector_dpms, ptr null, ptr @radeon_vga_detect, ptr null, ptr @drm_helper_probe_single_connector_modes, ptr @radeon_connector_set_property, ptr null, ptr @radeon_connector_unregister, ptr @radeon_connector_destroy, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@radeon_vga_connector_helper_funcs = internal constant { %struct.drm_connector_helper_funcs, [56 x i8] } { %struct.drm_connector_helper_funcs { ptr @radeon_vga_get_modes, ptr null, ptr @radeon_vga_mode_valid, ptr null, ptr @radeon_best_single_encoder, ptr null, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"DVIA: Failed to assign ddc bus! Check dmesg for i2c errors.\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"DVI: Failed to assign ddc bus! Check dmesg for i2c errors.\0A\00", [36 x i8] zeroinitializer }, align 32
@radeon_dvi_connector_funcs = internal constant { %struct.drm_connector_funcs, [36 x i8] } { %struct.drm_connector_funcs { ptr @drm_helper_connector_dpms, ptr null, ptr @radeon_dvi_detect, ptr @radeon_dvi_force, ptr @drm_helper_probe_single_connector_modes, ptr @radeon_connector_set_property, ptr null, ptr @radeon_connector_unregister, ptr @radeon_connector_destroy, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@radeon_dvi_connector_helper_funcs = internal constant { %struct.drm_connector_helper_funcs, [56 x i8] } { %struct.drm_connector_helper_funcs { ptr @radeon_vga_get_modes, ptr null, ptr @radeon_dvi_mode_valid, ptr null, ptr @radeon_dvi_encoder, ptr null, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"HDMI: Failed to assign ddc bus! Check dmesg for i2c errors.\0A\00", [35 x i8] zeroinitializer }, align 32
@radeon_edp_connector_funcs = internal constant { %struct.drm_connector_funcs, [36 x i8] } { %struct.drm_connector_funcs { ptr @drm_helper_connector_dpms, ptr null, ptr @radeon_dp_detect, ptr @radeon_dvi_force, ptr @drm_helper_probe_single_connector_modes, ptr @radeon_lvds_set_property, ptr null, ptr @radeon_connector_unregister, ptr @radeon_connector_destroy, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@radeon_tv_connector_funcs = internal constant { %struct.drm_connector_funcs, [36 x i8] } { %struct.drm_connector_funcs { ptr @drm_helper_connector_dpms, ptr null, ptr @radeon_tv_detect, ptr null, ptr @drm_helper_probe_single_connector_modes, ptr @radeon_connector_set_property, ptr null, ptr @radeon_connector_unregister, ptr @radeon_connector_destroy, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@radeon_tv_connector_helper_funcs = internal constant { %struct.drm_connector_helper_funcs, [56 x i8] } { %struct.drm_connector_helper_funcs { ptr @radeon_tv_get_modes, ptr null, ptr @radeon_tv_mode_valid, ptr null, ptr @radeon_best_single_encoder, ptr null, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"LVDS: Failed to assign ddc bus! Check dmesg for i2c errors.\0A\00", [35 x i8] zeroinitializer }, align 32
@radeon_lvds_connector_funcs = internal constant { %struct.drm_connector_funcs, [36 x i8] } { %struct.drm_connector_funcs { ptr @drm_helper_connector_dpms, ptr null, ptr @radeon_lvds_detect, ptr null, ptr @drm_helper_probe_single_connector_modes, ptr @radeon_lvds_set_property, ptr null, ptr @radeon_connector_unregister, ptr @radeon_connector_destroy, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@radeon_lvds_connector_helper_funcs = internal constant { %struct.drm_connector_helper_funcs, [56 x i8] } { %struct.drm_connector_helper_funcs { ptr @radeon_lvds_get_modes, ptr null, ptr @radeon_lvds_mode_valid, ptr null, ptr @radeon_best_single_encoder, ptr null, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@radeon_mst = external dso_local local_unnamed_addr global i32, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@radeon_runtime_pm = external dso_local local_unnamed_addr global i32, align 4
@radeon_r4xx_atom = external dso_local local_unnamed_addr global i32, align 4
@.str.15 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"Determined LVDS native mode details from EDID\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"No LVDS native mode details, disabling RMX\0A\00", [52 x i8] zeroinitializer }, align 32
@__const.radeon_add_common_modes.common_modes = private unnamed_addr constant [17 x %struct.mode_size] [%struct.mode_size { i32 640, i32 480 }, %struct.mode_size { i32 720, i32 480 }, %struct.mode_size { i32 800, i32 600 }, %struct.mode_size { i32 848, i32 480 }, %struct.mode_size { i32 1024, i32 768 }, %struct.mode_size { i32 1152, i32 768 }, %struct.mode_size { i32 1280, i32 720 }, %struct.mode_size { i32 1280, i32 800 }, %struct.mode_size { i32 1280, i32 854 }, %struct.mode_size { i32 1280, i32 960 }, %struct.mode_size { i32 1280, i32 1024 }, %struct.mode_size { i32 1440, i32 900 }, %struct.mode_size { i32 1400, i32 1050 }, %struct.mode_size { i32 1680, i32 1050 }, %struct.mode_size { i32 1600, i32 1200 }, %struct.mode_size { i32 1920, i32 1080 }, %struct.mode_size { i32 1920, i32 1200 }], align 4
@.str.17 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Adding native panel mode %s\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"Adding cvt approximation of native panel mode %s\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\00", [30 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"%s: probed a monitor but no|invalid EDID\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"1: conflicting encoders switching off %s\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"in favor of %s\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"2: conflicting encoders switching off %s\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"hpd detected without ddc, retrying in 1 second\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"%s: detected RS690 floating bus bug, stopping ddc detect\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"load_detect %x returned: %x\0A\00", [35 x i8] zeroinitializer }, align 32
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@__sancov_gen_cov_switch_values = internal global [9 x i64] [i64 7, i64 32, i64 2, i64 3, i64 7, i64 10, i64 11, i64 12, i64 14]
@__sancov_gen_cov_switch_values.27 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 5, i64 6, i64 9]
@__sancov_gen_cov_switch_values.28 = internal global [9 x i64] [i64 7, i64 32, i64 2, i64 3, i64 7, i64 10, i64 11, i64 12, i64 14]
@__sancov_gen_cov_switch_values.29 = internal global [14 x i64] [i64 12, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 9, i64 10, i64 11, i64 12, i64 14]
@__sancov_gen_cov_switch_values.30 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 5, i64 6, i64 9]
@__sancov_gen_cov_switch_values.31 = internal global [10 x i64] [i64 8, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 9]
@__sancov_gen_cov_switch_values.32 = internal global [4 x i64] [i64 2, i64 32, i64 7, i64 14]
@__sancov_gen_cov_switch_values.33 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.34 = internal global [4 x i64] [i64 2, i64 32, i64 10, i64 14]
@__sancov_gen_cov_switch_values.35 = internal global [4 x i64] [i64 2, i64 32, i64 7, i64 14]
@__sancov_gen_cov_switch_values.36 = internal global [4 x i64] [i64 2, i64 32, i64 7, i64 14]
@__sancov_gen_cov_switch_values.37 = internal global [4 x i64] [i64 2, i64 32, i64 7, i64 14]
@__sancov_gen_cov_switch_values.38 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 4]
@__sancov_gen_cov_switch_values.39 = internal global [4 x i64] [i64 2, i64 32, i64 3, i64 11]
@__sancov_gen_cov_switch_values.40 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 4]
@__sancov_gen_cov_switch_values.41 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.42 = internal global [5 x i64] [i64 3, i64 16, i64 2, i64 4, i64 13]
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 177, i32 4 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 189, i32 4 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 202, i32 4 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 213, i32 5 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 219, i32 5 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 225, i32 4 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 232, i32 3 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 237, i32 2 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 1941, i32 4 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 1956, i32 5 }
@___asan_gen_.73 = private unnamed_addr constant [26 x i8] c"radeon_dp_connector_funcs\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 1827, i32 41 }
@___asan_gen_.76 = private unnamed_addr constant [33 x i8] c"radeon_dp_connector_helper_funcs\00", align 1
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 1821, i32 48 }
@___asan_gen_.79 = private unnamed_addr constant [35 x i8] c"radeon_lvds_bridge_connector_funcs\00", align 1
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 1847, i32 41 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 2058, i32 6 }
@___asan_gen_.85 = private unnamed_addr constant [27 x i8] c"radeon_vga_connector_funcs\00", align 1
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 1115, i32 41 }
@___asan_gen_.88 = private unnamed_addr constant [34 x i8] c"radeon_vga_connector_helper_funcs\00", align 1
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 1109, i32 48 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 2088, i32 6 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 2124, i32 6 }
@___asan_gen_.97 = private unnamed_addr constant [27 x i8] c"radeon_dvi_connector_funcs\00", align 1
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 1523, i32 41 }
@___asan_gen_.100 = private unnamed_addr constant [34 x i8] c"radeon_dvi_connector_helper_funcs\00", align 1
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 1517, i32 48 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 2186, i32 6 }
@___asan_gen_.106 = private unnamed_addr constant [27 x i8] c"radeon_edp_connector_funcs\00", align 1
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 1837, i32 41 }
@___asan_gen_.109 = private unnamed_addr constant [26 x i8] c"radeon_tv_connector_funcs\00", align 1
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 1201, i32 41 }
@___asan_gen_.112 = private unnamed_addr constant [33 x i8] c"radeon_tv_connector_helper_funcs\00", align 1
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 1195, i32 48 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 2343, i32 6 }
@___asan_gen_.118 = private unnamed_addr constant [28 x i8] c"radeon_lvds_connector_funcs\00", align 1
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 981, i32 41 }
@___asan_gen_.121 = private unnamed_addr constant [35 x i8] c"radeon_lvds_connector_helper_funcs\00", align 1
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 975, i32 48 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 791, i32 5 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 798, i32 3 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 479, i32 3 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 491, i32 3 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 947, i32 2 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 1048, i32 4 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 444, i32 6 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 446, i32 6 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 451, i32 6 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 1281, i32 4 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 1301, i32 5 }
@___asan_gen_.157 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.158 = private constant [46 x i8] c"../drivers/gpu/drm/radeon/radeon_connectors.c\00", align 1
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 1392, i32 6 }
@llvm.compiler.used = appending global [39 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @radeon_dp_connector_funcs, ptr @radeon_dp_connector_helper_funcs, ptr @radeon_lvds_bridge_connector_funcs, ptr @.str.10, ptr @radeon_vga_connector_funcs, ptr @radeon_vga_connector_helper_funcs, ptr @.str.11, ptr @.str.12, ptr @radeon_dvi_connector_funcs, ptr @radeon_dvi_connector_helper_funcs, ptr @.str.13, ptr @radeon_edp_connector_funcs, ptr @radeon_tv_connector_funcs, ptr @radeon_tv_connector_helper_funcs, ptr @.str.14, ptr @radeon_lvds_connector_funcs, ptr @radeon_lvds_connector_helper_funcs, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26], section "llvm.metadata"
@0 = internal global [39 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 71, i32 128, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 74, i32 128, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radeon_dp_connector_funcs to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radeon_dp_connector_helper_funcs to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radeon_lvds_bridge_connector_funcs to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radeon_vga_connector_funcs to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radeon_vga_connector_helper_funcs to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radeon_dvi_connector_funcs to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radeon_dvi_connector_helper_funcs to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radeon_edp_connector_funcs to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radeon_tv_connector_funcs to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radeon_tv_connector_helper_funcs to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radeon_lvds_connector_funcs to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radeon_lvds_connector_helper_funcs to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @radeon_connector_hotplug(ptr noundef %connector) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %connector to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %connector, align 8
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_private, align 4
  %connector_type = getelementptr inbounds %struct.drm_connector, ptr %connector, i32 0, i32 10
  %4 = ptrtoint ptr %connector_type to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %connector_type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %5)
  %cmp = icmp eq i32 %5, 10
  br i1 %cmp, label %if.then, label %entry.if.end6_crit_edge

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6

if.then:                                          ; preds = %entry
  %is_mst_connector = getelementptr inbounds %struct.radeon_connector, ptr %connector, i32 0, i32 18
  %6 = ptrtoint ptr %is_mst_connector to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %is_mst_connector, align 4, !range !87
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  br i1 %tobool.not, label %if.end, label %if.then.cleanup52_crit_edge

if.then.cleanup52_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup52

if.end:                                           ; preds = %if.then
  %con_priv = getelementptr inbounds %struct.radeon_connector, ptr %connector, i32 0, i32 7
  %8 = ptrtoint ptr %con_priv to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %con_priv, align 4
  %is_mst = getelementptr inbounds %struct.radeon_connector_atom_dig, ptr %9, i32 0, i32 6
  %10 = ptrtoint ptr %is_mst to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %is_mst, align 1, !range !87
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool3.not = icmp eq i8 %11, 0
  br i1 %tobool3.not, label %if.end.if.end6_crit_edge, label %if.then4

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call.i = tail call i32 @radeon_dp_mst_check_status(ptr noundef %connector) #7
  br label %cleanup52

if.end6:                                          ; preds = %if.end.if.end6_crit_edge, %entry.if.end6_crit_edge
  %hpd = getelementptr inbounds %struct.radeon_connector, ptr %connector, i32 0, i32 12
  %12 = ptrtoint ptr %hpd to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %hpd, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %13)
  %cmp8 = icmp eq i32 %13, 255
  br i1 %cmp8, label %if.end6.cleanup52_crit_edge, label %if.end10

if.end6.cleanup52_crit_edge:                      ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup52

if.end10:                                         ; preds = %if.end6
  %asic = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 56
  %14 = ptrtoint ptr %asic to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %asic, align 8
  %set_polarity = getelementptr inbounds %struct.radeon_asic, ptr %15, i32 0, i32 19, i32 3
  %16 = ptrtoint ptr %set_polarity to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %set_polarity, align 4
  tail call void %17(ptr noundef %3, i32 noundef %13) #7
  %dpms = getelementptr inbounds %struct.drm_connector, ptr %connector, i32 0, i32 34
  %18 = ptrtoint ptr %dpms to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %dpms, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp14.not = icmp eq i32 %19, 0
  br i1 %cmp14.not, label %if.end16, label %if.end10.cleanup52_crit_edge

if.end10.cleanup52_crit_edge:                     ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup52

if.end16:                                         ; preds = %if.end10
  %20 = ptrtoint ptr %connector_type to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %connector_type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %21)
  %cmp18 = icmp eq i32 %21, 10
  br i1 %cmp18, label %if.then19, label %if.end16.cleanup52_crit_edge

if.end16.cleanup52_crit_edge:                     ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup52

if.then19:                                        ; preds = %if.end16
  %con_priv21 = getelementptr inbounds %struct.radeon_connector, ptr %connector, i32 0, i32 7
  %22 = ptrtoint ptr %con_priv21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %con_priv21, align 4
  %dp_sink_type = getelementptr inbounds %struct.radeon_connector_atom_dig, ptr %23, i32 0, i32 2
  %24 = ptrtoint ptr %dp_sink_type to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %dp_sink_type, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 19, i8 %25)
  %cmp22.not = icmp eq i8 %25, 19
  br i1 %cmp22.not, label %if.end25, label %if.then19.cleanup52_crit_edge

if.then19.cleanup52_crit_edge:                    ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup52

if.end25:                                         ; preds = %if.then19
  %call26 = tail call zeroext i8 @radeon_dp_getsinktype(ptr noundef %connector) #7
  %26 = ptrtoint ptr %dp_sink_type to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %call26, ptr %dp_sink_type, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 19, i8 %call26)
  %cmp30 = icmp eq i8 %call26, 19
  br i1 %cmp30, label %land.lhs.true, label %if.end25.cleanup52_crit_edge

if.end25.cleanup52_crit_edge:                     ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup52

land.lhs.true:                                    ; preds = %if.end25
  %27 = ptrtoint ptr %asic to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %asic, align 8
  %sense = getelementptr inbounds %struct.radeon_asic, ptr %28, i32 0, i32 19, i32 2
  %29 = ptrtoint ptr %sense to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %sense, align 4
  %31 = ptrtoint ptr %hpd to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %hpd, align 8
  %call36 = tail call zeroext i1 %30(ptr noundef %3, i32 noundef %32) #7
  br i1 %call36, label %land.lhs.true38, label %land.lhs.true.cleanup52_crit_edge

land.lhs.true.cleanup52_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup52

land.lhs.true38:                                  ; preds = %land.lhs.true
  %call39 = tail call zeroext i1 @radeon_dp_needs_link_train(ptr noundef %connector) #7
  br i1 %call39, label %if.then41, label %land.lhs.true38.cleanup52_crit_edge

land.lhs.true38.cleanup52_crit_edge:              ; preds = %land.lhs.true38
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup52

if.then41:                                        ; preds = %land.lhs.true38
  %call42 = tail call zeroext i1 @radeon_dp_getdpcd(ptr noundef %connector) #7
  br i1 %call42, label %if.end44, label %if.then41.cleanup52_crit_edge

if.then41.cleanup52_crit_edge:                    ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup52

if.end44:                                         ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #9
  %call45 = tail call i32 @drm_helper_connector_dpms(ptr noundef %connector, i32 noundef 3) #7
  %call46 = tail call i32 @drm_helper_connector_dpms(ptr noundef %connector, i32 noundef 0) #7
  br label %cleanup52

cleanup52:                                        ; preds = %if.end44, %if.then41.cleanup52_crit_edge, %land.lhs.true38.cleanup52_crit_edge, %land.lhs.true.cleanup52_crit_edge, %if.end25.cleanup52_crit_edge, %if.then19.cleanup52_crit_edge, %if.end16.cleanup52_crit_edge, %if.end10.cleanup52_crit_edge, %if.end6.cleanup52_crit_edge, %if.then4, %if.then.cleanup52_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @radeon_dp_getsinktype(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @radeon_dp_needs_link_train(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @radeon_dp_getdpcd(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_helper_connector_dpms(ptr noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @radeon_get_monitor_bpc(ptr noundef %connector) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %connector to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %connector, align 8
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_private, align 4
  %connector_type = getelementptr inbounds %struct.drm_connector, ptr %connector, i32 0, i32 10
  %4 = ptrtoint ptr %connector_type to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %connector_type, align 8
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i32 %5, label %entry.sw.epilog_crit_edge [
    i32 2, label %entry.sw.bb_crit_edge
    i32 12, label %entry.sw.bb_crit_edge271
    i32 3, label %entry.sw.bb11_crit_edge
    i32 11, label %entry.sw.bb11_crit_edge272
    i32 10, label %sw.bb23
    i32 14, label %entry.sw.bb42_crit_edge
    i32 7, label %entry.sw.bb42_crit_edge273
  ]

entry.sw.bb42_crit_edge273:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb42

entry.sw.bb42_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb42

entry.sw.bb11_crit_edge272:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb11

entry.sw.bb11_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb11

entry.sw.bb_crit_edge271:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge271
  %use_digital = getelementptr inbounds %struct.radeon_connector, ptr %connector, i32 0, i32 5
  %7 = ptrtoint ptr %use_digital to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %use_digital, align 1, !range !87
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not = icmp eq i8 %8, 0
  br i1 %tobool.not, label %sw.bb.sw.epilog_crit_edge, label %if.then

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.then:                                          ; preds = %sw.bb
  %edid_blob_ptr.i = getelementptr inbounds %struct.drm_connector, ptr %connector, i32 0, i32 22
  %9 = ptrtoint ptr %edid_blob_ptr.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %edid_blob_ptr.i, align 4
  %edid.i = getelementptr inbounds %struct.radeon_connector, ptr %connector, i32 0, i32 6
  %11 = ptrtoint ptr %edid.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %edid.i, align 8
  %tobool.not.i = icmp eq ptr %12, null
  br i1 %tobool.not.i, label %if.else.i, label %if.then.radeon_connector_edid.exit_crit_edge

if.then.radeon_connector_edid.exit_crit_edge:     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %radeon_connector_edid.exit

if.else.i:                                        ; preds = %if.then
  %tobool2.not.i = icmp eq ptr %10, null
  br i1 %tobool2.not.i, label %if.else.i.if.end9.i_crit_edge, label %if.then3.i

if.else.i.if.end9.i_crit_edge:                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9.i

if.then3.i:                                       ; preds = %if.else.i
  %data.i = getelementptr inbounds %struct.drm_property_blob, ptr %10, i32 0, i32 5
  %13 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %data.i, align 4
  %length.i = getelementptr inbounds %struct.drm_property_blob, ptr %10, i32 0, i32 4
  %15 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %length.i, align 4
  %call.i = tail call ptr @kmemdup(ptr noundef %14, i32 noundef %16, i32 noundef 3264) #7
  %tobool5.not.i = icmp eq ptr %call.i, null
  br i1 %tobool5.not.i, label %if.then3.i.if.end9.i_crit_edge, label %if.then6.i

if.then3.i.if.end9.i_crit_edge:                   ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9.i

if.then6.i:                                       ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #9
  %17 = ptrtoint ptr %edid.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call.i, ptr %edid.i, align 8
  br label %if.end9.i

if.end9.i:                                        ; preds = %if.then6.i, %if.then3.i.if.end9.i_crit_edge, %if.else.i.if.end9.i_crit_edge
  %18 = ptrtoint ptr %edid.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %edid.i, align 8
  br label %radeon_connector_edid.exit

radeon_connector_edid.exit:                       ; preds = %if.end9.i, %if.then.radeon_connector_edid.exit_crit_edge
  %retval.0.i = phi ptr [ %19, %if.end9.i ], [ %12, %if.then.radeon_connector_edid.exit_crit_edge ]
  %call2 = tail call zeroext i1 @drm_detect_hdmi_monitor(ptr noundef %retval.0.i) #7
  br i1 %call2, label %if.then3, label %radeon_connector_edid.exit.sw.epilog_crit_edge

radeon_connector_edid.exit.sw.epilog_crit_edge:   ; preds = %radeon_connector_edid.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.then3:                                         ; preds = %radeon_connector_edid.exit
  call void @__sanitizer_cov_trace_pc() #9
  %bpc4 = getelementptr inbounds %struct.drm_connector, ptr %connector, i32 0, i32 20, i32 2
  %20 = ptrtoint ptr %bpc4 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %bpc4, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool5.not = icmp eq i32 %21, 0
  %spec.select = select i1 %tobool5.not, i32 8, i32 %21
  br label %sw.epilog

sw.bb11:                                          ; preds = %entry.sw.bb11_crit_edge, %entry.sw.bb11_crit_edge272
  %edid_blob_ptr.i205 = getelementptr inbounds %struct.drm_connector, ptr %connector, i32 0, i32 22
  %22 = ptrtoint ptr %edid_blob_ptr.i205 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %edid_blob_ptr.i205, align 4
  %edid.i206 = getelementptr inbounds %struct.radeon_connector, ptr %connector, i32 0, i32 6
  %24 = ptrtoint ptr %edid.i206 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %edid.i206, align 8
  %tobool.not.i207 = icmp eq ptr %25, null
  br i1 %tobool.not.i207, label %if.else.i209, label %sw.bb11.radeon_connector_edid.exit218_crit_edge

sw.bb11.radeon_connector_edid.exit218_crit_edge:  ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #9
  br label %radeon_connector_edid.exit218

if.else.i209:                                     ; preds = %sw.bb11
  %tobool2.not.i208 = icmp eq ptr %23, null
  br i1 %tobool2.not.i208, label %if.else.i209.if.end9.i216_crit_edge, label %if.then3.i214

if.else.i209.if.end9.i216_crit_edge:              ; preds = %if.else.i209
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9.i216

if.then3.i214:                                    ; preds = %if.else.i209
  %data.i210 = getelementptr inbounds %struct.drm_property_blob, ptr %23, i32 0, i32 5
  %26 = ptrtoint ptr %data.i210 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %data.i210, align 4
  %length.i211 = getelementptr inbounds %struct.drm_property_blob, ptr %23, i32 0, i32 4
  %28 = ptrtoint ptr %length.i211 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %length.i211, align 4
  %call.i212 = tail call ptr @kmemdup(ptr noundef %27, i32 noundef %29, i32 noundef 3264) #7
  %tobool5.not.i213 = icmp eq ptr %call.i212, null
  br i1 %tobool5.not.i213, label %if.then3.i214.if.end9.i216_crit_edge, label %if.then6.i215

if.then3.i214.if.end9.i216_crit_edge:             ; preds = %if.then3.i214
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9.i216

if.then6.i215:                                    ; preds = %if.then3.i214
  call void @__sanitizer_cov_trace_pc() #9
  %30 = ptrtoint ptr %edid.i206 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %call.i212, ptr %edid.i206, align 8
  br label %if.end9.i216

if.end9.i216:                                     ; preds = %if.then6.i215, %if.then3.i214.if.end9.i216_crit_edge, %if.else.i209.if.end9.i216_crit_edge
  %31 = ptrtoint ptr %edid.i206 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %edid.i206, align 8
  br label %radeon_connector_edid.exit218

radeon_connector_edid.exit218:                    ; preds = %if.end9.i216, %sw.bb11.radeon_connector_edid.exit218_crit_edge
  %retval.0.i217 = phi ptr [ %32, %if.end9.i216 ], [ %25, %sw.bb11.radeon_connector_edid.exit218_crit_edge ]
  %call13 = tail call zeroext i1 @drm_detect_hdmi_monitor(ptr noundef %retval.0.i217) #7
  br i1 %call13, label %if.then14, label %radeon_connector_edid.exit218.sw.epilog_crit_edge

radeon_connector_edid.exit218.sw.epilog_crit_edge: ; preds = %radeon_connector_edid.exit218
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.then14:                                        ; preds = %radeon_connector_edid.exit218
  call void @__sanitizer_cov_trace_pc() #9
  %bpc16 = getelementptr inbounds %struct.drm_connector, ptr %connector, i32 0, i32 20, i32 2
  %33 = ptrtoint ptr %bpc16 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %bpc16, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool17.not = icmp eq i32 %34, 0
  %spec.select202 = select i1 %tobool17.not, i32 8, i32 %34
  br label %sw.epilog

sw.bb23:                                          ; preds = %entry
  %con_priv = getelementptr inbounds %struct.radeon_connector, ptr %connector, i32 0, i32 7
  %35 = ptrtoint ptr %con_priv to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %con_priv, align 4
  %dp_sink_type = getelementptr inbounds %struct.radeon_connector_atom_dig, ptr %36, i32 0, i32 2
  %37 = ptrtoint ptr %dp_sink_type to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %dp_sink_type, align 1
  %.off = add i8 %38, -19
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %.off)
  %switch = icmp ult i8 %.off, 2
  br i1 %switch, label %sw.bb23.if.then33_crit_edge, label %lor.lhs.false29

sw.bb23.if.then33_crit_edge:                      ; preds = %sw.bb23
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then33

lor.lhs.false29:                                  ; preds = %sw.bb23
  %edid_blob_ptr.i219 = getelementptr inbounds %struct.drm_connector, ptr %connector, i32 0, i32 22
  %39 = ptrtoint ptr %edid_blob_ptr.i219 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %edid_blob_ptr.i219, align 4
  %edid.i220 = getelementptr inbounds %struct.radeon_connector, ptr %connector, i32 0, i32 6
  %41 = ptrtoint ptr %edid.i220 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %edid.i220, align 8
  %tobool.not.i221 = icmp eq ptr %42, null
  br i1 %tobool.not.i221, label %if.else.i223, label %lor.lhs.false29.radeon_connector_edid.exit232_crit_edge

lor.lhs.false29.radeon_connector_edid.exit232_crit_edge: ; preds = %lor.lhs.false29
  call void @__sanitizer_cov_trace_pc() #9
  br label %radeon_connector_edid.exit232

if.else.i223:                                     ; preds = %lor.lhs.false29
  %tobool2.not.i222 = icmp eq ptr %40, null
  br i1 %tobool2.not.i222, label %if.else.i223.if.end9.i230_crit_edge, label %if.then3.i228

if.else.i223.if.end9.i230_crit_edge:              ; preds = %if.else.i223
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9.i230

if.then3.i228:                                    ; preds = %if.else.i223
  %data.i224 = getelementptr inbounds %struct.drm_property_blob, ptr %40, i32 0, i32 5
  %43 = ptrtoint ptr %data.i224 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %data.i224, align 4
  %length.i225 = getelementptr inbounds %struct.drm_property_blob, ptr %40, i32 0, i32 4
  %45 = ptrtoint ptr %length.i225 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %length.i225, align 4
  %call.i226 = tail call ptr @kmemdup(ptr noundef %44, i32 noundef %46, i32 noundef 3264) #7
  %tobool5.not.i227 = icmp eq ptr %call.i226, null
  br i1 %tobool5.not.i227, label %if.then3.i228.if.end9.i230_crit_edge, label %if.then6.i229

if.then3.i228.if.end9.i230_crit_edge:             ; preds = %if.then3.i228
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9.i230

if.then6.i229:                                    ; preds = %if.then3.i228
  call void @__sanitizer_cov_trace_pc() #9
  %47 = ptrtoint ptr %edid.i220 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %call.i226, ptr %edid.i220, align 8
  br label %if.end9.i230

if.end9.i230:                                     ; preds = %if.then6.i229, %if.then3.i228.if.end9.i230_crit_edge, %if.else.i223.if.end9.i230_crit_edge
  %48 = ptrtoint ptr %edid.i220 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %edid.i220, align 8
  br label %radeon_connector_edid.exit232

radeon_connector_edid.exit232:                    ; preds = %if.end9.i230, %lor.lhs.false29.radeon_connector_edid.exit232_crit_edge
  %retval.0.i231 = phi ptr [ %49, %if.end9.i230 ], [ %42, %lor.lhs.false29.radeon_connector_edid.exit232_crit_edge ]
  %call31 = tail call zeroext i1 @drm_detect_hdmi_monitor(ptr noundef %retval.0.i231) #7
  br i1 %call31, label %radeon_connector_edid.exit232.if.then33_crit_edge, label %radeon_connector_edid.exit232.sw.epilog_crit_edge

radeon_connector_edid.exit232.sw.epilog_crit_edge: ; preds = %radeon_connector_edid.exit232
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

radeon_connector_edid.exit232.if.then33_crit_edge: ; preds = %radeon_connector_edid.exit232
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then33

if.then33:                                        ; preds = %radeon_connector_edid.exit232.if.then33_crit_edge, %sw.bb23.if.then33_crit_edge
  %bpc35 = getelementptr inbounds %struct.drm_connector, ptr %connector, i32 0, i32 20, i32 2
  %50 = ptrtoint ptr %bpc35 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %bpc35, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %tobool36.not = icmp eq i32 %51, 0
  %spec.select203 = select i1 %tobool36.not, i32 8, i32 %51
  br label %sw.epilog

sw.bb42:                                          ; preds = %entry.sw.bb42_crit_edge, %entry.sw.bb42_crit_edge273
  %bpc44 = getelementptr inbounds %struct.drm_connector, ptr %connector, i32 0, i32 20, i32 2
  %52 = ptrtoint ptr %bpc44 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %bpc44, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %tobool45.not = icmp eq i32 %53, 0
  br i1 %tobool45.not, label %if.else, label %sw.bb42.sw.epilog_crit_edge

sw.bb42.sw.epilog_crit_edge:                      ; preds = %sw.bb42
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.else:                                          ; preds = %sw.bb42
  %family = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 6
  %54 = ptrtoint ptr %family to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %family, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 43, i32 %55)
  %cmp49 = icmp ugt i32 %55, 43
  br i1 %cmp49, label %land.lhs.true, label %if.else.sw.epilog_crit_edge

if.else.sw.epilog_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

land.lhs.true:                                    ; preds = %if.else
  %flags = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 7
  %56 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %flags, align 8
  %and = and i32 %57, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool51.not = icmp ne i32 %and, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 46, i32 %55)
  %cmp54 = icmp ugt i32 %55, 46
  %or.cond263 = select i1 %tobool51.not, i1 true, i1 %cmp54
  br i1 %or.cond263, label %if.then56, label %land.lhs.true.sw.epilog_crit_edge

land.lhs.true.sw.epilog_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.then56:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %helper_private = getelementptr inbounds %struct.drm_connector, ptr %connector, i32 0, i32 35
  %58 = ptrtoint ptr %helper_private to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %helper_private, align 4
  %best_encoder = getelementptr inbounds %struct.drm_connector_helper_funcs, ptr %59, i32 0, i32 4
  %60 = ptrtoint ptr %best_encoder to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %best_encoder, align 4
  %call57 = tail call ptr %61(ptr noundef %connector) #7
  %enc_priv = getelementptr inbounds %struct.radeon_encoder, ptr %call57, i32 0, i32 12
  %62 = ptrtoint ptr %enc_priv to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %enc_priv, align 4
  %lcd_misc = getelementptr inbounds %struct.radeon_encoder_atom_dig, ptr %63, i32 0, i32 3
  %64 = ptrtoint ptr %lcd_misc to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %lcd_misc, align 4
  %and61 = and i32 %65, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and61)
  %tobool62.not = icmp eq i32 %and61, 0
  %spec.select204 = select i1 %tobool62.not, i32 8, i32 6
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then56, %land.lhs.true.sw.epilog_crit_edge, %if.else.sw.epilog_crit_edge, %sw.bb42.sw.epilog_crit_edge, %if.then33, %radeon_connector_edid.exit232.sw.epilog_crit_edge, %if.then14, %radeon_connector_edid.exit218.sw.epilog_crit_edge, %if.then3, %radeon_connector_edid.exit.sw.epilog_crit_edge, %sw.bb.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  %bpc.1 = phi i32 [ 8, %entry.sw.epilog_crit_edge ], [ 8, %radeon_connector_edid.exit232.sw.epilog_crit_edge ], [ 8, %radeon_connector_edid.exit218.sw.epilog_crit_edge ], [ 8, %radeon_connector_edid.exit.sw.epilog_crit_edge ], [ 8, %sw.bb.sw.epilog_crit_edge ], [ %spec.select, %if.then3 ], [ %spec.select202, %if.then14 ], [ %spec.select203, %if.then33 ], [ %53, %sw.bb42.sw.epilog_crit_edge ], [ %spec.select204, %if.then56 ], [ 8, %if.else.sw.epilog_crit_edge ], [ 8, %land.lhs.true.sw.epilog_crit_edge ]
  %edid_blob_ptr.i233 = getelementptr inbounds %struct.drm_connector, ptr %connector, i32 0, i32 22
  %66 = ptrtoint ptr %edid_blob_ptr.i233 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %edid_blob_ptr.i233, align 4
  %edid.i234 = getelementptr inbounds %struct.radeon_connector, ptr %connector, i32 0, i32 6
  %68 = ptrtoint ptr %edid.i234 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %edid.i234, align 8
  %tobool.not.i235 = icmp eq ptr %69, null
  br i1 %tobool.not.i235, label %if.else.i237, label %sw.epilog.radeon_connector_edid.exit246_crit_edge

sw.epilog.radeon_connector_edid.exit246_crit_edge: ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %radeon_connector_edid.exit246

if.else.i237:                                     ; preds = %sw.epilog
  %tobool2.not.i236 = icmp eq ptr %67, null
  br i1 %tobool2.not.i236, label %if.else.i237.if.end9.i244_crit_edge, label %if.then3.i242

if.else.i237.if.end9.i244_crit_edge:              ; preds = %if.else.i237
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9.i244

if.then3.i242:                                    ; preds = %if.else.i237
  %data.i238 = getelementptr inbounds %struct.drm_property_blob, ptr %67, i32 0, i32 5
  %70 = ptrtoint ptr %data.i238 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %data.i238, align 4
  %length.i239 = getelementptr inbounds %struct.drm_property_blob, ptr %67, i32 0, i32 4
  %72 = ptrtoint ptr %length.i239 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %length.i239, align 4
  %call.i240 = tail call ptr @kmemdup(ptr noundef %71, i32 noundef %73, i32 noundef 3264) #7
  %tobool5.not.i241 = icmp eq ptr %call.i240, null
  br i1 %tobool5.not.i241, label %if.then3.i242.if.end9.i244_crit_edge, label %if.then6.i243

if.then3.i242.if.end9.i244_crit_edge:             ; preds = %if.then3.i242
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9.i244

if.then6.i243:                                    ; preds = %if.then3.i242
  call void @__sanitizer_cov_trace_pc() #9
  %74 = ptrtoint ptr %edid.i234 to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr %call.i240, ptr %edid.i234, align 8
  br label %if.end9.i244

if.end9.i244:                                     ; preds = %if.then6.i243, %if.then3.i242.if.end9.i244_crit_edge, %if.else.i237.if.end9.i244_crit_edge
  %75 = ptrtoint ptr %edid.i234 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %edid.i234, align 8
  br label %radeon_connector_edid.exit246

radeon_connector_edid.exit246:                    ; preds = %if.end9.i244, %sw.epilog.radeon_connector_edid.exit246_crit_edge
  %retval.0.i245 = phi ptr [ %76, %if.end9.i244 ], [ %69, %sw.epilog.radeon_connector_edid.exit246_crit_edge ]
  %call74 = tail call zeroext i1 @drm_detect_hdmi_monitor(ptr noundef %retval.0.i245) #7
  br i1 %call74, label %if.then75, label %radeon_connector_edid.exit246.if.end134_crit_edge

radeon_connector_edid.exit246.if.end134_crit_edge: ; preds = %radeon_connector_edid.exit246
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end134

if.then75:                                        ; preds = %radeon_connector_edid.exit246
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %bpc.1)
  %cmp76 = icmp sgt i32 %bpc.1, 8
  br i1 %cmp76, label %land.lhs.true78, label %if.then75.if.end88_crit_edge

if.then75.if.end88_crit_edge:                     ; preds = %if.then75
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end88

land.lhs.true78:                                  ; preds = %if.then75
  %family79 = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 6
  %77 = ptrtoint ptr %family79 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %family79, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 38, i32 %78)
  %cmp80 = icmp ugt i32 %78, 38
  br i1 %cmp80, label %if.end83, label %if.end88.thread264

if.end83:                                         ; preds = %land.lhs.true78
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %bpc.1)
  %cmp84 = icmp ugt i32 %bpc.1, 12
  br i1 %cmp84, label %if.end88.thread, label %if.end83.if.end88_crit_edge

if.end83.if.end88_crit_edge:                      ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end88

if.end88:                                         ; preds = %if.end83.if.end88_crit_edge, %if.then75.if.end88_crit_edge
  %max_tmds_clock90 = getelementptr inbounds %struct.drm_connector, ptr %connector, i32 0, i32 20, i32 9
  %79 = ptrtoint ptr %max_tmds_clock90 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %max_tmds_clock90, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %80)
  %cmp91 = icmp sgt i32 %80, 0
  br i1 %cmp91, label %if.end88.if.then93_crit_edge, label %if.else127

if.end88.if.then93_crit_edge:                     ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then93

if.end88.thread264:                               ; preds = %land.lhs.true78
  %name = getelementptr inbounds %struct.drm_connector, ptr %connector, i32 0, i32 7
  %81 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %name, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef %82, i32 noundef %bpc.1) #7
  %max_tmds_clock90266 = getelementptr inbounds %struct.drm_connector, ptr %connector, i32 0, i32 20, i32 9
  %83 = ptrtoint ptr %max_tmds_clock90266 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %max_tmds_clock90266, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %84)
  %cmp91267 = icmp sgt i32 %84, 0
  br i1 %cmp91267, label %if.end88.thread264.if.then93_crit_edge, label %if.end88.thread264.if.end142_crit_edge

if.end88.thread264.if.end142_crit_edge:           ; preds = %if.end88.thread264
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end142

if.end88.thread264.if.then93_crit_edge:           ; preds = %if.end88.thread264
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then93

if.end88.thread:                                  ; preds = %if.end83
  %name87 = getelementptr inbounds %struct.drm_connector, ptr %connector, i32 0, i32 7
  %85 = ptrtoint ptr %name87 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %name87, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.1, ptr noundef %86, i32 noundef %bpc.1) #7
  %max_tmds_clock90253 = getelementptr inbounds %struct.drm_connector, ptr %connector, i32 0, i32 20, i32 9
  %87 = ptrtoint ptr %max_tmds_clock90253 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %max_tmds_clock90253, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %88)
  %cmp91254 = icmp sgt i32 %88, 0
  br i1 %cmp91254, label %if.end88.thread.if.then93_crit_edge, label %if.end88.thread.if.then130_crit_edge

if.end88.thread.if.then130_crit_edge:             ; preds = %if.end88.thread
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then130

if.end88.thread.if.then93_crit_edge:              ; preds = %if.end88.thread
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then93

if.then93:                                        ; preds = %if.end88.thread.if.then93_crit_edge, %if.end88.thread264.if.then93_crit_edge, %if.end88.if.then93_crit_edge
  %89 = phi i32 [ %88, %if.end88.thread.if.then93_crit_edge ], [ %80, %if.end88.if.then93_crit_edge ], [ %84, %if.end88.thread264.if.then93_crit_edge ]
  %bpc.3255 = phi i32 [ 12, %if.end88.thread.if.then93_crit_edge ], [ %bpc.1, %if.end88.if.then93_crit_edge ], [ 8, %if.end88.thread264.if.then93_crit_edge ]
  %pixelclock_for_modeset = getelementptr inbounds %struct.radeon_connector, ptr %connector, i32 0, i32 17
  %90 = ptrtoint ptr %pixelclock_for_modeset to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %pixelclock_for_modeset, align 8
  %name96 = getelementptr inbounds %struct.drm_connector, ptr %connector, i32 0, i32 7
  %92 = ptrtoint ptr %name96 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %name96, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.2, ptr noundef %93, i32 noundef %91, i32 noundef %89) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %bpc.3255)
  %cmp97 = icmp eq i32 %bpc.3255, 12
  br i1 %cmp97, label %land.lhs.true99, label %if.then93.if.end116_crit_edge

if.then93.if.end116_crit_edge:                    ; preds = %if.then93
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end116

land.lhs.true99:                                  ; preds = %if.then93
  %mul = mul i32 %91, 3
  %div = sdiv i32 %mul, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %div, i32 %89)
  %cmp100 = icmp sgt i32 %div, %89
  br i1 %cmp100, label %if.then102, label %land.lhs.true99.if.end134_crit_edge

land.lhs.true99.if.end134_crit_edge:              ; preds = %land.lhs.true99
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end134

if.then102:                                       ; preds = %land.lhs.true99
  %edid_hdmi_dc_modes = getelementptr inbounds %struct.drm_connector, ptr %connector, i32 0, i32 20, i32 14
  %94 = ptrtoint ptr %edid_hdmi_dc_modes to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %edid_hdmi_dc_modes, align 4
  %96 = and i8 %95, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %96)
  %tobool106.not = icmp eq i8 %96, 0
  br i1 %tobool106.not, label %if.then102.if.else113_crit_edge, label %land.lhs.true107

if.then102.if.else113_crit_edge:                  ; preds = %if.then102
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else113

land.lhs.true107:                                 ; preds = %if.then102
  %mul108 = mul i32 %91, 5
  %div109 = sdiv i32 %mul108, 4
  call void @__sanitizer_cov_trace_cmp4(i32 %div109, i32 %89)
  %cmp110.not = icmp sgt i32 %div109, %89
  br i1 %cmp110.not, label %land.lhs.true107.if.else113_crit_edge, label %land.lhs.true107.if.end114_crit_edge

land.lhs.true107.if.end114_crit_edge:             ; preds = %land.lhs.true107
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end114

land.lhs.true107.if.else113_crit_edge:            ; preds = %land.lhs.true107
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else113

if.else113:                                       ; preds = %land.lhs.true107.if.else113_crit_edge, %if.then102.if.else113_crit_edge
  br label %if.end114

if.end114:                                        ; preds = %if.else113, %land.lhs.true107.if.end114_crit_edge
  %bpc.4 = phi i32 [ 8, %if.else113 ], [ 10, %land.lhs.true107.if.end114_crit_edge ]
  %97 = ptrtoint ptr %name96 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %name96, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.3, ptr noundef %98, i32 noundef %bpc.4) #7
  br label %if.end116

if.end116:                                        ; preds = %if.end114, %if.then93.if.end116_crit_edge
  %bpc.5 = phi i32 [ %bpc.4, %if.end114 ], [ %bpc.3255, %if.then93.if.end116_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %bpc.5)
  %cmp117 = icmp eq i32 %bpc.5, 10
  br i1 %cmp117, label %land.lhs.true119, label %if.end116.if.end134_crit_edge

if.end116.if.end134_crit_edge:                    ; preds = %if.end116
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end134

land.lhs.true119:                                 ; preds = %if.end116
  %mul120 = mul i32 %91, 5
  %div121 = sdiv i32 %mul120, 4
  call void @__sanitizer_cov_trace_cmp4(i32 %div121, i32 %89)
  %cmp122 = icmp sgt i32 %div121, %89
  br i1 %cmp122, label %if.then124, label %land.lhs.true119.if.end134_crit_edge

land.lhs.true119.if.end134_crit_edge:             ; preds = %land.lhs.true119
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end134

if.then124:                                       ; preds = %land.lhs.true119
  call void @__sanitizer_cov_trace_pc() #9
  %99 = ptrtoint ptr %name96 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %name96, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.4, ptr noundef %100, i32 noundef 8) #7
  br label %if.end142

if.else127:                                       ; preds = %if.end88
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %bpc.1)
  %cmp128 = icmp sgt i32 %bpc.1, 8
  br i1 %cmp128, label %if.else127.if.then130_crit_edge, label %if.else127.if.end142_crit_edge

if.else127.if.end142_crit_edge:                   ; preds = %if.else127
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end142

if.else127.if.then130_crit_edge:                  ; preds = %if.else127
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then130

if.then130:                                       ; preds = %if.else127.if.then130_crit_edge, %if.end88.thread.if.then130_crit_edge
  %name131 = getelementptr inbounds %struct.drm_connector, ptr %connector, i32 0, i32 7
  %101 = ptrtoint ptr %name131 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %name131, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.5, ptr noundef %102) #7
  br label %if.end142

if.end134:                                        ; preds = %land.lhs.true119.if.end134_crit_edge, %if.end116.if.end134_crit_edge, %land.lhs.true99.if.end134_crit_edge, %radeon_connector_edid.exit246.if.end134_crit_edge
  %bpc.6 = phi i32 [ 10, %land.lhs.true119.if.end134_crit_edge ], [ %bpc.5, %if.end116.if.end134_crit_edge ], [ %bpc.1, %radeon_connector_edid.exit246.if.end134_crit_edge ], [ 12, %land.lhs.true99.if.end134_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @radeon_deep_color to i32))
  %103 = load i32, ptr @radeon_deep_color, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %103)
  %cmp135 = icmp eq i32 %103, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %bpc.6)
  %cmp138 = icmp sgt i32 %bpc.6, 8
  %or.cond = select i1 %cmp135, i1 %cmp138, i1 false
  br i1 %or.cond, label %if.then140, label %if.end134.if.end142_crit_edge

if.end134.if.end142_crit_edge:                    ; preds = %if.end134
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end142

if.then140:                                       ; preds = %if.end134
  call void @__sanitizer_cov_trace_pc() #9
  %name141 = getelementptr inbounds %struct.drm_connector, ptr %connector, i32 0, i32 7
  %104 = ptrtoint ptr %name141 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %name141, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.6, ptr noundef %105) #7
  br label %if.end142

if.end142:                                        ; preds = %if.then140, %if.end134.if.end142_crit_edge, %if.then130, %if.else127.if.end142_crit_edge, %if.then124, %if.end88.thread264.if.end142_crit_edge
  %bpc.7 = phi i32 [ 8, %if.then140 ], [ %bpc.6, %if.end134.if.end142_crit_edge ], [ %bpc.1, %if.else127.if.end142_crit_edge ], [ 8, %if.then130 ], [ 8, %if.then124 ], [ 8, %if.end88.thread264.if.end142_crit_edge ]
  %name143 = getelementptr inbounds %struct.drm_connector, ptr %connector, i32 0, i32 7
  %106 = ptrtoint ptr %name143 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %name143, align 4
  %bpc145 = getelementptr inbounds %struct.drm_connector, ptr %connector, i32 0, i32 20, i32 2
  %108 = ptrtoint ptr %bpc145 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %bpc145, align 8
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.7, ptr noundef %107, i32 noundef %109, i32 noundef %bpc.7) #7
  ret i32 %bpc.7
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @drm_detect_hdmi_monitor(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @radeon_connector_edid(ptr nocapture noundef %connector) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %edid_blob_ptr = getelementptr inbounds %struct.drm_connector, ptr %connector, i32 0, i32 22
  %0 = ptrtoint ptr %edid_blob_ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %edid_blob_ptr, align 4
  %edid = getelementptr inbounds %struct.radeon_connector, ptr %connector, i32 0, i32 6
  %2 = ptrtoint ptr %edid to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %edid, align 8
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %if.else, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.else:                                          ; preds = %entry
  %tobool2.not = icmp eq ptr %1, null
  br i1 %tobool2.not, label %if.else.if.end9_crit_edge, label %if.then3

if.else.if.end9_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9

if.then3:                                         ; preds = %if.else
  %data = getelementptr inbounds %struct.drm_property_blob, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data, align 4
  %length = getelementptr inbounds %struct.drm_property_blob, ptr %1, i32 0, i32 4
  %6 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %length, align 4
  %call = tail call ptr @kmemdup(ptr noundef %5, i32 noundef %7, i32 noundef 3264) #7
  %tobool5.not = icmp eq ptr %call, null
  br i1 %tobool5.not, label %if.then3.if.end9_crit_edge, label %if.then6

if.then3.if.end9_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9

if.then6:                                         ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #9
  %8 = ptrtoint ptr %edid to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call, ptr %edid, align 8
  br label %if.end9

if.end9:                                          ; preds = %if.then6, %if.then3.if.end9_crit_edge, %if.else.if.end9_crit_edge
  %9 = ptrtoint ptr %edid to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %edid, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %10, %if.end9 ], [ %3, %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i16 @radeon_connector_encoder_get_dp_bridge_encoder_id(ptr nocapture noundef readonly %connector) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %connector to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %connector, align 8
  %encoder_list = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 30, i32 16
  %2 = ptrtoint ptr %encoder_list to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn20 = load ptr, ptr %encoder_list, align 4
  %cmp.not21 = icmp eq ptr %.pn20, %encoder_list
  br i1 %cmp.not21, label %entry.cleanup_crit_edge, label %for.body.lr.ph

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body.lr.ph:                                   ; preds = %entry
  %possible_encoders = getelementptr inbounds %struct.drm_connector, ptr %connector, i32 0, i32 40
  %3 = ptrtoint ptr %possible_encoders to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %possible_encoders, align 8
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %.pn22 = phi ptr [ %.pn20, %for.body.lr.ph ], [ %.pn, %for.inc.for.body_crit_edge ]
  %index.i.i = getelementptr i8, ptr %.pn22, i32 36
  %5 = ptrtoint ptr %index.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %index.i.i, align 4
  %shl.i = shl nuw i32 1, %6
  %and = and i32 %shl.i, %4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.else

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.else:                                          ; preds = %for.body
  %encoder_id = getelementptr i8, ptr %.pn22, i32 72
  %7 = ptrtoint ptr %encoder_id to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %encoder_id, align 4
  %9 = and i32 %8, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 34, i32 %9)
  %switch = icmp eq i32 %9, 34
  br i1 %switch, label %sw.bb, label %if.else.for.inc_crit_edge

if.else.for.inc_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

sw.bb:                                            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %conv = trunc i32 %8 to i16
  br label %cleanup

for.inc:                                          ; preds = %if.else.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %10 = ptrtoint ptr %.pn22 to i32
  call void @__asan_load4_noabort(i32 %10)
  %.pn = load ptr, ptr %.pn22, align 4
  %cmp.not = icmp eq ptr %.pn, %encoder_list
  br i1 %cmp.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %sw.bb, %entry.cleanup_crit_edge
  %retval.0 = phi i16 [ %conv, %sw.bb ], [ 0, %entry.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ]
  ret i16 %retval.0
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @radeon_connector_is_dp12_capable(ptr nocapture noundef readonly %connector) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %connector to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %connector, align 8
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
  br i1 %cmp, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %default_dispclk = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 41, i32 7
  %6 = ptrtoint ptr %default_dispclk to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %default_dispclk, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 53899, i32 %7)
  %cmp2 = icmp ugt i32 %7, 53899
  br i1 %cmp2, label %land.lhs.true3, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true3:                                   ; preds = %land.lhs.true
  %encoder_list.i = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 30, i32 16
  %8 = ptrtoint ptr %encoder_list.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %.pn24.i = load ptr, ptr %encoder_list.i, align 4
  %cmp.not25.i = icmp eq ptr %.pn24.i, %encoder_list.i
  br i1 %cmp.not25.i, label %land.lhs.true3.if.end_crit_edge, label %for.body.lr.ph.i

land.lhs.true3.if.end_crit_edge:                  ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

for.body.lr.ph.i:                                 ; preds = %land.lhs.true3
  %possible_encoders.i = getelementptr inbounds %struct.drm_connector, ptr %connector, i32 0, i32 40
  %9 = ptrtoint ptr %possible_encoders.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %possible_encoders.i, align 8
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %.pn27.i = phi ptr [ %.pn24.i, %for.body.lr.ph.i ], [ %.pn.i, %for.inc.i.for.body.i_crit_edge ]
  %found.0.off026.i = phi i1 [ false, %for.body.lr.ph.i ], [ %found.1.off0.i, %for.inc.i.for.body.i_crit_edge ]
  %index.i.i.i = getelementptr i8, ptr %.pn27.i, i32 36
  %11 = ptrtoint ptr %index.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %index.i.i.i, align 4
  %shl.i.i = shl nuw i32 1, %12
  %and.i = and i32 %shl.i.i, %10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.else.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

if.else.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %caps.i = getelementptr i8, ptr %.pn27.i, i32 230
  %13 = ptrtoint ptr %caps.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %caps.i, align 2
  %15 = and i16 %14, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %15)
  %tobool8.not.i = icmp ne i16 %15, 0
  %spec.select.i = select i1 %tobool8.not.i, i1 true, i1 %found.0.off026.i
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.else.i, %for.body.i.for.inc.i_crit_edge
  %found.1.off0.i = phi i1 [ %found.0.off026.i, %for.body.i.for.inc.i_crit_edge ], [ %spec.select.i, %if.else.i ]
  %16 = ptrtoint ptr %.pn27.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %.pn.i = load ptr, ptr %.pn27.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %encoder_list.i
  br i1 %cmp.not.i, label %radeon_connector_encoder_is_hbr2.exit, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

radeon_connector_encoder_is_hbr2.exit:            ; preds = %for.inc.i
  br i1 %found.1.off0.i, label %radeon_connector_encoder_is_hbr2.exit.cleanup_crit_edge, label %radeon_connector_encoder_is_hbr2.exit.if.end_crit_edge

radeon_connector_encoder_is_hbr2.exit.if.end_crit_edge: ; preds = %radeon_connector_encoder_is_hbr2.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

radeon_connector_encoder_is_hbr2.exit.cleanup_crit_edge: ; preds = %radeon_connector_encoder_is_hbr2.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %radeon_connector_encoder_is_hbr2.exit.if.end_crit_edge, %land.lhs.true3.if.end_crit_edge, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end, %radeon_connector_encoder_is_hbr2.exit.cleanup_crit_edge
  %retval.0 = phi i1 [ false, %if.end ], [ true, %radeon_connector_encoder_is_hbr2.exit.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @radeon_add_atom_connector(ptr noundef %dev, i32 noundef %connector_id, i32 noundef %supported_device, i32 noundef %connector_type, ptr noundef %i2c_bus, i32 noundef %igp_lane_info, i16 noundef zeroext %connector_object_id, ptr nocapture noundef readonly %hpd, ptr noundef %router) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_private, align 4
  %2 = zext i32 %connector_type to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.27)
  switch i32 %connector_type, label %entry.if.end7_crit_edge [
    i32 0, label %entry.cleanup_crit_edge
    i32 6, label %entry.land.lhs.true_crit_edge
    i32 5, label %entry.land.lhs.true_crit_edge1095
    i32 9, label %entry.land.lhs.true_crit_edge1096
  ]

entry.land.lhs.true_crit_edge1096:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true

entry.land.lhs.true_crit_edge1095:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true

entry.land.lhs.true_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

entry.if.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7

land.lhs.true:                                    ; preds = %entry.land.lhs.true_crit_edge, %entry.land.lhs.true_crit_edge1095, %entry.land.lhs.true_crit_edge1096
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @radeon_tv to i32))
  %3 = load i32, ptr @radeon_tv, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp5 = icmp eq i32 %3, 0
  br i1 %cmp5, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end7_crit_edge

land.lhs.true.if.end7_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end7:                                          ; preds = %land.lhs.true.if.end7_crit_edge, %entry.if.end7_crit_edge
  %connector_list = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 30, i32 12
  %4 = ptrtoint ptr %connector_list to i32
  call void @__asan_load4_noabort(i32 %4)
  %.pn1080 = load ptr, ptr %connector_list, align 4
  %cmp10.not1081 = icmp eq ptr %.pn1080, %connector_list
  br i1 %cmp10.not1081, label %if.end7.for.end_crit_edge, label %for.body.lr.ph

if.end7.for.end_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end7
  %i2c_id22 = getelementptr inbounds %struct.radeon_i2c_bus_rec, ptr %i2c_bus, i32 0, i32 1
  %ddc_valid = getelementptr inbounds %struct.radeon_router, ptr %router, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %.pn1083 = phi ptr [ %.pn1080, %for.body.lr.ph ], [ %.pn, %for.inc.for.body_crit_edge ]
  %shared_ddc.0.off01082 = phi i1 [ false, %for.body.lr.ph ], [ %shared_ddc.2.off0, %for.inc.for.body_crit_edge ]
  %connector_id14 = getelementptr i8, ptr %.pn1083, i32 1024
  %5 = ptrtoint ptr %connector_id14 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %connector_id14, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %connector_id)
  %cmp15 = icmp eq i32 %6, %connector_id
  br i1 %cmp15, label %if.then16, label %if.end17

if.then16:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %devices = getelementptr i8, ptr %.pn1083, i32 1028
  %7 = ptrtoint ptr %devices to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %devices, align 4
  %or = or i32 %8, %supported_device
  store i32 %or, ptr %devices, align 4
  br label %cleanup

if.end17:                                         ; preds = %for.body
  %ddc_bus = getelementptr i8, ptr %.pn1083, i32 1032
  %9 = ptrtoint ptr %ddc_bus to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ddc_bus, align 8
  %tobool.not = icmp eq ptr %10, null
  br i1 %tobool.not, label %if.end17.for.inc_crit_edge, label %land.lhs.true18

if.end17.for.inc_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

land.lhs.true18:                                  ; preds = %if.end17
  %11 = ptrtoint ptr %i2c_bus to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %i2c_bus, align 4, !range !87
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool19.not = icmp eq i8 %12, 0
  br i1 %tobool19.not, label %land.lhs.true18.for.inc_crit_edge, label %if.then20

land.lhs.true18.for.inc_crit_edge:                ; preds = %land.lhs.true18
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.then20:                                        ; preds = %land.lhs.true18
  %i2c_id = getelementptr inbounds %struct.radeon_i2c_chan, ptr %10, i32 0, i32 3, i32 1
  %13 = ptrtoint ptr %i2c_id to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %i2c_id, align 1
  %15 = ptrtoint ptr %i2c_id22 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %i2c_id22, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %14, i8 %16)
  %cmp24 = icmp eq i8 %14, %16
  br i1 %cmp24, label %if.then26, label %if.then20.if.end28_crit_edge

if.then20.if.end28_crit_edge:                     ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end28

if.then26:                                        ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #9
  %shared_ddc27 = getelementptr i8, ptr %.pn1083, i32 1036
  %17 = ptrtoint ptr %shared_ddc27 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 1, ptr %shared_ddc27, align 4
  br label %if.end28

if.end28:                                         ; preds = %if.then26, %if.then20.if.end28_crit_edge
  %shared_ddc.1.off0 = phi i1 [ true, %if.then26 ], [ %shared_ddc.0.off01082, %if.then20.if.end28_crit_edge ]
  %router_bus = getelementptr i8, ptr %.pn1083, i32 1172
  %18 = ptrtoint ptr %router_bus to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %router_bus, align 4
  %tobool29.not = icmp eq ptr %19, null
  br i1 %tobool29.not, label %if.end28.for.inc_crit_edge, label %land.lhs.true30

if.end28.for.inc_crit_edge:                       ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

land.lhs.true30:                                  ; preds = %if.end28
  %20 = ptrtoint ptr %ddc_valid to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %ddc_valid, align 1, !range !87
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool31.not = icmp eq i8 %21, 0
  br i1 %tobool31.not, label %land.lhs.true30.for.inc_crit_edge, label %land.lhs.true33

land.lhs.true30.for.inc_crit_edge:                ; preds = %land.lhs.true30
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

land.lhs.true33:                                  ; preds = %land.lhs.true30
  %router34 = getelementptr i8, ptr %.pn1083, i32 1080
  %22 = ptrtoint ptr %router34 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %router34, align 8
  %24 = ptrtoint ptr %router to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %router, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %25)
  %cmp36 = icmp eq i32 %23, %25
  br i1 %cmp36, label %if.then38, label %land.lhs.true33.for.inc_crit_edge

land.lhs.true33.for.inc_crit_edge:                ; preds = %land.lhs.true33
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.then38:                                        ; preds = %land.lhs.true33
  call void @__sanitizer_cov_trace_pc() #9
  %shared_ddc39 = getelementptr i8, ptr %.pn1083, i32 1036
  %26 = ptrtoint ptr %shared_ddc39 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 0, ptr %shared_ddc39, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.then38, %land.lhs.true33.for.inc_crit_edge, %land.lhs.true30.for.inc_crit_edge, %if.end28.for.inc_crit_edge, %land.lhs.true18.for.inc_crit_edge, %if.end17.for.inc_crit_edge
  %shared_ddc.2.off0 = phi i1 [ false, %if.then38 ], [ %shared_ddc.1.off0, %land.lhs.true33.for.inc_crit_edge ], [ %shared_ddc.1.off0, %land.lhs.true30.for.inc_crit_edge ], [ %shared_ddc.1.off0, %if.end28.for.inc_crit_edge ], [ %shared_ddc.0.off01082, %land.lhs.true18.for.inc_crit_edge ], [ %shared_ddc.0.off01082, %if.end17.for.inc_crit_edge ]
  %27 = ptrtoint ptr %.pn1083 to i32
  call void @__asan_load4_noabort(i32 %27)
  %.pn = load ptr, ptr %.pn1083, align 4
  %cmp10.not = icmp eq ptr %.pn, %connector_list
  br i1 %cmp10.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end7.for.end_crit_edge
  %shared_ddc.0.off0.lcssa = phi i1 [ false, %if.end7.for.end_crit_edge ], [ %shared_ddc.2.off0, %for.inc.for.end_crit_edge ]
  %encoder_list = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 30, i32 16
  %28 = ptrtoint ptr %encoder_list to i32
  call void @__asan_load4_noabort(i32 %28)
  %.pn10271084 = load ptr, ptr %encoder_list, align 4
  %cmp56.not1085 = icmp eq ptr %.pn10271084, %encoder_list
  br i1 %cmp56.not1085, label %for.end.for.end73_crit_edge, label %for.end.for.body59_crit_edge

for.end.for.body59_crit_edge:                     ; preds = %for.end
  br label %for.body59

for.end.for.end73_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end73

for.body59:                                       ; preds = %for.inc67.for.body59_crit_edge, %for.end.for.body59_crit_edge
  %.pn10271087 = phi ptr [ %.pn1027, %for.inc67.for.body59_crit_edge ], [ %.pn10271084, %for.end.for.body59_crit_edge ]
  %is_dp_bridge.0.off01086 = phi i1 [ %is_dp_bridge.1.off0, %for.inc67.for.body59_crit_edge ], [ false, %for.end.for.body59_crit_edge ]
  %devices63 = getelementptr i8, ptr %.pn10271087, i32 76
  %29 = ptrtoint ptr %devices63 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %devices63, align 4
  %and = and i32 %30, %supported_device
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool64.not = icmp eq i32 %and, 0
  br i1 %tobool64.not, label %for.body59.for.inc67_crit_edge, label %if.then65

for.body59.for.inc67_crit_edge:                   ; preds = %for.body59
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc67

if.then65:                                        ; preds = %for.body59
  call void @__sanitizer_cov_trace_pc() #9
  %encoder_id = getelementptr i8, ptr %.pn10271087, i32 72
  %31 = ptrtoint ptr %encoder_id to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %encoder_id, align 4
  %33 = and i32 %32, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 34, i32 %33)
  %switch = icmp eq i32 %33, 34
  %spec.select = select i1 %switch, i1 true, i1 %is_dp_bridge.0.off01086
  br label %for.inc67

for.inc67:                                        ; preds = %if.then65, %for.body59.for.inc67_crit_edge
  %is_dp_bridge.1.off0 = phi i1 [ %is_dp_bridge.0.off01086, %for.body59.for.inc67_crit_edge ], [ %spec.select, %if.then65 ]
  %34 = ptrtoint ptr %.pn10271087 to i32
  call void @__asan_load4_noabort(i32 %34)
  %.pn1027 = load ptr, ptr %.pn10271087, align 4
  %cmp56.not = icmp eq ptr %.pn1027, %encoder_list
  br i1 %cmp56.not, label %for.inc67.for.end73_crit_edge, label %for.inc67.for.body59_crit_edge

for.inc67.for.body59_crit_edge:                   ; preds = %for.inc67
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body59

for.inc67.for.end73_crit_edge:                    ; preds = %for.inc67
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end73

for.end73:                                        ; preds = %for.inc67.for.end73_crit_edge, %for.end.for.end73_crit_edge
  %is_dp_bridge.0.off0.lcssa = phi i1 [ false, %for.end.for.end73_crit_edge ], [ %is_dp_bridge.1.off0, %for.inc67.for.end73_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %35 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %35, i32 noundef 3520, i32 noundef 3016) #10
  %tobool74.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool74.not, label %for.end73.cleanup_crit_edge, label %if.end76

for.end73.cleanup_crit_edge:                      ; preds = %for.end73
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end76:                                         ; preds = %for.end73
  %connector_id77 = getelementptr inbounds %struct.radeon_connector, ptr %call7.i.i, i32 0, i32 1
  %36 = ptrtoint ptr %connector_id77 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %connector_id, ptr %connector_id77, align 8
  %devices78 = getelementptr inbounds %struct.radeon_connector, ptr %call7.i.i, i32 0, i32 2
  %37 = ptrtoint ptr %devices78 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %supported_device, ptr %devices78, align 4
  %shared_ddc80 = getelementptr inbounds %struct.radeon_connector, ptr %call7.i.i, i32 0, i32 4
  %frombool = zext i1 %shared_ddc.0.off0.lcssa to i8
  %38 = ptrtoint ptr %shared_ddc80 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %frombool, ptr %shared_ddc80, align 4
  %connector_object_id81 = getelementptr inbounds %struct.radeon_connector, ptr %call7.i.i, i32 0, i32 11
  %39 = ptrtoint ptr %connector_object_id81 to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 %connector_object_id, ptr %connector_object_id81, align 4
  %hpd82 = getelementptr inbounds %struct.radeon_connector, ptr %call7.i.i, i32 0, i32 12
  %40 = call ptr @memcpy(ptr %hpd82, ptr %hpd, i32 24)
  %router83 = getelementptr inbounds %struct.radeon_connector, ptr %call7.i.i, i32 0, i32 13
  %41 = call ptr @memcpy(ptr %router83, ptr %router, i32 92)
  %ddc_valid84 = getelementptr inbounds %struct.radeon_router, ptr %router, i32 0, i32 3
  %42 = ptrtoint ptr %ddc_valid84 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %ddc_valid84, align 1, !range !87
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %43)
  %tobool85.not = icmp eq i8 %43, 0
  br i1 %tobool85.not, label %lor.lhs.false87, label %if.end76.if.then90_crit_edge

if.end76.if.then90_crit_edge:                     ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then90

lor.lhs.false87:                                  ; preds = %if.end76
  %cd_valid = getelementptr inbounds %struct.radeon_router, ptr %router, i32 0, i32 7
  %44 = ptrtoint ptr %cd_valid to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %cd_valid, align 1, !range !87
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %45)
  %tobool88.not = icmp eq i8 %45, 0
  br i1 %tobool88.not, label %lor.lhs.false87.if.end97_crit_edge, label %lor.lhs.false87.if.then90_crit_edge

lor.lhs.false87.if.then90_crit_edge:              ; preds = %lor.lhs.false87
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then90

lor.lhs.false87.if.end97_crit_edge:               ; preds = %lor.lhs.false87
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end97

if.then90:                                        ; preds = %lor.lhs.false87.if.then90_crit_edge, %if.end76.if.then90_crit_edge
  %i2c_info = getelementptr inbounds %struct.radeon_router, ptr %router, i32 0, i32 1
  %call91 = tail call ptr @radeon_i2c_lookup(ptr noundef %1, ptr noundef %i2c_info) #7
  %router_bus92 = getelementptr inbounds %struct.radeon_connector, ptr %call7.i.i, i32 0, i32 14
  %46 = ptrtoint ptr %router_bus92 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %call91, ptr %router_bus92, align 4
  %tobool94.not = icmp eq ptr %call91, null
  br i1 %tobool94.not, label %if.then95, label %if.then90.if.end97_crit_edge

if.then90.if.end97_crit_edge:                     ; preds = %if.then90
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end97

if.then95:                                        ; preds = %if.then90
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.8) #7
  br label %if.end97

if.end97:                                         ; preds = %if.then95, %if.then90.if.end97_crit_edge, %lor.lhs.false87.if.end97_crit_edge
  br i1 %is_dp_bridge.0.off0.lcssa, label %if.then99, label %if.else197

if.then99:                                        ; preds = %if.end97
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %47 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i1042 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %47, i32 noundef 3520, i32 noundef 32) #10
  %tobool101.not = icmp eq ptr %call7.i.i1042, null
  br i1 %tobool101.not, label %if.then99.failed_crit_edge, label %if.end103

if.then99.failed_crit_edge:                       ; preds = %if.then99
  call void @__sanitizer_cov_trace_pc() #9
  br label %failed

if.end103:                                        ; preds = %if.then99
  %48 = ptrtoint ptr %call7.i.i1042 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %igp_lane_info, ptr %call7.i.i1042, align 8
  %con_priv = getelementptr inbounds %struct.radeon_connector, ptr %call7.i.i, i32 0, i32 7
  %49 = ptrtoint ptr %con_priv to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %call7.i.i1042, ptr %con_priv, align 4
  %50 = ptrtoint ptr %i2c_bus to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %i2c_bus, align 4, !range !87
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %51)
  %tobool106.not = icmp eq i8 %51, 0
  br i1 %tobool106.not, label %if.end103.if.end115_crit_edge, label %if.then107

if.end103.if.end115_crit_edge:                    ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end115

if.then107:                                       ; preds = %if.end103
  %call108 = tail call ptr @radeon_i2c_lookup(ptr noundef %1, ptr noundef %i2c_bus) #7
  %ddc_bus109 = getelementptr inbounds %struct.radeon_connector, ptr %call7.i.i, i32 0, i32 3
  %52 = ptrtoint ptr %ddc_bus109 to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %call108, ptr %ddc_bus109, align 8
  %tobool111.not = icmp eq ptr %call108, null
  br i1 %tobool111.not, label %if.else, label %if.then107.if.end115_crit_edge

if.then107.if.end115_crit_edge:                   ; preds = %if.then107
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end115

if.else:                                          ; preds = %if.then107
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.9) #7
  br label %if.end115

if.end115:                                        ; preds = %if.else, %if.then107.if.end115_crit_edge, %if.end103.if.end115_crit_edge
  %has_aux.0 = phi i1 [ false, %if.else ], [ false, %if.end103.if.end115_crit_edge ], [ true, %if.then107.if.end115_crit_edge ]
  %ddc.0 = phi ptr [ null, %if.else ], [ null, %if.end103.if.end115_crit_edge ], [ %call108, %if.then107.if.end115_crit_edge ]
  %53 = zext i32 %connector_type to i64
  call void @__sanitizer_cov_trace_switch(i64 %53, ptr @__sancov_gen_cov_switch_values.28)
  switch i32 %connector_type, label %sw.default117 [
    i32 14, label %if.end115.sw.bb186_crit_edge
    i32 7, label %if.end115.sw.bb186_crit_edge1097
    i32 2, label %if.end115.sw.bb133_crit_edge
    i32 3, label %if.end115.sw.bb133_crit_edge1098
    i32 11, label %if.end115.sw.bb133_crit_edge1099
    i32 12, label %if.end115.sw.bb133_crit_edge1100
    i32 10, label %if.end115.sw.bb133_crit_edge1101
  ]

if.end115.sw.bb133_crit_edge1101:                 ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb133

if.end115.sw.bb133_crit_edge1100:                 ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb133

if.end115.sw.bb133_crit_edge1099:                 ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb133

if.end115.sw.bb133_crit_edge1098:                 ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb133

if.end115.sw.bb133_crit_edge:                     ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb133

if.end115.sw.bb186_crit_edge1097:                 ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb186

if.end115.sw.bb186_crit_edge:                     ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb186

sw.default117:                                    ; preds = %if.end115
  %call119 = tail call i32 @drm_connector_init_with_ddc(ptr noundef %dev, ptr noundef nonnull %call7.i.i, ptr noundef nonnull @radeon_dp_connector_funcs, i32 noundef %connector_type, ptr noundef %ddc.0) #7
  %helper_private.i = getelementptr inbounds %struct.drm_connector, ptr %call7.i.i, i32 0, i32 35
  %54 = ptrtoint ptr %helper_private.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr @radeon_dp_connector_helper_funcs, ptr %helper_private.i, align 4
  %interlace_allowed = getelementptr inbounds %struct.drm_connector, ptr %call7.i.i, i32 0, i32 12
  %55 = ptrtoint ptr %interlace_allowed to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 1, ptr %interlace_allowed, align 8
  %doublescan_allowed = getelementptr inbounds %struct.drm_connector, ptr %call7.i.i, i32 0, i32 13
  %56 = ptrtoint ptr %doublescan_allowed to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 1, ptr %doublescan_allowed, align 1
  %dac_load_detect = getelementptr inbounds %struct.radeon_connector, ptr %call7.i.i, i32 0, i32 8
  %57 = ptrtoint ptr %dac_load_detect to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 1, ptr %dac_load_detect, align 8
  %base122 = getelementptr inbounds %struct.drm_connector, ptr %call7.i.i, i32 0, i32 6
  %load_detect_property = getelementptr inbounds %struct.radeon_device, ptr %1, i32 0, i32 44, i32 7
  %58 = ptrtoint ptr %load_detect_property to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %load_detect_property, align 4
  tail call void @drm_object_attach_property(ptr noundef %base122, ptr noundef %59, i64 noundef 1) #7
  %scaling_mode_property = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 30, i32 73
  %60 = ptrtoint ptr %scaling_mode_property to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %scaling_mode_property, align 4
  tail call void @drm_object_attach_property(ptr noundef %base122, ptr noundef %61, i64 noundef 0) #7
  %family = getelementptr inbounds %struct.radeon_device, ptr %1, i32 0, i32 6
  %62 = ptrtoint ptr %family to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %family, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 46, i32 %63)
  %cmp126 = icmp ugt i32 %63, 46
  br i1 %cmp126, label %if.then128, label %sw.default117.if.end647_crit_edge

sw.default117.if.end647_crit_edge:                ; preds = %sw.default117
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end647

if.then128:                                       ; preds = %sw.default117
  call void @__sanitizer_cov_trace_pc() #9
  %output_csc_property = getelementptr inbounds %struct.radeon_device, ptr %1, i32 0, i32 44, i32 15
  %64 = ptrtoint ptr %output_csc_property to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %output_csc_property, align 4
  tail call void @drm_object_attach_property(ptr noundef %base122, ptr noundef %65, i64 noundef 0) #7
  br label %if.end647

sw.bb133:                                         ; preds = %if.end115.sw.bb133_crit_edge, %if.end115.sw.bb133_crit_edge1098, %if.end115.sw.bb133_crit_edge1099, %if.end115.sw.bb133_crit_edge1100, %if.end115.sw.bb133_crit_edge1101
  %call135 = tail call i32 @drm_connector_init_with_ddc(ptr noundef %dev, ptr noundef nonnull %call7.i.i, ptr noundef nonnull @radeon_dp_connector_funcs, i32 noundef %connector_type, ptr noundef %ddc.0) #7
  %helper_private.i1043 = getelementptr inbounds %struct.drm_connector, ptr %call7.i.i, i32 0, i32 35
  %66 = ptrtoint ptr %helper_private.i1043 to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr @radeon_dp_connector_helper_funcs, ptr %helper_private.i1043, align 4
  %base138 = getelementptr inbounds %struct.drm_connector, ptr %call7.i.i, i32 0, i32 6
  %underscan_property = getelementptr inbounds %struct.radeon_device, ptr %1, i32 0, i32 44, i32 10
  %67 = ptrtoint ptr %underscan_property to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %underscan_property, align 4
  tail call void @drm_object_attach_property(ptr noundef %base138, ptr noundef %68, i64 noundef 0) #7
  %underscan_hborder_property = getelementptr inbounds %struct.radeon_device, ptr %1, i32 0, i32 44, i32 11
  %69 = ptrtoint ptr %underscan_hborder_property to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %underscan_hborder_property, align 4
  tail call void @drm_object_attach_property(ptr noundef %base138, ptr noundef %70, i64 noundef 0) #7
  %underscan_vborder_property = getelementptr inbounds %struct.radeon_device, ptr %1, i32 0, i32 44, i32 12
  %71 = ptrtoint ptr %underscan_vborder_property to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %underscan_vborder_property, align 4
  tail call void @drm_object_attach_property(ptr noundef %base138, ptr noundef %72, i64 noundef 0) #7
  %scaling_mode_property149 = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 30, i32 73
  %73 = ptrtoint ptr %scaling_mode_property149 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %scaling_mode_property149, align 4
  tail call void @drm_object_attach_property(ptr noundef %base138, ptr noundef %74, i64 noundef 0) #7
  %dither_property = getelementptr inbounds %struct.radeon_device, ptr %1, i32 0, i32 44, i32 14
  %75 = ptrtoint ptr %dither_property to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %dither_property, align 4
  tail call void @drm_object_attach_property(ptr noundef %base138, ptr noundef %76, i64 noundef 0) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @radeon_audio to i32))
  %77 = load i32, ptr @radeon_audio, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %77)
  %cmp153.not = icmp eq i32 %77, 0
  br i1 %cmp153.not, label %sw.bb133.if.end159_crit_edge, label %if.then155

sw.bb133.if.end159_crit_edge:                     ; preds = %sw.bb133
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end159

if.then155:                                       ; preds = %sw.bb133
  call void @__sanitizer_cov_trace_pc() #9
  %audio_property = getelementptr inbounds %struct.radeon_device, ptr %1, i32 0, i32 44, i32 13
  %78 = ptrtoint ptr %audio_property to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %audio_property, align 4
  tail call void @drm_object_attach_property(ptr noundef %base138, ptr noundef %79, i64 noundef 2) #7
  %audio = getelementptr inbounds %struct.radeon_connector, ptr %call7.i.i, i32 0, i32 15
  %80 = ptrtoint ptr %audio to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 2, ptr %audio, align 8
  br label %if.end159

if.end159:                                        ; preds = %if.then155, %sw.bb133.if.end159_crit_edge
  %family160 = getelementptr inbounds %struct.radeon_device, ptr %1, i32 0, i32 6
  %81 = ptrtoint ptr %family160 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %family160, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 46, i32 %82)
  %cmp161 = icmp ugt i32 %82, 46
  br i1 %cmp161, label %if.then163, label %if.end159.if.end168_crit_edge

if.end159.if.end168_crit_edge:                    ; preds = %if.end159
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end168

if.then163:                                       ; preds = %if.end159
  call void @__sanitizer_cov_trace_pc() #9
  %output_csc_property167 = getelementptr inbounds %struct.radeon_device, ptr %1, i32 0, i32 44, i32 15
  %83 = ptrtoint ptr %output_csc_property167 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %output_csc_property167, align 4
  tail call void @drm_object_attach_property(ptr noundef %base138, ptr noundef %84, i64 noundef 0) #7
  br label %if.end168

if.end168:                                        ; preds = %if.then163, %if.end159.if.end168_crit_edge
  %interlace_allowed169 = getelementptr inbounds %struct.drm_connector, ptr %call7.i.i, i32 0, i32 12
  %85 = ptrtoint ptr %interlace_allowed169 to i32
  call void @__asan_store1_noabort(i32 %85)
  store i8 1, ptr %interlace_allowed169, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %connector_type)
  %cmp170 = icmp eq i32 %connector_type, 12
  %doublescan_allowed173 = getelementptr inbounds %struct.drm_connector, ptr %call7.i.i, i32 0, i32 13
  br i1 %cmp170, label %if.end176.thread, label %if.end176

if.end176.thread:                                 ; preds = %if.end168
  call void @__sanitizer_cov_trace_pc() #9
  %86 = ptrtoint ptr %doublescan_allowed173 to i32
  call void @__asan_store1_noabort(i32 %86)
  store i8 1, ptr %doublescan_allowed173, align 1
  br label %if.end647

if.end176:                                        ; preds = %if.end168
  %87 = ptrtoint ptr %doublescan_allowed173 to i32
  call void @__asan_store1_noabort(i32 %87)
  store i8 0, ptr %doublescan_allowed173, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %connector_type)
  %cmp177 = icmp eq i32 %connector_type, 2
  br i1 %cmp177, label %if.then179, label %if.end176.if.end647_crit_edge

if.end176.if.end647_crit_edge:                    ; preds = %if.end176
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end647

if.then179:                                       ; preds = %if.end176
  call void @__sanitizer_cov_trace_pc() #9
  %dac_load_detect180 = getelementptr inbounds %struct.radeon_connector, ptr %call7.i.i, i32 0, i32 8
  %88 = ptrtoint ptr %dac_load_detect180 to i32
  call void @__asan_store1_noabort(i32 %88)
  store i8 1, ptr %dac_load_detect180, align 8
  %load_detect_property184 = getelementptr inbounds %struct.radeon_device, ptr %1, i32 0, i32 44, i32 7
  %89 = ptrtoint ptr %load_detect_property184 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %load_detect_property184, align 4
  tail call void @drm_object_attach_property(ptr noundef %base138, ptr noundef %90, i64 noundef 1) #7
  br label %if.end647

sw.bb186:                                         ; preds = %if.end115.sw.bb186_crit_edge, %if.end115.sw.bb186_crit_edge1097
  %call188 = tail call i32 @drm_connector_init_with_ddc(ptr noundef %dev, ptr noundef nonnull %call7.i.i, ptr noundef nonnull @radeon_lvds_bridge_connector_funcs, i32 noundef %connector_type, ptr noundef %ddc.0) #7
  %helper_private.i1044 = getelementptr inbounds %struct.drm_connector, ptr %call7.i.i, i32 0, i32 35
  %91 = ptrtoint ptr %helper_private.i1044 to i32
  call void @__asan_store4_noabort(i32 %91)
  store ptr @radeon_dp_connector_helper_funcs, ptr %helper_private.i1044, align 4
  %base191 = getelementptr inbounds %struct.drm_connector, ptr %call7.i.i, i32 0, i32 6
  %scaling_mode_property193 = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 30, i32 73
  %92 = ptrtoint ptr %scaling_mode_property193 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %scaling_mode_property193, align 4
  tail call void @drm_object_attach_property(ptr noundef %base191, ptr noundef %93, i64 noundef 1) #7
  %interlace_allowed194 = getelementptr inbounds %struct.drm_connector, ptr %call7.i.i, i32 0, i32 12
  %94 = ptrtoint ptr %interlace_allowed194 to i32
  call void @__asan_store1_noabort(i32 %94)
  store i8 0, ptr %interlace_allowed194, align 8
  %doublescan_allowed195 = getelementptr inbounds %struct.drm_connector, ptr %call7.i.i, i32 0, i32 13
  %95 = ptrtoint ptr %doublescan_allowed195 to i32
  call void @__asan_store1_noabort(i32 %95)
  store i8 0, ptr %doublescan_allowed195, align 1
  br label %if.end647

if.else197:                                       ; preds = %if.end97
  %96 = zext i32 %connector_type to i64
  call void @__sanitizer_cov_trace_switch(i64 %96, ptr @__sancov_gen_cov_switch_values.29)
  switch i32 %connector_type, label %if.else197.if.end647_crit_edge [
    i32 1, label %sw.bb198
    i32 4, label %sw.bb242
    i32 2, label %if.else197.sw.bb286_crit_edge
    i32 3, label %if.else197.sw.bb286_crit_edge1102
    i32 11, label %if.else197.sw.bb388_crit_edge
    i32 12, label %if.else197.sw.bb388_crit_edge1103
    i32 10, label %sw.bb482
    i32 14, label %sw.bb570
    i32 6, label %if.else197.sw.bb599_crit_edge
    i32 5, label %if.else197.sw.bb599_crit_edge1104
    i32 9, label %if.else197.sw.bb599_crit_edge1105
    i32 7, label %sw.bb617
  ]

if.else197.sw.bb599_crit_edge1105:                ; preds = %if.else197
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb599

if.else197.sw.bb599_crit_edge1104:                ; preds = %if.else197
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb599

if.else197.sw.bb599_crit_edge:                    ; preds = %if.else197
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb599

if.else197.sw.bb388_crit_edge1103:                ; preds = %if.else197
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb388

if.else197.sw.bb388_crit_edge:                    ; preds = %if.else197
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb388

if.else197.sw.bb286_crit_edge1102:                ; preds = %if.else197
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb286

if.else197.sw.bb286_crit_edge:                    ; preds = %if.else197
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb286

if.else197.if.end647_crit_edge:                   ; preds = %if.else197
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end647

sw.bb198:                                         ; preds = %if.else197
  %97 = ptrtoint ptr %i2c_bus to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %i2c_bus, align 4, !range !87
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %98)
  %tobool200.not = icmp eq i8 %98, 0
  br i1 %tobool200.not, label %sw.bb198.if.end211_crit_edge, label %if.then201

sw.bb198.if.end211_crit_edge:                     ; preds = %sw.bb198
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end211

if.then201:                                       ; preds = %sw.bb198
  %call202 = tail call ptr @radeon_i2c_lookup(ptr noundef %1, ptr noundef %i2c_bus) #7
  %ddc_bus203 = getelementptr inbounds %struct.radeon_connector, ptr %call7.i.i, i32 0, i32 3
  %99 = ptrtoint ptr %ddc_bus203 to i32
  call void @__asan_store4_noabort(i32 %99)
  store ptr %call202, ptr %ddc_bus203, align 8
  %tobool205.not = icmp eq ptr %call202, null
  br i1 %tobool205.not, label %if.then206, label %if.then201.if.end211_crit_edge

if.then201.if.end211_crit_edge:                   ; preds = %if.then201
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end211

if.then206:                                       ; preds = %if.then201
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.10) #7
  br label %if.end211

if.end211:                                        ; preds = %if.then206, %if.then201.if.end211_crit_edge, %sw.bb198.if.end211_crit_edge
  %ddc.1 = phi ptr [ null, %if.then206 ], [ null, %sw.bb198.if.end211_crit_edge ], [ %call202, %if.then201.if.end211_crit_edge ]
  %call213 = tail call i32 @drm_connector_init_with_ddc(ptr noundef %dev, ptr noundef nonnull %call7.i.i, ptr noundef nonnull @radeon_vga_connector_funcs, i32 noundef 1, ptr noundef %ddc.1) #7
  %helper_private.i1045 = getelementptr inbounds %struct.drm_connector, ptr %call7.i.i, i32 0, i32 35
  %100 = ptrtoint ptr %helper_private.i1045 to i32
  call void @__asan_store4_noabort(i32 %100)
  store ptr @radeon_vga_connector_helper_funcs, ptr %helper_private.i1045, align 4
  %dac_load_detect215 = getelementptr inbounds %struct.radeon_connector, ptr %call7.i.i, i32 0, i32 8
  %101 = ptrtoint ptr %dac_load_detect215 to i32
  call void @__asan_store1_noabort(i32 %101)
  store i8 1, ptr %dac_load_detect215, align 8
  %base217 = getelementptr inbounds %struct.drm_connector, ptr %call7.i.i, i32 0, i32 6
  %load_detect_property219 = getelementptr inbounds %struct.radeon_device, ptr %1, i32 0, i32 44, i32 7
  %102 = ptrtoint ptr %load_detect_property219 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %load_detect_property219, align 4
  tail call void @drm_object_attach_property(ptr noundef %base217, ptr noundef %103, i64 noundef 1) #7
  %family220 = getelementptr inbounds %struct.radeon_device, ptr %1, i32 0, i32 6
  %104 = ptrtoint ptr %family220 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %family220, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %105)
  %cmp221 = icmp ugt i32 %105, 17
  br i1 %cmp221, label %if.end228, label %if.end211.if.then652.sink.split_crit_edge

if.end211.if.then652.sink.split_crit_edge:        ; preds = %if.end211
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then652.sink.split

if.end228:                                        ; preds = %if.end211
  %scaling_mode_property227 = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 30, i32 73
  %106 = ptrtoint ptr %scaling_mode_property227 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %scaling_mode_property227, align 4
  tail call void @drm_object_attach_property(ptr noundef %base217, ptr noundef %107, i64 noundef 0) #7
  %108 = ptrtoint ptr %family220 to i32
  call void @__asan_load4_noabort(i32 %108)
  %.pr = load i32, ptr %family220, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 46, i32 %.pr)
  %cmp230 = icmp ugt i32 %.pr, 46
  br i1 %cmp230, label %if.then232, label %if.end228.if.then652.sink.split_crit_edge

if.end228.if.then652.sink.split_crit_edge:        ; preds = %if.end228
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then652.sink.split

if.then232:                                       ; preds = %if.end228
  call void @__sanitizer_cov_trace_pc() #9
  %output_csc_property236 = getelementptr inbounds %struct.radeon_device, ptr %1, i32 0, i32 44, i32 15
  %109 = ptrtoint ptr %output_csc_property236 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %output_csc_property236, align 4
  tail call void @drm_object_attach_property(ptr noundef %base217, ptr noundef %110, i64 noundef 0) #7
  br label %if.then652.sink.split

sw.bb242:                                         ; preds = %if.else197
  %111 = ptrtoint ptr %i2c_bus to i32
  call void @__asan_load1_noabort(i32 %111)
  %112 = load i8, ptr %i2c_bus, align 4, !range !87
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %112)
  %tobool244.not = icmp eq i8 %112, 0
  br i1 %tobool244.not, label %sw.bb242.if.end255_crit_edge, label %if.then245

sw.bb242.if.end255_crit_edge:                     ; preds = %sw.bb242
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end255

if.then245:                                       ; preds = %sw.bb242
  %call246 = tail call ptr @radeon_i2c_lookup(ptr noundef %1, ptr noundef %i2c_bus) #7
  %ddc_bus247 = getelementptr inbounds %struct.radeon_connector, ptr %call7.i.i, i32 0, i32 3
  %113 = ptrtoint ptr %ddc_bus247 to i32
  call void @__asan_store4_noabort(i32 %113)
  store ptr %call246, ptr %ddc_bus247, align 8
  %tobool249.not = icmp eq ptr %call246, null
  br i1 %tobool249.not, label %if.then250, label %if.then245.if.end255_crit_edge

if.then245.if.end255_crit_edge:                   ; preds = %if.then245
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end255

if.then250:                                       ; preds = %if.then245
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.11) #7
  br label %if.end255

if.end255:                                        ; preds = %if.then250, %if.then245.if.end255_crit_edge, %sw.bb242.if.end255_crit_edge
  %ddc.2 = phi ptr [ null, %if.then250 ], [ null, %sw.bb242.if.end255_crit_edge ], [ %call246, %if.then245.if.end255_crit_edge ]
  %call257 = tail call i32 @drm_connector_init_with_ddc(ptr noundef %dev, ptr noundef nonnull %call7.i.i, ptr noundef nonnull @radeon_vga_connector_funcs, i32 noundef 4, ptr noundef %ddc.2) #7
  %helper_private.i1046 = getelementptr inbounds %struct.drm_connector, ptr %call7.i.i, i32 0, i32 35
  %114 = ptrtoint ptr %helper_private.i1046 to i32
  call void @__asan_store4_noabort(i32 %114)
  store ptr @radeon_vga_connector_helper_funcs, ptr %helper_private.i1046, align 4
  %dac_load_detect259 = getelementptr inbounds %struct.radeon_connector, ptr %call7.i.i, i32 0, i32 8
  %115 = ptrtoint ptr %dac_load_detect259 to i32
  call void @__asan_store1_noabort(i32 %115)
  store i8 1, ptr %dac_load_detect259, align 8
  %base261 = getelementptr inbounds %struct.drm_connector, ptr %call7.i.i, i32 0, i32 6
  %load_detect_property263 = getelementptr inbounds %struct.radeon_device, ptr %1, i32 0, i32 44, i32 7
  %116 = ptrtoint ptr %load_detect_property263 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %load_detect_property263, align 4
  tail call void @drm_object_attach_property(ptr noundef %base261, ptr noundef %117, i64 noundef 1) #7
  %family264 = getelementptr inbounds %struct.radeon_device, ptr %1, i32 0, i32 6
  %118 = ptrtoint ptr %family264 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %family264, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %119)
  %cmp265 = icmp ugt i32 %119, 17
  br i1 %cmp265, label %if.end272, label %if.end255.if.then652.sink.split_crit_edge

if.end255.if.then652.sink.split_crit_edge:        ; preds = %if.end255
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then652.sink.split

if.end272:                                        ; preds = %if.end255
  %scaling_mode_property271 = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 30, i32 73
  %120 = ptrtoint ptr %scaling_mode_property271 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %scaling_mode_property271, align 4
  tail call void @drm_object_attach_property(ptr noundef %base261, ptr noundef %121, i64 noundef 0) #7
  %122 = ptrtoint ptr %family264 to i32
  call void @__asan_load4_noabort(i32 %122)
  %.pr1060 = load i32, ptr %family264, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 46, i32 %.pr1060)
  %cmp274 = icmp ugt i32 %.pr1060, 46
  br i1 %cmp274, label %if.then276, label %if.end272.if.then652.sink.split_crit_edge

if.end272.if.then652.sink.split_crit_edge:        ; preds = %if.end272
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then652.sink.split

if.then276:                                       ; preds = %if.end272
  call void @__sanitizer_cov_trace_pc() #9
  %output_csc_property280 = getelementptr inbounds %struct.radeon_device, ptr %1, i32 0, i32 44, i32 15
  %123 = ptrtoint ptr %output_csc_property280 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %output_csc_property280, align 4
  tail call void @drm_object_attach_property(ptr noundef %base261, ptr noundef %124, i64 noundef 0) #7
  br label %if.then652.sink.split

sw.bb286:                                         ; preds = %if.else197.sw.bb286_crit_edge, %if.else197.sw.bb286_crit_edge1102
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %125 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i1047 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %125, i32 noundef 3520, i32 noundef 32) #10
  %tobool288.not = icmp eq ptr %call7.i.i1047, null
  br i1 %tobool288.not, label %sw.bb286.failed_crit_edge, label %if.end290

sw.bb286.failed_crit_edge:                        ; preds = %sw.bb286
  call void @__sanitizer_cov_trace_pc() #9
  br label %failed

if.end290:                                        ; preds = %sw.bb286
  %126 = ptrtoint ptr %call7.i.i1047 to i32
  call void @__asan_store4_noabort(i32 %126)
  store i32 %igp_lane_info, ptr %call7.i.i1047, align 8
  %con_priv292 = getelementptr inbounds %struct.radeon_connector, ptr %call7.i.i, i32 0, i32 7
  %127 = ptrtoint ptr %con_priv292 to i32
  call void @__asan_store4_noabort(i32 %127)
  store ptr %call7.i.i1047, ptr %con_priv292, align 4
  %128 = ptrtoint ptr %i2c_bus to i32
  call void @__asan_load1_noabort(i32 %128)
  %129 = load i8, ptr %i2c_bus, align 4, !range !87
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %129)
  %tobool294.not = icmp eq i8 %129, 0
  br i1 %tobool294.not, label %if.end290.if.end305_crit_edge, label %if.then295

if.end290.if.end305_crit_edge:                    ; preds = %if.end290
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end305

if.then295:                                       ; preds = %if.end290
  %call296 = tail call ptr @radeon_i2c_lookup(ptr noundef %1, ptr noundef %i2c_bus) #7
  %ddc_bus297 = getelementptr inbounds %struct.radeon_connector, ptr %call7.i.i, i32 0, i32 3
  %130 = ptrtoint ptr %ddc_bus297 to i32
  call void @__asan_store4_noabort(i32 %130)
  store ptr %call296, ptr %ddc_bus297, align 8
  %tobool299.not = icmp eq ptr %call296, null
  br i1 %tobool299.not, label %if.then300, label %if.then295.if.end305_crit_edge

if.then295.if.end305_crit_edge:                   ; preds = %if.then295
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end305

if.then300:                                       ; preds = %if.then295
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.12) #7
  br label %if.end305

if.end305:                                        ; preds = %if.then300, %if.then295.if.end305_crit_edge, %if.end290.if.end305_crit_edge
  %ddc.3 = phi ptr [ null, %if.then300 ], [ null, %if.end290.if.end305_crit_edge ], [ %call296, %if.then295.if.end305_crit_edge ]
  %call307 = tail call i32 @drm_connector_init_with_ddc(ptr noundef %dev, ptr noundef nonnull %call7.i.i, ptr noundef nonnull @radeon_dvi_connector_funcs, i32 noundef %connector_type, ptr noundef %ddc.3) #7
  %helper_private.i1048 = getelementptr inbounds %struct.drm_connector, ptr %call7.i.i, i32 0, i32 35
  %131 = ptrtoint ptr %helper_private.i1048 to i32
  call void @__asan_store4_noabort(i32 %131)
  store ptr @radeon_dvi_connector_helper_funcs, ptr %helper_private.i1048, align 4
  %base310 = getelementptr inbounds %struct.drm_connector, ptr %call7.i.i, i32 0, i32 6
  %coherent_mode_property = getelementptr inbounds %struct.radeon_device, ptr %1, i32 0, i32 44, i32 6
  %132 = ptrtoint ptr %coherent_mode_property to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %coherent_mode_property, align 4
  tail call void @drm_object_attach_property(ptr noundef %base310, ptr noundef %133, i64 noundef 1) #7
  %family312 = getelementptr inbounds %struct.radeon_device, ptr %1, i32 0, i32 6
  %134 = ptrtoint ptr %family312 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %family312, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %135)
  %cmp313 = icmp ugt i32 %135, 17
  br i1 %cmp313, label %if.then315, label %if.end305.if.end336_crit_edge

if.end305.if.end336_crit_edge:                    ; preds = %if.end305
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end336

if.then315:                                       ; preds = %if.end305
  call void @__sanitizer_cov_trace_pc() #9
  %underscan_property319 = getelementptr inbounds %struct.radeon_device, ptr %1, i32 0, i32 44, i32 10
  %136 = ptrtoint ptr %underscan_property319 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %underscan_property319, align 4
  tail call void @drm_object_attach_property(ptr noundef %base310, ptr noundef %137, i64 noundef 0) #7
  %underscan_hborder_property323 = getelementptr inbounds %struct.radeon_device, ptr %1, i32 0, i32 44, i32 11
  %138 = ptrtoint ptr %underscan_hborder_property323 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %underscan_hborder_property323, align 4
  tail call void @drm_object_attach_property(ptr noundef %base310, ptr noundef %139, i64 noundef 0) #7
  %underscan_vborder_property327 = getelementptr inbounds %struct.radeon_device, ptr %1, i32 0, i32 44, i32 12
  %140 = ptrtoint ptr %underscan_vborder_property327 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %underscan_vborder_property327, align 4
  tail call void @drm_object_attach_property(ptr noundef %base310, ptr noundef %141, i64 noundef 0) #7
  %dither_property331 = getelementptr inbounds %struct.radeon_device, ptr %1, i32 0, i32 44, i32 14
  %142 = ptrtoint ptr %dither_property331 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %dither_property331, align 4
  tail call void @drm_object_attach_property(ptr noundef %base310, ptr noundef %143, i64 noundef 0) #7
  %scaling_mode_property335 = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 30, i32 73
  %144 = ptrtoint ptr %scaling_mode_property335 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %scaling_mode_property335, align 4
  tail call void @drm_object_attach_property(ptr noundef %base310, ptr noundef %145, i64 noundef 0) #7
  br label %if.end336

if.end336:                                        ; preds = %if.then315, %if.end305.if.end336_crit_edge
  %146 = ptrtoint ptr %family312 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %family312, align 4
  %.off1034 = add i32 %147, -18
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.off1034)
  %switch1035 = icmp ult i32 %.off1034, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 26, i32 %147)
  %cmp350 = icmp ugt i32 %147, 26
  %or.cond = or i1 %cmp350, %switch1035
  br i1 %or.cond, label %land.lhs.true352, label %if.end336.if.end361_crit_edge

if.end336.if.end361_crit_edge:                    ; preds = %if.end336
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end361

land.lhs.true352:                                 ; preds = %if.end336
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @radeon_audio to i32))
  %148 = load i32, ptr @radeon_audio, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %148)
  %cmp353.not = icmp eq i32 %148, 0
  br i1 %cmp353.not, label %land.lhs.true352.if.end361_crit_edge, label %if.then355

land.lhs.true352.if.end361_crit_edge:             ; preds = %land.lhs.true352
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end361

if.then355:                                       ; preds = %land.lhs.true352
  call void @__sanitizer_cov_trace_pc() #9
  %audio_property359 = getelementptr inbounds %struct.radeon_device, ptr %1, i32 0, i32 44, i32 13
  %149 = ptrtoint ptr %audio_property359 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %audio_property359, align 4
  tail call void @drm_object_attach_property(ptr noundef %base310, ptr noundef %150, i64 noundef 2) #7
  %audio360 = getelementptr inbounds %struct.radeon_connector, ptr %call7.i.i, i32 0, i32 15
  %151 = ptrtoint ptr %audio360 to i32
  call void @__asan_store4_noabort(i32 %151)
  store i32 2, ptr %audio360, align 8
  br label %if.end361

if.end361:                                        ; preds = %if.then355, %land.lhs.true352.if.end361_crit_edge, %if.end336.if.end361_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %connector_type)
  %cmp362 = icmp eq i32 %connector_type, 2
  br i1 %cmp362, label %if.then364, label %if.end361.if.end370_crit_edge

if.end361.if.end370_crit_edge:                    ; preds = %if.end361
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end370

if.then364:                                       ; preds = %if.end361
  call void @__sanitizer_cov_trace_pc() #9
  %dac_load_detect365 = getelementptr inbounds %struct.radeon_connector, ptr %call7.i.i, i32 0, i32 8
  %152 = ptrtoint ptr %dac_load_detect365 to i32
  call void @__asan_store1_noabort(i32 %152)
  store i8 1, ptr %dac_load_detect365, align 8
  %load_detect_property369 = getelementptr inbounds %struct.radeon_device, ptr %1, i32 0, i32 44, i32 7
  %153 = ptrtoint ptr %load_detect_property369 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %load_detect_property369, align 4
  tail call void @drm_object_attach_property(ptr noundef %base310, ptr noundef %154, i64 noundef 1) #7
  br label %if.end370

if.end370:                                        ; preds = %if.then364, %if.end361.if.end370_crit_edge
  %155 = ptrtoint ptr %family312 to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %family312, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 46, i32 %156)
  %cmp372 = icmp ugt i32 %156, 46
  br i1 %cmp372, label %if.then374, label %if.end370.if.end379_crit_edge

if.end370.if.end379_crit_edge:                    ; preds = %if.end370
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end379

if.then374:                                       ; preds = %if.end370
  call void @__sanitizer_cov_trace_pc() #9
  %output_csc_property378 = getelementptr inbounds %struct.radeon_device, ptr %1, i32 0, i32 44, i32 15
  %157 = ptrtoint ptr %output_csc_property378 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %output_csc_property378, align 4
  tail call void @drm_object_attach_property(ptr noundef %base310, ptr noundef %158, i64 noundef 0) #7
  br label %if.end379

if.end379:                                        ; preds = %if.then374, %if.end370.if.end379_crit_edge
  %interlace_allowed380 = getelementptr inbounds %struct.drm_connector, ptr %call7.i.i, i32 0, i32 12
  %159 = ptrtoint ptr %interlace_allowed380 to i32
  call void @__asan_store1_noabort(i32 %159)
  store i8 1, ptr %interlace_allowed380, align 8
  %doublescan_allowed384 = getelementptr inbounds %struct.drm_connector, ptr %call7.i.i, i32 0, i32 13
  br i1 %cmp362, label %if.then383, label %if.else385

if.then383:                                       ; preds = %if.end379
  call void @__sanitizer_cov_trace_pc() #9
  %160 = ptrtoint ptr %doublescan_allowed384 to i32
  call void @__asan_store1_noabort(i32 %160)
  store i8 1, ptr %doublescan_allowed384, align 1
  br label %if.end647

if.else385:                                       ; preds = %if.end379
  call void @__sanitizer_cov_trace_pc() #9
  %161 = ptrtoint ptr %doublescan_allowed384 to i32
  call void @__asan_store1_noabort(i32 %161)
  store i8 0, ptr %doublescan_allowed384, align 1
  br label %if.end647

sw.bb388:                                         ; preds = %if.else197.sw.bb388_crit_edge, %if.else197.sw.bb388_crit_edge1103
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %162 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i1049 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %162, i32 noundef 3520, i32 noundef 32) #10
  %tobool390.not = icmp eq ptr %call7.i.i1049, null
  br i1 %tobool390.not, label %sw.bb388.failed_crit_edge, label %if.end392

sw.bb388.failed_crit_edge:                        ; preds = %sw.bb388
  call void @__sanitizer_cov_trace_pc() #9
  br label %failed

if.end392:                                        ; preds = %sw.bb388
  %163 = ptrtoint ptr %call7.i.i1049 to i32
  call void @__asan_store4_noabort(i32 %163)
  store i32 %igp_lane_info, ptr %call7.i.i1049, align 8
  %con_priv394 = getelementptr inbounds %struct.radeon_connector, ptr %call7.i.i, i32 0, i32 7
  %164 = ptrtoint ptr %con_priv394 to i32
  call void @__asan_store4_noabort(i32 %164)
  store ptr %call7.i.i1049, ptr %con_priv394, align 4
  %165 = ptrtoint ptr %i2c_bus to i32
  call void @__asan_load1_noabort(i32 %165)
  %166 = load i8, ptr %i2c_bus, align 4, !range !87
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %166)
  %tobool396.not = icmp eq i8 %166, 0
  br i1 %tobool396.not, label %if.end392.if.end407_crit_edge, label %if.then397

if.end392.if.end407_crit_edge:                    ; preds = %if.end392
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end407

if.then397:                                       ; preds = %if.end392
  %call398 = tail call ptr @radeon_i2c_lookup(ptr noundef %1, ptr noundef %i2c_bus) #7
  %ddc_bus399 = getelementptr inbounds %struct.radeon_connector, ptr %call7.i.i, i32 0, i32 3
  %167 = ptrtoint ptr %ddc_bus399 to i32
  call void @__asan_store4_noabort(i32 %167)
  store ptr %call398, ptr %ddc_bus399, align 8
  %tobool401.not = icmp eq ptr %call398, null
  br i1 %tobool401.not, label %if.then402, label %if.then397.if.end407_crit_edge

if.then397.if.end407_crit_edge:                   ; preds = %if.then397
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end407

if.then402:                                       ; preds = %if.then397
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.13) #7
  br label %if.end407

if.end407:                                        ; preds = %if.then402, %if.then397.if.end407_crit_edge, %if.end392.if.end407_crit_edge
  %ddc.4 = phi ptr [ null, %if.then402 ], [ null, %if.end392.if.end407_crit_edge ], [ %call398, %if.then397.if.end407_crit_edge ]
  %call409 = tail call i32 @drm_connector_init_with_ddc(ptr noundef %dev, ptr noundef nonnull %call7.i.i, ptr noundef nonnull @radeon_dvi_connector_funcs, i32 noundef %connector_type, ptr noundef %ddc.4) #7
  %helper_private.i1050 = getelementptr inbounds %struct.drm_connector, ptr %call7.i.i, i32 0, i32 35
  %168 = ptrtoint ptr %helper_private.i1050 to i32
  call void @__asan_store4_noabort(i32 %168)
  store ptr @radeon_dvi_connector_helper_funcs, ptr %helper_private.i1050, align 4
  %base412 = getelementptr inbounds %struct.drm_connector, ptr %call7.i.i, i32 0, i32 6
  %coherent_mode_property414 = getelementptr inbounds %struct.radeon_device, ptr %1, i32 0, i32 44, i32 6
  %169 = ptrtoint ptr %coherent_mode_property414 to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %coherent_mode_property414, align 4
  tail call void @drm_object_attach_property(ptr noundef %base412, ptr noundef %170, i64 noundef 1) #7
  %family415 = getelementptr inbounds %struct.radeon_device, ptr %1, i32 0, i32 6
  %171 = ptrtoint ptr %family415 to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load i32, ptr %family415, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %172)
  %cmp416 = icmp ugt i32 %172, 17
  br i1 %cmp416, label %if.then418, label %if.end407.if.end439_crit_edge

if.end407.if.end439_crit_edge:                    ; preds = %if.end407
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end439

if.then418:                                       ; preds = %if.end407
  call void @__sanitizer_cov_trace_pc() #9
  %underscan_property422 = getelementptr inbounds %struct.radeon_device, ptr %1, i32 0, i32 44, i32 10
  %173 = ptrtoint ptr %underscan_property422 to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %underscan_property422, align 4
  tail call void @drm_object_attach_property(ptr noundef %base412, ptr noundef %174, i64 noundef 0) #7
  %underscan_hborder_property426 = getelementptr inbounds %struct.radeon_device, ptr %1, i32 0, i32 44, i32 11
  %175 = ptrtoint ptr %underscan_hborder_property426 to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %underscan_hborder_property426, align 4
  tail call void @drm_object_attach_property(ptr noundef %base412, ptr noundef %176, i64 noundef 0) #7
  %underscan_vborder_property430 = getelementptr inbounds %struct.radeon_device, ptr %1, i32 0, i32 44, i32 12
  %177 = ptrtoint ptr %underscan_vborder_property430 to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %underscan_vborder_property430, align 4
  tail call void @drm_object_attach_property(ptr noundef %base412, ptr noundef %178, i64 noundef 0) #7
  %dither_property434 = getelementptr inbounds %struct.radeon_device, ptr %1, i32 0, i32 44, i32 14
  %179 = ptrtoint ptr %dither_property434 to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %dither_property434, align 4
  tail call void @drm_object_attach_property(ptr noundef %base412, ptr noundef %180, i64 noundef 0) #7
  %scaling_mode_property438 = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 30, i32 73
  %181 = ptrtoint ptr %scaling_mode_property438 to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %scaling_mode_property438, align 4
  tail call void @drm_object_attach_property(ptr noundef %base412, ptr noundef %182, i64 noundef 0) #7
  br label %if.end439

if.end439:                                        ; preds = %if.then418, %if.end407.if.end439_crit_edge
  %183 = ptrtoint ptr %family415 to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load i32, ptr %family415, align 4
  %.off1036 = add i32 %184, -18
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.off1036)
  %switch1037 = icmp ult i32 %.off1036, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 26, i32 %184)
  %cmp453 = icmp ugt i32 %184, 26
  %or.cond1038 = or i1 %cmp453, %switch1037
  br i1 %or.cond1038, label %land.lhs.true455, label %if.end439.if.end473_crit_edge

if.end439.if.end473_crit_edge:                    ; preds = %if.end439
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end473

land.lhs.true455:                                 ; preds = %if.end439
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @radeon_audio to i32))
  %185 = load i32, ptr @radeon_audio, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %185)
  %cmp456.not = icmp eq i32 %185, 0
  br i1 %cmp456.not, label %land.lhs.true455.if.end464_crit_edge, label %if.then458

land.lhs.true455.if.end464_crit_edge:             ; preds = %land.lhs.true455
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end464

if.then458:                                       ; preds = %land.lhs.true455
  call void @__sanitizer_cov_trace_pc() #9
  %audio_property462 = getelementptr inbounds %struct.radeon_device, ptr %1, i32 0, i32 44, i32 13
  %186 = ptrtoint ptr %audio_property462 to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %audio_property462, align 4
  tail call void @drm_object_attach_property(ptr noundef %base412, ptr noundef %187, i64 noundef 2) #7
  %audio463 = getelementptr inbounds %struct.radeon_connector, ptr %call7.i.i, i32 0, i32 15
  %188 = ptrtoint ptr %audio463 to i32
  call void @__asan_store4_noabort(i32 %188)
  store i32 2, ptr %audio463, align 8
  br label %if.end464

if.end464:                                        ; preds = %if.then458, %land.lhs.true455.if.end464_crit_edge
  %189 = ptrtoint ptr %family415 to i32
  call void @__asan_load4_noabort(i32 %189)
  %.pr1062 = load i32, ptr %family415, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 46, i32 %.pr1062)
  %cmp466 = icmp ugt i32 %.pr1062, 46
  br i1 %cmp466, label %if.then468, label %if.end464.if.end473_crit_edge

if.end464.if.end473_crit_edge:                    ; preds = %if.end464
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end473

if.then468:                                       ; preds = %if.end464
  call void @__sanitizer_cov_trace_pc() #9
  %output_csc_property472 = getelementptr inbounds %struct.radeon_device, ptr %1, i32 0, i32 44, i32 15
  %190 = ptrtoint ptr %output_csc_property472 to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %output_csc_property472, align 4
  tail call void @drm_object_attach_property(ptr noundef %base412, ptr noundef %191, i64 noundef 0) #7
  br label %if.end473

if.end473:                                        ; preds = %if.then468, %if.end464.if.end473_crit_edge, %if.end439.if.end473_crit_edge
  %interlace_allowed474 = getelementptr inbounds %struct.drm_connector, ptr %call7.i.i, i32 0, i32 12
  %192 = ptrtoint ptr %interlace_allowed474 to i32
  call void @__asan_store1_noabort(i32 %192)
  store i8 1, ptr %interlace_allowed474, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %connector_type)
  %cmp475 = icmp eq i32 %connector_type, 12
  %doublescan_allowed478 = getelementptr inbounds %struct.drm_connector, ptr %call7.i.i, i32 0, i32 13
  br i1 %cmp475, label %if.then477, label %if.else479

if.then477:                                       ; preds = %if.end473
  call void @__sanitizer_cov_trace_pc() #9
  %193 = ptrtoint ptr %doublescan_allowed478 to i32
  call void @__asan_store1_noabort(i32 %193)
  store i8 1, ptr %doublescan_allowed478, align 1
  br label %if.end647

if.else479:                                       ; preds = %if.end473
  call void @__sanitizer_cov_trace_pc() #9
  %194 = ptrtoint ptr %doublescan_allowed478 to i32
  call void @__asan_store1_noabort(i32 %194)
  store i8 0, ptr %doublescan_allowed478, align 1
  br label %if.end647

sw.bb482:                                         ; preds = %if.else197
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %195 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i1051 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %195, i32 noundef 3520, i32 noundef 32) #10
  %tobool484.not = icmp eq ptr %call7.i.i1051, null
  br i1 %tobool484.not, label %sw.bb482.failed_crit_edge, label %if.end486

sw.bb482.failed_crit_edge:                        ; preds = %sw.bb482
  call void @__sanitizer_cov_trace_pc() #9
  br label %failed

if.end486:                                        ; preds = %sw.bb482
  %196 = ptrtoint ptr %call7.i.i1051 to i32
  call void @__asan_store4_noabort(i32 %196)
  store i32 %igp_lane_info, ptr %call7.i.i1051, align 8
  %con_priv488 = getelementptr inbounds %struct.radeon_connector, ptr %call7.i.i, i32 0, i32 7
  %197 = ptrtoint ptr %con_priv488 to i32
  call void @__asan_store4_noabort(i32 %197)
  store ptr %call7.i.i1051, ptr %con_priv488, align 4
  %198 = ptrtoint ptr %i2c_bus to i32
  call void @__asan_load1_noabort(i32 %198)
  %199 = load i8, ptr %i2c_bus, align 4, !range !87
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %199)
  %tobool490.not = icmp eq i8 %199, 0
  br i1 %tobool490.not, label %if.end486.if.end501_crit_edge, label %if.then491

if.end486.if.end501_crit_edge:                    ; preds = %if.end486
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end501

if.then491:                                       ; preds = %if.end486
  %call492 = tail call ptr @radeon_i2c_lookup(ptr noundef %1, ptr noundef %i2c_bus) #7
  %ddc_bus493 = getelementptr inbounds %struct.radeon_connector, ptr %call7.i.i, i32 0, i32 3
  %200 = ptrtoint ptr %ddc_bus493 to i32
  call void @__asan_store4_noabort(i32 %200)
  store ptr %call492, ptr %ddc_bus493, align 8
  %tobool495.not = icmp eq ptr %call492, null
  br i1 %tobool495.not, label %if.else499, label %if.then491.if.end501_crit_edge

if.then491.if.end501_crit_edge:                   ; preds = %if.then491
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end501

if.else499:                                       ; preds = %if.then491
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.9) #7
  br label %if.end501

if.end501:                                        ; preds = %if.else499, %if.then491.if.end501_crit_edge, %if.end486.if.end501_crit_edge
  %has_aux.1 = phi i1 [ false, %if.else499 ], [ false, %if.end486.if.end501_crit_edge ], [ true, %if.then491.if.end501_crit_edge ]
  %ddc.5 = phi ptr [ null, %if.else499 ], [ null, %if.end486.if.end501_crit_edge ], [ %call492, %if.then491.if.end501_crit_edge ]
  %call503 = tail call i32 @drm_connector_init_with_ddc(ptr noundef %dev, ptr noundef nonnull %call7.i.i, ptr noundef nonnull @radeon_dp_connector_funcs, i32 noundef 10, ptr noundef %ddc.5) #7
  %helper_private.i1052 = getelementptr inbounds %struct.drm_connector, ptr %call7.i.i, i32 0, i32 35
  %201 = ptrtoint ptr %helper_private.i1052 to i32
  call void @__asan_store4_noabort(i32 %201)
  store ptr @radeon_dp_connector_helper_funcs, ptr %helper_private.i1052, align 4
  %base506 = getelementptr inbounds %struct.drm_connector, ptr %call7.i.i, i32 0, i32 6
  %coherent_mode_property508 = getelementptr inbounds %struct.radeon_device, ptr %1, i32 0, i32 44, i32 6
  %202 = ptrtoint ptr %coherent_mode_property508 to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %coherent_mode_property508, align 4
  tail call void @drm_object_attach_property(ptr noundef %base506, ptr noundef %203, i64 noundef 1) #7
  %family509 = getelementptr inbounds %struct.radeon_device, ptr %1, i32 0, i32 6
  %204 = ptrtoint ptr %family509 to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load i32, ptr %family509, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %205)
  %cmp510 = icmp ugt i32 %205, 17
  br i1 %cmp510, label %if.then512, label %if.end501.if.end533_crit_edge

if.end501.if.end533_crit_edge:                    ; preds = %if.end501
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end533

if.then512:                                       ; preds = %if.end501
  call void @__sanitizer_cov_trace_pc() #9
  %underscan_property516 = getelementptr inbounds %struct.radeon_device, ptr %1, i32 0, i32 44, i32 10
  %206 = ptrtoint ptr %underscan_property516 to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load ptr, ptr %underscan_property516, align 4
  tail call void @drm_object_attach_property(ptr noundef %base506, ptr noundef %207, i64 noundef 0) #7
  %underscan_hborder_property520 = getelementptr inbounds %struct.radeon_device, ptr %1, i32 0, i32 44, i32 11
  %208 = ptrtoint ptr %underscan_hborder_property520 to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load ptr, ptr %underscan_hborder_property520, align 4
  tail call void @drm_object_attach_property(ptr noundef %base506, ptr noundef %209, i64 noundef 0) #7
  %underscan_vborder_property524 = getelementptr inbounds %struct.radeon_device, ptr %1, i32 0, i32 44, i32 12
  %210 = ptrtoint ptr %underscan_vborder_property524 to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load ptr, ptr %underscan_vborder_property524, align 4
  tail call void @drm_object_attach_property(ptr noundef %base506, ptr noundef %211, i64 noundef 0) #7
  %dither_property528 = getelementptr inbounds %struct.radeon_device, ptr %1, i32 0, i32 44, i32 14
  %212 = ptrtoint ptr %dither_property528 to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load ptr, ptr %dither_property528, align 4
  tail call void @drm_object_attach_property(ptr noundef %base506, ptr noundef %213, i64 noundef 0) #7
  %scaling_mode_property532 = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 30, i32 73
  %214 = ptrtoint ptr %scaling_mode_property532 to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load ptr, ptr %scaling_mode_property532, align 4
  tail call void @drm_object_attach_property(ptr noundef %base506, ptr noundef %215, i64 noundef 0) #7
  br label %if.end533

if.end533:                                        ; preds = %if.then512, %if.end501.if.end533_crit_edge
  %216 = ptrtoint ptr %family509 to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load i32, ptr %family509, align 4
  %.off1039 = add i32 %217, -18
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.off1039)
  %switch1040 = icmp ult i32 %.off1039, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 26, i32 %217)
  %cmp547 = icmp ugt i32 %217, 26
  %or.cond1041 = or i1 %cmp547, %switch1040
  br i1 %or.cond1041, label %land.lhs.true549, label %if.end533.if.end567_crit_edge

if.end533.if.end567_crit_edge:                    ; preds = %if.end533
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end567

land.lhs.true549:                                 ; preds = %if.end533
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @radeon_audio to i32))
  %218 = load i32, ptr @radeon_audio, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %218)
  %cmp550.not = icmp eq i32 %218, 0
  br i1 %cmp550.not, label %land.lhs.true549.if.end558_crit_edge, label %if.then552

land.lhs.true549.if.end558_crit_edge:             ; preds = %land.lhs.true549
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end558

if.then552:                                       ; preds = %land.lhs.true549
  call void @__sanitizer_cov_trace_pc() #9
  %audio_property556 = getelementptr inbounds %struct.radeon_device, ptr %1, i32 0, i32 44, i32 13
  %219 = ptrtoint ptr %audio_property556 to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load ptr, ptr %audio_property556, align 4
  tail call void @drm_object_attach_property(ptr noundef %base506, ptr noundef %220, i64 noundef 2) #7
  %audio557 = getelementptr inbounds %struct.radeon_connector, ptr %call7.i.i, i32 0, i32 15
  %221 = ptrtoint ptr %audio557 to i32
  call void @__asan_store4_noabort(i32 %221)
  store i32 2, ptr %audio557, align 8
  br label %if.end558

if.end558:                                        ; preds = %if.then552, %land.lhs.true549.if.end558_crit_edge
  %222 = ptrtoint ptr %family509 to i32
  call void @__asan_load4_noabort(i32 %222)
  %.pr1064 = load i32, ptr %family509, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 46, i32 %.pr1064)
  %cmp560 = icmp ugt i32 %.pr1064, 46
  br i1 %cmp560, label %if.then562, label %if.end558.if.end567_crit_edge

if.end558.if.end567_crit_edge:                    ; preds = %if.end558
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end567

if.then562:                                       ; preds = %if.end558
  call void @__sanitizer_cov_trace_pc() #9
  %output_csc_property566 = getelementptr inbounds %struct.radeon_device, ptr %1, i32 0, i32 44, i32 15
  %223 = ptrtoint ptr %output_csc_property566 to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load ptr, ptr %output_csc_property566, align 4
  tail call void @drm_object_attach_property(ptr noundef %base506, ptr noundef %224, i64 noundef 0) #7
  br label %if.end567

if.end567:                                        ; preds = %if.then562, %if.end558.if.end567_crit_edge, %if.end533.if.end567_crit_edge
  %interlace_allowed568 = getelementptr inbounds %struct.drm_connector, ptr %call7.i.i, i32 0, i32 12
  %225 = ptrtoint ptr %interlace_allowed568 to i32
  call void @__asan_store1_noabort(i32 %225)
  store i8 1, ptr %interlace_allowed568, align 8
  %doublescan_allowed569 = getelementptr inbounds %struct.drm_connector, ptr %call7.i.i, i32 0, i32 13
  %226 = ptrtoint ptr %doublescan_allowed569 to i32
  call void @__asan_store1_noabort(i32 %226)
  store i8 0, ptr %doublescan_allowed569, align 1
  br label %if.end647

sw.bb570:                                         ; preds = %if.else197
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %227 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i1053 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %227, i32 noundef 3520, i32 noundef 32) #10
  %tobool572.not = icmp eq ptr %call7.i.i1053, null
  br i1 %tobool572.not, label %sw.bb570.failed_crit_edge, label %if.end574

sw.bb570.failed_crit_edge:                        ; preds = %sw.bb570
  call void @__sanitizer_cov_trace_pc() #9
  br label %failed

if.end574:                                        ; preds = %sw.bb570
  %228 = ptrtoint ptr %call7.i.i1053 to i32
  call void @__asan_store4_noabort(i32 %228)
  store i32 %igp_lane_info, ptr %call7.i.i1053, align 8
  %con_priv576 = getelementptr inbounds %struct.radeon_connector, ptr %call7.i.i, i32 0, i32 7
  %229 = ptrtoint ptr %con_priv576 to i32
  call void @__asan_store4_noabort(i32 %229)
  store ptr %call7.i.i1053, ptr %con_priv576, align 4
  %230 = ptrtoint ptr %i2c_bus to i32
  call void @__asan_load1_noabort(i32 %230)
  %231 = load i8, ptr %i2c_bus, align 4, !range !87
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %231)
  %tobool578.not = icmp eq i8 %231, 0
  br i1 %tobool578.not, label %if.end574.if.end589_crit_edge, label %if.then579

if.end574.if.end589_crit_edge:                    ; preds = %if.end574
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end589

if.then579:                                       ; preds = %if.end574
  %call580 = tail call ptr @radeon_i2c_lookup(ptr noundef %1, ptr noundef %i2c_bus) #7
  %ddc_bus581 = getelementptr inbounds %struct.radeon_connector, ptr %call7.i.i, i32 0, i32 3
  %232 = ptrtoint ptr %ddc_bus581 to i32
  call void @__asan_store4_noabort(i32 %232)
  store ptr %call580, ptr %ddc_bus581, align 8
  %tobool583.not = icmp eq ptr %call580, null
  br i1 %tobool583.not, label %if.else587, label %if.then579.if.end589_crit_edge

if.then579.if.end589_crit_edge:                   ; preds = %if.then579
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end589

if.else587:                                       ; preds = %if.then579
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.9) #7
  br label %if.end589

if.end589:                                        ; preds = %if.else587, %if.then579.if.end589_crit_edge, %if.end574.if.end589_crit_edge
  %has_aux.2 = phi i1 [ false, %if.else587 ], [ false, %if.end574.if.end589_crit_edge ], [ true, %if.then579.if.end589_crit_edge ]
  %ddc.6 = phi ptr [ null, %if.else587 ], [ null, %if.end574.if.end589_crit_edge ], [ %call580, %if.then579.if.end589_crit_edge ]
  %call591 = tail call i32 @drm_connector_init_with_ddc(ptr noundef %dev, ptr noundef nonnull %call7.i.i, ptr noundef nonnull @radeon_edp_connector_funcs, i32 noundef 14, ptr noundef %ddc.6) #7
  %helper_private.i1054 = getelementptr inbounds %struct.drm_connector, ptr %call7.i.i, i32 0, i32 35
  %233 = ptrtoint ptr %helper_private.i1054 to i32
  call void @__asan_store4_noabort(i32 %233)
  store ptr @radeon_dp_connector_helper_funcs, ptr %helper_private.i1054, align 4
  %base594 = getelementptr inbounds %struct.drm_connector, ptr %call7.i.i, i32 0, i32 6
  %scaling_mode_property596 = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 30, i32 73
  %234 = ptrtoint ptr %scaling_mode_property596 to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load ptr, ptr %scaling_mode_property596, align 4
  tail call void @drm_object_attach_property(ptr noundef %base594, ptr noundef %235, i64 noundef 1) #7
  %interlace_allowed597 = getelementptr inbounds %struct.drm_connector, ptr %call7.i.i, i32 0, i32 12
  %236 = ptrtoint ptr %interlace_allowed597 to i32
  call void @__asan_store1_noabort(i32 %236)
  store i8 0, ptr %interlace_allowed597, align 8
  %doublescan_allowed598 = getelementptr inbounds %struct.drm_connector, ptr %call7.i.i, i32 0, i32 13
  %237 = ptrtoint ptr %doublescan_allowed598 to i32
  call void @__asan_store1_noabort(i32 %237)
  store i8 0, ptr %doublescan_allowed598, align 1
  br label %if.end647

sw.bb599:                                         ; preds = %if.else197.sw.bb599_crit_edge, %if.else197.sw.bb599_crit_edge1104, %if.else197.sw.bb599_crit_edge1105
  %call601 = tail call i32 @drm_connector_init_with_ddc(ptr noundef %dev, ptr noundef nonnull %call7.i.i, ptr noundef nonnull @radeon_tv_connector_funcs, i32 noundef %connector_type, ptr noundef null) #7
  %helper_private.i1055 = getelementptr inbounds %struct.drm_connector, ptr %call7.i.i, i32 0, i32 35
  %238 = ptrtoint ptr %helper_private.i1055 to i32
  call void @__asan_store4_noabort(i32 %238)
  store ptr @radeon_tv_connector_helper_funcs, ptr %helper_private.i1055, align 4
  %dac_load_detect603 = getelementptr inbounds %struct.radeon_connector, ptr %call7.i.i, i32 0, i32 8
  %239 = ptrtoint ptr %dac_load_detect603 to i32
  call void @__asan_store1_noabort(i32 %239)
  store i8 1, ptr %dac_load_detect603, align 8
  %base605 = getelementptr inbounds %struct.drm_connector, ptr %call7.i.i, i32 0, i32 6
  %load_detect_property607 = getelementptr inbounds %struct.radeon_device, ptr %1, i32 0, i32 44, i32 7
  %240 = ptrtoint ptr %load_detect_property607 to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load ptr, ptr %load_detect_property607, align 4
  tail call void @drm_object_attach_property(ptr noundef %base605, ptr noundef %241, i64 noundef 1) #7
  %tv_std_property = getelementptr inbounds %struct.radeon_device, ptr %1, i32 0, i32 44, i32 8
  %242 = ptrtoint ptr %tv_std_property to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load ptr, ptr %tv_std_property, align 4
  %call611 = tail call i32 @radeon_atombios_get_tv_info(ptr noundef %1) #7
  %conv612 = zext i32 %call611 to i64
  tail call void @drm_object_attach_property(ptr noundef %base605, ptr noundef %243, i64 noundef %conv612) #7
  br label %if.then652.sink.split

sw.bb617:                                         ; preds = %if.else197
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %244 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i1056 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %244, i32 noundef 3520, i32 noundef 32) #10
  %tobool619.not = icmp eq ptr %call7.i.i1056, null
  br i1 %tobool619.not, label %sw.bb617.failed_crit_edge, label %if.end621

sw.bb617.failed_crit_edge:                        ; preds = %sw.bb617
  call void @__sanitizer_cov_trace_pc() #9
  br label %failed

if.end621:                                        ; preds = %sw.bb617
  %245 = ptrtoint ptr %call7.i.i1056 to i32
  call void @__asan_store4_noabort(i32 %245)
  store i32 %igp_lane_info, ptr %call7.i.i1056, align 8
  %con_priv623 = getelementptr inbounds %struct.radeon_connector, ptr %call7.i.i, i32 0, i32 7
  %246 = ptrtoint ptr %con_priv623 to i32
  call void @__asan_store4_noabort(i32 %246)
  store ptr %call7.i.i1056, ptr %con_priv623, align 4
  %247 = ptrtoint ptr %i2c_bus to i32
  call void @__asan_load1_noabort(i32 %247)
  %248 = load i8, ptr %i2c_bus, align 4, !range !87
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %248)
  %tobool625.not = icmp eq i8 %248, 0
  br i1 %tobool625.not, label %if.end621.if.end636_crit_edge, label %if.then626

if.end621.if.end636_crit_edge:                    ; preds = %if.end621
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end636

if.then626:                                       ; preds = %if.end621
  %call627 = tail call ptr @radeon_i2c_lookup(ptr noundef %1, ptr noundef %i2c_bus) #7
  %ddc_bus628 = getelementptr inbounds %struct.radeon_connector, ptr %call7.i.i, i32 0, i32 3
  %249 = ptrtoint ptr %ddc_bus628 to i32
  call void @__asan_store4_noabort(i32 %249)
  store ptr %call627, ptr %ddc_bus628, align 8
  %tobool630.not = icmp eq ptr %call627, null
  br i1 %tobool630.not, label %if.then631, label %if.then626.if.end636_crit_edge

if.then626.if.end636_crit_edge:                   ; preds = %if.then626
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end636

if.then631:                                       ; preds = %if.then626
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.14) #7
  br label %if.end636

if.end636:                                        ; preds = %if.then631, %if.then626.if.end636_crit_edge, %if.end621.if.end636_crit_edge
  %ddc.7 = phi ptr [ null, %if.then631 ], [ null, %if.end621.if.end636_crit_edge ], [ %call627, %if.then626.if.end636_crit_edge ]
  %call638 = tail call i32 @drm_connector_init_with_ddc(ptr noundef %dev, ptr noundef nonnull %call7.i.i, ptr noundef nonnull @radeon_lvds_connector_funcs, i32 noundef 7, ptr noundef %ddc.7) #7
  %helper_private.i1057 = getelementptr inbounds %struct.drm_connector, ptr %call7.i.i, i32 0, i32 35
  %250 = ptrtoint ptr %helper_private.i1057 to i32
  call void @__asan_store4_noabort(i32 %250)
  store ptr @radeon_lvds_connector_helper_funcs, ptr %helper_private.i1057, align 4
  %base641 = getelementptr inbounds %struct.drm_connector, ptr %call7.i.i, i32 0, i32 6
  %scaling_mode_property643 = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 30, i32 73
  %251 = ptrtoint ptr %scaling_mode_property643 to i32
  call void @__asan_load4_noabort(i32 %251)
  %252 = load ptr, ptr %scaling_mode_property643, align 4
  tail call void @drm_object_attach_property(ptr noundef %base641, ptr noundef %252, i64 noundef 1) #7
  %interlace_allowed644 = getelementptr inbounds %struct.drm_connector, ptr %call7.i.i, i32 0, i32 12
  %253 = ptrtoint ptr %interlace_allowed644 to i32
  call void @__asan_store1_noabort(i32 %253)
  store i8 0, ptr %interlace_allowed644, align 8
  %doublescan_allowed645 = getelementptr inbounds %struct.drm_connector, ptr %call7.i.i, i32 0, i32 13
  %254 = ptrtoint ptr %doublescan_allowed645 to i32
  call void @__asan_store1_noabort(i32 %254)
  store i8 0, ptr %doublescan_allowed645, align 1
  br label %if.end647

if.end647:                                        ; preds = %if.end636, %if.end589, %if.end567, %if.else479, %if.then477, %if.else385, %if.then383, %if.else197.if.end647_crit_edge, %sw.bb186, %if.then179, %if.end176.if.end647_crit_edge, %if.end176.thread, %if.then128, %sw.default117.if.end647_crit_edge
  %has_aux.3.off0.ph = phi i1 [ %has_aux.0, %if.end176.thread ], [ false, %if.else385 ], [ false, %if.then383 ], [ false, %if.else479 ], [ false, %if.then477 ], [ %has_aux.1, %if.end567 ], [ %has_aux.2, %if.end589 ], [ false, %if.end636 ], [ false, %if.else197.if.end647_crit_edge ], [ %has_aux.0, %sw.bb186 ], [ %has_aux.0, %if.end176.if.end647_crit_edge ], [ %has_aux.0, %if.then179 ], [ %has_aux.0, %sw.default117.if.end647_crit_edge ], [ %has_aux.0, %if.then128 ]
  %subpixel_order.0.ph = phi i32 [ 1, %if.end176.thread ], [ 1, %if.else385 ], [ 1, %if.then383 ], [ 1, %if.else479 ], [ 1, %if.then477 ], [ 1, %if.end567 ], [ 1, %if.end589 ], [ 1, %if.end636 ], [ 5, %if.else197.if.end647_crit_edge ], [ 1, %sw.bb186 ], [ 1, %if.end176.if.end647_crit_edge ], [ 1, %if.then179 ], [ 5, %sw.default117.if.end647_crit_edge ], [ 5, %if.then128 ]
  %255 = ptrtoint ptr %hpd82 to i32
  call void @__asan_load4_noabort(i32 %255)
  %.pr1066 = load i32, ptr %hpd82, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %.pr1066)
  %cmp650 = icmp eq i32 %.pr1066, 255
  br i1 %cmp650, label %if.end647.if.then652_crit_edge, label %if.else657

if.end647.if.then652_crit_edge:                   ; preds = %if.end647
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then652

if.then652.sink.split:                            ; preds = %sw.bb599, %if.then276, %if.end272.if.then652.sink.split_crit_edge, %if.end255.if.then652.sink.split_crit_edge, %if.then232, %if.end228.if.then652.sink.split_crit_edge, %if.end211.if.then652.sink.split_crit_edge
  %.sink1091 = phi i8 [ 0, %sw.bb599 ], [ 1, %if.end211.if.then652.sink.split_crit_edge ], [ 1, %if.then232 ], [ 1, %if.end228.if.then652.sink.split_crit_edge ], [ 1, %if.end255.if.then652.sink.split_crit_edge ], [ 1, %if.then276 ], [ 1, %if.end272.if.then652.sink.split_crit_edge ]
  %256 = ptrtoint ptr %hpd82 to i32
  call void @__asan_store4_noabort(i32 %256)
  store i32 255, ptr %hpd82, align 8
  %interlace_allowed615 = getelementptr inbounds %struct.drm_connector, ptr %call7.i.i, i32 0, i32 12
  %257 = ptrtoint ptr %interlace_allowed615 to i32
  call void @__asan_store1_noabort(i32 %257)
  store i8 %.sink1091, ptr %interlace_allowed615, align 8
  %doublescan_allowed616 = getelementptr inbounds %struct.drm_connector, ptr %call7.i.i, i32 0, i32 13
  %258 = ptrtoint ptr %doublescan_allowed616 to i32
  call void @__asan_store1_noabort(i32 %258)
  store i8 %.sink1091, ptr %doublescan_allowed616, align 1
  br label %if.then652

if.then652:                                       ; preds = %if.then652.sink.split, %if.end647.if.then652_crit_edge
  %subpixel_order.01073 = phi i32 [ %subpixel_order.0.ph, %if.end647.if.then652_crit_edge ], [ 5, %if.then652.sink.split ]
  %has_aux.3.off01071 = phi i1 [ %has_aux.3.off0.ph, %if.end647.if.then652_crit_edge ], [ false, %if.then652.sink.split ]
  %259 = ptrtoint ptr %i2c_bus to i32
  call void @__asan_load1_noabort(i32 %259)
  %260 = load i8, ptr %i2c_bus, align 4, !range !87
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %260)
  %tobool654.not = icmp eq i8 %260, 0
  br i1 %tobool654.not, label %if.end659, label %if.then655

if.then655:                                       ; preds = %if.then652
  %polled = getelementptr inbounds %struct.drm_connector, ptr %call7.i.i, i32 0, i32 33
  %261 = ptrtoint ptr %polled to i32
  call void @__asan_store1_noabort(i32 %261)
  store i8 6, ptr %polled, align 4
  %subpixel_order6601074 = getelementptr inbounds %struct.drm_connector, ptr %call7.i.i, i32 0, i32 20, i32 3
  %262 = ptrtoint ptr %subpixel_order6601074 to i32
  call void @__asan_store4_noabort(i32 %262)
  store i32 %subpixel_order.01073, ptr %subpixel_order6601074, align 4
  %call6611075 = tail call i32 @drm_connector_register(ptr noundef nonnull %call7.i.i) #7
  br i1 %has_aux.3.off01071, label %if.then655.if.then663_crit_edge, label %if.then655.cleanup_crit_edge

if.then655.cleanup_crit_edge:                     ; preds = %if.then655
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then655.if.then663_crit_edge:                  ; preds = %if.then655
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then663

if.else657:                                       ; preds = %if.end647
  %polled658 = getelementptr inbounds %struct.drm_connector, ptr %call7.i.i, i32 0, i32 33
  %263 = ptrtoint ptr %polled658 to i32
  call void @__asan_store1_noabort(i32 %263)
  store i8 1, ptr %polled658, align 4
  %subpixel_order6601076 = getelementptr inbounds %struct.drm_connector, ptr %call7.i.i, i32 0, i32 20, i32 3
  %264 = ptrtoint ptr %subpixel_order6601076 to i32
  call void @__asan_store4_noabort(i32 %264)
  store i32 %subpixel_order.0.ph, ptr %subpixel_order6601076, align 4
  %call6611077 = tail call i32 @drm_connector_register(ptr noundef nonnull %call7.i.i) #7
  br i1 %has_aux.3.off0.ph, label %if.else657.if.then663_crit_edge, label %if.else657.cleanup_crit_edge

if.else657.cleanup_crit_edge:                     ; preds = %if.else657
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.else657.if.then663_crit_edge:                  ; preds = %if.else657
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then663

if.end659:                                        ; preds = %if.then652
  %subpixel_order660 = getelementptr inbounds %struct.drm_connector, ptr %call7.i.i, i32 0, i32 20, i32 3
  %265 = ptrtoint ptr %subpixel_order660 to i32
  call void @__asan_store4_noabort(i32 %265)
  store i32 %subpixel_order.01073, ptr %subpixel_order660, align 4
  %call661 = tail call i32 @drm_connector_register(ptr noundef nonnull %call7.i.i) #7
  br i1 %has_aux.3.off01071, label %if.end659.if.then663_crit_edge, label %if.end659.cleanup_crit_edge

if.end659.cleanup_crit_edge:                      ; preds = %if.end659
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end659.if.then663_crit_edge:                   ; preds = %if.end659
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then663

if.then663:                                       ; preds = %if.end659.if.then663_crit_edge, %if.else657.if.then663_crit_edge, %if.then655.if.then663_crit_edge
  tail call void @radeon_dp_aux_init(ptr noundef nonnull %call7.i.i) #7
  br label %cleanup

failed:                                           ; preds = %sw.bb617.failed_crit_edge, %sw.bb570.failed_crit_edge, %sw.bb482.failed_crit_edge, %sw.bb388.failed_crit_edge, %sw.bb286.failed_crit_edge, %if.then99.failed_crit_edge
  tail call void @drm_connector_cleanup(ptr noundef nonnull %call7.i.i) #7
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #7
  br label %cleanup

cleanup:                                          ; preds = %failed, %if.then663, %if.end659.cleanup_crit_edge, %if.else657.cleanup_crit_edge, %if.then655.cleanup_crit_edge, %for.end73.cleanup_crit_edge, %if.then16, %land.lhs.true.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @radeon_i2c_lookup(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_err(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_connector_init_with_ddc(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_object_attach_property(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @radeon_atombios_get_tv_info(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_connector_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @radeon_dp_aux_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_connector_cleanup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @radeon_add_legacy_connector(ptr noundef %dev, i32 noundef %connector_id, i32 noundef %supported_device, i32 noundef %connector_type, ptr noundef %i2c_bus, i16 noundef zeroext %connector_object_id, ptr nocapture noundef readonly %hpd) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_private, align 4
  %2 = zext i32 %connector_type to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.30)
  switch i32 %connector_type, label %entry.if.end7_crit_edge [
    i32 0, label %entry.cleanup_crit_edge
    i32 6, label %entry.land.lhs.true_crit_edge
    i32 5, label %entry.land.lhs.true_crit_edge296
    i32 9, label %entry.land.lhs.true_crit_edge297
  ]

entry.land.lhs.true_crit_edge297:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true

entry.land.lhs.true_crit_edge296:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true

entry.land.lhs.true_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

entry.if.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7

land.lhs.true:                                    ; preds = %entry.land.lhs.true_crit_edge, %entry.land.lhs.true_crit_edge296, %entry.land.lhs.true_crit_edge297
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @radeon_tv to i32))
  %3 = load i32, ptr @radeon_tv, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp5 = icmp eq i32 %3, 0
  br i1 %cmp5, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end7_crit_edge

land.lhs.true.if.end7_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end7:                                          ; preds = %land.lhs.true.if.end7_crit_edge, %entry.if.end7_crit_edge
  %connector_list = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 30, i32 12
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %if.end7
  %.pn.in = phi ptr [ %connector_list, %if.end7 ], [ %.pn, %for.body.for.cond_crit_edge ]
  %4 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %4)
  %.pn = load ptr, ptr %.pn.in, align 4
  %cmp10.not = icmp eq ptr %.pn, %connector_list
  br i1 %cmp10.not, label %for.end, label %for.body

for.body:                                         ; preds = %for.cond
  %connector_id14 = getelementptr i8, ptr %.pn, i32 1024
  %5 = ptrtoint ptr %connector_id14 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %connector_id14, align 8
  %cmp15 = icmp eq i32 %6, %connector_id
  br i1 %cmp15, label %if.then16, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond

if.then16:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %devices = getelementptr i8, ptr %.pn, i32 1028
  %7 = ptrtoint ptr %devices to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %devices, align 4
  %or = or i32 %8, %supported_device
  store i32 %or, ptr %devices, align 4
  br label %cleanup

for.end:                                          ; preds = %for.cond
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %9 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %9, i32 noundef 3520, i32 noundef 3016) #10
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %for.end.cleanup_crit_edge, label %if.end24

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end24:                                         ; preds = %for.end
  %connector_id25 = getelementptr inbounds %struct.radeon_connector, ptr %call7.i.i, i32 0, i32 1
  %10 = ptrtoint ptr %connector_id25 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %connector_id, ptr %connector_id25, align 8
  %devices26 = getelementptr inbounds %struct.radeon_connector, ptr %call7.i.i, i32 0, i32 2
  %11 = ptrtoint ptr %devices26 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %supported_device, ptr %devices26, align 4
  %connector_object_id27 = getelementptr inbounds %struct.radeon_connector, ptr %call7.i.i, i32 0, i32 11
  %12 = ptrtoint ptr %connector_object_id27 to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %connector_object_id, ptr %connector_object_id27, align 4
  %hpd28 = getelementptr inbounds %struct.radeon_connector, ptr %call7.i.i, i32 0, i32 12
  %13 = call ptr @memcpy(ptr %hpd28, ptr %hpd, i32 24)
  %14 = zext i32 %connector_type to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.31)
  switch i32 %connector_type, label %if.end24.sw.epilog_crit_edge [
    i32 1, label %sw.bb
    i32 4, label %sw.bb45
    i32 2, label %if.end24.sw.bb71_crit_edge
    i32 3, label %if.end24.sw.bb71_crit_edge298
    i32 6, label %if.end24.sw.bb103_crit_edge
    i32 5, label %if.end24.sw.bb103_crit_edge299
    i32 9, label %if.end24.sw.bb103_crit_edge300
    i32 7, label %sw.bb130
  ]

if.end24.sw.bb103_crit_edge300:                   ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb103

if.end24.sw.bb103_crit_edge299:                   ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb103

if.end24.sw.bb103_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb103

if.end24.sw.bb71_crit_edge298:                    ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb71

if.end24.sw.bb71_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb71

if.end24.sw.epilog_crit_edge:                     ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end24
  %15 = ptrtoint ptr %i2c_bus to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %i2c_bus, align 4, !range !87
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool29.not = icmp eq i8 %16, 0
  br i1 %tobool29.not, label %sw.bb.if.end37_crit_edge, label %if.then30

sw.bb.if.end37_crit_edge:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end37

if.then30:                                        ; preds = %sw.bb
  %call31 = tail call ptr @radeon_i2c_lookup(ptr noundef %1, ptr noundef %i2c_bus) #7
  %ddc_bus = getelementptr inbounds %struct.radeon_connector, ptr %call7.i.i, i32 0, i32 3
  %17 = ptrtoint ptr %ddc_bus to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call31, ptr %ddc_bus, align 8
  %tobool33.not = icmp eq ptr %call31, null
  br i1 %tobool33.not, label %if.then34, label %if.then30.if.end37_crit_edge

if.then30.if.end37_crit_edge:                     ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end37

if.then34:                                        ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.10) #7
  br label %if.end37

if.end37:                                         ; preds = %if.then34, %if.then30.if.end37_crit_edge, %sw.bb.if.end37_crit_edge
  %ddc.0 = phi ptr [ null, %if.then34 ], [ null, %sw.bb.if.end37_crit_edge ], [ %call31, %if.then30.if.end37_crit_edge ]
  %call39 = tail call i32 @drm_connector_init_with_ddc(ptr noundef %dev, ptr noundef nonnull %call7.i.i, ptr noundef nonnull @radeon_vga_connector_funcs, i32 noundef 1, ptr noundef %ddc.0) #7
  %helper_private.i = getelementptr inbounds %struct.drm_connector, ptr %call7.i.i, i32 0, i32 35
  %18 = ptrtoint ptr %helper_private.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @radeon_vga_connector_helper_funcs, ptr %helper_private.i, align 4
  %dac_load_detect = getelementptr inbounds %struct.radeon_connector, ptr %call7.i.i, i32 0, i32 8
  %19 = ptrtoint ptr %dac_load_detect to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 1, ptr %dac_load_detect, align 8
  %base42 = getelementptr inbounds %struct.drm_connector, ptr %call7.i.i, i32 0, i32 6
  %load_detect_property = getelementptr inbounds %struct.radeon_device, ptr %1, i32 0, i32 44, i32 7
  %20 = ptrtoint ptr %load_detect_property to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %load_detect_property, align 4
  tail call void @drm_object_attach_property(ptr noundef %base42, ptr noundef %21, i64 noundef 1) #7
  br label %if.then156.sink.split

sw.bb45:                                          ; preds = %if.end24
  %22 = ptrtoint ptr %i2c_bus to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %i2c_bus, align 4, !range !87
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool47.not = icmp eq i8 %23, 0
  br i1 %tobool47.not, label %sw.bb45.if.end58_crit_edge, label %if.then48

sw.bb45.if.end58_crit_edge:                       ; preds = %sw.bb45
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end58

if.then48:                                        ; preds = %sw.bb45
  %call49 = tail call ptr @radeon_i2c_lookup(ptr noundef %1, ptr noundef %i2c_bus) #7
  %ddc_bus50 = getelementptr inbounds %struct.radeon_connector, ptr %call7.i.i, i32 0, i32 3
  %24 = ptrtoint ptr %ddc_bus50 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call49, ptr %ddc_bus50, align 8
  %tobool52.not = icmp eq ptr %call49, null
  br i1 %tobool52.not, label %if.then53, label %if.then48.if.end58_crit_edge

if.then48.if.end58_crit_edge:                     ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end58

if.then53:                                        ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.11) #7
  br label %if.end58

if.end58:                                         ; preds = %if.then53, %if.then48.if.end58_crit_edge, %sw.bb45.if.end58_crit_edge
  %ddc.1 = phi ptr [ null, %if.then53 ], [ null, %sw.bb45.if.end58_crit_edge ], [ %call49, %if.then48.if.end58_crit_edge ]
  %call60 = tail call i32 @drm_connector_init_with_ddc(ptr noundef %dev, ptr noundef nonnull %call7.i.i, ptr noundef nonnull @radeon_vga_connector_funcs, i32 noundef 4, ptr noundef %ddc.1) #7
  %helper_private.i277 = getelementptr inbounds %struct.drm_connector, ptr %call7.i.i, i32 0, i32 35
  %25 = ptrtoint ptr %helper_private.i277 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @radeon_vga_connector_helper_funcs, ptr %helper_private.i277, align 4
  %dac_load_detect62 = getelementptr inbounds %struct.radeon_connector, ptr %call7.i.i, i32 0, i32 8
  %26 = ptrtoint ptr %dac_load_detect62 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 1, ptr %dac_load_detect62, align 8
  %base64 = getelementptr inbounds %struct.drm_connector, ptr %call7.i.i, i32 0, i32 6
  %load_detect_property66 = getelementptr inbounds %struct.radeon_device, ptr %1, i32 0, i32 44, i32 7
  %27 = ptrtoint ptr %load_detect_property66 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %load_detect_property66, align 4
  tail call void @drm_object_attach_property(ptr noundef %base64, ptr noundef %28, i64 noundef 1) #7
  br label %if.then156.sink.split

sw.bb71:                                          ; preds = %if.end24.sw.bb71_crit_edge, %if.end24.sw.bb71_crit_edge298
  %29 = ptrtoint ptr %i2c_bus to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %i2c_bus, align 4, !range !87
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool73.not = icmp eq i8 %30, 0
  br i1 %tobool73.not, label %sw.bb71.if.end84_crit_edge, label %if.then74

sw.bb71.if.end84_crit_edge:                       ; preds = %sw.bb71
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end84

if.then74:                                        ; preds = %sw.bb71
  %call75 = tail call ptr @radeon_i2c_lookup(ptr noundef %1, ptr noundef %i2c_bus) #7
  %ddc_bus76 = getelementptr inbounds %struct.radeon_connector, ptr %call7.i.i, i32 0, i32 3
  %31 = ptrtoint ptr %ddc_bus76 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %call75, ptr %ddc_bus76, align 8
  %tobool78.not = icmp eq ptr %call75, null
  br i1 %tobool78.not, label %if.then79, label %if.then74.if.end84_crit_edge

if.then74.if.end84_crit_edge:                     ; preds = %if.then74
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end84

if.then79:                                        ; preds = %if.then74
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.12) #7
  br label %if.end84

if.end84:                                         ; preds = %if.then79, %if.then74.if.end84_crit_edge, %sw.bb71.if.end84_crit_edge
  %ddc.2 = phi ptr [ null, %if.then79 ], [ null, %sw.bb71.if.end84_crit_edge ], [ %call75, %if.then74.if.end84_crit_edge ]
  %call86 = tail call i32 @drm_connector_init_with_ddc(ptr noundef %dev, ptr noundef nonnull %call7.i.i, ptr noundef nonnull @radeon_dvi_connector_funcs, i32 noundef %connector_type, ptr noundef %ddc.2) #7
  %helper_private.i278 = getelementptr inbounds %struct.drm_connector, ptr %call7.i.i, i32 0, i32 35
  %32 = ptrtoint ptr %helper_private.i278 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr @radeon_dvi_connector_helper_funcs, ptr %helper_private.i278, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %connector_type)
  %cmp88 = icmp eq i32 %connector_type, 2
  br i1 %cmp88, label %if.then89, label %if.end84.sw.epilog.sink.split_crit_edge

if.end84.sw.epilog.sink.split_crit_edge:          ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.sink.split

if.then89:                                        ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #9
  %dac_load_detect90 = getelementptr inbounds %struct.radeon_connector, ptr %call7.i.i, i32 0, i32 8
  %33 = ptrtoint ptr %dac_load_detect90 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 1, ptr %dac_load_detect90, align 8
  %load_detect_property94 = getelementptr inbounds %struct.radeon_device, ptr %1, i32 0, i32 44, i32 7
  br label %sw.epilog.sink.split.sink.split

sw.bb103:                                         ; preds = %if.end24.sw.bb103_crit_edge, %if.end24.sw.bb103_crit_edge299, %if.end24.sw.bb103_crit_edge300
  %call105 = tail call i32 @drm_connector_init_with_ddc(ptr noundef %dev, ptr noundef nonnull %call7.i.i, ptr noundef nonnull @radeon_tv_connector_funcs, i32 noundef %connector_type, ptr noundef null) #7
  %helper_private.i279 = getelementptr inbounds %struct.drm_connector, ptr %call7.i.i, i32 0, i32 35
  %34 = ptrtoint ptr %helper_private.i279 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr @radeon_tv_connector_helper_funcs, ptr %helper_private.i279, align 4
  %dac_load_detect107 = getelementptr inbounds %struct.radeon_connector, ptr %call7.i.i, i32 0, i32 8
  %35 = ptrtoint ptr %dac_load_detect107 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 1, ptr %dac_load_detect107, align 8
  %family = getelementptr inbounds %struct.radeon_device, ptr %1, i32 0, i32 6
  %36 = ptrtoint ptr %family to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %family, align 4
  %38 = and i32 %37, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %38)
  %switch = icmp ne i32 %38, 16
  %spec.store.select = zext i1 %switch to i8
  %39 = ptrtoint ptr %dac_load_detect107 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %spec.store.select, ptr %dac_load_detect107, align 8
  %base116 = getelementptr inbounds %struct.drm_connector, ptr %call7.i.i, i32 0, i32 6
  %load_detect_property118 = getelementptr inbounds %struct.radeon_device, ptr %1, i32 0, i32 44, i32 7
  %40 = ptrtoint ptr %load_detect_property118 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %load_detect_property118, align 4
  %42 = zext i1 %switch to i64
  tail call void @drm_object_attach_property(ptr noundef %base116, ptr noundef %41, i64 noundef %42) #7
  %tv_std_property = getelementptr inbounds %struct.radeon_device, ptr %1, i32 0, i32 44, i32 8
  %43 = ptrtoint ptr %tv_std_property to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %tv_std_property, align 4
  %call124 = tail call i32 @radeon_combios_get_tv_info(ptr noundef %1) #7
  %conv125 = zext i32 %call124 to i64
  tail call void @drm_object_attach_property(ptr noundef %base116, ptr noundef %44, i64 noundef %conv125) #7
  br label %if.then156.sink.split

sw.bb130:                                         ; preds = %if.end24
  %45 = ptrtoint ptr %i2c_bus to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %i2c_bus, align 4, !range !87
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %46)
  %tobool132.not = icmp eq i8 %46, 0
  br i1 %tobool132.not, label %sw.bb130.if.end143_crit_edge, label %if.then133

sw.bb130.if.end143_crit_edge:                     ; preds = %sw.bb130
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end143

if.then133:                                       ; preds = %sw.bb130
  %call134 = tail call ptr @radeon_i2c_lookup(ptr noundef %1, ptr noundef %i2c_bus) #7
  %ddc_bus135 = getelementptr inbounds %struct.radeon_connector, ptr %call7.i.i, i32 0, i32 3
  %47 = ptrtoint ptr %ddc_bus135 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %call134, ptr %ddc_bus135, align 8
  %tobool137.not = icmp eq ptr %call134, null
  br i1 %tobool137.not, label %if.then138, label %if.then133.if.end143_crit_edge

if.then133.if.end143_crit_edge:                   ; preds = %if.then133
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end143

if.then138:                                       ; preds = %if.then133
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.14) #7
  br label %if.end143

if.end143:                                        ; preds = %if.then138, %if.then133.if.end143_crit_edge, %sw.bb130.if.end143_crit_edge
  %ddc.3 = phi ptr [ null, %if.then138 ], [ null, %sw.bb130.if.end143_crit_edge ], [ %call134, %if.then133.if.end143_crit_edge ]
  %call145 = tail call i32 @drm_connector_init_with_ddc(ptr noundef %dev, ptr noundef nonnull %call7.i.i, ptr noundef nonnull @radeon_lvds_connector_funcs, i32 noundef 7, ptr noundef %ddc.3) #7
  %helper_private.i280 = getelementptr inbounds %struct.drm_connector, ptr %call7.i.i, i32 0, i32 35
  %48 = ptrtoint ptr %helper_private.i280 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr @radeon_lvds_connector_helper_funcs, ptr %helper_private.i280, align 4
  %scaling_mode_property = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 30, i32 73
  br label %sw.epilog.sink.split.sink.split

sw.epilog.sink.split.sink.split:                  ; preds = %if.end143, %if.then89
  %scaling_mode_property.sink = phi ptr [ %scaling_mode_property, %if.end143 ], [ %load_detect_property94, %if.then89 ]
  %.sink288.ph = phi i8 [ 0, %if.end143 ], [ 1, %if.then89 ]
  %base148.sink = getelementptr inbounds %struct.drm_connector, ptr %call7.i.i, i32 0, i32 6
  %49 = ptrtoint ptr %scaling_mode_property.sink to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %scaling_mode_property.sink, align 4
  tail call void @drm_object_attach_property(ptr noundef %base148.sink, ptr noundef %50, i64 noundef 1) #7
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %sw.epilog.sink.split.sink.split, %if.end84.sw.epilog.sink.split_crit_edge
  %.sink288 = phi i8 [ 1, %if.end84.sw.epilog.sink.split_crit_edge ], [ %.sink288.ph, %sw.epilog.sink.split.sink.split ]
  %.sink = phi i8 [ 0, %if.end84.sw.epilog.sink.split_crit_edge ], [ %.sink288.ph, %sw.epilog.sink.split.sink.split ]
  %interlace_allowed96.c = getelementptr inbounds %struct.drm_connector, ptr %call7.i.i, i32 0, i32 12
  %51 = ptrtoint ptr %interlace_allowed96.c to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 %.sink288, ptr %interlace_allowed96.c, align 8
  %doublescan_allowed99 = getelementptr inbounds %struct.drm_connector, ptr %call7.i.i, i32 0, i32 13
  %52 = ptrtoint ptr %doublescan_allowed99 to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 %.sink, ptr %doublescan_allowed99, align 1
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %if.end24.sw.epilog_crit_edge
  %subpixel_order.0.ph = phi i32 [ 5, %if.end24.sw.epilog_crit_edge ], [ 1, %sw.epilog.sink.split ]
  %53 = ptrtoint ptr %hpd28 to i32
  call void @__asan_load4_noabort(i32 %53)
  %.pr = load i32, ptr %hpd28, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %.pr)
  %cmp154 = icmp eq i32 %.pr, 255
  br i1 %cmp154, label %sw.epilog.if.then156_crit_edge, label %sw.epilog.if.end163.sink.split_crit_edge

sw.epilog.if.end163.sink.split_crit_edge:         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end163.sink.split

sw.epilog.if.then156_crit_edge:                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then156

if.then156.sink.split:                            ; preds = %sw.bb103, %if.end58, %if.end37
  %.sink290 = phi i8 [ 1, %if.end37 ], [ 1, %if.end58 ], [ 0, %sw.bb103 ]
  %54 = ptrtoint ptr %hpd28 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 255, ptr %hpd28, align 8
  %interlace_allowed = getelementptr inbounds %struct.drm_connector, ptr %call7.i.i, i32 0, i32 12
  %55 = ptrtoint ptr %interlace_allowed to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 %.sink290, ptr %interlace_allowed, align 8
  %doublescan_allowed = getelementptr inbounds %struct.drm_connector, ptr %call7.i.i, i32 0, i32 13
  %56 = ptrtoint ptr %doublescan_allowed to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 %.sink290, ptr %doublescan_allowed, align 1
  br label %if.then156

if.then156:                                       ; preds = %if.then156.sink.split, %sw.epilog.if.then156_crit_edge
  %subpixel_order.0284 = phi i32 [ %subpixel_order.0.ph, %sw.epilog.if.then156_crit_edge ], [ 5, %if.then156.sink.split ]
  %57 = ptrtoint ptr %i2c_bus to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %i2c_bus, align 4, !range !87
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %58)
  %tobool158.not = icmp eq i8 %58, 0
  br i1 %tobool158.not, label %if.then156.if.end163_crit_edge, label %if.then156.if.end163.sink.split_crit_edge

if.then156.if.end163.sink.split_crit_edge:        ; preds = %if.then156
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end163.sink.split

if.then156.if.end163_crit_edge:                   ; preds = %if.then156
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end163

if.end163.sink.split:                             ; preds = %if.then156.if.end163.sink.split_crit_edge, %sw.epilog.if.end163.sink.split_crit_edge
  %.sink291 = phi i8 [ 6, %if.then156.if.end163.sink.split_crit_edge ], [ 1, %sw.epilog.if.end163.sink.split_crit_edge ]
  %subpixel_order.0283.ph = phi i32 [ %subpixel_order.0284, %if.then156.if.end163.sink.split_crit_edge ], [ %subpixel_order.0.ph, %sw.epilog.if.end163.sink.split_crit_edge ]
  %polled = getelementptr inbounds %struct.drm_connector, ptr %call7.i.i, i32 0, i32 33
  %59 = ptrtoint ptr %polled to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 %.sink291, ptr %polled, align 4
  br label %if.end163

if.end163:                                        ; preds = %if.end163.sink.split, %if.then156.if.end163_crit_edge
  %subpixel_order.0283 = phi i32 [ %subpixel_order.0284, %if.then156.if.end163_crit_edge ], [ %subpixel_order.0283.ph, %if.end163.sink.split ]
  %subpixel_order164 = getelementptr inbounds %struct.drm_connector, ptr %call7.i.i, i32 0, i32 20, i32 3
  %60 = ptrtoint ptr %subpixel_order164 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %subpixel_order.0283, ptr %subpixel_order164, align 4
  %call165 = tail call i32 @drm_connector_register(ptr noundef nonnull %call7.i.i) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end163, %for.end.cleanup_crit_edge, %if.then16, %land.lhs.true.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @radeon_combios_get_tv_info(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @radeon_setup_mst_connector(ptr noundef readonly %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_private, align 4
  %family = getelementptr inbounds %struct.radeon_device, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %family to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %family, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 46, i32 %3)
  %cmp = icmp ugt i32 %3, 46
  br i1 %cmp, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @radeon_mst to i32))
  %4 = load i32, ptr @radeon_mst, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp1 = icmp eq i32 %4, 0
  br i1 %cmp1, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %connector_list = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 30, i32 12
  %5 = ptrtoint ptr %connector_list to i32
  call void @__asan_load4_noabort(i32 %5)
  %.pn25 = load ptr, ptr %connector_list, align 4
  %cmp6.not27 = icmp eq ptr %.pn25, %connector_list
  br i1 %cmp6.not27, label %if.end3.cleanup_crit_edge, label %if.end3.for.body_crit_edge

if.end3.for.body_crit_edge:                       ; preds = %if.end3
  br label %for.body

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end3.for.body_crit_edge
  %.pn28 = phi ptr [ %.pn, %for.inc.for.body_crit_edge ], [ %.pn25, %if.end3.for.body_crit_edge ]
  %connector_type = getelementptr i8, ptr %.pn28, i32 136
  %6 = ptrtoint ptr %connector_type to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %connector_type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %7)
  %cmp10.not = icmp eq i32 %7, 10
  br i1 %cmp10.not, label %if.end12, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.end12:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %connector.029 = getelementptr i8, ptr %.pn28, i32 -16
  %call = tail call i32 @radeon_dp_mst_init(ptr noundef %connector.029) #7
  br label %for.inc

for.inc:                                          ; preds = %if.end12, %for.body.for.inc_crit_edge
  %8 = ptrtoint ptr %.pn28 to i32
  call void @__asan_load4_noabort(i32 %8)
  %.pn = load ptr, ptr %.pn28, align 4
  %cmp6.not = icmp eq ptr %.pn, %connector_list
  br i1 %cmp6.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @radeon_dp_mst_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @radeon_dp_mst_check_status(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @radeon_dp_detect(ptr noundef %connector, i1 noundef zeroext %force) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %connector to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %connector, align 8
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_private, align 4
  %con_priv = getelementptr inbounds %struct.radeon_connector, ptr %connector, i32 0, i32 7
  %4 = ptrtoint ptr %con_priv to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %con_priv, align 4
  %encoder_list.i = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 30, i32 16
  %possible_encoders.i = getelementptr inbounds %struct.drm_connector, ptr %connector, i32 0, i32 40
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %entry
  %.pn.in.i = phi ptr [ %encoder_list.i, %entry ], [ %.pn.i, %for.body.i.for.cond.i_crit_edge ]
  %6 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %.pn.i = load ptr, ptr %.pn.in.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %encoder_list.i
  br i1 %cmp.not.i, label %for.cond.i.radeon_best_single_encoder.exit_crit_edge, label %for.body.i

for.cond.i.radeon_best_single_encoder.exit_crit_edge: ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %radeon_best_single_encoder.exit

for.body.i:                                       ; preds = %for.cond.i
  %7 = ptrtoint ptr %possible_encoders.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %possible_encoders.i, align 8
  %index.i.i.i = getelementptr i8, ptr %.pn.i, i32 36
  %9 = ptrtoint ptr %index.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %index.i.i.i, align 4
  %shl.i.i = shl nuw i32 1, %10
  %and.i = and i32 %shl.i.i, %8
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %for.body.i.for.cond.i_crit_edge, label %cleanup.split.loop.exit14.i

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.i

cleanup.split.loop.exit14.i:                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %encoder.0.le.i = getelementptr i8, ptr %.pn.i, i32 -4
  br label %radeon_best_single_encoder.exit

radeon_best_single_encoder.exit:                  ; preds = %cleanup.split.loop.exit14.i, %for.cond.i.radeon_best_single_encoder.exit_crit_edge
  %retval.0.i = phi ptr [ %encoder.0.le.i, %cleanup.split.loop.exit14.i ], [ null, %for.cond.i.radeon_best_single_encoder.exit_crit_edge ]
  %is_mst = getelementptr inbounds %struct.radeon_connector_atom_dig, ptr %5, i32 0, i32 6
  %11 = ptrtoint ptr %is_mst to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %is_mst, align 1, !range !87
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool.not = icmp eq i8 %12, 0
  br i1 %tobool.not, label %if.end, label %radeon_best_single_encoder.exit.cleanup_crit_edge

radeon_best_single_encoder.exit.cleanup_crit_edge: ; preds = %radeon_best_single_encoder.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %radeon_best_single_encoder.exit
  %call2 = tail call zeroext i1 @drm_kms_helper_is_poll_worker() #7
  br i1 %call2, label %if.end.if.end12_crit_edge, label %if.then3

if.end.if.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end12

if.then3:                                         ; preds = %if.end
  %13 = ptrtoint ptr %connector to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %connector, align 8
  %dev5 = getelementptr inbounds %struct.drm_device, ptr %14, i32 0, i32 2
  %15 = ptrtoint ptr %dev5 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev5, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %16, i32 noundef 4) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %if.then3.cleanup.sink.split_crit_edge, label %if.then3.if.end12_crit_edge

if.then3.if.end12_crit_edge:                      ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end12

if.then3.cleanup.sink.split_crit_edge:            ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

if.end12:                                         ; preds = %if.then3.if.end12_crit_edge, %if.end.if.end12_crit_edge
  br i1 %force, label %if.end12.if.end16_crit_edge, label %land.lhs.true

if.end12.if.end16_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end16

land.lhs.true:                                    ; preds = %if.end12
  %17 = ptrtoint ptr %connector to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %connector, align 8
  %dev_private.i = getelementptr inbounds %struct.drm_device, ptr %18, i32 0, i32 5
  %19 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev_private.i, align 4
  %family.i = getelementptr inbounds %struct.radeon_device, ptr %20, i32 0, i32 6
  %21 = ptrtoint ptr %family.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %family.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 26, i32 %22)
  %cmp.i = icmp ugt i32 %22, 26
  br i1 %cmp.i, label %land.lhs.true.i, label %land.lhs.true.if.end16_crit_edge

land.lhs.true.if.end16_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end16

land.lhs.true.i:                                  ; preds = %land.lhs.true
  %hpd.i = getelementptr inbounds %struct.radeon_connector, ptr %connector, i32 0, i32 12
  %23 = ptrtoint ptr %hpd.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %hpd.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %24)
  %cmp3.not.i = icmp eq i32 %24, 255
  br i1 %cmp3.not.i, label %land.lhs.true.i.if.end16_crit_edge, label %if.then.i

land.lhs.true.i.if.end16_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end16

if.then.i:                                        ; preds = %land.lhs.true.i
  %asic.i = getelementptr inbounds %struct.radeon_device, ptr %20, i32 0, i32 56
  %25 = ptrtoint ptr %asic.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %asic.i, align 8
  %sense.i = getelementptr inbounds %struct.radeon_asic, ptr %26, i32 0, i32 19, i32 2
  %27 = ptrtoint ptr %sense.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %sense.i, align 4
  %call.i189 = tail call zeroext i1 %28(ptr noundef %20, i32 noundef %24) #7
  %..i = select i1 %call.i189, i32 1, i32 2
  %status8.i = getelementptr inbounds %struct.drm_connector, ptr %connector, i32 0, i32 18
  %29 = ptrtoint ptr %status8.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %status8.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %30, i32 %..i)
  %cmp9.i = icmp eq i32 %30, %..i
  br i1 %cmp9.i, label %if.then15, label %if.then.i.if.end16_crit_edge

if.then.i.if.end16_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end16

if.then15:                                        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  %31 = ptrtoint ptr %status8.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %status8.i, align 8
  br label %out

if.end16:                                         ; preds = %if.then.i.if.end16_crit_edge, %land.lhs.true.i.if.end16_crit_edge, %land.lhs.true.if.end16_crit_edge, %if.end12.if.end16_crit_edge
  %edid.i = getelementptr inbounds %struct.radeon_connector, ptr %connector, i32 0, i32 6
  %33 = ptrtoint ptr %edid.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %edid.i, align 8
  %tobool.not.i191 = icmp eq ptr %34, null
  br i1 %tobool.not.i191, label %if.end16.radeon_connector_free_edid.exit_crit_edge, label %if.then.i192

if.end16.radeon_connector_free_edid.exit_crit_edge: ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  br label %radeon_connector_free_edid.exit

if.then.i192:                                     ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @kfree(ptr noundef nonnull %34) #7
  %35 = ptrtoint ptr %edid.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr null, ptr %edid.i, align 8
  br label %radeon_connector_free_edid.exit

radeon_connector_free_edid.exit:                  ; preds = %if.then.i192, %if.end16.radeon_connector_free_edid.exit_crit_edge
  %connector_type = getelementptr inbounds %struct.drm_connector, ptr %connector, i32 0, i32 10
  %36 = ptrtoint ptr %connector_type to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %connector_type, align 8
  %38 = zext i32 %37 to i64
  call void @__sanitizer_cov_trace_switch(i64 %38, ptr @__sancov_gen_cov_switch_values.32)
  switch i32 %37, label %if.else [
    i32 14, label %radeon_connector_free_edid.exit.if.then20_crit_edge
    i32 7, label %radeon_connector_free_edid.exit.if.then20_crit_edge229
  ]

radeon_connector_free_edid.exit.if.then20_crit_edge229: ; preds = %radeon_connector_free_edid.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then20

radeon_connector_free_edid.exit.if.then20_crit_edge: ; preds = %radeon_connector_free_edid.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then20

if.then20:                                        ; preds = %radeon_connector_free_edid.exit.if.then20_crit_edge, %radeon_connector_free_edid.exit.if.then20_crit_edge229
  %tobool21.not = icmp eq ptr %retval.0.i, null
  br i1 %tobool21.not, label %if.then20.if.end41_crit_edge, label %if.then22

if.then20.if.end41_crit_edge:                     ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end41

if.then22:                                        ; preds = %if.then20
  %hdisplay = getelementptr inbounds %struct.radeon_encoder, ptr %retval.0.i, i32 0, i32 11, i32 1
  %39 = ptrtoint ptr %hdisplay to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %hdisplay, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 319, i16 %40)
  %cmp27 = icmp ugt i16 %40, 319
  br i1 %cmp27, label %land.lhs.true29, label %if.then22.if.end34_crit_edge

if.then22.if.end34_crit_edge:                     ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end34

land.lhs.true29:                                  ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #9
  %vdisplay = getelementptr inbounds %struct.radeon_encoder, ptr %retval.0.i, i32 0, i32 11, i32 6
  %41 = ptrtoint ptr %vdisplay to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %vdisplay, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 239, i16 %42)
  %cmp31 = icmp ugt i16 %42, 239
  %spec.select = select i1 %cmp31, i32 1, i32 2
  br label %if.end34

if.end34:                                         ; preds = %land.lhs.true29, %if.then22.if.end34_crit_edge
  %ret.0 = phi i32 [ 2, %if.then22.if.end34_crit_edge ], [ %spec.select, %land.lhs.true29 ]
  %flags = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 7
  %43 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %flags, align 8
  %and = and i32 %44, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool35.not = icmp eq i32 %and, 0
  br i1 %tobool35.not, label %if.end34.if.end41_crit_edge, label %land.lhs.true36

if.end34.if.end41_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end41

land.lhs.true36:                                  ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @radeon_runtime_pm to i32))
  %45 = load i32, ptr @radeon_runtime_pm, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %cmp37.not = icmp eq i32 %45, 0
  %spec.select184 = select i1 %cmp37.not, i32 %ret.0, i32 2
  br label %if.end41

if.end41:                                         ; preds = %land.lhs.true36, %if.end34.if.end41_crit_edge, %if.then20.if.end41_crit_edge
  %ret.2 = phi i32 [ 2, %if.then20.if.end41_crit_edge ], [ %ret.0, %if.end34.if.end41_crit_edge ], [ %spec.select184, %land.lhs.true36 ]
  %dp_sink_type = getelementptr inbounds %struct.radeon_connector_atom_dig, ptr %5, i32 0, i32 2
  %46 = ptrtoint ptr %dp_sink_type to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 19, ptr %dp_sink_type, align 1
  %edp_on = getelementptr inbounds %struct.radeon_connector_atom_dig, ptr %5, i32 0, i32 5
  %47 = ptrtoint ptr %edp_on to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %edp_on, align 4, !range !87
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %48)
  %tobool42.not = icmp eq i8 %48, 0
  br i1 %tobool42.not, label %if.then43, label %if.end41.if.end45_crit_edge

if.end41.if.end45_crit_edge:                      ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end45

if.then43:                                        ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #9
  %call44 = tail call zeroext i1 @atombios_set_edp_panel_power(ptr noundef %connector, i32 noundef 12) #7
  br label %if.end45

if.end45:                                         ; preds = %if.then43, %if.end41.if.end45_crit_edge
  %call46 = tail call zeroext i1 @radeon_dp_getdpcd(ptr noundef %connector) #7
  %spec.select185 = select i1 %call46, i32 1, i32 %ret.2
  %49 = ptrtoint ptr %edp_on to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %edp_on, align 4, !range !87
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %50)
  %tobool50.not = icmp eq i8 %50, 0
  br i1 %tobool50.not, label %if.then51, label %if.end45.if.end113_crit_edge

if.end45.if.end113_crit_edge:                     ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end113

if.then51:                                        ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #9
  %call52 = tail call zeroext i1 @atombios_set_edp_panel_power(ptr noundef %connector, i32 noundef 13) #7
  br label %if.end113

if.else:                                          ; preds = %radeon_connector_free_edid.exit
  %51 = ptrtoint ptr %connector to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %connector, align 8
  %encoder_list.i193 = getelementptr inbounds %struct.drm_device, ptr %52, i32 0, i32 30, i32 16
  %53 = ptrtoint ptr %encoder_list.i193 to i32
  call void @__asan_load4_noabort(i32 %53)
  %.pn20.i = load ptr, ptr %encoder_list.i193, align 4
  %cmp.not21.i = icmp eq ptr %.pn20.i, %encoder_list.i193
  br i1 %cmp.not21.i, label %if.else.if.else72_crit_edge, label %for.body.lr.ph.i

if.else.if.else72_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else72

for.body.lr.ph.i:                                 ; preds = %if.else
  %54 = ptrtoint ptr %possible_encoders.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %possible_encoders.i, align 8
  br label %for.body.i199

for.body.i199:                                    ; preds = %for.inc.i.for.body.i199_crit_edge, %for.body.lr.ph.i
  %.pn22.i = phi ptr [ %.pn20.i, %for.body.lr.ph.i ], [ %.pn.i200, %for.inc.i.for.body.i199_crit_edge ]
  %index.i.i.i195 = getelementptr i8, ptr %.pn22.i, i32 36
  %56 = ptrtoint ptr %index.i.i.i195 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %index.i.i.i195, align 4
  %shl.i.i196 = shl nuw i32 1, %57
  %and.i197 = and i32 %shl.i.i196, %55
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i197)
  %tobool.not.i198 = icmp eq i32 %and.i197, 0
  br i1 %tobool.not.i198, label %for.body.i199.for.inc.i_crit_edge, label %if.else.i

for.body.i199.for.inc.i_crit_edge:                ; preds = %for.body.i199
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

if.else.i:                                        ; preds = %for.body.i199
  %encoder_id.i = getelementptr i8, ptr %.pn22.i, i32 72
  %58 = ptrtoint ptr %encoder_id.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %encoder_id.i, align 4
  %60 = and i32 %59, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 34, i32 %60)
  %switch.i = icmp eq i32 %60, 34
  br i1 %switch.i, label %radeon_connector_encoder_get_dp_bridge_encoder_id.exit, label %if.else.i.for.inc.i_crit_edge

if.else.i.for.inc.i_crit_edge:                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.else.i.for.inc.i_crit_edge, %for.body.i199.for.inc.i_crit_edge
  %61 = ptrtoint ptr %.pn22.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %.pn.i200 = load ptr, ptr %.pn22.i, align 4
  %cmp.not.i201 = icmp eq ptr %.pn.i200, %encoder_list.i193
  br i1 %cmp.not.i201, label %for.inc.i.if.else72_crit_edge, label %for.inc.i.for.body.i199_crit_edge

for.inc.i.for.body.i199_crit_edge:                ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i199

for.inc.i.if.else72_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else72

radeon_connector_encoder_get_dp_bridge_encoder_id.exit: ; preds = %if.else.i
  %dp_sink_type59 = getelementptr inbounds %struct.radeon_connector_atom_dig, ptr %5, i32 0, i32 2
  %62 = ptrtoint ptr %dp_sink_type59 to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 19, ptr %dp_sink_type59, align 1
  %call60 = tail call zeroext i1 @radeon_dp_getdpcd(ptr noundef %connector) #7
  %tobool61.not = icmp eq ptr %retval.0.i, null
  br i1 %tobool61.not, label %radeon_connector_encoder_get_dp_bridge_encoder_id.exit.if.end113_crit_edge, label %if.then62

radeon_connector_encoder_get_dp_bridge_encoder_id.exit.if.end113_crit_edge: ; preds = %radeon_connector_encoder_get_dp_bridge_encoder_id.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end113

if.then62:                                        ; preds = %radeon_connector_encoder_get_dp_bridge_encoder_id.exit
  tail call void @radeon_atom_ext_encoder_setup_ddc(ptr noundef nonnull %retval.0.i) #7
  %call63 = tail call zeroext i1 @radeon_ddc_probe(ptr noundef %connector, i1 noundef zeroext true) #7
  br i1 %call63, label %if.then62.if.end113_crit_edge, label %if.else65

if.then62.if.end113_crit_edge:                    ; preds = %if.then62
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end113

if.else65:                                        ; preds = %if.then62
  %dac_load_detect = getelementptr inbounds %struct.radeon_connector, ptr %connector, i32 0, i32 8
  %63 = ptrtoint ptr %dac_load_detect to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %dac_load_detect, align 8, !range !87
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %64)
  %tobool66.not = icmp eq i8 %64, 0
  br i1 %tobool66.not, label %if.else65.if.end113_crit_edge, label %if.then67

if.else65.if.end113_crit_edge:                    ; preds = %if.else65
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end113

if.then67:                                        ; preds = %if.else65
  call void @__sanitizer_cov_trace_pc() #9
  %helper_private = getelementptr inbounds %struct.drm_encoder, ptr %retval.0.i, i32 0, i32 11
  %65 = ptrtoint ptr %helper_private to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %helper_private, align 4
  %detect = getelementptr inbounds %struct.drm_encoder_helper_funcs, ptr %66, i32 0, i32 7
  %67 = ptrtoint ptr %detect to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %detect, align 4
  %call68 = tail call i32 %68(ptr noundef nonnull %retval.0.i, ptr noundef %connector) #7
  br label %if.end113

if.else72:                                        ; preds = %for.inc.i.if.else72_crit_edge, %if.else.if.else72_crit_edge
  %call73 = tail call zeroext i8 @radeon_dp_getsinktype(ptr noundef %connector) #7
  %dp_sink_type74 = getelementptr inbounds %struct.radeon_connector_atom_dig, ptr %5, i32 0, i32 2
  %69 = ptrtoint ptr %dp_sink_type74 to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 %call73, ptr %dp_sink_type74, align 1
  %asic = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 56
  %70 = ptrtoint ptr %asic to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %asic, align 8
  %sense = getelementptr inbounds %struct.radeon_asic, ptr %71, i32 0, i32 19, i32 2
  %72 = ptrtoint ptr %sense to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %sense, align 4
  %hpd75 = getelementptr inbounds %struct.radeon_connector, ptr %connector, i32 0, i32 12
  %74 = ptrtoint ptr %hpd75 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %hpd75, align 8
  %call77 = tail call zeroext i1 %73(ptr noundef %3, i32 noundef %75) #7
  %76 = ptrtoint ptr %dp_sink_type74 to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %dp_sink_type74, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 19, i8 %77)
  %cmp81 = icmp eq i8 %77, 19
  br i1 %call77, label %if.then78, label %if.else91

if.then78:                                        ; preds = %if.else72
  br i1 %cmp81, label %if.then83, label %if.then78.if.end113_crit_edge

if.then78.if.end113_crit_edge:                    ; preds = %if.then78
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end113

if.then83:                                        ; preds = %if.then78
  call void @__sanitizer_cov_trace_pc() #9
  %call84 = tail call zeroext i1 @radeon_dp_getdpcd(ptr noundef %connector) #7
  %call85 = tail call i32 @radeon_dp_mst_probe(ptr noundef %connector) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call85)
  %cmp86 = icmp eq i32 %call85, 1
  %spec.select186 = select i1 %cmp86, i32 2, i32 1
  br label %if.end113

if.else91:                                        ; preds = %if.else72
  br i1 %cmp81, label %if.then96, label %if.else106

if.then96:                                        ; preds = %if.else91
  %call97 = tail call zeroext i1 @radeon_dp_getdpcd(ptr noundef %connector) #7
  br i1 %call97, label %if.then98, label %if.then96.if.end113_crit_edge

if.then96.if.end113_crit_edge:                    ; preds = %if.then96
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end113

if.then98:                                        ; preds = %if.then96
  call void @__sanitizer_cov_trace_pc() #9
  %call99 = tail call i32 @radeon_dp_mst_probe(ptr noundef %connector) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call99)
  %cmp100 = icmp eq i32 %call99, 1
  %. = select i1 %cmp100, i32 2, i32 1
  br label %if.end113

if.else106:                                       ; preds = %if.else91
  call void @__sanitizer_cov_trace_pc() #9
  %call107 = tail call zeroext i1 @radeon_ddc_probe(ptr noundef %connector, i1 noundef zeroext false) #7
  %spec.select187 = select i1 %call107, i32 1, i32 2
  br label %if.end113

if.end113:                                        ; preds = %if.else106, %if.then98, %if.then96.if.end113_crit_edge, %if.then83, %if.then78.if.end113_crit_edge, %if.then67, %if.else65.if.end113_crit_edge, %if.then62.if.end113_crit_edge, %radeon_connector_encoder_get_dp_bridge_encoder_id.exit.if.end113_crit_edge, %if.then51, %if.end45.if.end113_crit_edge
  %ret.4 = phi i32 [ %spec.select185, %if.end45.if.end113_crit_edge ], [ %spec.select185, %if.then51 ], [ %call68, %if.then67 ], [ 2, %if.else65.if.end113_crit_edge ], [ 2, %radeon_connector_encoder_get_dp_bridge_encoder_id.exit.if.end113_crit_edge ], [ 1, %if.then78.if.end113_crit_edge ], [ 2, %if.then96.if.end113_crit_edge ], [ 1, %if.then62.if.end113_crit_edge ], [ %spec.select186, %if.then83 ], [ %., %if.then98 ], [ %spec.select187, %if.else106 ]
  %78 = ptrtoint ptr %connector to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %connector, align 8
  %dev_private.i203 = getelementptr inbounds %struct.drm_device, ptr %79, i32 0, i32 5
  %80 = ptrtoint ptr %dev_private.i203 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %dev_private.i203, align 4
  %helper_private.i = getelementptr inbounds %struct.drm_connector, ptr %connector, i32 0, i32 35
  %82 = ptrtoint ptr %helper_private.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %helper_private.i, align 4
  %best_encoder2.i = getelementptr inbounds %struct.drm_connector_helper_funcs, ptr %83, i32 0, i32 4
  %84 = ptrtoint ptr %best_encoder2.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %best_encoder2.i, align 4
  %call.i204 = tail call ptr %85(ptr noundef %connector) #7
  %86 = ptrtoint ptr %connector to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %connector, align 8
  %encoder_list.i205 = getelementptr inbounds %struct.drm_device, ptr %87, i32 0, i32 30, i32 16
  %88 = ptrtoint ptr %encoder_list.i205 to i32
  call void @__asan_load4_noabort(i32 %88)
  %.pn37.i = load ptr, ptr %encoder_list.i205, align 4
  %cmp.not40.i = icmp eq ptr %.pn37.i, %encoder_list.i205
  br i1 %cmp.not40.i, label %if.end113.radeon_connector_update_scratch_regs.exit_crit_edge, label %for.body.lr.ph.i208

if.end113.radeon_connector_update_scratch_regs.exit_crit_edge: ; preds = %if.end113
  call void @__sanitizer_cov_trace_pc() #9
  br label %radeon_connector_update_scratch_regs.exit

for.body.lr.ph.i208:                              ; preds = %if.end113
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %ret.4)
  %cmp9.i207 = icmp eq i32 %ret.4, 1
  %is_atom_bios.i = getelementptr inbounds %struct.radeon_device, ptr %81, i32 0, i32 14
  br label %for.body.i213

for.body.i213:                                    ; preds = %for.inc.i217.for.body.i213_crit_edge, %for.body.lr.ph.i208
  %.pn41.i = phi ptr [ %.pn37.i, %for.body.lr.ph.i208 ], [ %.pn.i215, %for.inc.i217.for.body.i213_crit_edge ]
  %encoder.042.i = getelementptr i8, ptr %.pn41.i, i32 -4
  %89 = ptrtoint ptr %possible_encoders.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %possible_encoders.i, align 8
  %index.i.i.i209 = getelementptr i8, ptr %.pn41.i, i32 36
  %91 = ptrtoint ptr %index.i.i.i209 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %index.i.i.i209, align 4
  %shl.i.i210 = shl nuw i32 1, %92
  %and.i211 = and i32 %shl.i.i210, %90
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i211)
  %tobool.not.i212 = icmp eq i32 %and.i211, 0
  br i1 %tobool.not.i212, label %for.body.i213.for.inc.i217_crit_edge, label %if.else.i214

for.body.i213.for.inc.i217_crit_edge:             ; preds = %for.body.i213
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i217

if.else.i214:                                     ; preds = %for.body.i213
  %cmp8.i = icmp eq ptr %encoder.042.i, %call.i204
  %or.cond.i = and i1 %cmp9.i207, %cmp8.i
  %93 = ptrtoint ptr %is_atom_bios.i to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %is_atom_bios.i, align 4, !range !87
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %94)
  %tobool12.not.i = icmp eq i8 %94, 0
  br i1 %tobool12.not.i, label %if.else15.i, label %if.then13.i

if.then13.i:                                      ; preds = %if.else.i214
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @radeon_atombios_connected_scratch_regs(ptr noundef %connector, ptr noundef %encoder.042.i, i1 noundef zeroext %or.cond.i) #7
  br label %for.inc.i217

if.else15.i:                                      ; preds = %if.else.i214
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @radeon_combios_connected_scratch_regs(ptr noundef %connector, ptr noundef %encoder.042.i, i1 noundef zeroext %or.cond.i) #7
  br label %for.inc.i217

for.inc.i217:                                     ; preds = %if.else15.i, %if.then13.i, %for.body.i213.for.inc.i217_crit_edge
  %95 = ptrtoint ptr %.pn41.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %.pn.i215 = load ptr, ptr %.pn41.i, align 4
  %96 = ptrtoint ptr %connector to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %connector, align 8
  %encoder_list6.i = getelementptr inbounds %struct.drm_device, ptr %97, i32 0, i32 30, i32 16
  %cmp.not.i216 = icmp eq ptr %.pn.i215, %encoder_list6.i
  br i1 %cmp.not.i216, label %for.inc.i217.radeon_connector_update_scratch_regs.exit_crit_edge, label %for.inc.i217.for.body.i213_crit_edge

for.inc.i217.for.body.i213_crit_edge:             ; preds = %for.inc.i217
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i213

for.inc.i217.radeon_connector_update_scratch_regs.exit_crit_edge: ; preds = %for.inc.i217
  call void @__sanitizer_cov_trace_pc() #9
  br label %radeon_connector_update_scratch_regs.exit

radeon_connector_update_scratch_regs.exit:        ; preds = %for.inc.i217.radeon_connector_update_scratch_regs.exit_crit_edge, %if.end113.radeon_connector_update_scratch_regs.exit_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @radeon_audio to i32))
  %98 = load i32, ptr @radeon_audio, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %98)
  %cmp114.not = icmp eq i32 %98, 0
  %tobool117.not = icmp eq ptr %retval.0.i, null
  %or.cond = select i1 %cmp114.not, i1 true, i1 %tobool117.not
  br i1 %or.cond, label %radeon_connector_update_scratch_regs.exit.out_crit_edge, label %if.then118

radeon_connector_update_scratch_regs.exit.out_crit_edge: ; preds = %radeon_connector_update_scratch_regs.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.then118:                                       ; preds = %radeon_connector_update_scratch_regs.exit
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @radeon_connector_get_edid(ptr noundef %connector)
  tail call void @radeon_audio_detect(ptr noundef %connector, ptr noundef nonnull %retval.0.i, i32 noundef %ret.4) #7
  br label %out

out:                                              ; preds = %if.then118, %radeon_connector_update_scratch_regs.exit.out_crit_edge, %if.then15
  %ret.5 = phi i32 [ %ret.4, %if.then118 ], [ %ret.4, %radeon_connector_update_scratch_regs.exit.out_crit_edge ], [ %32, %if.then15 ]
  %call120 = tail call zeroext i1 @drm_kms_helper_is_poll_worker() #7
  br i1 %call120, label %out.cleanup_crit_edge, label %if.then121

out.cleanup_crit_edge:                            ; preds = %out
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then121:                                       ; preds = %out
  call void @__sanitizer_cov_trace_pc() #9
  %99 = ptrtoint ptr %connector to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %connector, align 8
  %dev123 = getelementptr inbounds %struct.drm_device, ptr %100, i32 0, i32 2
  %101 = ptrtoint ptr %dev123 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %dev123, align 4
  %call.i218 = tail call i64 @ktime_get_mono_fast_ns() #7
  %last_busy.i = getelementptr inbounds %struct.device, ptr %102, i32 0, i32 12, i32 22
  %103 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %103)
  store volatile i64 %call.i218, ptr %last_busy.i, align 8
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.then121, %if.then3.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ %ret.5, %if.then121 ], [ 2, %if.then3.cleanup.sink.split_crit_edge ]
  %104 = ptrtoint ptr %connector to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %connector, align 8
  %dev125 = getelementptr inbounds %struct.drm_device, ptr %105, i32 0, i32 2
  %106 = ptrtoint ptr %dev125 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %dev125, align 4
  %call.i219 = tail call i32 @__pm_runtime_suspend(ptr noundef %107, i32 noundef 13) #7
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %out.cleanup_crit_edge, %radeon_best_single_encoder.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ 2, %radeon_best_single_encoder.exit.cleanup_crit_edge ], [ %ret.5, %out.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @radeon_dvi_force(ptr nocapture noundef %connector) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %force = getelementptr inbounds %struct.drm_connector, ptr %connector, i32 0, i32 37
  %0 = ptrtoint ptr %force to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %force, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.33)
  switch i32 %1, label %entry.if.end5_crit_edge [
    i32 2, label %entry.if.end5.sink.split_crit_edge
    i32 3, label %if.then3
  ]

entry.if.end5.sink.split_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end5.sink.split

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end5

if.then3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end5.sink.split

if.end5.sink.split:                               ; preds = %if.then3, %entry.if.end5.sink.split_crit_edge
  %.sink = phi i8 [ 1, %if.then3 ], [ 0, %entry.if.end5.sink.split_crit_edge ]
  %use_digital = getelementptr inbounds %struct.radeon_connector, ptr %connector, i32 0, i32 5
  %3 = ptrtoint ptr %use_digital to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %.sink, ptr %use_digital, align 1
  br label %if.end5

if.end5:                                          ; preds = %if.end5.sink.split, %entry.if.end5_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_helper_probe_single_connector_modes(ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @radeon_connector_set_property(ptr noundef %connector, ptr noundef readnone %property, i64 noundef %val) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %connector to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %connector, align 8
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_private, align 4
  %coherent_mode_property = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 44, i32 6
  %4 = ptrtoint ptr %coherent_mode_property to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %coherent_mode_property, align 4
  %cmp = icmp eq ptr %5, %property
  br i1 %cmp, label %if.then, label %entry.if.end20_crit_edge

entry.if.end20_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end20

if.then:                                          ; preds = %entry
  %encoder_list.i = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 30, i32 16
  %6 = ptrtoint ptr %encoder_list.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %.pn21.i = load ptr, ptr %encoder_list.i, align 4
  %cmp.not22.i = icmp eq ptr %.pn21.i, %encoder_list.i
  br i1 %cmp.not22.i, label %if.then.cleanup301_crit_edge, label %for.body.lr.ph.i

if.then.cleanup301_crit_edge:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup301

for.body.lr.ph.i:                                 ; preds = %if.then
  %possible_encoders.i = getelementptr inbounds %struct.drm_connector, ptr %connector, i32 0, i32 40
  %7 = ptrtoint ptr %possible_encoders.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %possible_encoders.i, align 8
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %.pn23.i = phi ptr [ %.pn21.i, %for.body.lr.ph.i ], [ %.pn.i, %for.inc.i.for.body.i_crit_edge ]
  %index.i.i.i = getelementptr i8, ptr %.pn23.i, i32 36
  %9 = ptrtoint ptr %index.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %index.i.i.i, align 4
  %shl.i.i = shl nuw i32 1, %10
  %and.i = and i32 %shl.i.i, %8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.else.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

if.else.i:                                        ; preds = %for.body.i
  %encoder_type4.i = getelementptr i8, ptr %.pn23.i, i32 32
  %11 = ptrtoint ptr %encoder_type4.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %encoder_type4.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %12)
  %cmp5.i = icmp eq i32 %12, 2
  br i1 %cmp5.i, label %radeon_find_encoder.exit, label %if.else.i.for.inc.i_crit_edge

if.else.i.for.inc.i_crit_edge:                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.else.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %13 = ptrtoint ptr %.pn23.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %.pn.i = load ptr, ptr %.pn23.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %encoder_list.i
  br i1 %cmp.not.i, label %for.inc.i.cleanup301_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.inc.i.cleanup301_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup301

radeon_find_encoder.exit:                         ; preds = %if.else.i
  %encoder.0.le.i = getelementptr i8, ptr %.pn23.i, i32 -4
  %tobool.not = icmp eq ptr %encoder.0.le.i, null
  br i1 %tobool.not, label %radeon_find_encoder.exit.cleanup301_crit_edge, label %if.end

radeon_find_encoder.exit.cleanup301_crit_edge:    ; preds = %radeon_find_encoder.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup301

if.end:                                           ; preds = %radeon_find_encoder.exit
  %enc_priv = getelementptr i8, ptr %.pn23.i, i32 220
  %14 = ptrtoint ptr %enc_priv to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %enc_priv, align 4
  %tobool3.not = icmp eq ptr %15, null
  br i1 %tobool3.not, label %if.end.cleanup301_crit_edge, label %if.end5

if.end.cleanup301_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup301

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %val)
  %tobool7 = icmp ne i64 %val, 0
  %coherent_mode = getelementptr inbounds %struct.radeon_encoder_atom_dig, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %coherent_mode to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %coherent_mode, align 1, !range !87
  %18 = zext i1 %tobool7 to i8
  call void @__sanitizer_cov_trace_cmp1(i8 %17, i8 %18)
  %cmp12.not = icmp eq i8 %17, %18
  br i1 %cmp12.not, label %if.end5.if.end20_crit_edge, label %if.then14

if.end5.if.end20_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end20

if.then14:                                        ; preds = %if.end5
  %19 = ptrtoint ptr %coherent_mode to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %18, ptr %coherent_mode, align 1
  %crtc1.i = getelementptr i8, ptr %.pn23.i, i32 48
  %20 = ptrtoint ptr %crtc1.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %crtc1.i, align 4
  %tobool.not.i445 = icmp eq ptr %21, null
  br i1 %tobool.not.i445, label %if.then14.if.end20_crit_edge, label %land.lhs.true.i

if.then14.if.end20_crit_edge:                     ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end20

land.lhs.true.i:                                  ; preds = %if.then14
  %enabled.i = getelementptr inbounds %struct.drm_crtc, ptr %21, i32 0, i32 11
  %22 = ptrtoint ptr %enabled.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %enabled.i, align 8, !range !87
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool2.not.i = icmp eq i8 %23, 0
  br i1 %tobool2.not.i, label %land.lhs.true.i.if.end20_crit_edge, label %if.then.i

land.lhs.true.i.if.end20_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end20

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  %mode.i = getelementptr inbounds %struct.drm_crtc, ptr %21, i32 0, i32 12
  %x.i = getelementptr inbounds %struct.drm_crtc, ptr %21, i32 0, i32 14
  %24 = ptrtoint ptr %x.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %x.i, align 4
  %y.i = getelementptr inbounds %struct.drm_crtc, ptr %21, i32 0, i32 15
  %26 = ptrtoint ptr %y.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %y.i, align 8
  %primary.i = getelementptr inbounds %struct.drm_crtc, ptr %21, i32 0, i32 6
  %28 = ptrtoint ptr %primary.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %primary.i, align 4
  %fb.i = getelementptr inbounds %struct.drm_plane, ptr %29, i32 0, i32 12
  %30 = ptrtoint ptr %fb.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %fb.i, align 4
  %call.i = tail call zeroext i1 @drm_crtc_helper_set_mode(ptr noundef nonnull %21, ptr noundef %mode.i, i32 noundef %25, i32 noundef %27, ptr noundef %31) #7
  br label %if.end20

if.end20:                                         ; preds = %if.then.i, %land.lhs.true.i.if.end20_crit_edge, %if.then14.if.end20_crit_edge, %if.end5.if.end20_crit_edge, %entry.if.end20_crit_edge
  %audio_property = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 44, i32 13
  %32 = ptrtoint ptr %audio_property to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %audio_property, align 4
  %cmp22 = icmp eq ptr %33, %property
  br i1 %cmp22, label %if.then24, label %if.end20.if.end46_crit_edge

if.end20.if.end46_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end46

if.then24:                                        ; preds = %if.end20
  %34 = ptrtoint ptr %connector to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %connector, align 8
  %encoder_list.i446 = getelementptr inbounds %struct.drm_device, ptr %35, i32 0, i32 30, i32 16
  %36 = ptrtoint ptr %encoder_list.i446 to i32
  call void @__asan_load4_noabort(i32 %36)
  %.pn21.i447 = load ptr, ptr %encoder_list.i446, align 4
  %cmp.not22.i448 = icmp eq ptr %.pn21.i447, %encoder_list.i446
  br i1 %cmp.not22.i448, label %if.then24.cleanup301_crit_edge, label %for.body.lr.ph.i450

if.then24.cleanup301_crit_edge:                   ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup301

for.body.lr.ph.i450:                              ; preds = %if.then24
  %possible_encoders.i449 = getelementptr inbounds %struct.drm_connector, ptr %connector, i32 0, i32 40
  %37 = ptrtoint ptr %possible_encoders.i449 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %possible_encoders.i449, align 8
  br label %for.body.i456

for.body.i456:                                    ; preds = %for.inc.i462.for.body.i456_crit_edge, %for.body.lr.ph.i450
  %.pn23.i451 = phi ptr [ %.pn21.i447, %for.body.lr.ph.i450 ], [ %.pn.i460, %for.inc.i462.for.body.i456_crit_edge ]
  %index.i.i.i452 = getelementptr i8, ptr %.pn23.i451, i32 36
  %39 = ptrtoint ptr %index.i.i.i452 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %index.i.i.i452, align 4
  %shl.i.i453 = shl nuw i32 1, %40
  %and.i454 = and i32 %shl.i.i453, %38
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i454)
  %tobool.not.i455 = icmp eq i32 %and.i454, 0
  br i1 %tobool.not.i455, label %for.body.i456.for.inc.i462_crit_edge, label %if.else.i459

for.body.i456.for.inc.i462_crit_edge:             ; preds = %for.body.i456
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i462

if.else.i459:                                     ; preds = %for.body.i456
  %encoder_type4.i457 = getelementptr i8, ptr %.pn23.i451, i32 32
  %41 = ptrtoint ptr %encoder_type4.i457 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %encoder_type4.i457, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %42)
  %cmp5.i458 = icmp eq i32 %42, 2
  br i1 %cmp5.i458, label %radeon_find_encoder.exit466, label %if.else.i459.for.inc.i462_crit_edge

if.else.i459.for.inc.i462_crit_edge:              ; preds = %if.else.i459
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i462

for.inc.i462:                                     ; preds = %if.else.i459.for.inc.i462_crit_edge, %for.body.i456.for.inc.i462_crit_edge
  %43 = ptrtoint ptr %.pn23.i451 to i32
  call void @__asan_load4_noabort(i32 %43)
  %.pn.i460 = load ptr, ptr %.pn23.i451, align 4
  %cmp.not.i461 = icmp eq ptr %.pn.i460, %encoder_list.i446
  br i1 %cmp.not.i461, label %for.inc.i462.cleanup301_crit_edge, label %for.inc.i462.for.body.i456_crit_edge

for.inc.i462.for.body.i456_crit_edge:             ; preds = %for.inc.i462
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i456

for.inc.i462.cleanup301_crit_edge:                ; preds = %for.inc.i462
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup301

radeon_find_encoder.exit466:                      ; preds = %if.else.i459
  %encoder.0.le.i463 = getelementptr i8, ptr %.pn23.i451, i32 -4
  %tobool29.not = icmp eq ptr %encoder.0.le.i463, null
  br i1 %tobool29.not, label %radeon_find_encoder.exit466.cleanup301_crit_edge, label %if.end31

radeon_find_encoder.exit466.cleanup301_crit_edge: ; preds = %radeon_find_encoder.exit466
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup301

if.end31:                                         ; preds = %radeon_find_encoder.exit466
  %audio = getelementptr inbounds %struct.radeon_connector, ptr %connector, i32 0, i32 15
  %44 = ptrtoint ptr %audio to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %audio, align 8
  %conv35 = zext i32 %45 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %conv35, i64 %val)
  %cmp36.not = icmp eq i64 %conv35, %val
  br i1 %cmp36.not, label %if.end31.if.end46_crit_edge, label %if.then38

if.end31.if.end46_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end46

if.then38:                                        ; preds = %if.end31
  %conv39 = trunc i64 %val to i32
  %46 = ptrtoint ptr %audio to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %conv39, ptr %audio, align 8
  %crtc1.i467 = getelementptr i8, ptr %.pn23.i451, i32 48
  %47 = ptrtoint ptr %crtc1.i467 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %crtc1.i467, align 4
  %tobool.not.i468 = icmp eq ptr %48, null
  br i1 %tobool.not.i468, label %if.then38.if.end46_crit_edge, label %land.lhs.true.i471

if.then38.if.end46_crit_edge:                     ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end46

land.lhs.true.i471:                               ; preds = %if.then38
  %enabled.i469 = getelementptr inbounds %struct.drm_crtc, ptr %48, i32 0, i32 11
  %49 = ptrtoint ptr %enabled.i469 to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %enabled.i469, align 8, !range !87
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %50)
  %tobool2.not.i470 = icmp eq i8 %50, 0
  br i1 %tobool2.not.i470, label %land.lhs.true.i471.if.end46_crit_edge, label %if.then.i478

land.lhs.true.i471.if.end46_crit_edge:            ; preds = %land.lhs.true.i471
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end46

if.then.i478:                                     ; preds = %land.lhs.true.i471
  call void @__sanitizer_cov_trace_pc() #9
  %mode.i472 = getelementptr inbounds %struct.drm_crtc, ptr %48, i32 0, i32 12
  %x.i473 = getelementptr inbounds %struct.drm_crtc, ptr %48, i32 0, i32 14
  %51 = ptrtoint ptr %x.i473 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %x.i473, align 4
  %y.i474 = getelementptr inbounds %struct.drm_crtc, ptr %48, i32 0, i32 15
  %53 = ptrtoint ptr %y.i474 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %y.i474, align 8
  %primary.i475 = getelementptr inbounds %struct.drm_crtc, ptr %48, i32 0, i32 6
  %55 = ptrtoint ptr %primary.i475 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %primary.i475, align 4
  %fb.i476 = getelementptr inbounds %struct.drm_plane, ptr %56, i32 0, i32 12
  %57 = ptrtoint ptr %fb.i476 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %fb.i476, align 4
  %call.i477 = tail call zeroext i1 @drm_crtc_helper_set_mode(ptr noundef nonnull %48, ptr noundef %mode.i472, i32 noundef %52, i32 noundef %54, ptr noundef %58) #7
  br label %if.end46

if.end46:                                         ; preds = %if.then.i478, %land.lhs.true.i471.if.end46_crit_edge, %if.then38.if.end46_crit_edge, %if.end31.if.end46_crit_edge, %if.end20.if.end46_crit_edge
  %dither_property = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 44, i32 14
  %59 = ptrtoint ptr %dither_property to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %dither_property, align 4
  %cmp48 = icmp eq ptr %60, %property
  br i1 %cmp48, label %if.then50, label %if.end46.if.end73_crit_edge

if.end46.if.end73_crit_edge:                      ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end73

if.then50:                                        ; preds = %if.end46
  %61 = ptrtoint ptr %connector to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %connector, align 8
  %encoder_list.i480 = getelementptr inbounds %struct.drm_device, ptr %62, i32 0, i32 30, i32 16
  %63 = ptrtoint ptr %encoder_list.i480 to i32
  call void @__asan_load4_noabort(i32 %63)
  %.pn21.i481 = load ptr, ptr %encoder_list.i480, align 4
  %cmp.not22.i482 = icmp eq ptr %.pn21.i481, %encoder_list.i480
  br i1 %cmp.not22.i482, label %if.then50.cleanup301_crit_edge, label %for.body.lr.ph.i484

if.then50.cleanup301_crit_edge:                   ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup301

for.body.lr.ph.i484:                              ; preds = %if.then50
  %possible_encoders.i483 = getelementptr inbounds %struct.drm_connector, ptr %connector, i32 0, i32 40
  %64 = ptrtoint ptr %possible_encoders.i483 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %possible_encoders.i483, align 8
  br label %for.body.i490

for.body.i490:                                    ; preds = %for.inc.i496.for.body.i490_crit_edge, %for.body.lr.ph.i484
  %.pn23.i485 = phi ptr [ %.pn21.i481, %for.body.lr.ph.i484 ], [ %.pn.i494, %for.inc.i496.for.body.i490_crit_edge ]
  %index.i.i.i486 = getelementptr i8, ptr %.pn23.i485, i32 36
  %66 = ptrtoint ptr %index.i.i.i486 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %index.i.i.i486, align 4
  %shl.i.i487 = shl nuw i32 1, %67
  %and.i488 = and i32 %shl.i.i487, %65
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i488)
  %tobool.not.i489 = icmp eq i32 %and.i488, 0
  br i1 %tobool.not.i489, label %for.body.i490.for.inc.i496_crit_edge, label %if.else.i493

for.body.i490.for.inc.i496_crit_edge:             ; preds = %for.body.i490
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i496

if.else.i493:                                     ; preds = %for.body.i490
  %encoder_type4.i491 = getelementptr i8, ptr %.pn23.i485, i32 32
  %68 = ptrtoint ptr %encoder_type4.i491 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %encoder_type4.i491, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %69)
  %cmp5.i492 = icmp eq i32 %69, 2
  br i1 %cmp5.i492, label %radeon_find_encoder.exit500, label %if.else.i493.for.inc.i496_crit_edge

if.else.i493.for.inc.i496_crit_edge:              ; preds = %if.else.i493
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i496

for.inc.i496:                                     ; preds = %if.else.i493.for.inc.i496_crit_edge, %for.body.i490.for.inc.i496_crit_edge
  %70 = ptrtoint ptr %.pn23.i485 to i32
  call void @__asan_load4_noabort(i32 %70)
  %.pn.i494 = load ptr, ptr %.pn23.i485, align 4
  %cmp.not.i495 = icmp eq ptr %.pn.i494, %encoder_list.i480
  br i1 %cmp.not.i495, label %for.inc.i496.cleanup301_crit_edge, label %for.inc.i496.for.body.i490_crit_edge

for.inc.i496.for.body.i490_crit_edge:             ; preds = %for.inc.i496
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i490

for.inc.i496.cleanup301_crit_edge:                ; preds = %for.inc.i496
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup301

radeon_find_encoder.exit500:                      ; preds = %if.else.i493
  %encoder.0.le.i497 = getelementptr i8, ptr %.pn23.i485, i32 -4
  %tobool56.not = icmp eq ptr %encoder.0.le.i497, null
  br i1 %tobool56.not, label %radeon_find_encoder.exit500.cleanup301_crit_edge, label %if.end58

radeon_find_encoder.exit500.cleanup301_crit_edge: ; preds = %radeon_find_encoder.exit500
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup301

if.end58:                                         ; preds = %radeon_find_encoder.exit500
  %dither = getelementptr inbounds %struct.radeon_connector, ptr %connector, i32 0, i32 16
  %71 = ptrtoint ptr %dither to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %dither, align 4
  %conv62 = zext i32 %72 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %conv62, i64 %val)
  %cmp63.not = icmp eq i64 %conv62, %val
  br i1 %cmp63.not, label %if.end58.if.end73_crit_edge, label %if.then65

if.end58.if.end73_crit_edge:                      ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end73

if.then65:                                        ; preds = %if.end58
  %conv66 = trunc i64 %val to i32
  %73 = ptrtoint ptr %dither to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %conv66, ptr %dither, align 4
  %crtc1.i501 = getelementptr i8, ptr %.pn23.i485, i32 48
  %74 = ptrtoint ptr %crtc1.i501 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %crtc1.i501, align 4
  %tobool.not.i502 = icmp eq ptr %75, null
  br i1 %tobool.not.i502, label %if.then65.if.end73_crit_edge, label %land.lhs.true.i505

if.then65.if.end73_crit_edge:                     ; preds = %if.then65
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end73

land.lhs.true.i505:                               ; preds = %if.then65
  %enabled.i503 = getelementptr inbounds %struct.drm_crtc, ptr %75, i32 0, i32 11
  %76 = ptrtoint ptr %enabled.i503 to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %enabled.i503, align 8, !range !87
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %77)
  %tobool2.not.i504 = icmp eq i8 %77, 0
  br i1 %tobool2.not.i504, label %land.lhs.true.i505.if.end73_crit_edge, label %if.then.i512

land.lhs.true.i505.if.end73_crit_edge:            ; preds = %land.lhs.true.i505
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end73

if.then.i512:                                     ; preds = %land.lhs.true.i505
  call void @__sanitizer_cov_trace_pc() #9
  %mode.i506 = getelementptr inbounds %struct.drm_crtc, ptr %75, i32 0, i32 12
  %x.i507 = getelementptr inbounds %struct.drm_crtc, ptr %75, i32 0, i32 14
  %78 = ptrtoint ptr %x.i507 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %x.i507, align 4
  %y.i508 = getelementptr inbounds %struct.drm_crtc, ptr %75, i32 0, i32 15
  %80 = ptrtoint ptr %y.i508 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %y.i508, align 8
  %primary.i509 = getelementptr inbounds %struct.drm_crtc, ptr %75, i32 0, i32 6
  %82 = ptrtoint ptr %primary.i509 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %primary.i509, align 4
  %fb.i510 = getelementptr inbounds %struct.drm_plane, ptr %83, i32 0, i32 12
  %84 = ptrtoint ptr %fb.i510 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %fb.i510, align 4
  %call.i511 = tail call zeroext i1 @drm_crtc_helper_set_mode(ptr noundef nonnull %75, ptr noundef %mode.i506, i32 noundef %79, i32 noundef %81, ptr noundef %85) #7
  br label %if.end73

if.end73:                                         ; preds = %if.then.i512, %land.lhs.true.i505.if.end73_crit_edge, %if.then65.if.end73_crit_edge, %if.end58.if.end73_crit_edge, %if.end46.if.end73_crit_edge
  %underscan_property = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 44, i32 10
  %86 = ptrtoint ptr %underscan_property to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %underscan_property, align 4
  %cmp75 = icmp eq ptr %87, %property
  br i1 %cmp75, label %if.then77, label %if.end73.if.end93_crit_edge

if.end73.if.end93_crit_edge:                      ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end93

if.then77:                                        ; preds = %if.end73
  %88 = ptrtoint ptr %connector to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %connector, align 8
  %encoder_list.i514 = getelementptr inbounds %struct.drm_device, ptr %89, i32 0, i32 30, i32 16
  %90 = ptrtoint ptr %encoder_list.i514 to i32
  call void @__asan_load4_noabort(i32 %90)
  %.pn21.i515 = load ptr, ptr %encoder_list.i514, align 4
  %cmp.not22.i516 = icmp eq ptr %.pn21.i515, %encoder_list.i514
  br i1 %cmp.not22.i516, label %if.then77.cleanup301_crit_edge, label %for.body.lr.ph.i518

if.then77.cleanup301_crit_edge:                   ; preds = %if.then77
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup301

for.body.lr.ph.i518:                              ; preds = %if.then77
  %possible_encoders.i517 = getelementptr inbounds %struct.drm_connector, ptr %connector, i32 0, i32 40
  %91 = ptrtoint ptr %possible_encoders.i517 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %possible_encoders.i517, align 8
  br label %for.body.i524

for.body.i524:                                    ; preds = %for.inc.i530.for.body.i524_crit_edge, %for.body.lr.ph.i518
  %.pn23.i519 = phi ptr [ %.pn21.i515, %for.body.lr.ph.i518 ], [ %.pn.i528, %for.inc.i530.for.body.i524_crit_edge ]
  %index.i.i.i520 = getelementptr i8, ptr %.pn23.i519, i32 36
  %93 = ptrtoint ptr %index.i.i.i520 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %index.i.i.i520, align 4
  %shl.i.i521 = shl nuw i32 1, %94
  %and.i522 = and i32 %shl.i.i521, %92
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i522)
  %tobool.not.i523 = icmp eq i32 %and.i522, 0
  br i1 %tobool.not.i523, label %for.body.i524.for.inc.i530_crit_edge, label %if.else.i527

for.body.i524.for.inc.i530_crit_edge:             ; preds = %for.body.i524
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i530

if.else.i527:                                     ; preds = %for.body.i524
  %encoder_type4.i525 = getelementptr i8, ptr %.pn23.i519, i32 32
  %95 = ptrtoint ptr %encoder_type4.i525 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %encoder_type4.i525, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %96)
  %cmp5.i526 = icmp eq i32 %96, 2
  br i1 %cmp5.i526, label %radeon_find_encoder.exit534, label %if.else.i527.for.inc.i530_crit_edge

if.else.i527.for.inc.i530_crit_edge:              ; preds = %if.else.i527
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i530

for.inc.i530:                                     ; preds = %if.else.i527.for.inc.i530_crit_edge, %for.body.i524.for.inc.i530_crit_edge
  %97 = ptrtoint ptr %.pn23.i519 to i32
  call void @__asan_load4_noabort(i32 %97)
  %.pn.i528 = load ptr, ptr %.pn23.i519, align 4
  %cmp.not.i529 = icmp eq ptr %.pn.i528, %encoder_list.i514
  br i1 %cmp.not.i529, label %for.inc.i530.cleanup301_crit_edge, label %for.inc.i530.for.body.i524_crit_edge

for.inc.i530.for.body.i524_crit_edge:             ; preds = %for.inc.i530
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i524

for.inc.i530.cleanup301_crit_edge:                ; preds = %for.inc.i530
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup301

radeon_find_encoder.exit534:                      ; preds = %if.else.i527
  %encoder.0.le.i531 = getelementptr i8, ptr %.pn23.i519, i32 -4
  %tobool79.not = icmp eq ptr %encoder.0.le.i531, null
  br i1 %tobool79.not, label %radeon_find_encoder.exit534.cleanup301_crit_edge, label %if.end81

radeon_find_encoder.exit534.cleanup301_crit_edge: ; preds = %radeon_find_encoder.exit534
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup301

if.end81:                                         ; preds = %radeon_find_encoder.exit534
  %underscan_type = getelementptr i8, ptr %.pn23.i519, i32 96
  %98 = ptrtoint ptr %underscan_type to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %underscan_type, align 4
  %conv85 = zext i32 %99 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %conv85, i64 %val)
  %cmp86.not = icmp eq i64 %conv85, %val
  br i1 %cmp86.not, label %if.end81.if.end93_crit_edge, label %if.then88

if.end81.if.end93_crit_edge:                      ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end93

if.then88:                                        ; preds = %if.end81
  %conv89 = trunc i64 %val to i32
  %100 = ptrtoint ptr %underscan_type to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 %conv89, ptr %underscan_type, align 4
  %crtc1.i535 = getelementptr i8, ptr %.pn23.i519, i32 48
  %101 = ptrtoint ptr %crtc1.i535 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %crtc1.i535, align 4
  %tobool.not.i536 = icmp eq ptr %102, null
  br i1 %tobool.not.i536, label %if.then88.if.end93_crit_edge, label %land.lhs.true.i539

if.then88.if.end93_crit_edge:                     ; preds = %if.then88
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end93

land.lhs.true.i539:                               ; preds = %if.then88
  %enabled.i537 = getelementptr inbounds %struct.drm_crtc, ptr %102, i32 0, i32 11
  %103 = ptrtoint ptr %enabled.i537 to i32
  call void @__asan_load1_noabort(i32 %103)
  %104 = load i8, ptr %enabled.i537, align 8, !range !87
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %104)
  %tobool2.not.i538 = icmp eq i8 %104, 0
  br i1 %tobool2.not.i538, label %land.lhs.true.i539.if.end93_crit_edge, label %if.then.i546

land.lhs.true.i539.if.end93_crit_edge:            ; preds = %land.lhs.true.i539
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end93

if.then.i546:                                     ; preds = %land.lhs.true.i539
  call void @__sanitizer_cov_trace_pc() #9
  %mode.i540 = getelementptr inbounds %struct.drm_crtc, ptr %102, i32 0, i32 12
  %x.i541 = getelementptr inbounds %struct.drm_crtc, ptr %102, i32 0, i32 14
  %105 = ptrtoint ptr %x.i541 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %x.i541, align 4
  %y.i542 = getelementptr inbounds %struct.drm_crtc, ptr %102, i32 0, i32 15
  %107 = ptrtoint ptr %y.i542 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %y.i542, align 8
  %primary.i543 = getelementptr inbounds %struct.drm_crtc, ptr %102, i32 0, i32 6
  %109 = ptrtoint ptr %primary.i543 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %primary.i543, align 4
  %fb.i544 = getelementptr inbounds %struct.drm_plane, ptr %110, i32 0, i32 12
  %111 = ptrtoint ptr %fb.i544 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %fb.i544, align 4
  %call.i545 = tail call zeroext i1 @drm_crtc_helper_set_mode(ptr noundef nonnull %102, ptr noundef %mode.i540, i32 noundef %106, i32 noundef %108, ptr noundef %112) #7
  br label %if.end93

if.end93:                                         ; preds = %if.then.i546, %land.lhs.true.i539.if.end93_crit_edge, %if.then88.if.end93_crit_edge, %if.end81.if.end93_crit_edge, %if.end73.if.end93_crit_edge
  %underscan_hborder_property = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 44, i32 11
  %113 = ptrtoint ptr %underscan_hborder_property to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %underscan_hborder_property, align 4
  %cmp95 = icmp eq ptr %114, %property
  br i1 %cmp95, label %if.then97, label %if.end93.if.end113_crit_edge

if.end93.if.end113_crit_edge:                     ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end113

if.then97:                                        ; preds = %if.end93
  %115 = ptrtoint ptr %connector to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %connector, align 8
  %encoder_list.i548 = getelementptr inbounds %struct.drm_device, ptr %116, i32 0, i32 30, i32 16
  %117 = ptrtoint ptr %encoder_list.i548 to i32
  call void @__asan_load4_noabort(i32 %117)
  %.pn21.i549 = load ptr, ptr %encoder_list.i548, align 4
  %cmp.not22.i550 = icmp eq ptr %.pn21.i549, %encoder_list.i548
  br i1 %cmp.not22.i550, label %if.then97.cleanup301_crit_edge, label %for.body.lr.ph.i552

if.then97.cleanup301_crit_edge:                   ; preds = %if.then97
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup301

for.body.lr.ph.i552:                              ; preds = %if.then97
  %possible_encoders.i551 = getelementptr inbounds %struct.drm_connector, ptr %connector, i32 0, i32 40
  %118 = ptrtoint ptr %possible_encoders.i551 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %possible_encoders.i551, align 8
  br label %for.body.i558

for.body.i558:                                    ; preds = %for.inc.i564.for.body.i558_crit_edge, %for.body.lr.ph.i552
  %.pn23.i553 = phi ptr [ %.pn21.i549, %for.body.lr.ph.i552 ], [ %.pn.i562, %for.inc.i564.for.body.i558_crit_edge ]
  %index.i.i.i554 = getelementptr i8, ptr %.pn23.i553, i32 36
  %120 = ptrtoint ptr %index.i.i.i554 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %index.i.i.i554, align 4
  %shl.i.i555 = shl nuw i32 1, %121
  %and.i556 = and i32 %shl.i.i555, %119
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i556)
  %tobool.not.i557 = icmp eq i32 %and.i556, 0
  br i1 %tobool.not.i557, label %for.body.i558.for.inc.i564_crit_edge, label %if.else.i561

for.body.i558.for.inc.i564_crit_edge:             ; preds = %for.body.i558
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i564

if.else.i561:                                     ; preds = %for.body.i558
  %encoder_type4.i559 = getelementptr i8, ptr %.pn23.i553, i32 32
  %122 = ptrtoint ptr %encoder_type4.i559 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %encoder_type4.i559, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %123)
  %cmp5.i560 = icmp eq i32 %123, 2
  br i1 %cmp5.i560, label %radeon_find_encoder.exit568, label %if.else.i561.for.inc.i564_crit_edge

if.else.i561.for.inc.i564_crit_edge:              ; preds = %if.else.i561
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i564

for.inc.i564:                                     ; preds = %if.else.i561.for.inc.i564_crit_edge, %for.body.i558.for.inc.i564_crit_edge
  %124 = ptrtoint ptr %.pn23.i553 to i32
  call void @__asan_load4_noabort(i32 %124)
  %.pn.i562 = load ptr, ptr %.pn23.i553, align 4
  %cmp.not.i563 = icmp eq ptr %.pn.i562, %encoder_list.i548
  br i1 %cmp.not.i563, label %for.inc.i564.cleanup301_crit_edge, label %for.inc.i564.for.body.i558_crit_edge

for.inc.i564.for.body.i558_crit_edge:             ; preds = %for.inc.i564
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i558

for.inc.i564.cleanup301_crit_edge:                ; preds = %for.inc.i564
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup301

radeon_find_encoder.exit568:                      ; preds = %if.else.i561
  %encoder.0.le.i565 = getelementptr i8, ptr %.pn23.i553, i32 -4
  %tobool99.not = icmp eq ptr %encoder.0.le.i565, null
  br i1 %tobool99.not, label %radeon_find_encoder.exit568.cleanup301_crit_edge, label %if.end101

radeon_find_encoder.exit568.cleanup301_crit_edge: ; preds = %radeon_find_encoder.exit568
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup301

if.end101:                                        ; preds = %radeon_find_encoder.exit568
  %underscan_hborder = getelementptr i8, ptr %.pn23.i553, i32 100
  %125 = ptrtoint ptr %underscan_hborder to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %underscan_hborder, align 4
  %conv105 = zext i32 %126 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %conv105, i64 %val)
  %cmp106.not = icmp eq i64 %conv105, %val
  br i1 %cmp106.not, label %if.end101.if.end113_crit_edge, label %if.then108

if.end101.if.end113_crit_edge:                    ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end113

if.then108:                                       ; preds = %if.end101
  %conv109 = trunc i64 %val to i32
  %127 = ptrtoint ptr %underscan_hborder to i32
  call void @__asan_store4_noabort(i32 %127)
  store i32 %conv109, ptr %underscan_hborder, align 4
  %crtc1.i569 = getelementptr i8, ptr %.pn23.i553, i32 48
  %128 = ptrtoint ptr %crtc1.i569 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %crtc1.i569, align 4
  %tobool.not.i570 = icmp eq ptr %129, null
  br i1 %tobool.not.i570, label %if.then108.if.end113_crit_edge, label %land.lhs.true.i573

if.then108.if.end113_crit_edge:                   ; preds = %if.then108
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end113

land.lhs.true.i573:                               ; preds = %if.then108
  %enabled.i571 = getelementptr inbounds %struct.drm_crtc, ptr %129, i32 0, i32 11
  %130 = ptrtoint ptr %enabled.i571 to i32
  call void @__asan_load1_noabort(i32 %130)
  %131 = load i8, ptr %enabled.i571, align 8, !range !87
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %131)
  %tobool2.not.i572 = icmp eq i8 %131, 0
  br i1 %tobool2.not.i572, label %land.lhs.true.i573.if.end113_crit_edge, label %if.then.i580

land.lhs.true.i573.if.end113_crit_edge:           ; preds = %land.lhs.true.i573
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end113

if.then.i580:                                     ; preds = %land.lhs.true.i573
  call void @__sanitizer_cov_trace_pc() #9
  %mode.i574 = getelementptr inbounds %struct.drm_crtc, ptr %129, i32 0, i32 12
  %x.i575 = getelementptr inbounds %struct.drm_crtc, ptr %129, i32 0, i32 14
  %132 = ptrtoint ptr %x.i575 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %x.i575, align 4
  %y.i576 = getelementptr inbounds %struct.drm_crtc, ptr %129, i32 0, i32 15
  %134 = ptrtoint ptr %y.i576 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %y.i576, align 8
  %primary.i577 = getelementptr inbounds %struct.drm_crtc, ptr %129, i32 0, i32 6
  %136 = ptrtoint ptr %primary.i577 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %primary.i577, align 4
  %fb.i578 = getelementptr inbounds %struct.drm_plane, ptr %137, i32 0, i32 12
  %138 = ptrtoint ptr %fb.i578 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %fb.i578, align 4
  %call.i579 = tail call zeroext i1 @drm_crtc_helper_set_mode(ptr noundef nonnull %129, ptr noundef %mode.i574, i32 noundef %133, i32 noundef %135, ptr noundef %139) #7
  br label %if.end113

if.end113:                                        ; preds = %if.then.i580, %land.lhs.true.i573.if.end113_crit_edge, %if.then108.if.end113_crit_edge, %if.end101.if.end113_crit_edge, %if.end93.if.end113_crit_edge
  %underscan_vborder_property = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 44, i32 12
  %140 = ptrtoint ptr %underscan_vborder_property to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %underscan_vborder_property, align 4
  %cmp115 = icmp eq ptr %141, %property
  br i1 %cmp115, label %if.then117, label %if.end113.if.end133_crit_edge

if.end113.if.end133_crit_edge:                    ; preds = %if.end113
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end133

if.then117:                                       ; preds = %if.end113
  %142 = ptrtoint ptr %connector to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %connector, align 8
  %encoder_list.i582 = getelementptr inbounds %struct.drm_device, ptr %143, i32 0, i32 30, i32 16
  %144 = ptrtoint ptr %encoder_list.i582 to i32
  call void @__asan_load4_noabort(i32 %144)
  %.pn21.i583 = load ptr, ptr %encoder_list.i582, align 4
  %cmp.not22.i584 = icmp eq ptr %.pn21.i583, %encoder_list.i582
  br i1 %cmp.not22.i584, label %if.then117.cleanup301_crit_edge, label %for.body.lr.ph.i586

if.then117.cleanup301_crit_edge:                  ; preds = %if.then117
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup301

for.body.lr.ph.i586:                              ; preds = %if.then117
  %possible_encoders.i585 = getelementptr inbounds %struct.drm_connector, ptr %connector, i32 0, i32 40
  %145 = ptrtoint ptr %possible_encoders.i585 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %possible_encoders.i585, align 8
  br label %for.body.i592

for.body.i592:                                    ; preds = %for.inc.i598.for.body.i592_crit_edge, %for.body.lr.ph.i586
  %.pn23.i587 = phi ptr [ %.pn21.i583, %for.body.lr.ph.i586 ], [ %.pn.i596, %for.inc.i598.for.body.i592_crit_edge ]
  %index.i.i.i588 = getelementptr i8, ptr %.pn23.i587, i32 36
  %147 = ptrtoint ptr %index.i.i.i588 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %index.i.i.i588, align 4
  %shl.i.i589 = shl nuw i32 1, %148
  %and.i590 = and i32 %shl.i.i589, %146
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i590)
  %tobool.not.i591 = icmp eq i32 %and.i590, 0
  br i1 %tobool.not.i591, label %for.body.i592.for.inc.i598_crit_edge, label %if.else.i595

for.body.i592.for.inc.i598_crit_edge:             ; preds = %for.body.i592
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i598

if.else.i595:                                     ; preds = %for.body.i592
  %encoder_type4.i593 = getelementptr i8, ptr %.pn23.i587, i32 32
  %149 = ptrtoint ptr %encoder_type4.i593 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %encoder_type4.i593, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %150)
  %cmp5.i594 = icmp eq i32 %150, 2
  br i1 %cmp5.i594, label %radeon_find_encoder.exit602, label %if.else.i595.for.inc.i598_crit_edge

if.else.i595.for.inc.i598_crit_edge:              ; preds = %if.else.i595
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i598

for.inc.i598:                                     ; preds = %if.else.i595.for.inc.i598_crit_edge, %for.body.i592.for.inc.i598_crit_edge
  %151 = ptrtoint ptr %.pn23.i587 to i32
  call void @__asan_load4_noabort(i32 %151)
  %.pn.i596 = load ptr, ptr %.pn23.i587, align 4
  %cmp.not.i597 = icmp eq ptr %.pn.i596, %encoder_list.i582
  br i1 %cmp.not.i597, label %for.inc.i598.cleanup301_crit_edge, label %for.inc.i598.for.body.i592_crit_edge

for.inc.i598.for.body.i592_crit_edge:             ; preds = %for.inc.i598
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i592

for.inc.i598.cleanup301_crit_edge:                ; preds = %for.inc.i598
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup301

radeon_find_encoder.exit602:                      ; preds = %if.else.i595
  %encoder.0.le.i599 = getelementptr i8, ptr %.pn23.i587, i32 -4
  %tobool119.not = icmp eq ptr %encoder.0.le.i599, null
  br i1 %tobool119.not, label %radeon_find_encoder.exit602.cleanup301_crit_edge, label %if.end121

radeon_find_encoder.exit602.cleanup301_crit_edge: ; preds = %radeon_find_encoder.exit602
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup301

if.end121:                                        ; preds = %radeon_find_encoder.exit602
  %underscan_vborder = getelementptr i8, ptr %.pn23.i587, i32 104
  %152 = ptrtoint ptr %underscan_vborder to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %underscan_vborder, align 4
  %conv125 = zext i32 %153 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %conv125, i64 %val)
  %cmp126.not = icmp eq i64 %conv125, %val
  br i1 %cmp126.not, label %if.end121.if.end133_crit_edge, label %if.then128

if.end121.if.end133_crit_edge:                    ; preds = %if.end121
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end133

if.then128:                                       ; preds = %if.end121
  %conv129 = trunc i64 %val to i32
  %154 = ptrtoint ptr %underscan_vborder to i32
  call void @__asan_store4_noabort(i32 %154)
  store i32 %conv129, ptr %underscan_vborder, align 4
  %crtc1.i603 = getelementptr i8, ptr %.pn23.i587, i32 48
  %155 = ptrtoint ptr %crtc1.i603 to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %crtc1.i603, align 4
  %tobool.not.i604 = icmp eq ptr %156, null
  br i1 %tobool.not.i604, label %if.then128.if.end133_crit_edge, label %land.lhs.true.i607

if.then128.if.end133_crit_edge:                   ; preds = %if.then128
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end133

land.lhs.true.i607:                               ; preds = %if.then128
  %enabled.i605 = getelementptr inbounds %struct.drm_crtc, ptr %156, i32 0, i32 11
  %157 = ptrtoint ptr %enabled.i605 to i32
  call void @__asan_load1_noabort(i32 %157)
  %158 = load i8, ptr %enabled.i605, align 8, !range !87
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %158)
  %tobool2.not.i606 = icmp eq i8 %158, 0
  br i1 %tobool2.not.i606, label %land.lhs.true.i607.if.end133_crit_edge, label %if.then.i614

land.lhs.true.i607.if.end133_crit_edge:           ; preds = %land.lhs.true.i607
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end133

if.then.i614:                                     ; preds = %land.lhs.true.i607
  call void @__sanitizer_cov_trace_pc() #9
  %mode.i608 = getelementptr inbounds %struct.drm_crtc, ptr %156, i32 0, i32 12
  %x.i609 = getelementptr inbounds %struct.drm_crtc, ptr %156, i32 0, i32 14
  %159 = ptrtoint ptr %x.i609 to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %x.i609, align 4
  %y.i610 = getelementptr inbounds %struct.drm_crtc, ptr %156, i32 0, i32 15
  %161 = ptrtoint ptr %y.i610 to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %y.i610, align 8
  %primary.i611 = getelementptr inbounds %struct.drm_crtc, ptr %156, i32 0, i32 6
  %163 = ptrtoint ptr %primary.i611 to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %primary.i611, align 4
  %fb.i612 = getelementptr inbounds %struct.drm_plane, ptr %164, i32 0, i32 12
  %165 = ptrtoint ptr %fb.i612 to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %fb.i612, align 4
  %call.i613 = tail call zeroext i1 @drm_crtc_helper_set_mode(ptr noundef nonnull %156, ptr noundef %mode.i608, i32 noundef %160, i32 noundef %162, ptr noundef %166) #7
  br label %if.end133

if.end133:                                        ; preds = %if.then.i614, %land.lhs.true.i607.if.end133_crit_edge, %if.then128.if.end133_crit_edge, %if.end121.if.end133_crit_edge, %if.end113.if.end133_crit_edge
  %tv_std_property = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 44, i32 8
  %167 = ptrtoint ptr %tv_std_property to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %tv_std_property, align 4
  %cmp135 = icmp eq ptr %168, %property
  br i1 %cmp135, label %if.then137, label %if.end133.if.end165_crit_edge

if.end133.if.end165_crit_edge:                    ; preds = %if.end133
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end165

if.then137:                                       ; preds = %if.end133
  %169 = ptrtoint ptr %connector to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %connector, align 8
  %encoder_list.i616 = getelementptr inbounds %struct.drm_device, ptr %170, i32 0, i32 30, i32 16
  %171 = ptrtoint ptr %encoder_list.i616 to i32
  call void @__asan_load4_noabort(i32 %171)
  %.pn21.i617 = load ptr, ptr %encoder_list.i616, align 4
  %cmp.not22.i618 = icmp eq ptr %.pn21.i617, %encoder_list.i616
  br i1 %cmp.not22.i618, label %if.then137.cleanup301_crit_edge, label %for.body.lr.ph.i620

if.then137.cleanup301_crit_edge:                  ; preds = %if.then137
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup301

for.body.lr.ph.i620:                              ; preds = %if.then137
  %possible_encoders.i619 = getelementptr inbounds %struct.drm_connector, ptr %connector, i32 0, i32 40
  %172 = ptrtoint ptr %possible_encoders.i619 to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load i32, ptr %possible_encoders.i619, align 8
  br label %for.body.i626

for.body.i626:                                    ; preds = %for.inc.i632.for.body.i626_crit_edge, %for.body.lr.ph.i620
  %.pn23.i621 = phi ptr [ %.pn21.i617, %for.body.lr.ph.i620 ], [ %.pn.i630, %for.inc.i632.for.body.i626_crit_edge ]
  %index.i.i.i622 = getelementptr i8, ptr %.pn23.i621, i32 36
  %174 = ptrtoint ptr %index.i.i.i622 to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load i32, ptr %index.i.i.i622, align 4
  %shl.i.i623 = shl nuw i32 1, %175
  %and.i624 = and i32 %shl.i.i623, %173
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i624)
  %tobool.not.i625 = icmp eq i32 %and.i624, 0
  br i1 %tobool.not.i625, label %for.body.i626.for.inc.i632_crit_edge, label %if.else.i629

for.body.i626.for.inc.i632_crit_edge:             ; preds = %for.body.i626
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i632

if.else.i629:                                     ; preds = %for.body.i626
  %encoder_type4.i627 = getelementptr i8, ptr %.pn23.i621, i32 32
  %176 = ptrtoint ptr %encoder_type4.i627 to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load i32, ptr %encoder_type4.i627, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %177)
  %cmp5.i628 = icmp eq i32 %177, 4
  br i1 %cmp5.i628, label %radeon_find_encoder.exit636, label %if.else.i629.for.inc.i632_crit_edge

if.else.i629.for.inc.i632_crit_edge:              ; preds = %if.else.i629
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i632

for.inc.i632:                                     ; preds = %if.else.i629.for.inc.i632_crit_edge, %for.body.i626.for.inc.i632_crit_edge
  %178 = ptrtoint ptr %.pn23.i621 to i32
  call void @__asan_load4_noabort(i32 %178)
  %.pn.i630 = load ptr, ptr %.pn23.i621, align 4
  %cmp.not.i631 = icmp eq ptr %.pn.i630, %encoder_list.i616
  br i1 %cmp.not.i631, label %for.inc.i632.for.body.lr.ph.i641_crit_edge, label %for.inc.i632.for.body.i626_crit_edge

for.inc.i632.for.body.i626_crit_edge:             ; preds = %for.inc.i632
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i626

for.inc.i632.for.body.lr.ph.i641_crit_edge:       ; preds = %for.inc.i632
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.lr.ph.i641

radeon_find_encoder.exit636:                      ; preds = %if.else.i629
  %encoder.0.le.i633 = getelementptr i8, ptr %.pn23.i621, i32 -4
  %tobool139.not = icmp eq ptr %encoder.0.le.i633, null
  br i1 %tobool139.not, label %radeon_find_encoder.exit636.for.body.lr.ph.i641_crit_edge, label %radeon_find_encoder.exit636.if.end145_crit_edge

radeon_find_encoder.exit636.if.end145_crit_edge:  ; preds = %radeon_find_encoder.exit636
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end145

radeon_find_encoder.exit636.for.body.lr.ph.i641_crit_edge: ; preds = %radeon_find_encoder.exit636
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.lr.ph.i641

for.body.lr.ph.i641:                              ; preds = %radeon_find_encoder.exit636.for.body.lr.ph.i641_crit_edge, %for.inc.i632.for.body.lr.ph.i641_crit_edge
  %179 = ptrtoint ptr %possible_encoders.i619 to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load i32, ptr %possible_encoders.i619, align 8
  br label %for.body.i647

for.body.i647:                                    ; preds = %for.inc.i653.for.body.i647_crit_edge, %for.body.lr.ph.i641
  %.pn23.i642 = phi ptr [ %.pn21.i617, %for.body.lr.ph.i641 ], [ %.pn.i651, %for.inc.i653.for.body.i647_crit_edge ]
  %index.i.i.i643 = getelementptr i8, ptr %.pn23.i642, i32 36
  %181 = ptrtoint ptr %index.i.i.i643 to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load i32, ptr %index.i.i.i643, align 4
  %shl.i.i644 = shl nuw i32 1, %182
  %and.i645 = and i32 %shl.i.i644, %180
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i645)
  %tobool.not.i646 = icmp eq i32 %and.i645, 0
  br i1 %tobool.not.i646, label %for.body.i647.for.inc.i653_crit_edge, label %if.else.i650

for.body.i647.for.inc.i653_crit_edge:             ; preds = %for.body.i647
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i653

if.else.i650:                                     ; preds = %for.body.i647
  %encoder_type4.i648 = getelementptr i8, ptr %.pn23.i642, i32 32
  %183 = ptrtoint ptr %encoder_type4.i648 to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load i32, ptr %encoder_type4.i648, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %184)
  %cmp5.i649 = icmp eq i32 %184, 1
  br i1 %cmp5.i649, label %if.end142, label %if.else.i650.for.inc.i653_crit_edge

if.else.i650.for.inc.i653_crit_edge:              ; preds = %if.else.i650
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i653

for.inc.i653:                                     ; preds = %if.else.i650.for.inc.i653_crit_edge, %for.body.i647.for.inc.i653_crit_edge
  %185 = ptrtoint ptr %.pn23.i642 to i32
  call void @__asan_load4_noabort(i32 %185)
  %.pn.i651 = load ptr, ptr %.pn23.i642, align 4
  %cmp.not.i652 = icmp eq ptr %.pn.i651, %encoder_list.i616
  br i1 %cmp.not.i652, label %for.inc.i653.cleanup301_crit_edge, label %for.inc.i653.for.body.i647_crit_edge

for.inc.i653.for.body.i647_crit_edge:             ; preds = %for.inc.i653
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i647

for.inc.i653.cleanup301_crit_edge:                ; preds = %for.inc.i653
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup301

if.end142:                                        ; preds = %if.else.i650
  %encoder.0.le.i654 = getelementptr i8, ptr %.pn23.i642, i32 -4
  %tobool143.not = icmp eq ptr %encoder.0.le.i654, null
  br i1 %tobool143.not, label %if.end142.cleanup301_crit_edge, label %if.end142.if.end145_crit_edge

if.end142.if.end145_crit_edge:                    ; preds = %if.end142
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end145

if.end142.cleanup301_crit_edge:                   ; preds = %if.end142
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup301

if.end145:                                        ; preds = %if.end142.if.end145_crit_edge, %radeon_find_encoder.exit636.if.end145_crit_edge
  %encoder.0737 = phi ptr [ %encoder.0.le.i654, %if.end142.if.end145_crit_edge ], [ %encoder.0.le.i633, %radeon_find_encoder.exit636.if.end145_crit_edge ]
  %enc_priv149 = getelementptr inbounds %struct.radeon_encoder, ptr %encoder.0737, i32 0, i32 12
  %186 = ptrtoint ptr %enc_priv149 to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %enc_priv149, align 4
  %tobool150.not = icmp eq ptr %187, null
  br i1 %tobool150.not, label %if.end145.cleanup301_crit_edge, label %if.end152

if.end145.cleanup301_crit_edge:                   ; preds = %if.end145
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup301

if.end152:                                        ; preds = %if.end145
  %family = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 6
  %188 = ptrtoint ptr %family to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load i32, ptr %family, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %189)
  %cmp153 = icmp ugt i32 %189, 17
  br i1 %cmp153, label %if.end152.if.then156_crit_edge, label %lor.lhs.false

if.end152.if.then156_crit_edge:                   ; preds = %if.end152
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then156

lor.lhs.false:                                    ; preds = %if.end152
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @radeon_r4xx_atom to i32))
  %190 = load i32, ptr @radeon_r4xx_atom, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %190)
  %tobool155.not = icmp eq i32 %190, 0
  br i1 %tobool155.not, label %if.else, label %lor.lhs.false.if.then156_crit_edge

lor.lhs.false.if.then156_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then156

if.then156:                                       ; preds = %lor.lhs.false.if.then156_crit_edge, %if.end152.if.then156_crit_edge
  %conv158 = trunc i64 %val to i32
  %191 = ptrtoint ptr %187 to i32
  call void @__asan_store4_noabort(i32 %191)
  store i32 %conv158, ptr %187, align 4
  br label %if.end163

if.else:                                          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  %conv161 = trunc i64 %val to i32
  %tv_std162 = getelementptr inbounds %struct.radeon_encoder_tv_dac, ptr %187, i32 0, i32 8
  %192 = ptrtoint ptr %tv_std162 to i32
  call void @__asan_store4_noabort(i32 %192)
  store i32 %conv161, ptr %tv_std162, align 4
  br label %if.end163

if.end163:                                        ; preds = %if.else, %if.then156
  %crtc1.i658 = getelementptr inbounds %struct.drm_encoder, ptr %encoder.0737, i32 0, i32 8
  %193 = ptrtoint ptr %crtc1.i658 to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %crtc1.i658, align 4
  %tobool.not.i659 = icmp eq ptr %194, null
  br i1 %tobool.not.i659, label %if.end163.if.end165_crit_edge, label %land.lhs.true.i662

if.end163.if.end165_crit_edge:                    ; preds = %if.end163
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end165

land.lhs.true.i662:                               ; preds = %if.end163
  %enabled.i660 = getelementptr inbounds %struct.drm_crtc, ptr %194, i32 0, i32 11
  %195 = ptrtoint ptr %enabled.i660 to i32
  call void @__asan_load1_noabort(i32 %195)
  %196 = load i8, ptr %enabled.i660, align 8, !range !87
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %196)
  %tobool2.not.i661 = icmp eq i8 %196, 0
  br i1 %tobool2.not.i661, label %land.lhs.true.i662.if.end165_crit_edge, label %if.then.i669

land.lhs.true.i662.if.end165_crit_edge:           ; preds = %land.lhs.true.i662
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end165

if.then.i669:                                     ; preds = %land.lhs.true.i662
  call void @__sanitizer_cov_trace_pc() #9
  %mode.i663 = getelementptr inbounds %struct.drm_crtc, ptr %194, i32 0, i32 12
  %x.i664 = getelementptr inbounds %struct.drm_crtc, ptr %194, i32 0, i32 14
  %197 = ptrtoint ptr %x.i664 to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load i32, ptr %x.i664, align 4
  %y.i665 = getelementptr inbounds %struct.drm_crtc, ptr %194, i32 0, i32 15
  %199 = ptrtoint ptr %y.i665 to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load i32, ptr %y.i665, align 8
  %primary.i666 = getelementptr inbounds %struct.drm_crtc, ptr %194, i32 0, i32 6
  %201 = ptrtoint ptr %primary.i666 to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %primary.i666, align 4
  %fb.i667 = getelementptr inbounds %struct.drm_plane, ptr %202, i32 0, i32 12
  %203 = ptrtoint ptr %fb.i667 to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load ptr, ptr %fb.i667, align 4
  %call.i668 = tail call zeroext i1 @drm_crtc_helper_set_mode(ptr noundef nonnull %194, ptr noundef %mode.i663, i32 noundef %198, i32 noundef %200, ptr noundef %204) #7
  br label %if.end165

if.end165:                                        ; preds = %if.then.i669, %land.lhs.true.i662.if.end165_crit_edge, %if.end163.if.end165_crit_edge, %if.end133.if.end165_crit_edge
  %load_detect_property = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 44, i32 7
  %205 = ptrtoint ptr %load_detect_property to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load ptr, ptr %load_detect_property, align 4
  %cmp167 = icmp eq ptr %206, %property
  br i1 %cmp167, label %if.then169, label %if.end165.if.end180_crit_edge

if.end165.if.end180_crit_edge:                    ; preds = %if.end165
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end180

if.then169:                                       ; preds = %if.end165
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %val)
  %cmp174 = icmp ne i64 %val, 0
  %dac_load_detect = getelementptr inbounds %struct.radeon_connector, ptr %connector, i32 0, i32 8
  %. = zext i1 %cmp174 to i8
  %207 = ptrtoint ptr %dac_load_detect to i32
  call void @__asan_store1_noabort(i32 %207)
  store i8 %., ptr %dac_load_detect, align 8
  br label %if.end180

if.end180:                                        ; preds = %if.then169, %if.end165.if.end180_crit_edge
  %tmds_pll_property = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 44, i32 9
  %208 = ptrtoint ptr %tmds_pll_property to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load ptr, ptr %tmds_pll_property, align 4
  %cmp182 = icmp eq ptr %209, %property
  br i1 %cmp182, label %if.then184, label %if.end180.if.end220_crit_edge

if.end180.if.end220_crit_edge:                    ; preds = %if.end180
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end220

if.then184:                                       ; preds = %if.end180
  %210 = ptrtoint ptr %connector to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load ptr, ptr %connector, align 8
  %encoder_list.i671 = getelementptr inbounds %struct.drm_device, ptr %211, i32 0, i32 30, i32 16
  %212 = ptrtoint ptr %encoder_list.i671 to i32
  call void @__asan_load4_noabort(i32 %212)
  %.pn21.i672 = load ptr, ptr %encoder_list.i671, align 4
  %cmp.not22.i673 = icmp eq ptr %.pn21.i672, %encoder_list.i671
  br i1 %cmp.not22.i673, label %if.then184.cleanup301_crit_edge, label %for.body.lr.ph.i675

if.then184.cleanup301_crit_edge:                  ; preds = %if.then184
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup301

for.body.lr.ph.i675:                              ; preds = %if.then184
  %possible_encoders.i674 = getelementptr inbounds %struct.drm_connector, ptr %connector, i32 0, i32 40
  %213 = ptrtoint ptr %possible_encoders.i674 to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load i32, ptr %possible_encoders.i674, align 8
  br label %for.body.i681

for.body.i681:                                    ; preds = %for.inc.i687.for.body.i681_crit_edge, %for.body.lr.ph.i675
  %.pn23.i676 = phi ptr [ %.pn21.i672, %for.body.lr.ph.i675 ], [ %.pn.i685, %for.inc.i687.for.body.i681_crit_edge ]
  %index.i.i.i677 = getelementptr i8, ptr %.pn23.i676, i32 36
  %215 = ptrtoint ptr %index.i.i.i677 to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load i32, ptr %index.i.i.i677, align 4
  %shl.i.i678 = shl nuw i32 1, %216
  %and.i679 = and i32 %shl.i.i678, %214
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i679)
  %tobool.not.i680 = icmp eq i32 %and.i679, 0
  br i1 %tobool.not.i680, label %for.body.i681.for.inc.i687_crit_edge, label %if.else.i684

for.body.i681.for.inc.i687_crit_edge:             ; preds = %for.body.i681
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i687

if.else.i684:                                     ; preds = %for.body.i681
  %encoder_type4.i682 = getelementptr i8, ptr %.pn23.i676, i32 32
  %217 = ptrtoint ptr %encoder_type4.i682 to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load i32, ptr %encoder_type4.i682, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %218)
  %cmp5.i683 = icmp eq i32 %218, 2
  br i1 %cmp5.i683, label %radeon_find_encoder.exit691, label %if.else.i684.for.inc.i687_crit_edge

if.else.i684.for.inc.i687_crit_edge:              ; preds = %if.else.i684
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i687

for.inc.i687:                                     ; preds = %if.else.i684.for.inc.i687_crit_edge, %for.body.i681.for.inc.i687_crit_edge
  %219 = ptrtoint ptr %.pn23.i676 to i32
  call void @__asan_load4_noabort(i32 %219)
  %.pn.i685 = load ptr, ptr %.pn23.i676, align 4
  %cmp.not.i686 = icmp eq ptr %.pn.i685, %encoder_list.i671
  br i1 %cmp.not.i686, label %for.inc.i687.cleanup301_crit_edge, label %for.inc.i687.for.body.i681_crit_edge

for.inc.i687.for.body.i681_crit_edge:             ; preds = %for.inc.i687
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i681

for.inc.i687.cleanup301_crit_edge:                ; preds = %for.inc.i687
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup301

radeon_find_encoder.exit691:                      ; preds = %if.else.i684
  %encoder.0.le.i688 = getelementptr i8, ptr %.pn23.i676, i32 -4
  %tobool186.not = icmp eq ptr %encoder.0.le.i688, null
  br i1 %tobool186.not, label %radeon_find_encoder.exit691.cleanup301_crit_edge, label %if.end188

radeon_find_encoder.exit691.cleanup301_crit_edge: ; preds = %radeon_find_encoder.exit691
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup301

if.end188:                                        ; preds = %radeon_find_encoder.exit691
  %enc_priv192 = getelementptr i8, ptr %.pn23.i676, i32 220
  %220 = ptrtoint ptr %enc_priv192 to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load ptr, ptr %enc_priv192, align 4
  %tobool193.not = icmp eq ptr %221, null
  br i1 %tobool193.not, label %if.end188.cleanup301_crit_edge, label %if.end195

if.end188.cleanup301_crit_edge:                   ; preds = %if.end188
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup301

if.end195:                                        ; preds = %if.end188
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %val)
  %cmp196 = icmp eq i64 %val, 0
  br i1 %cmp196, label %if.then198, label %if.end195.if.then212_crit_edge

if.end195.if.then212_crit_edge:                   ; preds = %if.end195
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then212

if.then198:                                       ; preds = %if.end195
  %is_atom_bios = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 14
  %222 = ptrtoint ptr %is_atom_bios to i32
  call void @__asan_load1_noabort(i32 %222)
  %223 = load i8, ptr %is_atom_bios, align 4, !range !87
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %223)
  %tobool199.not = icmp eq i8 %223, 0
  br i1 %tobool199.not, label %if.end207, label %if.then200

if.then200:                                       ; preds = %if.then198
  %call201 = tail call zeroext i1 @radeon_atombios_get_tmds_info(ptr noundef nonnull %encoder.0.le.i688, ptr noundef nonnull %221) #7
  br i1 %call201, label %if.then200.if.end214_crit_edge, label %if.then200.if.then212_crit_edge

if.then200.if.then212_crit_edge:                  ; preds = %if.then200
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then212

if.then200.if.end214_crit_edge:                   ; preds = %if.then200
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end214

if.end207:                                        ; preds = %if.then198
  %call204 = tail call zeroext i1 @radeon_legacy_get_tmds_info_from_combios(ptr noundef nonnull %encoder.0.le.i688, ptr noundef nonnull %221) #7
  br i1 %call204, label %if.end207.if.end214_crit_edge, label %if.end207.if.then212_crit_edge

if.end207.if.then212_crit_edge:                   ; preds = %if.end207
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then212

if.end207.if.end214_crit_edge:                    ; preds = %if.end207
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end214

if.then212:                                       ; preds = %if.end207.if.then212_crit_edge, %if.then200.if.then212_crit_edge, %if.end195.if.then212_crit_edge
  %call213 = tail call zeroext i1 @radeon_legacy_get_tmds_info_from_table(ptr noundef nonnull %encoder.0.le.i688, ptr noundef nonnull %221) #7
  br label %if.end214

if.end214:                                        ; preds = %if.then212, %if.end207.if.end214_crit_edge, %if.then200.if.end214_crit_edge
  %crtc1.i692 = getelementptr i8, ptr %.pn23.i676, i32 48
  %224 = ptrtoint ptr %crtc1.i692 to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load ptr, ptr %crtc1.i692, align 4
  %tobool.not.i693 = icmp eq ptr %225, null
  br i1 %tobool.not.i693, label %if.end214.if.end220_crit_edge, label %land.lhs.true.i696

if.end214.if.end220_crit_edge:                    ; preds = %if.end214
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end220

land.lhs.true.i696:                               ; preds = %if.end214
  %enabled.i694 = getelementptr inbounds %struct.drm_crtc, ptr %225, i32 0, i32 11
  %226 = ptrtoint ptr %enabled.i694 to i32
  call void @__asan_load1_noabort(i32 %226)
  %227 = load i8, ptr %enabled.i694, align 8, !range !87
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %227)
  %tobool2.not.i695 = icmp eq i8 %227, 0
  br i1 %tobool2.not.i695, label %land.lhs.true.i696.if.end220_crit_edge, label %if.then.i703

land.lhs.true.i696.if.end220_crit_edge:           ; preds = %land.lhs.true.i696
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end220

if.then.i703:                                     ; preds = %land.lhs.true.i696
  call void @__sanitizer_cov_trace_pc() #9
  %mode.i697 = getelementptr inbounds %struct.drm_crtc, ptr %225, i32 0, i32 12
  %x.i698 = getelementptr inbounds %struct.drm_crtc, ptr %225, i32 0, i32 14
  %228 = ptrtoint ptr %x.i698 to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load i32, ptr %x.i698, align 4
  %y.i699 = getelementptr inbounds %struct.drm_crtc, ptr %225, i32 0, i32 15
  %230 = ptrtoint ptr %y.i699 to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load i32, ptr %y.i699, align 8
  %primary.i700 = getelementptr inbounds %struct.drm_crtc, ptr %225, i32 0, i32 6
  %232 = ptrtoint ptr %primary.i700 to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load ptr, ptr %primary.i700, align 4
  %fb.i701 = getelementptr inbounds %struct.drm_plane, ptr %233, i32 0, i32 12
  %234 = ptrtoint ptr %fb.i701 to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load ptr, ptr %fb.i701, align 4
  %call.i702 = tail call zeroext i1 @drm_crtc_helper_set_mode(ptr noundef nonnull %225, ptr noundef %mode.i697, i32 noundef %229, i32 noundef %231, ptr noundef %235) #7
  br label %if.end220

if.end220:                                        ; preds = %if.then.i703, %land.lhs.true.i696.if.end220_crit_edge, %if.end214.if.end220_crit_edge, %if.end180.if.end220_crit_edge
  %scaling_mode_property = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 30, i32 73
  %236 = ptrtoint ptr %scaling_mode_property to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load ptr, ptr %scaling_mode_property, align 4
  %cmp221 = icmp eq ptr %237, %property
  br i1 %cmp221, label %if.then223, label %if.end220.if.end256_crit_edge

if.end220.if.end256_crit_edge:                    ; preds = %if.end220
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end256

if.then223:                                       ; preds = %if.end220
  %encoder224 = getelementptr inbounds %struct.drm_connector, ptr %connector, i32 0, i32 41
  %238 = ptrtoint ptr %encoder224 to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load ptr, ptr %encoder224, align 4
  %tobool225.not = icmp eq ptr %239, null
  br i1 %tobool225.not, label %if.else231, label %if.then223.if.end236_crit_edge

if.then223.if.end236_crit_edge:                   ; preds = %if.then223
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end236

if.else231:                                       ; preds = %if.then223
  call void @__sanitizer_cov_trace_pc() #9
  %helper_private = getelementptr inbounds %struct.drm_connector, ptr %connector, i32 0, i32 35
  %240 = ptrtoint ptr %helper_private to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load ptr, ptr %helper_private, align 4
  %best_encoder = getelementptr inbounds %struct.drm_connector_helper_funcs, ptr %241, i32 0, i32 4
  %242 = ptrtoint ptr %best_encoder to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load ptr, ptr %best_encoder, align 4
  %call233 = tail call ptr %243(ptr noundef %connector) #7
  br label %if.end236

if.end236:                                        ; preds = %if.else231, %if.then223.if.end236_crit_edge
  %radeon_encoder.0 = phi ptr [ %call233, %if.else231 ], [ %239, %if.then223.if.end236_crit_edge ]
  %switch.tableidx = add i64 %val, -1
  call void @__sanitizer_cov_trace_const_cmp8(i64 3, i64 %switch.tableidx)
  %244 = icmp ult i64 %switch.tableidx, 3
  br i1 %244, label %switch.lookup, label %sw.epilog.thread

switch.lookup:                                    ; preds = %if.end236
  %switch.idx.cast = trunc i64 %switch.tableidx to i32
  %switch.offset = add i32 %switch.idx.cast, 1
  %rmx_type240 = getelementptr inbounds %struct.radeon_encoder, ptr %radeon_encoder.0, i32 0, i32 7
  %245 = ptrtoint ptr %rmx_type240 to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load i32, ptr %rmx_type240, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %246, i32 %switch.offset)
  %cmp241 = icmp eq i32 %246, %switch.offset
  br i1 %cmp241, label %switch.lookup.cleanup301_crit_edge, label %land.lhs.true

switch.lookup.cleanup301_crit_edge:               ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup301

sw.epilog.thread:                                 ; preds = %if.end236
  %rmx_type240750 = getelementptr inbounds %struct.radeon_encoder, ptr %radeon_encoder.0, i32 0, i32 7
  %247 = ptrtoint ptr %rmx_type240750 to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load i32, ptr %rmx_type240750, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %248)
  %cmp241751 = icmp eq i32 %248, 0
  br i1 %cmp241751, label %sw.epilog.thread.cleanup301_crit_edge, label %sw.epilog.thread.if.end250_crit_edge

sw.epilog.thread.if.end250_crit_edge:             ; preds = %sw.epilog.thread
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end250

sw.epilog.thread.cleanup301_crit_edge:            ; preds = %sw.epilog.thread
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup301

land.lhs.true:                                    ; preds = %switch.lookup
  %native_mode = getelementptr inbounds %struct.radeon_encoder, ptr %radeon_encoder.0, i32 0, i32 11
  %249 = ptrtoint ptr %native_mode to i32
  call void @__asan_load4_noabort(i32 %249)
  %250 = load i32, ptr %native_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %250)
  %cmp247 = icmp eq i32 %250, 0
  br i1 %cmp247, label %land.lhs.true.cleanup301_crit_edge, label %land.lhs.true.if.end250_crit_edge

land.lhs.true.if.end250_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end250

land.lhs.true.cleanup301_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup301

if.end250:                                        ; preds = %land.lhs.true.if.end250_crit_edge, %sw.epilog.thread.if.end250_crit_edge
  %rmx_type.0753759 = phi i32 [ %switch.offset, %land.lhs.true.if.end250_crit_edge ], [ 0, %sw.epilog.thread.if.end250_crit_edge ]
  %rmx_type240754758 = phi ptr [ %rmx_type240, %land.lhs.true.if.end250_crit_edge ], [ %rmx_type240750, %sw.epilog.thread.if.end250_crit_edge ]
  %251 = ptrtoint ptr %rmx_type240754758 to i32
  call void @__asan_store4_noabort(i32 %251)
  store i32 %rmx_type.0753759, ptr %rmx_type240754758, align 4
  %crtc1.i705 = getelementptr inbounds %struct.drm_encoder, ptr %radeon_encoder.0, i32 0, i32 8
  %252 = ptrtoint ptr %crtc1.i705 to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load ptr, ptr %crtc1.i705, align 4
  %tobool.not.i706 = icmp eq ptr %253, null
  br i1 %tobool.not.i706, label %if.end250.if.end256_crit_edge, label %land.lhs.true.i709

if.end250.if.end256_crit_edge:                    ; preds = %if.end250
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end256

land.lhs.true.i709:                               ; preds = %if.end250
  %enabled.i707 = getelementptr inbounds %struct.drm_crtc, ptr %253, i32 0, i32 11
  %254 = ptrtoint ptr %enabled.i707 to i32
  call void @__asan_load1_noabort(i32 %254)
  %255 = load i8, ptr %enabled.i707, align 8, !range !87
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %255)
  %tobool2.not.i708 = icmp eq i8 %255, 0
  br i1 %tobool2.not.i708, label %land.lhs.true.i709.if.end256_crit_edge, label %if.then.i716

land.lhs.true.i709.if.end256_crit_edge:           ; preds = %land.lhs.true.i709
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end256

if.then.i716:                                     ; preds = %land.lhs.true.i709
  call void @__sanitizer_cov_trace_pc() #9
  %mode.i710 = getelementptr inbounds %struct.drm_crtc, ptr %253, i32 0, i32 12
  %x.i711 = getelementptr inbounds %struct.drm_crtc, ptr %253, i32 0, i32 14
  %256 = ptrtoint ptr %x.i711 to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load i32, ptr %x.i711, align 4
  %y.i712 = getelementptr inbounds %struct.drm_crtc, ptr %253, i32 0, i32 15
  %258 = ptrtoint ptr %y.i712 to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load i32, ptr %y.i712, align 8
  %primary.i713 = getelementptr inbounds %struct.drm_crtc, ptr %253, i32 0, i32 6
  %260 = ptrtoint ptr %primary.i713 to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load ptr, ptr %primary.i713, align 4
  %fb.i714 = getelementptr inbounds %struct.drm_plane, ptr %261, i32 0, i32 12
  %262 = ptrtoint ptr %fb.i714 to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load ptr, ptr %fb.i714, align 4
  %call.i715 = tail call zeroext i1 @drm_crtc_helper_set_mode(ptr noundef nonnull %253, ptr noundef %mode.i710, i32 noundef %257, i32 noundef %259, ptr noundef %263) #7
  br label %if.end256

if.end256:                                        ; preds = %if.then.i716, %land.lhs.true.i709.if.end256_crit_edge, %if.end250.if.end256_crit_edge, %if.end220.if.end256_crit_edge
  %output_csc_property = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 44, i32 15
  %264 = ptrtoint ptr %output_csc_property to i32
  call void @__asan_load4_noabort(i32 %264)
  %265 = load ptr, ptr %output_csc_property, align 4
  %cmp258 = icmp eq ptr %265, %property
  br i1 %cmp258, label %if.then260, label %if.end256.cleanup301_crit_edge

if.end256.cleanup301_crit_edge:                   ; preds = %if.end256
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup301

if.then260:                                       ; preds = %if.end256
  %encoder261 = getelementptr inbounds %struct.drm_connector, ptr %connector, i32 0, i32 41
  %266 = ptrtoint ptr %encoder261 to i32
  call void @__asan_load4_noabort(i32 %266)
  %267 = load ptr, ptr %encoder261, align 4
  %tobool262.not = icmp eq ptr %267, null
  br i1 %tobool262.not, label %if.else268, label %if.then260.if.end276_crit_edge

if.then260.if.end276_crit_edge:                   ; preds = %if.then260
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end276

if.else268:                                       ; preds = %if.then260
  call void @__sanitizer_cov_trace_pc() #9
  %helper_private270 = getelementptr inbounds %struct.drm_connector, ptr %connector, i32 0, i32 35
  %268 = ptrtoint ptr %helper_private270 to i32
  call void @__asan_load4_noabort(i32 %268)
  %269 = load ptr, ptr %helper_private270, align 4
  %best_encoder272 = getelementptr inbounds %struct.drm_connector_helper_funcs, ptr %269, i32 0, i32 4
  %270 = ptrtoint ptr %best_encoder272 to i32
  call void @__asan_load4_noabort(i32 %270)
  %271 = load ptr, ptr %best_encoder272, align 4
  %call273 = tail call ptr %271(ptr noundef %connector) #7
  br label %if.end276

if.end276:                                        ; preds = %if.else268, %if.then260.if.end276_crit_edge
  %radeon_encoder.1 = phi ptr [ %call273, %if.else268 ], [ %267, %if.then260.if.end276_crit_edge ]
  %output_csc = getelementptr inbounds %struct.radeon_encoder, ptr %radeon_encoder.1, i32 0, i32 17
  %272 = ptrtoint ptr %output_csc to i32
  call void @__asan_load4_noabort(i32 %272)
  %273 = load i32, ptr %output_csc, align 4
  %conv277 = zext i32 %273 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %conv277, i64 %val)
  %cmp278 = icmp eq i64 %conv277, %val
  br i1 %cmp278, label %if.end276.cleanup301_crit_edge, label %if.end281

if.end276.cleanup301_crit_edge:                   ; preds = %if.end276
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup301

if.end281:                                        ; preds = %if.end276
  %conv282 = trunc i64 %val to i32
  %274 = ptrtoint ptr %output_csc to i32
  call void @__asan_store4_noabort(i32 %274)
  store i32 %conv282, ptr %output_csc, align 4
  %275 = ptrtoint ptr %encoder261 to i32
  call void @__asan_load4_noabort(i32 %275)
  %276 = load ptr, ptr %encoder261, align 4
  %tobool285.not = icmp eq ptr %276, null
  br i1 %tobool285.not, label %if.end281.cleanup301_crit_edge, label %land.lhs.true286

if.end281.cleanup301_crit_edge:                   ; preds = %if.end281
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup301

land.lhs.true286:                                 ; preds = %if.end281
  %crtc = getelementptr inbounds %struct.drm_encoder, ptr %276, i32 0, i32 8
  %277 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %277)
  %278 = load ptr, ptr %crtc, align 4
  %tobool288.not = icmp eq ptr %278, null
  br i1 %tobool288.not, label %land.lhs.true286.cleanup301_crit_edge, label %if.then289

land.lhs.true286.cleanup301_crit_edge:            ; preds = %land.lhs.true286
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup301

if.then289:                                       ; preds = %land.lhs.true286
  call void @__sanitizer_cov_trace_pc() #9
  %output_csc297 = getelementptr inbounds %struct.radeon_crtc, ptr %278, i32 0, i32 41
  %279 = ptrtoint ptr %output_csc297 to i32
  call void @__asan_store4_noabort(i32 %279)
  store i32 %conv282, ptr %output_csc297, align 4
  %funcs = getelementptr inbounds %struct.drm_crtc, ptr %278, i32 0, i32 16
  %280 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %280)
  %281 = load ptr, ptr %funcs, align 4
  %gamma_set = getelementptr inbounds %struct.drm_crtc_funcs, ptr %281, i32 0, i32 4
  %282 = ptrtoint ptr %gamma_set to i32
  call void @__asan_load4_noabort(i32 %282)
  %283 = load ptr, ptr %gamma_set, align 4
  %call298 = tail call i32 %283(ptr noundef nonnull %278, ptr noundef null, ptr noundef null, ptr noundef null, i32 noundef 0, ptr noundef null) #7
  br label %cleanup301

cleanup301:                                       ; preds = %if.then289, %land.lhs.true286.cleanup301_crit_edge, %if.end281.cleanup301_crit_edge, %if.end276.cleanup301_crit_edge, %if.end256.cleanup301_crit_edge, %land.lhs.true.cleanup301_crit_edge, %sw.epilog.thread.cleanup301_crit_edge, %switch.lookup.cleanup301_crit_edge, %if.end188.cleanup301_crit_edge, %radeon_find_encoder.exit691.cleanup301_crit_edge, %for.inc.i687.cleanup301_crit_edge, %if.then184.cleanup301_crit_edge, %if.end145.cleanup301_crit_edge, %if.end142.cleanup301_crit_edge, %for.inc.i653.cleanup301_crit_edge, %if.then137.cleanup301_crit_edge, %radeon_find_encoder.exit602.cleanup301_crit_edge, %for.inc.i598.cleanup301_crit_edge, %if.then117.cleanup301_crit_edge, %radeon_find_encoder.exit568.cleanup301_crit_edge, %for.inc.i564.cleanup301_crit_edge, %if.then97.cleanup301_crit_edge, %radeon_find_encoder.exit534.cleanup301_crit_edge, %for.inc.i530.cleanup301_crit_edge, %if.then77.cleanup301_crit_edge, %radeon_find_encoder.exit500.cleanup301_crit_edge, %for.inc.i496.cleanup301_crit_edge, %if.then50.cleanup301_crit_edge, %radeon_find_encoder.exit466.cleanup301_crit_edge, %for.inc.i462.cleanup301_crit_edge, %if.then24.cleanup301_crit_edge, %if.end.cleanup301_crit_edge, %radeon_find_encoder.exit.cleanup301_crit_edge, %for.inc.i.cleanup301_crit_edge, %if.then.cleanup301_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @radeon_connector_unregister(ptr nocapture noundef readonly %connector) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %ddc_bus = getelementptr inbounds %struct.radeon_connector, ptr %connector, i32 0, i32 3
  %0 = ptrtoint ptr %ddc_bus to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ddc_bus, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %has_aux = getelementptr inbounds %struct.radeon_i2c_chan, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %has_aux to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %has_aux, align 8, !range !87
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool2.not = icmp eq i8 %3, 0
  br i1 %tobool2.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %aux = getelementptr inbounds %struct.radeon_i2c_chan, ptr %1, i32 0, i32 4
  tail call void @drm_dp_aux_unregister(ptr noundef %aux) #7
  %4 = ptrtoint ptr %ddc_bus to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ddc_bus, align 8
  %has_aux5 = getelementptr inbounds %struct.radeon_i2c_chan, ptr %5, i32 0, i32 5
  %6 = ptrtoint ptr %has_aux5 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %has_aux5, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @radeon_connector_destroy(ptr noundef %connector) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %edid.i = getelementptr inbounds %struct.radeon_connector, ptr %connector, i32 0, i32 6
  %0 = ptrtoint ptr %edid.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %edid.i, align 8
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.radeon_connector_free_edid.exit_crit_edge, label %if.then.i

entry.radeon_connector_free_edid.exit_crit_edge:  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %radeon_connector_free_edid.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @kfree(ptr noundef nonnull %1) #7
  %2 = ptrtoint ptr %edid.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %edid.i, align 8
  br label %radeon_connector_free_edid.exit

radeon_connector_free_edid.exit:                  ; preds = %if.then.i, %entry.radeon_connector_free_edid.exit_crit_edge
  %con_priv = getelementptr inbounds %struct.radeon_connector, ptr %connector, i32 0, i32 7
  %3 = ptrtoint ptr %con_priv to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %con_priv, align 4
  tail call void @kfree(ptr noundef %4) #7
  tail call void @drm_connector_unregister(ptr noundef %connector) #7
  tail call void @drm_connector_cleanup(ptr noundef %connector) #7
  tail call void @kfree(ptr noundef %connector) #7
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define internal ptr @radeon_best_single_encoder(ptr nocapture noundef readonly %connector) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %connector to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %connector, align 8
  %encoder_list = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 30, i32 16
  %possible_encoders = getelementptr inbounds %struct.drm_connector, ptr %connector, i32 0, i32 40
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry
  %.pn.in = phi ptr [ %encoder_list, %entry ], [ %.pn, %for.body.for.cond_crit_edge ]
  %2 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn = load ptr, ptr %.pn.in, align 4
  %cmp.not = icmp eq ptr %.pn, %encoder_list
  br i1 %cmp.not, label %for.cond.cleanup_crit_edge, label %for.body

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body:                                         ; preds = %for.cond
  %3 = ptrtoint ptr %possible_encoders to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %possible_encoders, align 8
  %index.i.i = getelementptr i8, ptr %.pn, i32 36
  %5 = ptrtoint ptr %index.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %index.i.i, align 4
  %shl.i = shl nuw i32 1, %6
  %and = and i32 %shl.i, %4
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %for.body.for.cond_crit_edge, label %cleanup.split.loop.exit14

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond

cleanup.split.loop.exit14:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %encoder.0.le = getelementptr i8, ptr %.pn, i32 -4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.split.loop.exit14, %for.cond.cleanup_crit_edge
  %retval.0 = phi ptr [ %encoder.0.le, %cleanup.split.loop.exit14 ], [ null, %for.cond.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @drm_kms_helper_is_poll_worker() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @atombios_set_edp_panel_power(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @radeon_atom_ext_encoder_setup_ddc(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @radeon_ddc_probe(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @radeon_dp_mst_probe(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @radeon_connector_get_edid(ptr noundef %connector) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %connector to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %connector, align 8
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_private, align 4
  %edid = getelementptr inbounds %struct.radeon_connector, ptr %connector, i32 0, i32 6
  %4 = ptrtoint ptr %edid to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %edid, align 8
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %ddc_valid = getelementptr inbounds %struct.radeon_connector, ptr %connector, i32 0, i32 13, i32 3
  %6 = ptrtoint ptr %ddc_valid to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %ddc_valid, align 1, !range !87
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool2.not = icmp eq i8 %7, 0
  br i1 %tobool2.not, label %if.end.if.end4_crit_edge, label %if.then3

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @radeon_router_select_ddc_port(ptr noundef %connector) #7
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %if.end.if.end4_crit_edge
  %8 = ptrtoint ptr %connector to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %connector, align 8
  %encoder_list.i = getelementptr inbounds %struct.drm_device, ptr %9, i32 0, i32 30, i32 16
  %10 = ptrtoint ptr %encoder_list.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %.pn20.i = load ptr, ptr %encoder_list.i, align 4
  %cmp.not21.i = icmp eq ptr %.pn20.i, %encoder_list.i
  br i1 %cmp.not21.i, label %if.end4.if.else_crit_edge, label %for.body.lr.ph.i

if.end4.if.else_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

for.body.lr.ph.i:                                 ; preds = %if.end4
  %possible_encoders.i = getelementptr inbounds %struct.drm_connector, ptr %connector, i32 0, i32 40
  %11 = ptrtoint ptr %possible_encoders.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %possible_encoders.i, align 8
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %.pn22.i = phi ptr [ %.pn20.i, %for.body.lr.ph.i ], [ %.pn.i, %for.inc.i.for.body.i_crit_edge ]
  %index.i.i.i = getelementptr i8, ptr %.pn22.i, i32 36
  %13 = ptrtoint ptr %index.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %index.i.i.i, align 4
  %shl.i.i = shl nuw i32 1, %14
  %and.i = and i32 %shl.i.i, %12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.else.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

if.else.i:                                        ; preds = %for.body.i
  %encoder_id.i = getelementptr i8, ptr %.pn22.i, i32 72
  %15 = ptrtoint ptr %encoder_id.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %encoder_id.i, align 4
  %17 = and i32 %16, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 34, i32 %17)
  %switch.i = icmp eq i32 %17, 34
  br i1 %switch.i, label %radeon_connector_encoder_get_dp_bridge_encoder_id.exit, label %if.else.i.for.inc.i_crit_edge

if.else.i.for.inc.i_crit_edge:                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.else.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %18 = ptrtoint ptr %.pn22.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %.pn.i = load ptr, ptr %.pn22.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %encoder_list.i
  br i1 %cmp.not.i, label %for.inc.i.if.else_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.inc.i.if.else_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

radeon_connector_encoder_get_dp_bridge_encoder_id.exit: ; preds = %if.else.i
  %ddc_bus = getelementptr inbounds %struct.radeon_connector, ptr %connector, i32 0, i32 3
  %19 = ptrtoint ptr %ddc_bus to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ddc_bus, align 8
  %has_aux = getelementptr inbounds %struct.radeon_i2c_chan, ptr %20, i32 0, i32 5
  %21 = ptrtoint ptr %has_aux to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %has_aux, align 8, !range !87
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool6.not = icmp eq i8 %22, 0
  br i1 %tobool6.not, label %radeon_connector_encoder_get_dp_bridge_encoder_id.exit.if.else_crit_edge, label %if.then8

radeon_connector_encoder_get_dp_bridge_encoder_id.exit.if.else_crit_edge: ; preds = %radeon_connector_encoder_get_dp_bridge_encoder_id.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

if.then8:                                         ; preds = %radeon_connector_encoder_get_dp_bridge_encoder_id.exit
  call void @__sanitizer_cov_trace_pc() #9
  %ddc = getelementptr inbounds %struct.radeon_i2c_chan, ptr %20, i32 0, i32 4, i32 1
  %call10 = tail call ptr @drm_get_edid(ptr noundef %connector, ptr noundef %ddc) #7
  %23 = ptrtoint ptr %edid to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call10, ptr %edid, align 8
  br label %if.end75

if.else:                                          ; preds = %radeon_connector_encoder_get_dp_bridge_encoder_id.exit.if.else_crit_edge, %for.inc.i.if.else_crit_edge, %if.end4.if.else_crit_edge
  %connector_type = getelementptr inbounds %struct.drm_connector, ptr %connector, i32 0, i32 10
  %24 = ptrtoint ptr %connector_type to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %connector_type, align 8
  %26 = zext i32 %25 to i64
  call void @__sanitizer_cov_trace_switch(i64 %26, ptr @__sancov_gen_cov_switch_values.34)
  switch i32 %25, label %if.else47 [
    i32 10, label %if.else.if.then17_crit_edge
    i32 14, label %if.else.if.then17_crit_edge149
  ]

if.else.if.then17_crit_edge149:                   ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then17

if.else.if.then17_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then17

if.then17:                                        ; preds = %if.else.if.then17_crit_edge, %if.else.if.then17_crit_edge149
  %con_priv = getelementptr inbounds %struct.radeon_connector, ptr %connector, i32 0, i32 7
  %27 = ptrtoint ptr %con_priv to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %con_priv, align 4
  %dp_sink_type = getelementptr inbounds %struct.radeon_connector_atom_dig, ptr %28, i32 0, i32 2
  %29 = ptrtoint ptr %dp_sink_type to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %dp_sink_type, align 1
  %.off = add i8 %30, -19
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %.off)
  %switch = icmp ult i8 %.off, 2
  br i1 %switch, label %land.lhs.true26, label %if.then17.if.else37_crit_edge

if.then17.if.else37_crit_edge:                    ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else37

land.lhs.true26:                                  ; preds = %if.then17
  %ddc_bus27 = getelementptr inbounds %struct.radeon_connector, ptr %connector, i32 0, i32 3
  %31 = ptrtoint ptr %ddc_bus27 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %ddc_bus27, align 8
  %has_aux28 = getelementptr inbounds %struct.radeon_i2c_chan, ptr %32, i32 0, i32 5
  %33 = ptrtoint ptr %has_aux28 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %has_aux28, align 8, !range !87
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %tobool29.not = icmp eq i8 %34, 0
  br i1 %tobool29.not, label %land.lhs.true26.if.else37_crit_edge, label %if.then31

land.lhs.true26.if.else37_crit_edge:              ; preds = %land.lhs.true26
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else37

if.then31:                                        ; preds = %land.lhs.true26
  call void @__sanitizer_cov_trace_pc() #9
  %ddc34 = getelementptr inbounds %struct.radeon_i2c_chan, ptr %32, i32 0, i32 4, i32 1
  %call35 = tail call ptr @drm_get_edid(ptr noundef %connector, ptr noundef %ddc34) #7
  %35 = ptrtoint ptr %edid to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %call35, ptr %edid, align 8
  br label %if.end75

if.else37:                                        ; preds = %land.lhs.true26.if.else37_crit_edge, %if.then17.if.else37_crit_edge
  %ddc_bus38 = getelementptr inbounds %struct.radeon_connector, ptr %connector, i32 0, i32 3
  %36 = ptrtoint ptr %ddc_bus38 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %ddc_bus38, align 8
  %tobool39.not = icmp eq ptr %37, null
  br i1 %tobool39.not, label %if.else37.if.end75thread-pre-split_crit_edge, label %if.then40

if.else37.if.end75thread-pre-split_crit_edge:     ; preds = %if.else37
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end75thread-pre-split

if.then40:                                        ; preds = %if.else37
  call void @__sanitizer_cov_trace_pc() #9
  %call43 = tail call ptr @drm_get_edid(ptr noundef %connector, ptr noundef nonnull %37) #7
  %38 = ptrtoint ptr %edid to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %call43, ptr %edid, align 8
  br label %if.end75

if.else47:                                        ; preds = %if.else
  %ddc_bus64 = getelementptr inbounds %struct.radeon_connector, ptr %connector, i32 0, i32 3
  %39 = ptrtoint ptr %ddc_bus64 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %ddc_bus64, align 8
  %tobool65.not = icmp eq ptr %40, null
  br i1 %tobool65.not, label %if.else47.if.end75thread-pre-split_crit_edge, label %if.then66

if.else47.if.end75thread-pre-split_crit_edge:     ; preds = %if.else47
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end75thread-pre-split

if.then66:                                        ; preds = %if.else47
  call void @__sanitizer_cov_trace_pc() #9
  %call70 = tail call ptr @drm_get_edid(ptr noundef %connector, ptr noundef nonnull %40) #7
  %41 = ptrtoint ptr %edid to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %call70, ptr %edid, align 8
  br label %if.end75

if.end75thread-pre-split:                         ; preds = %if.else47.if.end75thread-pre-split_crit_edge, %if.else37.if.end75thread-pre-split_crit_edge
  %42 = ptrtoint ptr %edid to i32
  call void @__asan_load4_noabort(i32 %42)
  %.pr = load ptr, ptr %edid, align 8
  br label %if.end75

if.end75:                                         ; preds = %if.end75thread-pre-split, %if.then66, %if.then40, %if.then31, %if.then8
  %43 = phi ptr [ %.pr, %if.end75thread-pre-split ], [ %call35, %if.then31 ], [ %call43, %if.then40 ], [ %call70, %if.then66 ], [ %call10, %if.then8 ]
  %tobool77.not = icmp eq ptr %43, null
  br i1 %tobool77.not, label %if.then78, label %if.end75.cleanup_crit_edge

if.end75.cleanup_crit_edge:                       ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then78:                                        ; preds = %if.end75
  %flags = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 7
  %44 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %flags, align 8
  %and79 = and i32 %45, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and79)
  %tobool80.not = icmp eq i32 %and79, 0
  br i1 %tobool80.not, label %if.then78.if.end85_crit_edge, label %land.lhs.true81

if.then78.if.end85_crit_edge:                     ; preds = %if.then78
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end85

land.lhs.true81:                                  ; preds = %if.then78
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @radeon_runtime_pm to i32))
  %46 = load i32, ptr @radeon_runtime_pm, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %cmp82.not = icmp eq i32 %46, 0
  br i1 %cmp82.not, label %land.lhs.true81.if.end85_crit_edge, label %land.lhs.true81.cleanup_crit_edge

land.lhs.true81.cleanup_crit_edge:                ; preds = %land.lhs.true81
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

land.lhs.true81.if.end85_crit_edge:               ; preds = %land.lhs.true81
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end85

if.end85:                                         ; preds = %land.lhs.true81.if.end85_crit_edge, %if.then78.if.end85_crit_edge
  %is_atom_bios = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 14
  %47 = ptrtoint ptr %is_atom_bios to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %is_atom_bios, align 4, !range !87
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %48)
  %tobool86.not = icmp eq i8 %48, 0
  br i1 %tobool86.not, label %if.end85.cleanup.sink.split_crit_edge, label %if.then87

if.end85.cleanup.sink.split_crit_edge:            ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

if.then87:                                        ; preds = %if.end85
  %connector_type88 = getelementptr inbounds %struct.drm_connector, ptr %connector, i32 0, i32 10
  %49 = ptrtoint ptr %connector_type88 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %connector_type88, align 8
  %51 = zext i32 %50 to i64
  call void @__sanitizer_cov_trace_switch(i64 %51, ptr @__sancov_gen_cov_switch_values.35)
  switch i32 %50, label %if.then87.cleanup_crit_edge [
    i32 7, label %if.then87.cleanup.sink.split_crit_edge
    i32 14, label %if.then87.cleanup.sink.split_crit_edge150
  ]

if.then87.cleanup.sink.split_crit_edge150:        ; preds = %if.then87
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

if.then87.cleanup.sink.split_crit_edge:           ; preds = %if.then87
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

if.then87.cleanup_crit_edge:                      ; preds = %if.then87
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup.sink.split:                               ; preds = %if.then87.cleanup.sink.split_crit_edge, %if.then87.cleanup.sink.split_crit_edge150, %if.end85.cleanup.sink.split_crit_edge
  %call96 = tail call ptr @radeon_bios_get_hardcoded_edid(ptr noundef %3) #7
  %52 = ptrtoint ptr %edid to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %call96, ptr %edid, align 8
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.then87.cleanup_crit_edge, %land.lhs.true81.cleanup_crit_edge, %if.end75.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @radeon_audio_detect(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_suspend(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @radeon_atombios_connected_scratch_regs(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @radeon_combios_connected_scratch_regs(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @radeon_router_select_ddc_port(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_get_edid(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @radeon_bios_get_hardcoded_edid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_mono_fast_ns() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @radeon_atombios_get_tmds_info(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @radeon_legacy_get_tmds_info_from_combios(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @radeon_legacy_get_tmds_info_from_table(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @drm_crtc_helper_set_mode(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_dp_aux_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_connector_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @radeon_dp_get_modes(ptr noundef %connector) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %con_priv = getelementptr inbounds %struct.radeon_connector, ptr %connector, i32 0, i32 7
  %0 = ptrtoint ptr %con_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %con_priv, align 4
  %2 = ptrtoint ptr %connector to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %connector, align 8
  %encoder_list.i = getelementptr inbounds %struct.drm_device, ptr %3, i32 0, i32 30, i32 16
  %possible_encoders.i = getelementptr inbounds %struct.drm_connector, ptr %connector, i32 0, i32 40
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %entry
  %.pn.in.i = phi ptr [ %encoder_list.i, %entry ], [ %.pn.i, %for.body.i.for.cond.i_crit_edge ]
  %4 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %.pn.i = load ptr, ptr %.pn.in.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %encoder_list.i
  br i1 %cmp.not.i, label %for.cond.i.radeon_best_single_encoder.exit_crit_edge, label %for.body.i

for.cond.i.radeon_best_single_encoder.exit_crit_edge: ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %radeon_best_single_encoder.exit

for.body.i:                                       ; preds = %for.cond.i
  %5 = ptrtoint ptr %possible_encoders.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %possible_encoders.i, align 8
  %index.i.i.i = getelementptr i8, ptr %.pn.i, i32 36
  %7 = ptrtoint ptr %index.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %index.i.i.i, align 4
  %shl.i.i = shl nuw i32 1, %8
  %and.i = and i32 %shl.i.i, %6
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %for.body.i.for.cond.i_crit_edge, label %cleanup.split.loop.exit14.i

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.i

cleanup.split.loop.exit14.i:                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %encoder.0.le.i = getelementptr i8, ptr %.pn.i, i32 -4
  br label %radeon_best_single_encoder.exit

radeon_best_single_encoder.exit:                  ; preds = %cleanup.split.loop.exit14.i, %for.cond.i.radeon_best_single_encoder.exit_crit_edge
  %retval.0.i = phi ptr [ %encoder.0.le.i, %cleanup.split.loop.exit14.i ], [ null, %for.cond.i.radeon_best_single_encoder.exit_crit_edge ]
  %connector_type = getelementptr inbounds %struct.drm_connector, ptr %connector, i32 0, i32 10
  %9 = ptrtoint ptr %connector_type to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %connector_type, align 8
  %11 = zext i32 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.36)
  switch i32 %10, label %if.else43 [
    i32 14, label %if.then5
    i32 7, label %if.else
  ]

if.then5:                                         ; preds = %radeon_best_single_encoder.exit
  %edp_on = getelementptr inbounds %struct.radeon_connector_atom_dig, ptr %1, i32 0, i32 5
  %12 = ptrtoint ptr %edp_on to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %edp_on, align 4, !range !87
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool.not = icmp eq i8 %13, 0
  br i1 %tobool.not, label %if.then6, label %if.then5.if.end_crit_edge

if.then5.if.end_crit_edge:                        ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then6:                                         ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #9
  %call7 = tail call zeroext i1 @atombios_set_edp_panel_power(ptr noundef %connector, i32 noundef 12) #7
  br label %if.end

if.end:                                           ; preds = %if.then6, %if.then5.if.end_crit_edge
  tail call fastcc void @radeon_connector_get_edid(ptr noundef %connector)
  %edid.i = getelementptr inbounds %struct.radeon_connector, ptr %connector, i32 0, i32 6
  %14 = ptrtoint ptr %edid.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %edid.i, align 8
  %tobool.not.i96 = icmp eq ptr %15, null
  br i1 %tobool.not.i96, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call.i = tail call i32 @drm_connector_update_edid_property(ptr noundef %connector, ptr noundef nonnull %15) #7
  %16 = ptrtoint ptr %edid.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %edid.i, align 8
  %call3.i = tail call i32 @drm_add_edid_modes(ptr noundef %connector, ptr noundef %17) #7
  br label %radeon_ddc_get_modes.exit

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call4.i = tail call i32 @drm_connector_update_edid_property(ptr noundef %connector, ptr noundef null) #7
  br label %radeon_ddc_get_modes.exit

radeon_ddc_get_modes.exit:                        ; preds = %if.end.i, %if.then.i
  %retval.0.i97 = phi i32 [ %call3.i, %if.then.i ], [ 0, %if.end.i ]
  %18 = ptrtoint ptr %edp_on to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %edp_on, align 4, !range !87
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool10.not = icmp eq i8 %19, 0
  br i1 %tobool10.not, label %if.then11, label %radeon_ddc_get_modes.exit.if.end23_crit_edge

radeon_ddc_get_modes.exit.if.end23_crit_edge:     ; preds = %radeon_ddc_get_modes.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end23

if.then11:                                        ; preds = %radeon_ddc_get_modes.exit
  call void @__sanitizer_cov_trace_pc() #9
  %call12 = tail call zeroext i1 @atombios_set_edp_panel_power(ptr noundef %connector, i32 noundef 13) #7
  br label %if.end23

if.else:                                          ; preds = %radeon_best_single_encoder.exit
  %20 = ptrtoint ptr %encoder_list.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %.pn20.i = load ptr, ptr %encoder_list.i, align 4
  %cmp.not21.i = icmp eq ptr %.pn20.i, %encoder_list.i
  br i1 %cmp.not21.i, label %if.else.if.end21_crit_edge, label %for.body.lr.ph.i

if.else.if.end21_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end21

for.body.lr.ph.i:                                 ; preds = %if.else
  %21 = ptrtoint ptr %possible_encoders.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %possible_encoders.i, align 8
  br label %for.body.i104

for.body.i104:                                    ; preds = %for.inc.i.for.body.i104_crit_edge, %for.body.lr.ph.i
  %.pn22.i = phi ptr [ %.pn20.i, %for.body.lr.ph.i ], [ %.pn.i105, %for.inc.i.for.body.i104_crit_edge ]
  %index.i.i.i100 = getelementptr i8, ptr %.pn22.i, i32 36
  %23 = ptrtoint ptr %index.i.i.i100 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %index.i.i.i100, align 4
  %shl.i.i101 = shl nuw i32 1, %24
  %and.i102 = and i32 %shl.i.i101, %22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i102)
  %tobool.not.i103 = icmp eq i32 %and.i102, 0
  br i1 %tobool.not.i103, label %for.body.i104.for.inc.i_crit_edge, label %if.else.i

for.body.i104.for.inc.i_crit_edge:                ; preds = %for.body.i104
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

if.else.i:                                        ; preds = %for.body.i104
  %encoder_id.i = getelementptr i8, ptr %.pn22.i, i32 72
  %25 = ptrtoint ptr %encoder_id.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %encoder_id.i, align 4
  %27 = and i32 %26, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 34, i32 %27)
  %switch.i = icmp eq i32 %27, 34
  br i1 %switch.i, label %radeon_connector_encoder_get_dp_bridge_encoder_id.exit, label %if.else.i.for.inc.i_crit_edge

if.else.i.for.inc.i_crit_edge:                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.else.i.for.inc.i_crit_edge, %for.body.i104.for.inc.i_crit_edge
  %28 = ptrtoint ptr %.pn22.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %.pn.i105 = load ptr, ptr %.pn22.i, align 4
  %cmp.not.i106 = icmp eq ptr %.pn.i105, %encoder_list.i
  br i1 %cmp.not.i106, label %for.inc.i.if.end21_crit_edge, label %for.inc.i.for.body.i104_crit_edge

for.inc.i.for.body.i104_crit_edge:                ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i104

for.inc.i.if.end21_crit_edge:                     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end21

radeon_connector_encoder_get_dp_bridge_encoder_id.exit: ; preds = %if.else.i
  %tobool18.not = icmp eq ptr %retval.0.i, null
  br i1 %tobool18.not, label %radeon_connector_encoder_get_dp_bridge_encoder_id.exit.if.end21_crit_edge, label %if.then19

radeon_connector_encoder_get_dp_bridge_encoder_id.exit.if.end21_crit_edge: ; preds = %radeon_connector_encoder_get_dp_bridge_encoder_id.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end21

if.then19:                                        ; preds = %radeon_connector_encoder_get_dp_bridge_encoder_id.exit
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @radeon_atom_ext_encoder_setup_ddc(ptr noundef nonnull %retval.0.i) #7
  br label %if.end21

if.end21:                                         ; preds = %if.then19, %radeon_connector_encoder_get_dp_bridge_encoder_id.exit.if.end21_crit_edge, %for.inc.i.if.end21_crit_edge, %if.else.if.end21_crit_edge
  tail call fastcc void @radeon_connector_get_edid(ptr noundef %connector)
  %edid.i108 = getelementptr inbounds %struct.radeon_connector, ptr %connector, i32 0, i32 6
  %29 = ptrtoint ptr %edid.i108 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %edid.i108, align 8
  %tobool.not.i109 = icmp eq ptr %30, null
  br i1 %tobool.not.i109, label %if.end23.thread, label %if.then.i112

if.then.i112:                                     ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #9
  %call.i110 = tail call i32 @drm_connector_update_edid_property(ptr noundef %connector, ptr noundef nonnull %30) #7
  %31 = ptrtoint ptr %edid.i108 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %edid.i108, align 8
  %call3.i111 = tail call i32 @drm_add_edid_modes(ptr noundef %connector, ptr noundef %32) #7
  br label %if.end23

if.end23.thread:                                  ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #9
  %call4.i113 = tail call i32 @drm_connector_update_edid_property(ptr noundef %connector, ptr noundef null) #7
  br label %if.end30

if.end23:                                         ; preds = %if.then.i112, %if.then11, %radeon_ddc_get_modes.exit.if.end23_crit_edge
  %ret.0 = phi i32 [ %retval.0.i97, %radeon_ddc_get_modes.exit.if.end23_crit_edge ], [ %retval.0.i97, %if.then11 ], [ %call3.i111, %if.then.i112 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %cmp24 = icmp sgt i32 %ret.0, 0
  br i1 %cmp24, label %if.then26, label %if.end23.if.end30_crit_edge

if.end23.if.end30_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end30

if.then26:                                        ; preds = %if.end23
  %tobool27.not = icmp eq ptr %retval.0.i, null
  br i1 %tobool27.not, label %if.then26.cleanup55_crit_edge, label %if.then28

if.then26.cleanup55_crit_edge:                    ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup55

if.then28:                                        ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @radeon_fixup_lvds_native_mode(ptr noundef nonnull %retval.0.i, ptr noundef %connector)
  tail call fastcc void @radeon_add_common_modes(ptr noundef nonnull %retval.0.i, ptr noundef %connector)
  br label %cleanup55

if.end30:                                         ; preds = %if.end23.if.end30_crit_edge, %if.end23.thread
  %ret.0158 = phi i32 [ 0, %if.end23.thread ], [ %ret.0, %if.end23.if.end30_crit_edge ]
  %tobool31.not = icmp eq ptr %retval.0.i, null
  br i1 %tobool31.not, label %if.end30.cleanup55_crit_edge, label %if.end33

if.end30.cleanup55_crit_edge:                     ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup55

if.end33:                                         ; preds = %if.end30
  %33 = ptrtoint ptr %retval.0.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %retval.0.i, align 4
  %native_mode2.i = getelementptr inbounds %struct.radeon_encoder, ptr %retval.0.i, i32 0, i32 11
  %hdisplay.i = getelementptr inbounds %struct.radeon_encoder, ptr %retval.0.i, i32 0, i32 11, i32 1
  %35 = ptrtoint ptr %hdisplay.i to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %hdisplay.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %36)
  %cmp.not.i117 = icmp eq i16 %36, 0
  br i1 %cmp.not.i117, label %if.end33.cleanup55_crit_edge, label %land.lhs.true.i

if.end33.cleanup55_crit_edge:                     ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup55

land.lhs.true.i:                                  ; preds = %if.end33
  %vdisplay.i = getelementptr inbounds %struct.radeon_encoder, ptr %retval.0.i, i32 0, i32 11, i32 6
  %37 = ptrtoint ptr %vdisplay.i to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %vdisplay.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %38)
  %cmp5.not.i = icmp eq i16 %38, 0
  br i1 %cmp5.not.i, label %land.lhs.true.i.cleanup55_crit_edge, label %land.lhs.true7.i

land.lhs.true.i.cleanup55_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup55

land.lhs.true7.i:                                 ; preds = %land.lhs.true.i
  %39 = ptrtoint ptr %native_mode2.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %native_mode2.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %cmp8.not.i = icmp eq i32 %40, 0
  br i1 %cmp8.not.i, label %if.then19.i, label %if.then.i119

if.then.i119:                                     ; preds = %land.lhs.true7.i
  call void @__sanitizer_cov_trace_pc() #9
  %call.i118 = tail call ptr @drm_mode_duplicate(ptr noundef %34, ptr noundef %native_mode2.i) #7
  %type.i = getelementptr inbounds %struct.drm_display_mode, ptr %call.i118, i32 0, i32 28
  %41 = ptrtoint ptr %type.i to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 72, ptr %type.i, align 2
  tail call void @drm_mode_set_name(ptr noundef %call.i118) #7
  br label %radeon_fp_native_mode.exit

if.then19.i:                                      ; preds = %land.lhs.true7.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv1143.i = zext i16 %36 to i32
  %conv16.i = zext i16 %38 to i32
  %call24.i = tail call ptr @drm_cvt_mode(ptr noundef %34, i32 noundef %conv1143.i, i32 noundef %conv16.i, i32 noundef 60, i1 noundef zeroext true, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %type25.i = getelementptr inbounds %struct.drm_display_mode, ptr %call24.i, i32 0, i32 28
  %42 = ptrtoint ptr %type25.i to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 72, ptr %type25.i, align 2
  br label %radeon_fp_native_mode.exit

radeon_fp_native_mode.exit:                       ; preds = %if.then19.i, %if.then.i119
  %call24.sink.i = phi ptr [ %call24.i, %if.then19.i ], [ %call.i118, %if.then.i119 ]
  %.str.18.sink.i = phi ptr [ @.str.18, %if.then19.i ], [ @.str.17, %if.then.i119 ]
  %name26.i = getelementptr inbounds %struct.drm_display_mode, ptr %call24.sink.i, i32 0, i32 31
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull %.str.18.sink.i, ptr noundef %name26.i) #7
  %tobool35.not = icmp eq ptr %call24.sink.i, null
  br i1 %tobool35.not, label %radeon_fp_native_mode.exit.cleanup55_crit_edge, label %if.then36

radeon_fp_native_mode.exit.cleanup55_crit_edge:   ; preds = %radeon_fp_native_mode.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup55

if.then36:                                        ; preds = %radeon_fp_native_mode.exit
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @drm_mode_probed_add(ptr noundef %connector, ptr noundef nonnull %call24.sink.i) #7
  %width_mm = getelementptr inbounds %struct.drm_display_mode, ptr %call24.sink.i, i32 0, i32 26
  %43 = ptrtoint ptr %width_mm to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %width_mm, align 2
  %conv37 = zext i16 %44 to i32
  %display_info = getelementptr inbounds %struct.drm_connector, ptr %connector, i32 0, i32 20
  %45 = ptrtoint ptr %display_info to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %conv37, ptr %display_info, align 8
  %height_mm = getelementptr inbounds %struct.drm_display_mode, ptr %call24.sink.i, i32 0, i32 27
  %46 = ptrtoint ptr %height_mm to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %height_mm, align 4
  %conv39 = zext i16 %47 to i32
  %height_mm41 = getelementptr inbounds %struct.drm_connector, ptr %connector, i32 0, i32 20, i32 1
  %48 = ptrtoint ptr %height_mm41 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %conv39, ptr %height_mm41, align 4
  tail call fastcc void @radeon_add_common_modes(ptr noundef nonnull %retval.0.i, ptr noundef %connector)
  br label %cleanup55

if.else43:                                        ; preds = %radeon_best_single_encoder.exit
  %49 = ptrtoint ptr %encoder_list.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %.pn20.i121 = load ptr, ptr %encoder_list.i, align 4
  %cmp.not21.i122 = icmp eq ptr %.pn20.i121, %encoder_list.i
  br i1 %cmp.not21.i122, label %if.else43.if.end52_crit_edge, label %for.body.lr.ph.i124

if.else43.if.end52_crit_edge:                     ; preds = %if.else43
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end52

for.body.lr.ph.i124:                              ; preds = %if.else43
  %50 = ptrtoint ptr %possible_encoders.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %possible_encoders.i, align 8
  br label %for.body.i130

for.body.i130:                                    ; preds = %for.inc.i138.for.body.i130_crit_edge, %for.body.lr.ph.i124
  %.pn22.i125 = phi ptr [ %.pn20.i121, %for.body.lr.ph.i124 ], [ %.pn.i136, %for.inc.i138.for.body.i130_crit_edge ]
  %index.i.i.i126 = getelementptr i8, ptr %.pn22.i125, i32 36
  %52 = ptrtoint ptr %index.i.i.i126 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %index.i.i.i126, align 4
  %shl.i.i127 = shl nuw i32 1, %53
  %and.i128 = and i32 %shl.i.i127, %51
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i128)
  %tobool.not.i129 = icmp eq i32 %and.i128, 0
  br i1 %tobool.not.i129, label %for.body.i130.for.inc.i138_crit_edge, label %if.else.i133

for.body.i130.for.inc.i138_crit_edge:             ; preds = %for.body.i130
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i138

if.else.i133:                                     ; preds = %for.body.i130
  %encoder_id.i131 = getelementptr i8, ptr %.pn22.i125, i32 72
  %54 = ptrtoint ptr %encoder_id.i131 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %encoder_id.i131, align 4
  %56 = and i32 %55, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 34, i32 %56)
  %switch.i132 = icmp eq i32 %56, 34
  br i1 %switch.i132, label %radeon_connector_encoder_get_dp_bridge_encoder_id.exit140, label %if.else.i133.for.inc.i138_crit_edge

if.else.i133.for.inc.i138_crit_edge:              ; preds = %if.else.i133
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i138

for.inc.i138:                                     ; preds = %if.else.i133.for.inc.i138_crit_edge, %for.body.i130.for.inc.i138_crit_edge
  %57 = ptrtoint ptr %.pn22.i125 to i32
  call void @__asan_load4_noabort(i32 %57)
  %.pn.i136 = load ptr, ptr %.pn22.i125, align 4
  %cmp.not.i137 = icmp eq ptr %.pn.i136, %encoder_list.i
  br i1 %cmp.not.i137, label %for.inc.i138.if.end52_crit_edge, label %for.inc.i138.for.body.i130_crit_edge

for.inc.i138.for.body.i130_crit_edge:             ; preds = %for.inc.i138
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i130

for.inc.i138.if.end52_crit_edge:                  ; preds = %for.inc.i138
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end52

radeon_connector_encoder_get_dp_bridge_encoder_id.exit140: ; preds = %if.else.i133
  %tobool49.not = icmp eq ptr %retval.0.i, null
  br i1 %tobool49.not, label %radeon_connector_encoder_get_dp_bridge_encoder_id.exit140.if.end52_crit_edge, label %if.then50

radeon_connector_encoder_get_dp_bridge_encoder_id.exit140.if.end52_crit_edge: ; preds = %radeon_connector_encoder_get_dp_bridge_encoder_id.exit140
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end52

if.then50:                                        ; preds = %radeon_connector_encoder_get_dp_bridge_encoder_id.exit140
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @radeon_atom_ext_encoder_setup_ddc(ptr noundef nonnull %retval.0.i) #7
  br label %if.end52

if.end52:                                         ; preds = %if.then50, %radeon_connector_encoder_get_dp_bridge_encoder_id.exit140.if.end52_crit_edge, %for.inc.i138.if.end52_crit_edge, %if.else43.if.end52_crit_edge
  tail call fastcc void @radeon_connector_get_edid(ptr noundef %connector)
  %edid.i141 = getelementptr inbounds %struct.radeon_connector, ptr %connector, i32 0, i32 6
  %58 = ptrtoint ptr %edid.i141 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %edid.i141, align 8
  %tobool.not.i142 = icmp eq ptr %59, null
  br i1 %tobool.not.i142, label %if.end.i147, label %if.then.i145

if.then.i145:                                     ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #9
  %call.i143 = tail call i32 @drm_connector_update_edid_property(ptr noundef %connector, ptr noundef nonnull %59) #7
  %60 = ptrtoint ptr %edid.i141 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %edid.i141, align 8
  %call3.i144 = tail call i32 @drm_add_edid_modes(ptr noundef %connector, ptr noundef %61) #7
  br label %radeon_ddc_get_modes.exit149

if.end.i147:                                      ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #9
  %call4.i146 = tail call i32 @drm_connector_update_edid_property(ptr noundef %connector, ptr noundef null) #7
  br label %radeon_ddc_get_modes.exit149

radeon_ddc_get_modes.exit149:                     ; preds = %if.end.i147, %if.then.i145
  %retval.0.i148 = phi i32 [ %call3.i144, %if.then.i145 ], [ 0, %if.end.i147 ]
  %62 = ptrtoint ptr %connector to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %connector, align 8
  %encoder_list.i.i = getelementptr inbounds %struct.drm_device, ptr %63, i32 0, i32 30, i32 16
  br label %for.cond.i.i

for.cond.i.i:                                     ; preds = %for.body.i.i.for.cond.i.i_crit_edge, %radeon_ddc_get_modes.exit149
  %.pn.in.i.i = phi ptr [ %encoder_list.i.i, %radeon_ddc_get_modes.exit149 ], [ %.pn.i.i, %for.body.i.i.for.cond.i.i_crit_edge ]
  %64 = ptrtoint ptr %.pn.in.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %.pn.i.i = load ptr, ptr %.pn.in.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %.pn.i.i, %encoder_list.i.i
  br i1 %cmp.not.i.i, label %for.cond.i.i.cleanup55_crit_edge, label %for.body.i.i

for.cond.i.i.cleanup55_crit_edge:                 ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup55

for.body.i.i:                                     ; preds = %for.cond.i.i
  %65 = ptrtoint ptr %possible_encoders.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %possible_encoders.i, align 8
  %index.i.i.i.i = getelementptr i8, ptr %.pn.i.i, i32 36
  %67 = ptrtoint ptr %index.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %index.i.i.i.i, align 4
  %shl.i.i.i = shl nuw i32 1, %68
  %and.i.i = and i32 %shl.i.i.i, %66
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %for.body.i.i.for.cond.i.i_crit_edge, label %radeon_best_single_encoder.exit.i

for.body.i.i.for.cond.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.i.i

radeon_best_single_encoder.exit.i:                ; preds = %for.body.i.i
  %encoder.0.le.i.i = getelementptr i8, ptr %.pn.i.i, i32 -4
  %cmp.i = icmp eq ptr %encoder.0.le.i.i, null
  br i1 %cmp.i, label %radeon_best_single_encoder.exit.i.cleanup55_crit_edge, label %if.end.i150

radeon_best_single_encoder.exit.i.cleanup55_crit_edge: ; preds = %radeon_best_single_encoder.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup55

if.end.i150:                                      ; preds = %radeon_best_single_encoder.exit.i
  %probed_modes.i = getelementptr inbounds %struct.drm_connector, ptr %connector, i32 0, i32 19
  %69 = ptrtoint ptr %probed_modes.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load volatile ptr, ptr %probed_modes.i, align 4
  %cmp.i.not.i = icmp eq ptr %70, %probed_modes.i
  br i1 %cmp.i.not.i, label %if.else.i151, label %if.then2.i

if.then2.i:                                       ; preds = %if.end.i150
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr6.i = getelementptr i8, ptr %70, i32 -64
  %native_mode.i = getelementptr i8, ptr %.pn.i.i, i32 108
  %71 = call ptr @memcpy(ptr %native_mode.i, ptr %add.ptr6.i, i32 112)
  br label %cleanup55

if.else.i151:                                     ; preds = %if.end.i150
  call void @__sanitizer_cov_trace_pc() #9
  %native_mode7.i = getelementptr i8, ptr %.pn.i.i, i32 108
  %72 = ptrtoint ptr %native_mode7.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 0, ptr %native_mode7.i, align 4
  br label %cleanup55

cleanup55:                                        ; preds = %if.else.i151, %if.then2.i, %radeon_best_single_encoder.exit.i.cleanup55_crit_edge, %for.cond.i.i.cleanup55_crit_edge, %if.then36, %radeon_fp_native_mode.exit.cleanup55_crit_edge, %land.lhs.true.i.cleanup55_crit_edge, %if.end33.cleanup55_crit_edge, %if.end30.cleanup55_crit_edge, %if.then28, %if.then26.cleanup55_crit_edge
  %retval.1 = phi i32 [ %ret.0, %if.then28 ], [ %ret.0, %if.then26.cleanup55_crit_edge ], [ 0, %if.end30.cleanup55_crit_edge ], [ %retval.0.i148, %radeon_best_single_encoder.exit.i.cleanup55_crit_edge ], [ %retval.0.i148, %if.then2.i ], [ %retval.0.i148, %if.else.i151 ], [ %ret.0158, %radeon_fp_native_mode.exit.cleanup55_crit_edge ], [ 1, %if.then36 ], [ %ret.0158, %if.end33.cleanup55_crit_edge ], [ %ret.0158, %land.lhs.true.i.cleanup55_crit_edge ], [ %retval.0.i148, %for.cond.i.i.cleanup55_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @radeon_dp_mode_valid(ptr noundef %connector, ptr noundef %mode) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %connector to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %connector, align 8
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_private, align 4
  %connector_type = getelementptr inbounds %struct.drm_connector, ptr %connector, i32 0, i32 10
  %4 = ptrtoint ptr %connector_type to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %connector_type, align 8
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.37)
  switch i32 %5, label %if.else [
    i32 14, label %entry.if.then_crit_edge
    i32 7, label %entry.if.then_crit_edge123
  ]

entry.if.then_crit_edge123:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

if.then:                                          ; preds = %entry.if.then_crit_edge, %entry.if.then_crit_edge123
  %encoder_list.i = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 30, i32 16
  %possible_encoders.i = getelementptr inbounds %struct.drm_connector, ptr %connector, i32 0, i32 40
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %if.then
  %.pn.in.i = phi ptr [ %encoder_list.i, %if.then ], [ %.pn.i, %for.body.i.for.cond.i_crit_edge ]
  %7 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %.pn.i = load ptr, ptr %.pn.in.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %encoder_list.i
  br i1 %cmp.not.i, label %for.cond.i.radeon_best_single_encoder.exit_crit_edge, label %for.body.i

for.cond.i.radeon_best_single_encoder.exit_crit_edge: ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %radeon_best_single_encoder.exit

for.body.i:                                       ; preds = %for.cond.i
  %8 = ptrtoint ptr %possible_encoders.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %possible_encoders.i, align 8
  %index.i.i.i = getelementptr i8, ptr %.pn.i, i32 36
  %10 = ptrtoint ptr %index.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %index.i.i.i, align 4
  %shl.i.i = shl nuw i32 1, %11
  %and.i = and i32 %shl.i.i, %9
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %for.body.i.for.cond.i_crit_edge, label %cleanup.split.loop.exit14.i

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.i

cleanup.split.loop.exit14.i:                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %encoder.0.le.i = getelementptr i8, ptr %.pn.i, i32 -4
  br label %radeon_best_single_encoder.exit

radeon_best_single_encoder.exit:                  ; preds = %cleanup.split.loop.exit14.i, %for.cond.i.radeon_best_single_encoder.exit_crit_edge
  %retval.0.i = phi ptr [ %encoder.0.le.i, %cleanup.split.loop.exit14.i ], [ null, %for.cond.i.radeon_best_single_encoder.exit_crit_edge ]
  %hdisplay = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 1
  %12 = ptrtoint ptr %hdisplay to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %hdisplay, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 320, i16 %13)
  %cmp4 = icmp ult i16 %13, 320
  br i1 %cmp4, label %radeon_best_single_encoder.exit.cleanup85_crit_edge, label %lor.lhs.false6

radeon_best_single_encoder.exit.cleanup85_crit_edge: ; preds = %radeon_best_single_encoder.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup85

lor.lhs.false6:                                   ; preds = %radeon_best_single_encoder.exit
  %vdisplay = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 6
  %14 = ptrtoint ptr %vdisplay to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %vdisplay, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 240, i16 %15)
  %cmp8 = icmp ult i16 %15, 240
  br i1 %cmp8, label %lor.lhs.false6.cleanup85_crit_edge, label %if.end

lor.lhs.false6.cleanup85_crit_edge:               ; preds = %lor.lhs.false6
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup85

if.end:                                           ; preds = %lor.lhs.false6
  %tobool.not = icmp eq ptr %retval.0.i, null
  br i1 %tobool.not, label %if.end.if.end84_crit_edge, label %if.then11

if.end.if.end84_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end84

if.then11:                                        ; preds = %if.end
  %hdisplay18 = getelementptr inbounds %struct.radeon_encoder, ptr %retval.0.i, i32 0, i32 11, i32 1
  %16 = ptrtoint ptr %hdisplay18 to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %hdisplay18, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %13, i16 %17)
  %cmp20 = icmp ugt i16 %13, %17
  br i1 %cmp20, label %if.then11.cleanup85_crit_edge, label %lor.lhs.false22

if.then11.cleanup85_crit_edge:                    ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup85

lor.lhs.false22:                                  ; preds = %if.then11
  %vdisplay25 = getelementptr inbounds %struct.radeon_encoder, ptr %retval.0.i, i32 0, i32 11, i32 6
  %18 = ptrtoint ptr %vdisplay25 to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %vdisplay25, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %15, i16 %19)
  %cmp27 = icmp ugt i16 %15, %19
  br i1 %cmp27, label %lor.lhs.false22.cleanup85_crit_edge, label %if.end30

lor.lhs.false22.cleanup85_crit_edge:              ; preds = %lor.lhs.false22
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup85

if.end30:                                         ; preds = %lor.lhs.false22
  %rmx_type = getelementptr inbounds %struct.radeon_encoder, ptr %retval.0.i, i32 0, i32 7
  %20 = ptrtoint ptr %rmx_type to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %rmx_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp31 = icmp eq i32 %21, 0
  br i1 %cmp31, label %if.then33, label %if.end30.if.end84_crit_edge

if.end30.if.end84_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end84

if.then33:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_cmp2(i16 %13, i16 %17)
  %cmp38.not = icmp eq i16 %13, %17
  call void @__sanitizer_cov_trace_cmp2(i16 %15, i16 %19)
  %cmp45.not = icmp eq i16 %15, %19
  %or.cond = select i1 %cmp38.not, i1 %cmp45.not, i1 false
  br i1 %or.cond, label %if.then33.if.end84_crit_edge, label %if.then33.cleanup85_crit_edge

if.then33.cleanup85_crit_edge:                    ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup85

if.then33.if.end84_crit_edge:                     ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end84

if.else:                                          ; preds = %entry
  %con_priv = getelementptr inbounds %struct.radeon_connector, ptr %connector, i32 0, i32 7
  %22 = ptrtoint ptr %con_priv to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %con_priv, align 4
  %dp_sink_type = getelementptr inbounds %struct.radeon_connector_atom_dig, ptr %23, i32 0, i32 2
  %24 = ptrtoint ptr %dp_sink_type to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %dp_sink_type, align 1
  %.off = add i8 %25, -19
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %.off)
  %switch = icmp ult i8 %.off, 2
  br i1 %switch, label %if.then63, label %if.else65

if.then63:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %call64 = tail call i32 @radeon_dp_mode_valid_helper(ptr noundef %connector, ptr noundef %mode) #7
  br label %cleanup85

if.else65:                                        ; preds = %if.else
  %family = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 6
  %26 = ptrtoint ptr %family to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %family, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 50, i32 %27)
  %cmp66 = icmp ugt i32 %27, 50
  br i1 %cmp66, label %land.lhs.true, label %if.else65.if.else76_crit_edge

if.else65.if.else76_crit_edge:                    ; preds = %if.else65
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else76

land.lhs.true:                                    ; preds = %if.else65
  %edid_blob_ptr.i = getelementptr inbounds %struct.drm_connector, ptr %connector, i32 0, i32 22
  %28 = ptrtoint ptr %edid_blob_ptr.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %edid_blob_ptr.i, align 4
  %edid.i = getelementptr inbounds %struct.radeon_connector, ptr %connector, i32 0, i32 6
  %30 = ptrtoint ptr %edid.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %edid.i, align 8
  %tobool.not.i115 = icmp eq ptr %31, null
  br i1 %tobool.not.i115, label %if.else.i, label %land.lhs.true.radeon_connector_edid.exit_crit_edge

land.lhs.true.radeon_connector_edid.exit_crit_edge: ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %radeon_connector_edid.exit

if.else.i:                                        ; preds = %land.lhs.true
  %tobool2.not.i = icmp eq ptr %29, null
  br i1 %tobool2.not.i, label %if.else.i.if.end9.i_crit_edge, label %if.then3.i

if.else.i.if.end9.i_crit_edge:                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9.i

if.then3.i:                                       ; preds = %if.else.i
  %data.i = getelementptr inbounds %struct.drm_property_blob, ptr %29, i32 0, i32 5
  %32 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %data.i, align 4
  %length.i = getelementptr inbounds %struct.drm_property_blob, ptr %29, i32 0, i32 4
  %34 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %length.i, align 4
  %call.i = tail call ptr @kmemdup(ptr noundef %33, i32 noundef %35, i32 noundef 3264) #7
  %tobool5.not.i = icmp eq ptr %call.i, null
  br i1 %tobool5.not.i, label %if.then3.i.if.end9.i_crit_edge, label %if.then6.i

if.then3.i.if.end9.i_crit_edge:                   ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9.i

if.then6.i:                                       ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #9
  %36 = ptrtoint ptr %edid.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %call.i, ptr %edid.i, align 8
  br label %if.end9.i

if.end9.i:                                        ; preds = %if.then6.i, %if.then3.i.if.end9.i_crit_edge, %if.else.i.if.end9.i_crit_edge
  %37 = ptrtoint ptr %edid.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %edid.i, align 8
  br label %radeon_connector_edid.exit

radeon_connector_edid.exit:                       ; preds = %if.end9.i, %land.lhs.true.radeon_connector_edid.exit_crit_edge
  %retval.0.i116 = phi ptr [ %38, %if.end9.i ], [ %31, %land.lhs.true.radeon_connector_edid.exit_crit_edge ]
  %call69 = tail call zeroext i1 @drm_detect_hdmi_monitor(ptr noundef %retval.0.i116) #7
  br i1 %call69, label %if.then71, label %radeon_connector_edid.exit.if.else76_crit_edge

radeon_connector_edid.exit.if.else76_crit_edge:   ; preds = %radeon_connector_edid.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else76

if.then71:                                        ; preds = %radeon_connector_edid.exit
  %39 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 340000, i32 %40)
  %cmp72 = icmp sgt i32 %40, 340000
  br i1 %cmp72, label %if.then71.cleanup85_crit_edge, label %if.then71.if.end84_crit_edge

if.then71.if.end84_crit_edge:                     ; preds = %if.then71
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end84

if.then71.cleanup85_crit_edge:                    ; preds = %if.then71
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup85

if.else76:                                        ; preds = %radeon_connector_edid.exit.if.else76_crit_edge, %if.else65.if.else76_crit_edge
  %41 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 165000, i32 %42)
  %cmp78 = icmp sgt i32 %42, 165000
  br i1 %cmp78, label %if.else76.cleanup85_crit_edge, label %if.else76.if.end84_crit_edge

if.else76.if.end84_crit_edge:                     ; preds = %if.else76
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end84

if.else76.cleanup85_crit_edge:                    ; preds = %if.else76
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup85

if.end84:                                         ; preds = %if.else76.if.end84_crit_edge, %if.then71.if.end84_crit_edge, %if.then33.if.end84_crit_edge, %if.end30.if.end84_crit_edge, %if.end.if.end84_crit_edge
  br label %cleanup85

cleanup85:                                        ; preds = %if.end84, %if.else76.cleanup85_crit_edge, %if.then71.cleanup85_crit_edge, %if.then63, %if.then33.cleanup85_crit_edge, %lor.lhs.false22.cleanup85_crit_edge, %if.then11.cleanup85_crit_edge, %lor.lhs.false6.cleanup85_crit_edge, %radeon_best_single_encoder.exit.cleanup85_crit_edge
  %retval.3 = phi i32 [ 0, %if.end84 ], [ %call64, %if.then63 ], [ 15, %if.then71.cleanup85_crit_edge ], [ 15, %if.else76.cleanup85_crit_edge ], [ 29, %lor.lhs.false6.cleanup85_crit_edge ], [ 29, %radeon_best_single_encoder.exit.cleanup85_crit_edge ], [ 29, %if.then33.cleanup85_crit_edge ], [ 29, %if.then11.cleanup85_crit_edge ], [ 29, %lor.lhs.false22.cleanup85_crit_edge ]
  ret i32 %retval.3
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define internal ptr @radeon_dvi_encoder(ptr nocapture noundef readonly %connector) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %connector to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %connector, align 8
  %encoder_list = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 30, i32 16
  %2 = ptrtoint ptr %encoder_list to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn83 = load ptr, ptr %encoder_list, align 4
  %cmp.not84 = icmp eq ptr %.pn83, %encoder_list
  br i1 %cmp.not84, label %entry.for.cond37.preheader_crit_edge, label %for.body.lr.ph

entry.for.cond37.preheader_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond37.preheader

for.body.lr.ph:                                   ; preds = %entry
  %possible_encoders = getelementptr inbounds %struct.drm_connector, ptr %connector, i32 0, i32 40
  %3 = ptrtoint ptr %possible_encoders to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %possible_encoders, align 8
  %use_digital = getelementptr inbounds %struct.radeon_connector, ptr %connector, i32 0, i32 5
  br label %for.body

for.cond37.preheader:                             ; preds = %for.inc.for.cond37.preheader_crit_edge, %entry.for.cond37.preheader_crit_edge
  %possible_encoders46 = getelementptr inbounds %struct.drm_connector, ptr %connector, i32 0, i32 40
  br label %for.cond37

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %.pn85 = phi ptr [ %.pn83, %for.body.lr.ph ], [ %.pn, %for.inc.for.body_crit_edge ]
  %index.i.i = getelementptr i8, ptr %.pn85, i32 36
  %5 = ptrtoint ptr %index.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %index.i.i, align 4
  %shl.i = shl nuw i32 1, %6
  %and = and i32 %shl.i, %4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.else

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.else:                                          ; preds = %for.body
  %7 = ptrtoint ptr %use_digital to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %use_digital, align 1, !range !87
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool7.not = icmp eq i8 %8, 0
  %encoder_type15 = getelementptr i8, ptr %.pn85, i32 32
  %9 = ptrtoint ptr %encoder_type15 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %encoder_type15, align 4
  br i1 %tobool7.not, label %if.else14, label %if.then10

if.then10:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %10)
  %cmp11 = icmp eq i32 %10, 2
  br i1 %cmp11, label %if.then10.cleanup.loopexit81_crit_edge, label %if.then10.for.inc_crit_edge

if.then10.for.inc_crit_edge:                      ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.then10.cleanup.loopexit81_crit_edge:           ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.loopexit81

if.else14:                                        ; preds = %if.else
  %11 = zext i32 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.38)
  switch i32 %10, label %if.else14.for.inc_crit_edge [
    i32 1, label %if.else14.cleanup.loopexit81_crit_edge
    i32 4, label %if.else14.cleanup.loopexit81_crit_edge98
  ]

if.else14.cleanup.loopexit81_crit_edge98:         ; preds = %if.else14
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.loopexit81

if.else14.cleanup.loopexit81_crit_edge:           ; preds = %if.else14
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.loopexit81

if.else14.for.inc_crit_edge:                      ; preds = %if.else14
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

for.inc:                                          ; preds = %if.else14.for.inc_crit_edge, %if.then10.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %12 = ptrtoint ptr %.pn85 to i32
  call void @__asan_load4_noabort(i32 %12)
  %.pn = load ptr, ptr %.pn85, align 4
  %cmp.not = icmp eq ptr %.pn, %encoder_list
  br i1 %cmp.not, label %for.inc.for.cond37.preheader_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc.for.cond37.preheader_crit_edge:           ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond37.preheader

for.cond37:                                       ; preds = %for.body45.for.cond37_crit_edge, %for.cond37.preheader
  %.pn78.in = phi ptr [ %.pn78, %for.body45.for.cond37_crit_edge ], [ %encoder_list, %for.cond37.preheader ]
  %13 = ptrtoint ptr %.pn78.in to i32
  call void @__asan_load4_noabort(i32 %13)
  %.pn78 = load ptr, ptr %.pn78.in, align 4
  %cmp42.not = icmp eq ptr %.pn78, %encoder_list
  br i1 %cmp42.not, label %for.cond37.cleanup_crit_edge, label %for.body45

for.cond37.cleanup_crit_edge:                     ; preds = %for.cond37
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body45:                                       ; preds = %for.cond37
  %14 = ptrtoint ptr %possible_encoders46 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %possible_encoders46, align 8
  %index.i.i79 = getelementptr i8, ptr %.pn78, i32 36
  %16 = ptrtoint ptr %index.i.i79 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %index.i.i79, align 4
  %shl.i80 = shl nuw i32 1, %17
  %and48 = and i32 %shl.i80, %15
  %tobool49.not = icmp eq i32 %and48, 0
  br i1 %tobool49.not, label %for.body45.for.cond37_crit_edge, label %cleanup.loopexit.split.loop.exit

for.body45.for.cond37_crit_edge:                  ; preds = %for.body45
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond37

cleanup.loopexit.split.loop.exit:                 ; preds = %for.body45
  call void @__sanitizer_cov_trace_pc() #9
  %encoder.1.le = getelementptr i8, ptr %.pn78, i32 -4
  br label %cleanup

cleanup.loopexit81:                               ; preds = %if.else14.cleanup.loopexit81_crit_edge, %if.else14.cleanup.loopexit81_crit_edge98, %if.then10.cleanup.loopexit81_crit_edge
  %encoder.0.le = getelementptr i8, ptr %.pn85, i32 -4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.loopexit81, %cleanup.loopexit.split.loop.exit, %for.cond37.cleanup_crit_edge
  %retval.0 = phi ptr [ %encoder.0.le, %cleanup.loopexit81 ], [ %encoder.1.le, %cleanup.loopexit.split.loop.exit ], [ null, %for.cond37.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @radeon_fixup_lvds_native_mode(ptr noundef %encoder, ptr noundef readonly %connector) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %native_mode1 = getelementptr inbounds %struct.radeon_encoder, ptr %encoder, i32 0, i32 11
  %probed_modes = getelementptr inbounds %struct.drm_connector, ptr %connector, i32 0, i32 19
  %0 = ptrtoint ptr %probed_modes to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %probed_modes, align 4
  %cmp.not105 = icmp eq ptr %1, %probed_modes
  br i1 %cmp.not105, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %hdisplay12 = getelementptr inbounds %struct.radeon_encoder, ptr %encoder, i32 0, i32 11, i32 1
  %vdisplay17 = getelementptr inbounds %struct.radeon_encoder, ptr %encoder, i32 0, i32 11, i32 6
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %.pn.in106 = phi ptr [ %1, %for.body.lr.ph ], [ %.pn108, %for.inc.for.body_crit_edge ]
  %mode.0107 = getelementptr i8, ptr %.pn.in106, i32 -64
  %2 = ptrtoint ptr %.pn.in106 to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn108 = load ptr, ptr %.pn.in106, align 4
  %type = getelementptr i8, ptr %.pn.in106, i32 -2
  %3 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %type, align 2
  %5 = and i8 %4, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.then

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.then:                                          ; preds = %for.body
  %hdisplay = getelementptr i8, ptr %.pn.in106, i32 -60
  %6 = ptrtoint ptr %hdisplay to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %hdisplay, align 4
  %8 = ptrtoint ptr %hdisplay12 to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %hdisplay12, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %7, i16 %9)
  %cmp14.not = icmp eq i16 %7, %9
  br i1 %cmp14.not, label %lor.lhs.false, label %if.then.if.then21_crit_edge

if.then.if.then21_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then21

lor.lhs.false:                                    ; preds = %if.then
  %vdisplay = getelementptr i8, ptr %.pn.in106, i32 -50
  %10 = ptrtoint ptr %vdisplay to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %vdisplay, align 2
  %12 = ptrtoint ptr %vdisplay17 to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %vdisplay17, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %11, i16 %13)
  %cmp19.not = icmp eq i16 %11, %13
  br i1 %cmp19.not, label %lor.lhs.false.for.inc_crit_edge, label %lor.lhs.false.if.then21_crit_edge

lor.lhs.false.if.then21_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then21

lor.lhs.false.for.inc_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.then21:                                        ; preds = %lor.lhs.false.if.then21_crit_edge, %if.then.if.then21_crit_edge
  %14 = call ptr @memcpy(ptr %native_mode1, ptr %mode.0107, i32 112)
  br label %for.inc

for.inc:                                          ; preds = %if.then21, %lor.lhs.false.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %cmp.not = icmp eq ptr %.pn108, %probed_modes
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %15 = ptrtoint ptr %native_mode1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %native_mode1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool28.not = icmp eq i32 %16, 0
  br i1 %tobool28.not, label %if.then29, label %for.end.if.end72_crit_edge

for.end.if.end72_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end72

if.then29:                                        ; preds = %for.end
  %17 = ptrtoint ptr %probed_modes to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %probed_modes, align 4
  %cmp43.not110 = icmp eq ptr %18, %probed_modes
  br i1 %cmp43.not110, label %if.then29.if.then71_crit_edge, label %for.body46.lr.ph

if.then29.if.then71_crit_edge:                    ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then71

for.body46.lr.ph:                                 ; preds = %if.then29
  %hdisplay49 = getelementptr inbounds %struct.radeon_encoder, ptr %encoder, i32 0, i32 11, i32 1
  %19 = ptrtoint ptr %hdisplay49 to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %hdisplay49, align 4
  %vdisplay55 = getelementptr inbounds %struct.radeon_encoder, ptr %encoder, i32 0, i32 11, i32 6
  br label %for.body46

for.body46:                                       ; preds = %for.inc61.for.body46_crit_edge, %for.body46.lr.ph
  %.pn98.in111 = phi ptr [ %18, %for.body46.lr.ph ], [ %.pn98112, %for.inc61.for.body46_crit_edge ]
  %21 = ptrtoint ptr %.pn98.in111 to i32
  call void @__asan_load4_noabort(i32 %21)
  %.pn98112 = load ptr, ptr %.pn98.in111, align 4
  %hdisplay47 = getelementptr i8, ptr %.pn98.in111, i32 -60
  %22 = ptrtoint ptr %hdisplay47 to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %hdisplay47, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %23, i16 %20)
  %cmp51 = icmp eq i16 %23, %20
  br i1 %cmp51, label %land.lhs.true, label %for.body46.for.inc61_crit_edge

for.body46.for.inc61_crit_edge:                   ; preds = %for.body46
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc61

land.lhs.true:                                    ; preds = %for.body46
  %vdisplay53 = getelementptr i8, ptr %.pn98.in111, i32 -50
  %24 = ptrtoint ptr %vdisplay53 to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %vdisplay53, align 2
  %26 = ptrtoint ptr %vdisplay55 to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %vdisplay55, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %25, i16 %27)
  %cmp57 = icmp eq i16 %25, %27
  br i1 %cmp57, label %if.then59, label %land.lhs.true.for.inc61_crit_edge

land.lhs.true.for.inc61_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc61

if.then59:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %mode.1.le = getelementptr i8, ptr %.pn98.in111, i32 -64
  %28 = call ptr @memcpy(ptr %native_mode1, ptr %mode.1.le, i32 112)
  tail call void @drm_mode_set_crtcinfo(ptr noundef %native_mode1, i32 noundef 1) #7
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.15) #7
  br label %if.end68

for.inc61:                                        ; preds = %land.lhs.true.for.inc61_crit_edge, %for.body46.for.inc61_crit_edge
  %cmp43.not = icmp eq ptr %.pn98112, %probed_modes
  br i1 %cmp43.not, label %for.inc61.if.end68_crit_edge, label %for.inc61.for.body46_crit_edge

for.inc61.for.body46_crit_edge:                   ; preds = %for.inc61
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body46

for.inc61.if.end68_crit_edge:                     ; preds = %for.inc61
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end68

if.end68:                                         ; preds = %for.inc61.if.end68_crit_edge, %if.then59
  %29 = ptrtoint ptr %native_mode1 to i32
  call void @__asan_load4_noabort(i32 %29)
  %.pr.pr = load i32, ptr %native_mode1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr.pr)
  %tobool70.not = icmp eq i32 %.pr.pr, 0
  br i1 %tobool70.not, label %if.end68.if.then71_crit_edge, label %if.end68.if.end72_crit_edge

if.end68.if.end72_crit_edge:                      ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end72

if.end68.if.then71_crit_edge:                     ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then71

if.then71:                                        ; preds = %if.end68.if.then71_crit_edge, %if.then29.if.then71_crit_edge
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.16) #7
  %rmx_type = getelementptr inbounds %struct.radeon_encoder, ptr %encoder, i32 0, i32 7
  %30 = ptrtoint ptr %rmx_type to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 0, ptr %rmx_type, align 4
  br label %if.end72

if.end72:                                         ; preds = %if.then71, %if.end68.if.end72_crit_edge, %for.end.if.end72_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @radeon_add_common_modes(ptr nocapture noundef readonly %encoder, ptr noundef %connector) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %encoder to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %encoder, align 4
  %devices = getelementptr inbounds %struct.radeon_encoder, ptr %encoder, i32 0, i32 3
  %hdisplay = getelementptr inbounds %struct.radeon_encoder, ptr %encoder, i32 0, i32 11, i32 1
  %vdisplay = getelementptr inbounds %struct.radeon_encoder, ptr %encoder, i32 0, i32 11, i32 6
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %i.073 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  %2 = ptrtoint ptr %devices to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %devices, align 4
  %and = and i32 %3, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %for.body.if.end7_crit_edge, label %if.then

for.body.if.end7_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7

if.then:                                          ; preds = %for.body
  %arrayidx = getelementptr [17 x %struct.mode_size], ptr @__const.radeon_add_common_modes.common_modes, i32 0, i32 %i.073
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %5)
  %cmp3 = icmp sgt i32 %5, 1024
  %6 = add nsw i32 %i.073, -7
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %6)
  %cmp5 = icmp ult i32 %6, 10
  %or.cond77 = select i1 %cmp3, i1 true, i1 %cmp5
  br i1 %or.cond77, label %if.then.for.inc_crit_edge, label %if.then.if.end7_crit_edge

if.then.if.end7_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7

if.then.for.inc_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.end7:                                          ; preds = %if.then.if.end7_crit_edge, %for.body.if.end7_crit_edge
  %and9 = and i32 %3, 34
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool10.not = icmp eq i32 %and9, 0
  br i1 %tobool10.not, label %if.end7.if.end37_crit_edge, label %if.then11

if.end7.if.end37_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end37

if.then11:                                        ; preds = %if.end7
  %arrayidx12 = getelementptr [17 x %struct.mode_size], ptr @__const.radeon_add_common_modes.common_modes, i32 0, i32 %i.073
  %7 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx12, align 4
  %9 = ptrtoint ptr %hdisplay to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %hdisplay, align 4
  %conv = zext i16 %10 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %conv)
  %cmp14 = icmp sgt i32 %8, %conv
  br i1 %cmp14, label %if.then11.for.inc_crit_edge, label %lor.lhs.false16

if.then11.for.inc_crit_edge:                      ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

lor.lhs.false16:                                  ; preds = %if.then11
  %h18 = getelementptr [17 x %struct.mode_size], ptr @__const.radeon_add_common_modes.common_modes, i32 0, i32 %i.073, i32 1
  %11 = ptrtoint ptr %h18 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %h18, align 4
  %13 = ptrtoint ptr %vdisplay to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %vdisplay, align 2
  %conv19 = zext i16 %14 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %conv19)
  %cmp20 = icmp sgt i32 %12, %conv19
  br i1 %cmp20, label %lor.lhs.false16.for.inc_crit_edge, label %lor.lhs.false22

lor.lhs.false16.for.inc_crit_edge:                ; preds = %lor.lhs.false16
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

lor.lhs.false22:                                  ; preds = %lor.lhs.false16
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %conv)
  %cmp27 = icmp eq i32 %8, %conv
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %conv19)
  %cmp33 = icmp eq i32 %12, %conv19
  %or.cond = select i1 %cmp27, i1 %cmp33, i1 false
  br i1 %or.cond, label %lor.lhs.false22.for.inc_crit_edge, label %lor.lhs.false22.if.end37_crit_edge

lor.lhs.false22.if.end37_crit_edge:               ; preds = %lor.lhs.false22
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end37

lor.lhs.false22.for.inc_crit_edge:                ; preds = %lor.lhs.false22
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.end37:                                         ; preds = %lor.lhs.false22.if.end37_crit_edge, %if.end7.if.end37_crit_edge
  %arrayidx38 = getelementptr [17 x %struct.mode_size], ptr @__const.radeon_add_common_modes.common_modes, i32 0, i32 %i.073
  %15 = ptrtoint ptr %arrayidx38 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx38, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 320, i32 %16)
  %cmp40 = icmp slt i32 %16, 320
  br i1 %cmp40, label %if.end37.for.inc_crit_edge, label %if.end48

if.end37.for.inc_crit_edge:                       ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.end48:                                         ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #9
  %h44 = getelementptr [17 x %struct.mode_size], ptr @__const.radeon_add_common_modes.common_modes, i32 0, i32 %i.073, i32 1
  %17 = ptrtoint ptr %h44 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %h44, align 4
  %call = tail call ptr @drm_cvt_mode(ptr noundef %1, i32 noundef %16, i32 noundef %18, i32 noundef 60, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext false) #7
  tail call void @drm_mode_probed_add(ptr noundef %connector, ptr noundef %call) #7
  br label %for.inc

for.inc:                                          ; preds = %if.end48, %if.end37.for.inc_crit_edge, %lor.lhs.false22.for.inc_crit_edge, %lor.lhs.false16.for.inc_crit_edge, %if.then11.for.inc_crit_edge, %if.then.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.073, 1
  %exitcond.not = icmp eq i32 %inc, 17
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_mode_probed_add(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_connector_update_edid_property(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_add_edid_modes(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_mode_set_crtcinfo(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_cvt_mode(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_mode_duplicate(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_mode_set_name(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @radeon_dp_mode_valid_helper(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @radeon_lvds_set_property(ptr noundef %connector, ptr noundef readnone %property, i64 noundef %value) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %connector to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %connector, align 8
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.19) #7
  %scaling_mode_property = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 30, i32 73
  %2 = ptrtoint ptr %scaling_mode_property to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %scaling_mode_property, align 4
  %cmp.not = icmp eq ptr %3, %property
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %encoder = getelementptr inbounds %struct.drm_connector, ptr %connector, i32 0, i32 41
  %4 = ptrtoint ptr %encoder to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %encoder, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %if.else, label %if.end.if.end7_crit_edge

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %helper_private = getelementptr inbounds %struct.drm_connector, ptr %connector, i32 0, i32 35
  %6 = ptrtoint ptr %helper_private to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %helper_private, align 4
  %best_encoder = getelementptr inbounds %struct.drm_connector_helper_funcs, ptr %7, i32 0, i32 4
  %8 = ptrtoint ptr %best_encoder to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %best_encoder, align 4
  %call = tail call ptr %9(ptr noundef %connector) #7
  br label %if.end7

if.end7:                                          ; preds = %if.else, %if.end.if.end7_crit_edge
  %radeon_encoder.0 = phi ptr [ %call, %if.else ], [ %5, %if.end.if.end7_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp8(i64 4, i64 %value)
  %10 = icmp ult i64 %value, 4
  %switch.idx.cast = trunc i64 %value to i32
  %rmx_type.0 = select i1 %10, i32 %switch.idx.cast, i32 1
  %rmx_type11 = getelementptr inbounds %struct.radeon_encoder, ptr %radeon_encoder.0, i32 0, i32 7
  %11 = ptrtoint ptr %rmx_type11 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %rmx_type11, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %rmx_type.0)
  %cmp12 = icmp eq i32 %12, %rmx_type.0
  br i1 %cmp12, label %if.end7.cleanup_crit_edge, label %if.end14

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end14:                                         ; preds = %if.end7
  %13 = ptrtoint ptr %rmx_type11 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %rmx_type.0, ptr %rmx_type11, align 4
  %crtc1.i = getelementptr inbounds %struct.drm_encoder, ptr %radeon_encoder.0, i32 0, i32 8
  %14 = ptrtoint ptr %crtc1.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %crtc1.i, align 4
  %tobool.not.i = icmp eq ptr %15, null
  br i1 %tobool.not.i, label %if.end14.cleanup_crit_edge, label %land.lhs.true.i

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

land.lhs.true.i:                                  ; preds = %if.end14
  %enabled.i = getelementptr inbounds %struct.drm_crtc, ptr %15, i32 0, i32 11
  %16 = ptrtoint ptr %enabled.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %enabled.i, align 8, !range !87
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool2.not.i = icmp eq i8 %17, 0
  br i1 %tobool2.not.i, label %land.lhs.true.i.cleanup_crit_edge, label %if.then.i

land.lhs.true.i.cleanup_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  %mode.i = getelementptr inbounds %struct.drm_crtc, ptr %15, i32 0, i32 12
  %x.i = getelementptr inbounds %struct.drm_crtc, ptr %15, i32 0, i32 14
  %18 = ptrtoint ptr %x.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %x.i, align 4
  %y.i = getelementptr inbounds %struct.drm_crtc, ptr %15, i32 0, i32 15
  %20 = ptrtoint ptr %y.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %y.i, align 8
  %primary.i = getelementptr inbounds %struct.drm_crtc, ptr %15, i32 0, i32 6
  %22 = ptrtoint ptr %primary.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %primary.i, align 4
  %fb.i = getelementptr inbounds %struct.drm_plane, ptr %23, i32 0, i32 12
  %24 = ptrtoint ptr %fb.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %fb.i, align 4
  %call.i = tail call zeroext i1 @drm_crtc_helper_set_mode(ptr noundef nonnull %15, ptr noundef %mode.i, i32 noundef %19, i32 noundef %21, ptr noundef %25) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %land.lhs.true.i.cleanup_crit_edge, %if.end14.cleanup_crit_edge, %if.end7.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @radeon_vga_detect(ptr noundef %connector, i1 noundef zeroext %force) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %connector to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %connector, align 8
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_private, align 4
  %call = tail call zeroext i1 @drm_kms_helper_is_poll_worker() #7
  br i1 %call, label %entry.if.end9_crit_edge, label %if.then

entry.if.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9

if.then:                                          ; preds = %entry
  %4 = ptrtoint ptr %connector to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %connector, align 8
  %dev3 = getelementptr inbounds %struct.drm_device, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %dev3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev3, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %7, i32 noundef 4) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %if.then.cleanup.sink.split_crit_edge, label %if.then.if.end9_crit_edge

if.then.if.end9_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9

if.then.cleanup.sink.split_crit_edge:             ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

if.end9:                                          ; preds = %if.then.if.end9_crit_edge, %entry.if.end9_crit_edge
  %8 = ptrtoint ptr %connector to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %connector, align 8
  %encoder_list.i = getelementptr inbounds %struct.drm_device, ptr %9, i32 0, i32 30, i32 16
  %possible_encoders.i = getelementptr inbounds %struct.drm_connector, ptr %connector, i32 0, i32 40
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %if.end9
  %.pn.in.i = phi ptr [ %encoder_list.i, %if.end9 ], [ %.pn.i, %for.body.i.for.cond.i_crit_edge ]
  %10 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %.pn.i = load ptr, ptr %.pn.in.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %encoder_list.i
  br i1 %cmp.not.i, label %for.cond.i.radeon_best_single_encoder.exit_crit_edge, label %for.body.i

for.cond.i.radeon_best_single_encoder.exit_crit_edge: ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %radeon_best_single_encoder.exit

for.body.i:                                       ; preds = %for.cond.i
  %11 = ptrtoint ptr %possible_encoders.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %possible_encoders.i, align 8
  %index.i.i.i = getelementptr i8, ptr %.pn.i, i32 36
  %13 = ptrtoint ptr %index.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %index.i.i.i, align 4
  %shl.i.i = shl nuw i32 1, %14
  %and.i = and i32 %shl.i.i, %12
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %for.body.i.for.cond.i_crit_edge, label %cleanup.split.loop.exit14.i

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.i

cleanup.split.loop.exit14.i:                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %encoder.0.le.i = getelementptr i8, ptr %.pn.i, i32 -4
  br label %radeon_best_single_encoder.exit

radeon_best_single_encoder.exit:                  ; preds = %cleanup.split.loop.exit14.i, %for.cond.i.radeon_best_single_encoder.exit_crit_edge
  %retval.0.i = phi ptr [ %encoder.0.le.i, %cleanup.split.loop.exit14.i ], [ null, %for.cond.i.radeon_best_single_encoder.exit_crit_edge ]
  %tobool.not = icmp eq ptr %retval.0.i, null
  %ddc_bus = getelementptr inbounds %struct.radeon_connector, ptr %connector, i32 0, i32 3
  %15 = ptrtoint ptr %ddc_bus to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ddc_bus, align 8
  %tobool13.not = icmp eq ptr %16, null
  br i1 %tobool13.not, label %radeon_best_single_encoder.exit.if.else35_crit_edge, label %if.then14

radeon_best_single_encoder.exit.if.else35_crit_edge: ; preds = %radeon_best_single_encoder.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else35

if.then14:                                        ; preds = %radeon_best_single_encoder.exit
  %call15 = tail call zeroext i1 @radeon_ddc_probe(ptr noundef %connector, i1 noundef zeroext false) #7
  br i1 %call15, label %if.then19, label %if.then14.if.else35_crit_edge

if.then14.if.else35_crit_edge:                    ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else35

if.then19:                                        ; preds = %if.then14
  %detected_by_load = getelementptr inbounds %struct.radeon_connector, ptr %connector, i32 0, i32 9
  %17 = ptrtoint ptr %detected_by_load to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 0, ptr %detected_by_load, align 1
  %edid.i = getelementptr inbounds %struct.radeon_connector, ptr %connector, i32 0, i32 6
  %18 = ptrtoint ptr %edid.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %edid.i, align 8
  %tobool.not.i119 = icmp eq ptr %19, null
  br i1 %tobool.not.i119, label %if.then19.radeon_connector_free_edid.exit_crit_edge, label %if.then.i

if.then19.radeon_connector_free_edid.exit_crit_edge: ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #9
  br label %radeon_connector_free_edid.exit

if.then.i:                                        ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @kfree(ptr noundef nonnull %19) #7
  %20 = ptrtoint ptr %edid.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %edid.i, align 8
  br label %radeon_connector_free_edid.exit

radeon_connector_free_edid.exit:                  ; preds = %if.then.i, %if.then19.radeon_connector_free_edid.exit_crit_edge
  tail call fastcc void @radeon_connector_get_edid(ptr noundef %connector)
  %21 = ptrtoint ptr %edid.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %edid.i, align 8
  %tobool20.not = icmp eq ptr %22, null
  br i1 %tobool20.not, label %if.then21, label %if.else

if.then21:                                        ; preds = %radeon_connector_free_edid.exit
  call void @__sanitizer_cov_trace_pc() #9
  %name = getelementptr inbounds %struct.drm_connector, ptr %connector, i32 0, i32 7
  %23 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %name, align 4
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.20, ptr noundef %24) #7
  br label %if.then58

if.else:                                          ; preds = %radeon_connector_free_edid.exit
  %input = getelementptr inbounds %struct.edid, ptr %22, i32 0, i32 8
  %25 = ptrtoint ptr %input to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %input, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool23 = icmp slt i8 %26, 0
  %use_digital = getelementptr inbounds %struct.radeon_connector, ptr %connector, i32 0, i32 5
  %.lobit = lshr i8 %26, 7
  %27 = ptrtoint ptr %use_digital to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %.lobit, ptr %use_digital, align 1
  br i1 %tobool23, label %land.lhs.true, label %if.else.if.then58_crit_edge

if.else.if.then58_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then58

land.lhs.true:                                    ; preds = %if.else
  %shared_ddc = getelementptr inbounds %struct.radeon_connector, ptr %connector, i32 0, i32 4
  %28 = ptrtoint ptr %shared_ddc to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %shared_ddc, align 4, !range !87
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool29.not = icmp eq i8 %29, 0
  br i1 %tobool29.not, label %land.lhs.true.if.then58_crit_edge, label %radeon_connector_free_edid.exit123

land.lhs.true.if.then58_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then58

radeon_connector_free_edid.exit123:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @kfree(ptr noundef nonnull %22) #7
  %30 = ptrtoint ptr %edid.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr null, ptr %edid.i, align 8
  br label %if.end60

if.else35:                                        ; preds = %if.then14.if.else35_crit_edge, %radeon_best_single_encoder.exit.if.else35_crit_edge
  br i1 %force, label %if.end42, label %if.then37

if.then37:                                        ; preds = %if.else35
  %detected_by_load38 = getelementptr inbounds %struct.radeon_connector, ptr %connector, i32 0, i32 9
  %31 = ptrtoint ptr %detected_by_load38 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %detected_by_load38, align 1, !range !87
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %tobool39.not = icmp eq i8 %32, 0
  br i1 %tobool39.not, label %if.then37.out_crit_edge, label %if.then40

if.then37.out_crit_edge:                          ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.then40:                                        ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #9
  %status = getelementptr inbounds %struct.drm_connector, ptr %connector, i32 0, i32 18
  %33 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %status, align 8
  br label %out

if.end42:                                         ; preds = %if.else35
  %dac_load_detect = getelementptr inbounds %struct.radeon_connector, ptr %connector, i32 0, i32 8
  %35 = ptrtoint ptr %dac_load_detect to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %dac_load_detect, align 8, !range !87
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %tobool43.not = icmp eq i8 %36, 0
  %brmerge = select i1 %tobool43.not, i1 true, i1 %tobool.not
  br i1 %brmerge, label %if.end42.if.end60_crit_edge, label %if.then47

if.end42.if.end60_crit_edge:                      ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end60

if.then47:                                        ; preds = %if.end42
  %helper_private = getelementptr inbounds %struct.drm_encoder, ptr %retval.0.i, i32 0, i32 11
  %37 = ptrtoint ptr %helper_private to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %helper_private, align 4
  %detect = getelementptr inbounds %struct.drm_encoder_helper_funcs, ptr %38, i32 0, i32 7
  %39 = ptrtoint ptr %detect to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %detect, align 4
  %call48 = tail call i32 %40(ptr noundef nonnull %retval.0.i, ptr noundef %connector) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call48)
  %cmp49.not = icmp eq i32 %call48, 2
  br i1 %cmp49.not, label %if.then47.if.end60_crit_edge, label %if.end55

if.then47.if.end60_crit_edge:                     ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end60

if.end55:                                         ; preds = %if.then47
  %detected_by_load52 = getelementptr inbounds %struct.radeon_connector, ptr %connector, i32 0, i32 9
  %41 = ptrtoint ptr %detected_by_load52 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 1, ptr %detected_by_load52, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call48)
  %cmp56 = icmp eq i32 %call48, 1
  br i1 %cmp56, label %if.end55.if.then58_crit_edge, label %if.end55.if.end68_crit_edge

if.end55.if.end68_crit_edge:                      ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end68

if.end55.if.then58_crit_edge:                     ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then58

if.then58:                                        ; preds = %if.end55.if.then58_crit_edge, %land.lhs.true.if.then58_crit_edge, %if.else.if.then58_crit_edge, %if.then21
  %call59 = tail call fastcc i32 @radeon_connector_analog_encoder_conflict_solve(ptr noundef %connector, ptr noundef %retval.0.i, i1 noundef zeroext true)
  br label %if.end60

if.end60:                                         ; preds = %if.then58, %if.then47.if.end60_crit_edge, %if.end42.if.end60_crit_edge, %radeon_connector_free_edid.exit123
  %ret.2 = phi i32 [ %call59, %if.then58 ], [ 2, %radeon_connector_free_edid.exit123 ], [ 2, %if.then47.if.end60_crit_edge ], [ 2, %if.end42.if.end60_crit_edge ]
  %is_atom_bios = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 14
  %42 = ptrtoint ptr %is_atom_bios to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %is_atom_bios, align 4, !range !87
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %43)
  %tobool61.not = icmp eq i8 %43, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %ret.2)
  %cmp63 = icmp eq i32 %ret.2, 2
  %or.cond = select i1 %tobool61.not, i1 %cmp63, i1 false
  br i1 %or.cond, label %land.lhs.true65, label %if.end60.if.end68_crit_edge

if.end60.if.end68_crit_edge:                      ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end68

land.lhs.true65:                                  ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #9
  %bios_hardcoded_edid_size = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 44, i32 17
  %44 = ptrtoint ptr %bios_hardcoded_edid_size to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %bios_hardcoded_edid_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %tobool66.not = icmp eq i32 %45, 0
  %spec.select = select i1 %tobool66.not, i32 2, i32 1
  br label %if.end68

if.end68:                                         ; preds = %land.lhs.true65, %if.end60.if.end68_crit_edge, %if.end55.if.end68_crit_edge
  %ret.3 = phi i32 [ %ret.2, %if.end60.if.end68_crit_edge ], [ %spec.select, %land.lhs.true65 ], [ %call48, %if.end55.if.end68_crit_edge ]
  %46 = ptrtoint ptr %connector to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %connector, align 8
  %dev_private.i = getelementptr inbounds %struct.drm_device, ptr %47, i32 0, i32 5
  %48 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %dev_private.i, align 4
  %helper_private.i = getelementptr inbounds %struct.drm_connector, ptr %connector, i32 0, i32 35
  %50 = ptrtoint ptr %helper_private.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %helper_private.i, align 4
  %best_encoder2.i = getelementptr inbounds %struct.drm_connector_helper_funcs, ptr %51, i32 0, i32 4
  %52 = ptrtoint ptr %best_encoder2.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %best_encoder2.i, align 4
  %call.i124 = tail call ptr %53(ptr noundef %connector) #7
  %54 = ptrtoint ptr %connector to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %connector, align 8
  %encoder_list.i125 = getelementptr inbounds %struct.drm_device, ptr %55, i32 0, i32 30, i32 16
  %56 = ptrtoint ptr %encoder_list.i125 to i32
  call void @__asan_load4_noabort(i32 %56)
  %.pn37.i = load ptr, ptr %encoder_list.i125, align 4
  %cmp.not40.i = icmp eq ptr %.pn37.i, %encoder_list.i125
  br i1 %cmp.not40.i, label %if.end68.out_crit_edge, label %for.body.lr.ph.i

if.end68.out_crit_edge:                           ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

for.body.lr.ph.i:                                 ; preds = %if.end68
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %ret.3)
  %cmp9.i = icmp eq i32 %ret.3, 1
  %is_atom_bios.i = getelementptr inbounds %struct.radeon_device, ptr %49, i32 0, i32 14
  br label %for.body.i131

for.body.i131:                                    ; preds = %for.inc.i.for.body.i131_crit_edge, %for.body.lr.ph.i
  %.pn41.i = phi ptr [ %.pn37.i, %for.body.lr.ph.i ], [ %.pn.i132, %for.inc.i.for.body.i131_crit_edge ]
  %encoder.042.i = getelementptr i8, ptr %.pn41.i, i32 -4
  %57 = ptrtoint ptr %possible_encoders.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %possible_encoders.i, align 8
  %index.i.i.i127 = getelementptr i8, ptr %.pn41.i, i32 36
  %59 = ptrtoint ptr %index.i.i.i127 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %index.i.i.i127, align 4
  %shl.i.i128 = shl nuw i32 1, %60
  %and.i129 = and i32 %shl.i.i128, %58
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i129)
  %tobool.not.i130 = icmp eq i32 %and.i129, 0
  br i1 %tobool.not.i130, label %for.body.i131.for.inc.i_crit_edge, label %if.else.i

for.body.i131.for.inc.i_crit_edge:                ; preds = %for.body.i131
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

if.else.i:                                        ; preds = %for.body.i131
  %cmp8.i = icmp eq ptr %encoder.042.i, %call.i124
  %or.cond.i = and i1 %cmp9.i, %cmp8.i
  %61 = ptrtoint ptr %is_atom_bios.i to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %is_atom_bios.i, align 4, !range !87
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %62)
  %tobool12.not.i = icmp eq i8 %62, 0
  br i1 %tobool12.not.i, label %if.else15.i, label %if.then13.i

if.then13.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @radeon_atombios_connected_scratch_regs(ptr noundef %connector, ptr noundef %encoder.042.i, i1 noundef zeroext %or.cond.i) #7
  br label %for.inc.i

if.else15.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @radeon_combios_connected_scratch_regs(ptr noundef %connector, ptr noundef %encoder.042.i, i1 noundef zeroext %or.cond.i) #7
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.else15.i, %if.then13.i, %for.body.i131.for.inc.i_crit_edge
  %63 = ptrtoint ptr %.pn41.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %.pn.i132 = load ptr, ptr %.pn41.i, align 4
  %64 = ptrtoint ptr %connector to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %connector, align 8
  %encoder_list6.i = getelementptr inbounds %struct.drm_device, ptr %65, i32 0, i32 30, i32 16
  %cmp.not.i133 = icmp eq ptr %.pn.i132, %encoder_list6.i
  br i1 %cmp.not.i133, label %for.inc.i.out_crit_edge, label %for.inc.i.for.body.i131_crit_edge

for.inc.i.for.body.i131_crit_edge:                ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i131

for.inc.i.out_crit_edge:                          ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

out:                                              ; preds = %for.inc.i.out_crit_edge, %if.end68.out_crit_edge, %if.then40, %if.then37.out_crit_edge
  %ret.4 = phi i32 [ %34, %if.then40 ], [ 2, %if.then37.out_crit_edge ], [ %ret.3, %if.end68.out_crit_edge ], [ %ret.3, %for.inc.i.out_crit_edge ]
  %call69 = tail call zeroext i1 @drm_kms_helper_is_poll_worker() #7
  br i1 %call69, label %out.cleanup_crit_edge, label %if.then70

out.cleanup_crit_edge:                            ; preds = %out
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then70:                                        ; preds = %out
  call void @__sanitizer_cov_trace_pc() #9
  %66 = ptrtoint ptr %connector to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %connector, align 8
  %dev72 = getelementptr inbounds %struct.drm_device, ptr %67, i32 0, i32 2
  %68 = ptrtoint ptr %dev72 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %dev72, align 4
  %call.i134 = tail call i64 @ktime_get_mono_fast_ns() #7
  %last_busy.i = getelementptr inbounds %struct.device, ptr %69, i32 0, i32 12, i32 22
  %70 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %70)
  store volatile i64 %call.i134, ptr %last_busy.i, align 8
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.then70, %if.then.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ %ret.4, %if.then70 ], [ 2, %if.then.cleanup.sink.split_crit_edge ]
  %71 = ptrtoint ptr %connector to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %connector, align 8
  %dev74 = getelementptr inbounds %struct.drm_device, ptr %72, i32 0, i32 2
  %73 = ptrtoint ptr %dev74 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %dev74, align 4
  %call.i135 = tail call i32 @__pm_runtime_suspend(ptr noundef %74, i32 noundef 13) #7
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %out.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.4, %out.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @radeon_connector_analog_encoder_conflict_solve(ptr noundef readonly %connector, ptr noundef readnone %encoder, i1 noundef zeroext %priority) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %connector to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %connector, align 8
  %connector_list = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 30, i32 12
  %2 = ptrtoint ptr %connector_list to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn6 = load ptr, ptr %connector_list, align 4
  %cmp.not8 = icmp eq ptr %.pn6, %connector_list
  br i1 %cmp.not8, label %entry.for.end52_crit_edge, label %for.body.lr.ph

entry.for.end52_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end52

for.body.lr.ph:                                   ; preds = %entry
  %name36 = getelementptr inbounds %struct.drm_connector, ptr %connector, i32 0, i32 7
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %for.body.lr.ph
  %.pn10 = phi ptr [ %.pn6, %for.body.lr.ph ], [ %.pn, %cleanup.for.body_crit_edge ]
  %current_status.addr.09 = phi i32 [ 1, %for.body.lr.ph ], [ %current_status.addr.2, %cleanup.for.body_crit_edge ]
  %conflict.011 = getelementptr i8, ptr %.pn10, i32 -16
  %cmp4 = icmp eq ptr %conflict.011, %connector
  br i1 %cmp4, label %for.body.cleanup_crit_edge, label %if.end

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %for.body
  %3 = ptrtoint ptr %conflict.011 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %conflict.011, align 8
  %encoder_list = getelementptr inbounds %struct.drm_device, ptr %4, i32 0, i32 30, i32 16
  %5 = ptrtoint ptr %encoder_list to i32
  call void @__asan_load4_noabort(i32 %5)
  %.pn13 = load ptr, ptr %encoder_list, align 4
  %cmp19.not4 = icmp eq ptr %.pn13, %encoder_list
  br i1 %cmp19.not4, label %if.end.cleanup_crit_edge, label %for.body21.lr.ph

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body21.lr.ph:                                 ; preds = %if.end
  %possible_encoders = getelementptr i8, ptr %.pn10, i32 800
  %6 = ptrtoint ptr %possible_encoders to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %possible_encoders, align 8
  %status = getelementptr i8, ptr %.pn10, i32 160
  %use_digital = getelementptr i8, ptr %.pn10, i32 1037
  br label %for.body21

for.body21:                                       ; preds = %for.inc.for.body21_crit_edge, %for.body21.lr.ph
  %.pn15 = phi ptr [ %.pn13, %for.body21.lr.ph ], [ %.pn1, %for.inc.for.body21_crit_edge ]
  %enc.0 = getelementptr i8, ptr %.pn15, i32 -4
  %index.i.i = getelementptr i8, ptr %.pn15, i32 36
  %8 = ptrtoint ptr %index.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %index.i.i, align 4
  %shl.i = shl nuw i32 1, %9
  %and = and i32 %shl.i, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp ne i32 %and, 0
  %cmp23 = icmp eq ptr %enc.0, %encoder
  %or.cond = select i1 %tobool.not, i1 %cmp23, i1 false
  br i1 %or.cond, label %if.then24, label %for.body21.for.inc_crit_edge

for.body21.for.inc_crit_edge:                     ; preds = %for.body21
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.then24:                                        ; preds = %for.body21
  %10 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %status, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %11)
  %cmp25.not = icmp eq i32 %11, 1
  br i1 %cmp25.not, label %if.end27, label %if.then24.for.inc_crit_edge

if.then24.for.inc_crit_edge:                      ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.end27:                                         ; preds = %if.then24
  %12 = ptrtoint ptr %use_digital to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %use_digital, align 1, !range !87
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool28.not = icmp eq i8 %13, 0
  br i1 %tobool28.not, label %if.end30, label %if.end27.for.inc_crit_edge

if.end27.for.inc_crit_edge:                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.end30:                                         ; preds = %if.end27
  br i1 %priority, label %if.then32, label %if.else35

if.then32:                                        ; preds = %if.end30
  %name = getelementptr i8, ptr %.pn10, i32 36
  %14 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %name, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.21, ptr noundef %15) #7
  %16 = ptrtoint ptr %name36 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %name36, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.22, ptr noundef %17) #7
  %18 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 2, ptr %status, align 8
  %19 = ptrtoint ptr %conflict.011 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %conflict.011, align 8
  %dev_private.i = getelementptr inbounds %struct.drm_device, ptr %20, i32 0, i32 5
  %21 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev_private.i, align 4
  %helper_private.i = getelementptr i8, ptr %.pn10, i32 692
  %23 = ptrtoint ptr %helper_private.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %helper_private.i, align 4
  %best_encoder2.i = getelementptr inbounds %struct.drm_connector_helper_funcs, ptr %24, i32 0, i32 4
  %25 = ptrtoint ptr %best_encoder2.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %best_encoder2.i, align 4
  %call.i = tail call ptr %26(ptr noundef %conflict.011) #7
  %27 = ptrtoint ptr %conflict.011 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %conflict.011, align 8
  %encoder_list.i = getelementptr inbounds %struct.drm_device, ptr %28, i32 0, i32 30, i32 16
  %29 = ptrtoint ptr %encoder_list.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %.pn37.i = load ptr, ptr %encoder_list.i, align 4
  %cmp.not40.i = icmp eq ptr %.pn37.i, %encoder_list.i
  br i1 %cmp.not40.i, label %if.then32.cleanup_crit_edge, label %for.body.lr.ph.i

if.then32.cleanup_crit_edge:                      ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body.lr.ph.i:                                 ; preds = %if.then32
  %is_atom_bios.i = getelementptr inbounds %struct.radeon_device, ptr %22, i32 0, i32 14
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %.pn41.i = phi ptr [ %.pn37.i, %for.body.lr.ph.i ], [ %.pn.i, %for.inc.i.for.body.i_crit_edge ]
  %encoder.042.i = getelementptr i8, ptr %.pn41.i, i32 -4
  %30 = ptrtoint ptr %possible_encoders to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %possible_encoders, align 8
  %index.i.i.i = getelementptr i8, ptr %.pn41.i, i32 36
  %32 = ptrtoint ptr %index.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %index.i.i.i, align 4
  %shl.i.i = shl nuw i32 1, %33
  %and.i = and i32 %shl.i.i, %31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.else.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

if.else.i:                                        ; preds = %for.body.i
  %34 = ptrtoint ptr %is_atom_bios.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %is_atom_bios.i, align 4, !range !87
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %tobool12.not.i = icmp eq i8 %35, 0
  br i1 %tobool12.not.i, label %if.else15.i, label %if.then13.i

if.then13.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @radeon_atombios_connected_scratch_regs(ptr noundef %conflict.011, ptr noundef %encoder.042.i, i1 noundef zeroext false) #7
  br label %for.inc.i

if.else15.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @radeon_combios_connected_scratch_regs(ptr noundef %conflict.011, ptr noundef %encoder.042.i, i1 noundef zeroext false) #7
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.else15.i, %if.then13.i, %for.body.i.for.inc.i_crit_edge
  %36 = ptrtoint ptr %.pn41.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %.pn.i = load ptr, ptr %.pn41.i, align 4
  %37 = ptrtoint ptr %conflict.011 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %conflict.011, align 8
  %encoder_list6.i = getelementptr inbounds %struct.drm_device, ptr %38, i32 0, i32 30, i32 16
  %cmp.not.i = icmp eq ptr %.pn.i, %encoder_list6.i
  br i1 %cmp.not.i, label %for.inc.i.cleanup_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.inc.i.cleanup_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.else35:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #9
  %39 = ptrtoint ptr %name36 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %name36, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.23, ptr noundef %40) #7
  %name37 = getelementptr i8, ptr %.pn10, i32 36
  %41 = ptrtoint ptr %name37 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %name37, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.22, ptr noundef %42) #7
  br label %cleanup

for.inc:                                          ; preds = %if.end27.for.inc_crit_edge, %if.then24.for.inc_crit_edge, %for.body21.for.inc_crit_edge
  %43 = ptrtoint ptr %.pn15 to i32
  call void @__asan_load4_noabort(i32 %43)
  %.pn1 = load ptr, ptr %.pn15, align 4
  %cmp19.not = icmp eq ptr %.pn1, %encoder_list
  br i1 %cmp19.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body21_crit_edge

for.inc.for.body21_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body21

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.else35, %for.inc.i.cleanup_crit_edge, %if.then32.cleanup_crit_edge, %if.end.cleanup_crit_edge, %for.body.cleanup_crit_edge
  %current_status.addr.2 = phi i32 [ %current_status.addr.09, %for.body.cleanup_crit_edge ], [ 2, %if.else35 ], [ %current_status.addr.09, %if.then32.cleanup_crit_edge ], [ %current_status.addr.09, %if.end.cleanup_crit_edge ], [ %current_status.addr.09, %for.inc.i.cleanup_crit_edge ], [ %current_status.addr.09, %for.inc.cleanup_crit_edge ]
  %44 = ptrtoint ptr %.pn10 to i32
  call void @__asan_load4_noabort(i32 %44)
  %.pn = load ptr, ptr %.pn10, align 4
  %cmp.not = icmp eq ptr %.pn, %connector_list
  br i1 %cmp.not, label %cleanup.for.end52_crit_edge, label %cleanup.for.body_crit_edge

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

cleanup.for.end52_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end52

for.end52:                                        ; preds = %cleanup.for.end52_crit_edge, %entry.for.end52_crit_edge
  %current_status.addr.0.lcssa = phi i32 [ 1, %entry.for.end52_crit_edge ], [ %current_status.addr.2, %cleanup.for.end52_crit_edge ]
  ret i32 %current_status.addr.0.lcssa
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @radeon_vga_get_modes(ptr noundef %connector) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @radeon_connector_get_edid(ptr noundef %connector)
  %edid.i = getelementptr inbounds %struct.radeon_connector, ptr %connector, i32 0, i32 6
  %0 = ptrtoint ptr %edid.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %edid.i, align 8
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call.i = tail call i32 @drm_connector_update_edid_property(ptr noundef %connector, ptr noundef nonnull %1) #7
  %2 = ptrtoint ptr %edid.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %edid.i, align 8
  %call3.i = tail call i32 @drm_add_edid_modes(ptr noundef %connector, ptr noundef %3) #7
  br label %radeon_ddc_get_modes.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call4.i = tail call i32 @drm_connector_update_edid_property(ptr noundef %connector, ptr noundef null) #7
  br label %radeon_ddc_get_modes.exit

radeon_ddc_get_modes.exit:                        ; preds = %if.end.i, %if.then.i
  %retval.0.i = phi i32 [ %call3.i, %if.then.i ], [ 0, %if.end.i ]
  %4 = ptrtoint ptr %connector to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %connector, align 8
  %encoder_list.i.i = getelementptr inbounds %struct.drm_device, ptr %5, i32 0, i32 30, i32 16
  %possible_encoders.i.i = getelementptr inbounds %struct.drm_connector, ptr %connector, i32 0, i32 40
  br label %for.cond.i.i

for.cond.i.i:                                     ; preds = %for.body.i.i.for.cond.i.i_crit_edge, %radeon_ddc_get_modes.exit
  %.pn.in.i.i = phi ptr [ %encoder_list.i.i, %radeon_ddc_get_modes.exit ], [ %.pn.i.i, %for.body.i.i.for.cond.i.i_crit_edge ]
  %6 = ptrtoint ptr %.pn.in.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %.pn.i.i = load ptr, ptr %.pn.in.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %.pn.i.i, %encoder_list.i.i
  br i1 %cmp.not.i.i, label %for.cond.i.i.radeon_get_native_mode.exit_crit_edge, label %for.body.i.i

for.cond.i.i.radeon_get_native_mode.exit_crit_edge: ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %radeon_get_native_mode.exit

for.body.i.i:                                     ; preds = %for.cond.i.i
  %7 = ptrtoint ptr %possible_encoders.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %possible_encoders.i.i, align 8
  %index.i.i.i.i = getelementptr i8, ptr %.pn.i.i, i32 36
  %9 = ptrtoint ptr %index.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %index.i.i.i.i, align 4
  %shl.i.i.i = shl nuw i32 1, %10
  %and.i.i = and i32 %shl.i.i.i, %8
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %for.body.i.i.for.cond.i.i_crit_edge, label %radeon_best_single_encoder.exit.i

for.body.i.i.for.cond.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.i.i

radeon_best_single_encoder.exit.i:                ; preds = %for.body.i.i
  %encoder.0.le.i.i = getelementptr i8, ptr %.pn.i.i, i32 -4
  %cmp.i = icmp eq ptr %encoder.0.le.i.i, null
  br i1 %cmp.i, label %radeon_best_single_encoder.exit.i.radeon_get_native_mode.exit_crit_edge, label %if.end.i3

radeon_best_single_encoder.exit.i.radeon_get_native_mode.exit_crit_edge: ; preds = %radeon_best_single_encoder.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %radeon_get_native_mode.exit

if.end.i3:                                        ; preds = %radeon_best_single_encoder.exit.i
  %probed_modes.i = getelementptr inbounds %struct.drm_connector, ptr %connector, i32 0, i32 19
  %11 = ptrtoint ptr %probed_modes.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile ptr, ptr %probed_modes.i, align 4
  %cmp.i.not.i = icmp eq ptr %12, %probed_modes.i
  br i1 %cmp.i.not.i, label %if.else.i, label %if.then2.i

if.then2.i:                                       ; preds = %if.end.i3
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr6.i = getelementptr i8, ptr %12, i32 -64
  %native_mode.i = getelementptr i8, ptr %.pn.i.i, i32 108
  %13 = call ptr @memcpy(ptr %native_mode.i, ptr %add.ptr6.i, i32 112)
  br label %radeon_get_native_mode.exit

if.else.i:                                        ; preds = %if.end.i3
  call void @__sanitizer_cov_trace_pc() #9
  %native_mode7.i = getelementptr i8, ptr %.pn.i.i, i32 108
  %14 = ptrtoint ptr %native_mode7.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %native_mode7.i, align 4
  br label %radeon_get_native_mode.exit

radeon_get_native_mode.exit:                      ; preds = %if.else.i, %if.then2.i, %radeon_best_single_encoder.exit.i.radeon_get_native_mode.exit_crit_edge, %for.cond.i.i.radeon_get_native_mode.exit_crit_edge
  ret i32 %retval.0.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @radeon_vga_mode_valid(ptr nocapture noundef readonly %connector, ptr nocapture noundef readonly %mode) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %connector to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %connector, align 8
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_private, align 4
  %4 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mode, align 4
  %div = sdiv i32 %5, 10
  %max_pixel_clock = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 41, i32 10
  %6 = ptrtoint ptr %max_pixel_clock to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %max_pixel_clock, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %div, i32 %7)
  %cmp = icmp ugt i32 %div, %7
  %. = select i1 %cmp, i32 15, i32 0
  ret i32 %.
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @radeon_dvi_detect(ptr noundef %connector, i1 noundef zeroext %force) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %connector to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %connector, align 8
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_private, align 4
  %call = tail call zeroext i1 @drm_kms_helper_is_poll_worker() #7
  br i1 %call, label %entry.if.end9_crit_edge, label %if.then

entry.if.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9

if.then:                                          ; preds = %entry
  %4 = ptrtoint ptr %connector to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %connector, align 8
  %dev3 = getelementptr inbounds %struct.drm_device, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %dev3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev3, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %7, i32 noundef 4) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %if.then.cleanup.sink.split_crit_edge, label %if.then.if.end9_crit_edge

if.then.if.end9_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9

if.then.cleanup.sink.split_crit_edge:             ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

if.end9:                                          ; preds = %if.then.if.end9_crit_edge, %entry.if.end9_crit_edge
  %detected_hpd_without_ddc = getelementptr inbounds %struct.radeon_connector, ptr %connector, i32 0, i32 10
  %8 = ptrtoint ptr %detected_hpd_without_ddc to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %detected_hpd_without_ddc, align 2, !range !87
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not = icmp eq i8 %9, 0
  br i1 %tobool.not, label %if.end12, label %if.end12.thread

if.end12.thread:                                  ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  %10 = ptrtoint ptr %detected_hpd_without_ddc to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %detected_hpd_without_ddc, align 2
  br label %if.end16

if.end12:                                         ; preds = %if.end9
  br i1 %force, label %if.end12.if.end16_crit_edge, label %land.lhs.true

if.end12.if.end16_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end16

land.lhs.true:                                    ; preds = %if.end12
  %11 = ptrtoint ptr %connector to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %connector, align 8
  %dev_private.i = getelementptr inbounds %struct.drm_device, ptr %12, i32 0, i32 5
  %13 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev_private.i, align 4
  %family.i = getelementptr inbounds %struct.radeon_device, ptr %14, i32 0, i32 6
  %15 = ptrtoint ptr %family.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %family.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 26, i32 %16)
  %cmp.i = icmp ugt i32 %16, 26
  br i1 %cmp.i, label %land.lhs.true.i, label %land.lhs.true.if.end16_crit_edge

land.lhs.true.if.end16_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end16

land.lhs.true.i:                                  ; preds = %land.lhs.true
  %hpd.i = getelementptr inbounds %struct.radeon_connector, ptr %connector, i32 0, i32 12
  %17 = ptrtoint ptr %hpd.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %hpd.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %18)
  %cmp3.not.i = icmp eq i32 %18, 255
  br i1 %cmp3.not.i, label %land.lhs.true.i.if.end16_crit_edge, label %if.then.i

land.lhs.true.i.if.end16_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end16

if.then.i:                                        ; preds = %land.lhs.true.i
  %asic.i = getelementptr inbounds %struct.radeon_device, ptr %14, i32 0, i32 56
  %19 = ptrtoint ptr %asic.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %asic.i, align 8
  %sense.i = getelementptr inbounds %struct.radeon_asic, ptr %20, i32 0, i32 19, i32 2
  %21 = ptrtoint ptr %sense.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %sense.i, align 4
  %call.i369 = tail call zeroext i1 %22(ptr noundef %14, i32 noundef %18) #7
  %..i = select i1 %call.i369, i32 1, i32 2
  %status8.i = getelementptr inbounds %struct.drm_connector, ptr %connector, i32 0, i32 18
  %23 = ptrtoint ptr %status8.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %status8.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %24, i32 %..i)
  %cmp9.i = icmp eq i32 %24, %..i
  br i1 %cmp9.i, label %if.then15, label %if.then.i.if.end16_crit_edge

if.then.i.if.end16_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end16

if.then15:                                        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  %25 = ptrtoint ptr %status8.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %status8.i, align 8
  br label %exit

if.end16:                                         ; preds = %if.then.i.if.end16_crit_edge, %land.lhs.true.i.if.end16_crit_edge, %land.lhs.true.if.end16_crit_edge, %if.end12.if.end16_crit_edge, %if.end12.thread
  %force.addr.0.off0386 = phi i1 [ true, %if.end12.thread ], [ true, %if.end12.if.end16_crit_edge ], [ false, %land.lhs.true.if.end16_crit_edge ], [ false, %land.lhs.true.i.if.end16_crit_edge ], [ false, %if.then.i.if.end16_crit_edge ]
  %ddc_bus = getelementptr inbounds %struct.radeon_connector, ptr %connector, i32 0, i32 3
  %27 = ptrtoint ptr %ddc_bus to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %ddc_bus, align 8
  %tobool17.not = icmp eq ptr %28, null
  br i1 %tobool17.not, label %if.end16.if.end121_crit_edge, label %if.then18

if.end16.if.end121_crit_edge:                     ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end121

if.then18:                                        ; preds = %if.end16
  %call19 = tail call zeroext i1 @radeon_ddc_probe(ptr noundef %connector, i1 noundef zeroext false) #7
  %brmerge = or i1 %force.addr.0.off0386, %call19
  br i1 %brmerge, label %if.then18.if.end32_crit_edge, label %land.lhs.true24

if.then18.if.end32_crit_edge:                     ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end32

land.lhs.true24:                                  ; preds = %if.then18
  %status25 = getelementptr inbounds %struct.drm_connector, ptr %connector, i32 0, i32 18
  %29 = ptrtoint ptr %status25 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %status25, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %30)
  %cmp26.not = icmp eq i32 %30, 1
  br i1 %cmp26.not, label %land.lhs.true24.if.end32_crit_edge, label %if.then27

land.lhs.true24.if.end32_crit_edge:               ; preds = %land.lhs.true24
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end32

if.then27:                                        ; preds = %land.lhs.true24
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.24) #7
  %31 = ptrtoint ptr %detected_hpd_without_ddc to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 1, ptr %detected_hpd_without_ddc, align 2
  %hotplug_work = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 88
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %32 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %32, ptr noundef %hotplug_work, i32 noundef 100) #7
  br label %exit

if.end32:                                         ; preds = %land.lhs.true24.if.end32_crit_edge, %if.then18.if.end32_crit_edge
  br i1 %call19, label %if.then34, label %if.end32.if.end121_crit_edge

if.end32.if.end121_crit_edge:                     ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end121

if.then34:                                        ; preds = %if.end32
  %detected_by_load = getelementptr inbounds %struct.radeon_connector, ptr %connector, i32 0, i32 9
  %33 = ptrtoint ptr %detected_by_load to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 0, ptr %detected_by_load, align 1
  %edid.i = getelementptr inbounds %struct.radeon_connector, ptr %connector, i32 0, i32 6
  %34 = ptrtoint ptr %edid.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %edid.i, align 8
  %tobool.not.i = icmp eq ptr %35, null
  br i1 %tobool.not.i, label %if.then34.radeon_connector_free_edid.exit_crit_edge, label %if.then.i370

if.then34.radeon_connector_free_edid.exit_crit_edge: ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #9
  br label %radeon_connector_free_edid.exit

if.then.i370:                                     ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @kfree(ptr noundef nonnull %35) #7
  %36 = ptrtoint ptr %edid.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr null, ptr %edid.i, align 8
  br label %radeon_connector_free_edid.exit

radeon_connector_free_edid.exit:                  ; preds = %if.then.i370, %if.then34.radeon_connector_free_edid.exit_crit_edge
  tail call fastcc void @radeon_connector_get_edid(ptr noundef %connector)
  %37 = ptrtoint ptr %edid.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %edid.i, align 8
  %tobool35.not = icmp eq ptr %38, null
  br i1 %tobool35.not, label %if.then36, label %if.else46

if.then36:                                        ; preds = %radeon_connector_free_edid.exit
  %name = getelementptr inbounds %struct.drm_connector, ptr %connector, i32 0, i32 7
  %39 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %name, align 4
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.20, ptr noundef %40) #7
  %family = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 6
  %41 = ptrtoint ptr %family to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %family, align 4
  %.off = add i32 %42, -19
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off)
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %land.lhs.true40, label %if.then36.land.lhs.true114_crit_edge

if.then36.land.lhs.true114_crit_edge:             ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true114

land.lhs.true40:                                  ; preds = %if.then36
  %null_edid_counter = getelementptr inbounds %struct.drm_connector, ptr %connector, i32 0, i32 47
  %43 = ptrtoint ptr %null_edid_counter to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %null_edid_counter, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %tobool41.not = icmp eq i32 %44, 0
  br i1 %tobool41.not, label %land.lhs.true40.land.lhs.true114_crit_edge, label %if.then42

land.lhs.true40.land.lhs.true114_crit_edge:       ; preds = %land.lhs.true40
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true114

if.then42:                                        ; preds = %land.lhs.true40
  call void @__sanitizer_cov_trace_pc() #9
  %45 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %name, align 4
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.25, ptr noundef %46) #7
  br label %if.end121.sink.split

if.else46:                                        ; preds = %radeon_connector_free_edid.exit
  %input = getelementptr inbounds %struct.edid, ptr %38, i32 0, i32 8
  %47 = ptrtoint ptr %input to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %input, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %48)
  %tobool48 = icmp slt i8 %48, 0
  %use_digital = getelementptr inbounds %struct.radeon_connector, ptr %connector, i32 0, i32 5
  %.lobit = lshr i8 %48, 7
  %49 = ptrtoint ptr %use_digital to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 %.lobit, ptr %use_digital, align 1
  br i1 %tobool48, label %if.else46.if.end58_crit_edge, label %land.lhs.true53

if.else46.if.end58_crit_edge:                     ; preds = %if.else46
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end58

land.lhs.true53:                                  ; preds = %if.else46
  %shared_ddc = getelementptr inbounds %struct.radeon_connector, ptr %connector, i32 0, i32 4
  %50 = ptrtoint ptr %shared_ddc to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %shared_ddc, align 4, !range !87
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %51)
  %tobool54.not = icmp eq i8 %51, 0
  br i1 %tobool54.not, label %land.lhs.true53.if.end58_crit_edge, label %if.end58.thread

land.lhs.true53.if.end58_crit_edge:               ; preds = %land.lhs.true53
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end58

if.end58.thread:                                  ; preds = %land.lhs.true53
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @kfree(ptr noundef nonnull %38) #7
  br label %if.end121.sink.split

if.end58:                                         ; preds = %land.lhs.true53.if.end58_crit_edge, %if.else46.if.end58_crit_edge
  %shared_ddc59 = getelementptr inbounds %struct.radeon_connector, ptr %connector, i32 0, i32 4
  %52 = ptrtoint ptr %shared_ddc59 to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %shared_ddc59, align 4, !range !87
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %53)
  %tobool60.not = icmp eq i8 %53, 0
  br i1 %tobool60.not, label %if.end58.if.end111_crit_edge, label %if.then65

if.end58.if.end111_crit_edge:                     ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end111

if.then65:                                        ; preds = %if.end58
  %connector_list = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 30, i32 12
  %54 = ptrtoint ptr %connector_list to i32
  call void @__asan_load4_noabort(i32 %54)
  %.pn365423 = load ptr, ptr %connector_list, align 4
  %cmp71.not424 = icmp eq ptr %.pn365423, %connector_list
  br i1 %cmp71.not424, label %if.then65.land.lhs.true114_crit_edge, label %for.body.lr.ph

if.then65.land.lhs.true114_crit_edge:             ; preds = %if.then65
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true114

for.body.lr.ph:                                   ; preds = %if.then65
  %asic = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 56
  %hpd97 = getelementptr inbounds %struct.radeon_connector, ptr %connector, i32 0, i32 12
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %.pn365426 = phi ptr [ %.pn365423, %for.body.lr.ph ], [ %.pn365, %for.inc.for.body_crit_edge ]
  %ret.1425 = phi i32 [ 1, %for.body.lr.ph ], [ %ret.2, %for.inc.for.body_crit_edge ]
  %list_connector.0 = getelementptr i8, ptr %.pn365426, i32 -16
  %cmp74 = icmp eq ptr %list_connector.0, %connector
  br i1 %cmp74, label %for.body.for.inc_crit_edge, label %if.end77

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.end77:                                         ; preds = %for.body
  %shared_ddc81 = getelementptr i8, ptr %.pn365426, i32 1036
  %55 = ptrtoint ptr %shared_ddc81 to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %shared_ddc81, align 4, !range !87
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %56)
  %tobool82.not = icmp eq i8 %56, 0
  br i1 %tobool82.not, label %if.end77.for.inc_crit_edge, label %land.lhs.true84

if.end77.for.inc_crit_edge:                       ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

land.lhs.true84:                                  ; preds = %if.end77
  %ddc_bus85 = getelementptr i8, ptr %.pn365426, i32 1032
  %57 = ptrtoint ptr %ddc_bus85 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %ddc_bus85, align 8
  %i2c_id = getelementptr inbounds %struct.radeon_i2c_chan, ptr %58, i32 0, i32 3, i32 1
  %59 = ptrtoint ptr %i2c_id to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %i2c_id, align 1
  %61 = ptrtoint ptr %ddc_bus to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %ddc_bus, align 8
  %i2c_id89 = getelementptr inbounds %struct.radeon_i2c_chan, ptr %62, i32 0, i32 3, i32 1
  %63 = ptrtoint ptr %i2c_id89 to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %i2c_id89, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %60, i8 %64)
  %cmp91 = icmp eq i8 %60, %64
  br i1 %cmp91, label %if.then93, label %land.lhs.true84.for.inc_crit_edge

land.lhs.true84.for.inc_crit_edge:                ; preds = %land.lhs.true84
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.then93:                                        ; preds = %land.lhs.true84
  %connector_type = getelementptr i8, ptr %.pn365426, i32 136
  %65 = ptrtoint ptr %connector_type to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %connector_type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %66)
  %cmp94.not = icmp eq i32 %66, 1
  br i1 %cmp94.not, label %if.then93.for.inc_crit_edge, label %if.then96

if.then93.for.inc_crit_edge:                      ; preds = %if.then93
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.then96:                                        ; preds = %if.then93
  %67 = ptrtoint ptr %asic to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %asic, align 8
  %sense = getelementptr inbounds %struct.radeon_asic, ptr %68, i32 0, i32 19, i32 2
  %69 = ptrtoint ptr %sense to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %sense, align 4
  %71 = ptrtoint ptr %hpd97 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %hpd97, align 8
  %call99 = tail call zeroext i1 %70(ptr noundef %3, i32 noundef %72) #7
  br i1 %call99, label %if.then96.for.inc_crit_edge, label %if.then100

if.then96.for.inc_crit_edge:                      ; preds = %if.then96
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.then100:                                       ; preds = %if.then96
  %73 = ptrtoint ptr %edid.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %edid.i, align 8
  %tobool.not.i376 = icmp eq ptr %74, null
  br i1 %tobool.not.i376, label %if.then100.for.inc_crit_edge, label %if.then.i377

if.then100.for.inc_crit_edge:                     ; preds = %if.then100
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.then.i377:                                     ; preds = %if.then100
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @kfree(ptr noundef nonnull %74) #7
  %75 = ptrtoint ptr %edid.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr null, ptr %edid.i, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.then.i377, %if.then100.for.inc_crit_edge, %if.then96.for.inc_crit_edge, %if.then93.for.inc_crit_edge, %land.lhs.true84.for.inc_crit_edge, %if.end77.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %ret.2 = phi i32 [ %ret.1425, %for.body.for.inc_crit_edge ], [ %ret.1425, %if.then96.for.inc_crit_edge ], [ %ret.1425, %if.then93.for.inc_crit_edge ], [ %ret.1425, %land.lhs.true84.for.inc_crit_edge ], [ %ret.1425, %if.end77.for.inc_crit_edge ], [ 2, %if.then100.for.inc_crit_edge ], [ 2, %if.then.i377 ]
  %76 = ptrtoint ptr %.pn365426 to i32
  call void @__asan_load4_noabort(i32 %76)
  %.pn365 = load ptr, ptr %.pn365426, align 4
  %cmp71.not = icmp eq ptr %.pn365, %connector_list
  br i1 %cmp71.not, label %for.inc.if.end111_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc.if.end111_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end111

if.end111:                                        ; preds = %for.inc.if.end111_crit_edge, %if.end58.if.end111_crit_edge
  %ret.3 = phi i32 [ 1, %if.end58.if.end111_crit_edge ], [ %ret.2, %for.inc.if.end111_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %ret.3)
  %cmp112 = icmp eq i32 %ret.3, 1
  br i1 %cmp112, label %if.end111.land.lhs.true114_crit_edge, label %if.end111.if.end121_crit_edge

if.end111.if.end121_crit_edge:                    ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end121

if.end111.land.lhs.true114_crit_edge:             ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true114

land.lhs.true114:                                 ; preds = %if.end111.land.lhs.true114_crit_edge, %if.then65.land.lhs.true114_crit_edge, %land.lhs.true40.land.lhs.true114_crit_edge, %if.then36.land.lhs.true114_crit_edge
  %use_digital115 = getelementptr inbounds %struct.radeon_connector, ptr %connector, i32 0, i32 5
  %77 = ptrtoint ptr %use_digital115 to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %use_digital115, align 1, !range !87
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %78)
  %tobool116.not = icmp eq i8 %78, 0
  br i1 %tobool116.not, label %land.lhs.true114.if.end121_crit_edge, label %land.lhs.true114.if.end231_crit_edge

land.lhs.true114.if.end231_crit_edge:             ; preds = %land.lhs.true114
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end231

land.lhs.true114.if.end121_crit_edge:             ; preds = %land.lhs.true114
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end121

if.end121.sink.split:                             ; preds = %if.end58.thread, %if.then42
  %edid.i.sink = phi ptr [ %edid.i, %if.end58.thread ], [ %ddc_bus, %if.then42 ]
  %79 = ptrtoint ptr %edid.i.sink to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr null, ptr %edid.i.sink, align 8
  br label %if.end121

if.end121:                                        ; preds = %if.end121.sink.split, %land.lhs.true114.if.end121_crit_edge, %if.end111.if.end121_crit_edge, %if.end32.if.end121_crit_edge, %if.end16.if.end121_crit_edge
  %cmp112400 = phi i1 [ true, %land.lhs.true114.if.end121_crit_edge ], [ false, %if.end111.if.end121_crit_edge ], [ false, %if.end32.if.end121_crit_edge ], [ false, %if.end16.if.end121_crit_edge ], [ false, %if.end121.sink.split ]
  %ret.3399 = phi i32 [ 1, %land.lhs.true114.if.end121_crit_edge ], [ %ret.3, %if.end111.if.end121_crit_edge ], [ 2, %if.end32.if.end121_crit_edge ], [ 2, %if.end16.if.end121_crit_edge ], [ 2, %if.end121.sink.split ]
  %broken_edid.0.off0398 = phi i1 [ %tobool35.not, %land.lhs.true114.if.end121_crit_edge ], [ false, %if.end111.if.end121_crit_edge ], [ false, %if.end32.if.end121_crit_edge ], [ false, %if.end16.if.end121_crit_edge ], [ false, %if.end121.sink.split ]
  %connector_type122 = getelementptr inbounds %struct.drm_connector, ptr %connector, i32 0, i32 10
  %80 = ptrtoint ptr %connector_type122 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %connector_type122, align 8
  %82 = zext i32 %81 to i64
  call void @__sanitizer_cov_trace_switch(i64 %82, ptr @__sancov_gen_cov_switch_values.39)
  switch i32 %81, label %if.end130 [
    i32 3, label %if.end121.out_crit_edge
    i32 11, label %if.end121.out_crit_edge448
  ]

if.end121.out_crit_edge448:                       ; preds = %if.end121
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end121.out_crit_edge:                          ; preds = %if.end121
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end130:                                        ; preds = %if.end121
  br i1 %force.addr.0.off0386, label %if.end138, label %if.then132

if.then132:                                       ; preds = %if.end130
  %detected_by_load133 = getelementptr inbounds %struct.radeon_connector, ptr %connector, i32 0, i32 9
  %83 = ptrtoint ptr %detected_by_load133 to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %detected_by_load133, align 1, !range !87
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %84)
  %tobool134.not = icmp eq i8 %84, 0
  br i1 %tobool134.not, label %if.then132.out_crit_edge, label %if.then135

if.then132.out_crit_edge:                         ; preds = %if.then132
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.then135:                                       ; preds = %if.then132
  call void @__sanitizer_cov_trace_pc() #9
  %status136 = getelementptr inbounds %struct.drm_connector, ptr %connector, i32 0, i32 18
  %85 = ptrtoint ptr %status136 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %status136, align 8
  br label %out

if.end138:                                        ; preds = %if.end130
  %dac_load_detect = getelementptr inbounds %struct.radeon_connector, ptr %connector, i32 0, i32 8
  %87 = ptrtoint ptr %dac_load_detect to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %dac_load_detect, align 8, !range !87
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %88)
  %tobool139.not = icmp eq i8 %88, 0
  br i1 %tobool139.not, label %if.end138.if.end209_crit_edge, label %if.then140

if.end138.if.end209_crit_edge:                    ; preds = %if.end138
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end209

if.then140:                                       ; preds = %if.end138
  %89 = ptrtoint ptr %connector to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %connector, align 8
  %encoder_list = getelementptr inbounds %struct.drm_device, ptr %90, i32 0, i32 30, i32 16
  %91 = ptrtoint ptr %encoder_list to i32
  call void @__asan_load4_noabort(i32 %91)
  %.pn431 = load ptr, ptr %encoder_list, align 4
  %cmp152.not432 = icmp eq ptr %.pn431, %encoder_list
  br i1 %cmp152.not432, label %if.then140.if.end209.loopexit_crit_edge, label %for.body155.lr.ph

if.then140.if.end209.loopexit_crit_edge:          ; preds = %if.then140
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end209.loopexit

for.body155.lr.ph:                                ; preds = %if.then140
  %possible_encoders = getelementptr inbounds %struct.drm_connector, ptr %connector, i32 0, i32 40
  %92 = ptrtoint ptr %possible_encoders to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %possible_encoders, align 8
  br label %for.body155

for.body155:                                      ; preds = %for.inc202.for.body155_crit_edge, %for.body155.lr.ph
  %.pn433 = phi ptr [ %.pn431, %for.body155.lr.ph ], [ %.pn, %for.inc202.for.body155_crit_edge ]
  %index.i.i = getelementptr i8, ptr %.pn433, i32 36
  %94 = ptrtoint ptr %index.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %index.i.i, align 4
  %shl.i = shl nuw i32 1, %95
  %and157 = and i32 %shl.i, %93
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and157)
  %tobool158.not = icmp eq i32 %and157, 0
  br i1 %tobool158.not, label %for.body155.for.inc202_crit_edge, label %if.else160

for.body155.for.inc202_crit_edge:                 ; preds = %for.body155
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc202

if.else160:                                       ; preds = %for.body155
  %encoder_type = getelementptr i8, ptr %.pn433, i32 32
  %96 = ptrtoint ptr %encoder_type to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %encoder_type, align 4
  %98 = zext i32 %97 to i64
  call void @__sanitizer_cov_trace_switch(i64 %98, ptr @__sancov_gen_cov_switch_values.40)
  switch i32 %97, label %if.else160.for.inc202_crit_edge [
    i32 1, label %if.else160.if.end168_crit_edge
    i32 4, label %if.else160.if.end168_crit_edge449
  ]

if.else160.if.end168_crit_edge449:                ; preds = %if.else160
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end168

if.else160.if.end168_crit_edge:                   ; preds = %if.else160
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end168

if.else160.for.inc202_crit_edge:                  ; preds = %if.else160
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc202

if.end168:                                        ; preds = %if.else160.if.end168_crit_edge, %if.else160.if.end168_crit_edge449
  %helper_private = getelementptr i8, ptr %.pn433, i32 64
  %99 = ptrtoint ptr %helper_private to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %helper_private, align 4
  %detect = getelementptr inbounds %struct.drm_encoder_helper_funcs, ptr %100, i32 0, i32 7
  %101 = ptrtoint ptr %detect to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %detect, align 4
  %tobool169.not = icmp eq ptr %102, null
  br i1 %tobool169.not, label %if.end168.for.inc202_crit_edge, label %if.then170

if.end168.for.inc202_crit_edge:                   ; preds = %if.end168
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc202

if.then170:                                       ; preds = %if.end168
  %encoder.0.le = getelementptr i8, ptr %.pn433, i32 -4
  br i1 %broken_edid.0.off0398, label %if.else189, label %if.then172

if.then172:                                       ; preds = %if.then170
  br i1 %cmp112400, label %if.then172.land.lhs.true212_crit_edge, label %if.then175

if.then172.land.lhs.true212_crit_edge:            ; preds = %if.then172
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true212

if.then175:                                       ; preds = %if.then172
  %call177 = tail call i32 %102(ptr noundef %encoder.0.le, ptr noundef %connector) #7
  %103 = zext i32 %call177 to i64
  call void @__sanitizer_cov_trace_switch(i64 %103, ptr @__sancov_gen_cov_switch_values.41)
  switch i32 %call177, label %if.then175.if.then185_crit_edge [
    i32 1, label %if.then180
    i32 2, label %if.then175.out_crit_edge
  ]

if.then175.out_crit_edge:                         ; preds = %if.then175
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.then175.if.then185_crit_edge:                  ; preds = %if.then175
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then185

if.then180:                                       ; preds = %if.then175
  call void @__sanitizer_cov_trace_pc() #9
  %use_digital181 = getelementptr inbounds %struct.radeon_connector, ptr %connector, i32 0, i32 5
  %104 = ptrtoint ptr %use_digital181 to i32
  call void @__asan_store1_noabort(i32 %104)
  store i8 0, ptr %use_digital181, align 1
  br label %if.then185

if.then185:                                       ; preds = %if.then180, %if.then175.if.then185_crit_edge
  %detected_by_load186 = getelementptr inbounds %struct.radeon_connector, ptr %connector, i32 0, i32 9
  %105 = ptrtoint ptr %detected_by_load186 to i32
  call void @__asan_store1_noabort(i32 %105)
  store i8 1, ptr %detected_by_load186, align 1
  br label %if.end209

if.else189:                                       ; preds = %if.then170
  %detect.le = getelementptr inbounds %struct.drm_encoder_helper_funcs, ptr %100, i32 0, i32 7
  %encoder_type.le = getelementptr i8, ptr %.pn433, i32 32
  %use_digital190 = getelementptr inbounds %struct.radeon_connector, ptr %connector, i32 0, i32 5
  %106 = ptrtoint ptr %use_digital190 to i32
  call void @__asan_store1_noabort(i32 %106)
  store i8 1, ptr %use_digital190, align 1
  %107 = ptrtoint ptr %detect.le to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %detect.le, align 4
  %call192 = tail call i32 %108(ptr noundef %encoder.0.le, ptr noundef %connector) #7
  %109 = ptrtoint ptr %encoder_type.le to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %encoder_type.le, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.26, i32 noundef %110, i32 noundef %call192) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call192)
  %cmp194 = icmp eq i32 %call192, 1
  br i1 %cmp194, label %if.then196, label %if.else189.if.end209_crit_edge

if.else189.if.end209_crit_edge:                   ; preds = %if.else189
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end209

if.then196:                                       ; preds = %if.else189
  call void @__sanitizer_cov_trace_pc() #9
  %111 = ptrtoint ptr %use_digital190 to i32
  call void @__asan_store1_noabort(i32 %111)
  store i8 0, ptr %use_digital190, align 1
  br label %if.end209

for.inc202:                                       ; preds = %if.end168.for.inc202_crit_edge, %if.else160.for.inc202_crit_edge, %for.body155.for.inc202_crit_edge
  %112 = ptrtoint ptr %.pn433 to i32
  call void @__asan_load4_noabort(i32 %112)
  %.pn = load ptr, ptr %.pn433, align 4
  %cmp152.not = icmp eq ptr %.pn, %encoder_list
  br i1 %cmp152.not, label %for.inc202.if.end209.loopexit_crit_edge, label %for.inc202.for.body155_crit_edge

for.inc202.for.body155_crit_edge:                 ; preds = %for.inc202
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body155

for.inc202.if.end209.loopexit_crit_edge:          ; preds = %for.inc202
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end209.loopexit

if.end209.loopexit:                               ; preds = %for.inc202.if.end209.loopexit_crit_edge, %if.then140.if.end209.loopexit_crit_edge
  %encoder.0.le429 = getelementptr %struct.drm_device, ptr %90, i32 0, i32 30, i32 15
  br label %if.end209

if.end209:                                        ; preds = %if.end209.loopexit, %if.then196, %if.else189.if.end209_crit_edge, %if.then185, %if.end138.if.end209_crit_edge
  %ret.4 = phi i32 [ %call177, %if.then185 ], [ %ret.3399, %if.end138.if.end209_crit_edge ], [ %ret.3399, %if.then196 ], [ %ret.3399, %if.else189.if.end209_crit_edge ], [ %ret.3399, %if.end209.loopexit ]
  %encoder.1 = phi ptr [ %encoder.0.le, %if.then185 ], [ null, %if.end138.if.end209_crit_edge ], [ %encoder.0.le, %if.then196 ], [ %encoder.0.le, %if.else189.if.end209_crit_edge ], [ %encoder.0.le429, %if.end209.loopexit ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %ret.4)
  %cmp210 = icmp eq i32 %ret.4, 1
  br i1 %cmp210, label %if.end209.land.lhs.true212_crit_edge, label %if.end209.out_crit_edge

if.end209.out_crit_edge:                          ; preds = %if.end209
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end209.land.lhs.true212_crit_edge:             ; preds = %if.end209
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true212

land.lhs.true212:                                 ; preds = %if.end209.land.lhs.true212_crit_edge, %if.then172.land.lhs.true212_crit_edge
  %encoder.1412 = phi ptr [ %encoder.1, %if.end209.land.lhs.true212_crit_edge ], [ %encoder.0.le, %if.then172.land.lhs.true212_crit_edge ]
  %use_digital213 = getelementptr inbounds %struct.radeon_connector, ptr %connector, i32 0, i32 5
  %113 = ptrtoint ptr %use_digital213 to i32
  call void @__asan_load1_noabort(i32 %113)
  %114 = load i8, ptr %use_digital213, align 1, !range !87
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %114)
  %cmp216 = icmp ne i8 %114, 0
  %tobool219.not = icmp eq ptr %encoder.1412, null
  %or.cond = select i1 %cmp216, i1 true, i1 %tobool219.not
  br i1 %or.cond, label %land.lhs.true212.if.end231_crit_edge, label %if.then220

land.lhs.true212.if.end231_crit_edge:             ; preds = %land.lhs.true212
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end231

if.then220:                                       ; preds = %land.lhs.true212
  call void @__sanitizer_cov_trace_pc() #9
  %call221 = tail call fastcc i32 @radeon_connector_analog_encoder_conflict_solve(ptr noundef %connector, ptr noundef nonnull %encoder.1412, i1 noundef zeroext true)
  br label %out

out:                                              ; preds = %if.then220, %if.end209.out_crit_edge, %if.then175.out_crit_edge, %if.then135, %if.then132.out_crit_edge, %if.end121.out_crit_edge, %if.end121.out_crit_edge448
  %ret.5 = phi i32 [ %ret.3399, %if.end121.out_crit_edge ], [ %call221, %if.then220 ], [ %ret.4, %if.end209.out_crit_edge ], [ %86, %if.then135 ], [ %ret.3399, %if.then132.out_crit_edge ], [ %ret.3399, %if.end121.out_crit_edge448 ], [ %call177, %if.then175.out_crit_edge ]
  %is_atom_bios = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 14
  %115 = ptrtoint ptr %is_atom_bios to i32
  call void @__asan_load1_noabort(i32 %115)
  %116 = load i8, ptr %is_atom_bios, align 4, !range !87
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %116)
  %tobool223.not = icmp eq i8 %116, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %ret.5)
  %cmp225 = icmp eq i32 %ret.5, 2
  %or.cond367 = select i1 %tobool223.not, i1 %cmp225, i1 false
  br i1 %or.cond367, label %land.lhs.true227, label %out.if.end231_crit_edge

out.if.end231_crit_edge:                          ; preds = %out
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end231

land.lhs.true227:                                 ; preds = %out
  %bios_hardcoded_edid_size = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 44, i32 17
  %117 = ptrtoint ptr %bios_hardcoded_edid_size to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %bios_hardcoded_edid_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %118)
  %tobool228.not = icmp eq i32 %118, 0
  br i1 %tobool228.not, label %land.lhs.true227.if.end231_crit_edge, label %if.then229

land.lhs.true227.if.end231_crit_edge:             ; preds = %land.lhs.true227
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end231

if.then229:                                       ; preds = %land.lhs.true227
  call void @__sanitizer_cov_trace_pc() #9
  %use_digital230 = getelementptr inbounds %struct.radeon_connector, ptr %connector, i32 0, i32 5
  %119 = ptrtoint ptr %use_digital230 to i32
  call void @__asan_store1_noabort(i32 %119)
  store i8 1, ptr %use_digital230, align 1
  br label %if.end231

if.end231:                                        ; preds = %if.then229, %land.lhs.true227.if.end231_crit_edge, %out.if.end231_crit_edge, %land.lhs.true212.if.end231_crit_edge, %land.lhs.true114.if.end231_crit_edge
  %ret.6 = phi i32 [ %ret.5, %out.if.end231_crit_edge ], [ 1, %if.then229 ], [ 2, %land.lhs.true227.if.end231_crit_edge ], [ 1, %land.lhs.true114.if.end231_crit_edge ], [ 1, %land.lhs.true212.if.end231_crit_edge ]
  %120 = ptrtoint ptr %connector to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %connector, align 8
  %dev_private.i379 = getelementptr inbounds %struct.drm_device, ptr %121, i32 0, i32 5
  %122 = ptrtoint ptr %dev_private.i379 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %dev_private.i379, align 4
  %helper_private.i = getelementptr inbounds %struct.drm_connector, ptr %connector, i32 0, i32 35
  %124 = ptrtoint ptr %helper_private.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %helper_private.i, align 4
  %best_encoder2.i = getelementptr inbounds %struct.drm_connector_helper_funcs, ptr %125, i32 0, i32 4
  %126 = ptrtoint ptr %best_encoder2.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %best_encoder2.i, align 4
  %call.i380 = tail call ptr %127(ptr noundef %connector) #7
  %128 = ptrtoint ptr %connector to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %connector, align 8
  %encoder_list.i = getelementptr inbounds %struct.drm_device, ptr %129, i32 0, i32 30, i32 16
  %130 = ptrtoint ptr %encoder_list.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %.pn37.i = load ptr, ptr %encoder_list.i, align 4
  %cmp.not40.i = icmp eq ptr %.pn37.i, %encoder_list.i
  br i1 %cmp.not40.i, label %if.end231.radeon_connector_update_scratch_regs.exit_crit_edge, label %for.body.lr.ph.i

if.end231.radeon_connector_update_scratch_regs.exit_crit_edge: ; preds = %if.end231
  call void @__sanitizer_cov_trace_pc() #9
  br label %radeon_connector_update_scratch_regs.exit

for.body.lr.ph.i:                                 ; preds = %if.end231
  %possible_encoders.i = getelementptr inbounds %struct.drm_connector, ptr %connector, i32 0, i32 40
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %ret.6)
  %cmp9.i381 = icmp eq i32 %ret.6, 1
  %is_atom_bios.i = getelementptr inbounds %struct.radeon_device, ptr %123, i32 0, i32 14
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %.pn41.i = phi ptr [ %.pn37.i, %for.body.lr.ph.i ], [ %.pn.i, %for.inc.i.for.body.i_crit_edge ]
  %encoder.042.i = getelementptr i8, ptr %.pn41.i, i32 -4
  %131 = ptrtoint ptr %possible_encoders.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %possible_encoders.i, align 8
  %index.i.i.i = getelementptr i8, ptr %.pn41.i, i32 36
  %133 = ptrtoint ptr %index.i.i.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %index.i.i.i, align 4
  %shl.i.i = shl nuw i32 1, %134
  %and.i = and i32 %shl.i.i, %132
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i382 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i382, label %for.body.i.for.inc.i_crit_edge, label %if.else.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

if.else.i:                                        ; preds = %for.body.i
  %cmp8.i = icmp eq ptr %encoder.042.i, %call.i380
  %or.cond.i = and i1 %cmp9.i381, %cmp8.i
  %135 = ptrtoint ptr %is_atom_bios.i to i32
  call void @__asan_load1_noabort(i32 %135)
  %136 = load i8, ptr %is_atom_bios.i, align 4, !range !87
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %136)
  %tobool12.not.i = icmp eq i8 %136, 0
  br i1 %tobool12.not.i, label %if.else15.i, label %if.then13.i

if.then13.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @radeon_atombios_connected_scratch_regs(ptr noundef %connector, ptr noundef %encoder.042.i, i1 noundef zeroext %or.cond.i) #7
  br label %for.inc.i

if.else15.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @radeon_combios_connected_scratch_regs(ptr noundef %connector, ptr noundef %encoder.042.i, i1 noundef zeroext %or.cond.i) #7
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.else15.i, %if.then13.i, %for.body.i.for.inc.i_crit_edge
  %137 = ptrtoint ptr %.pn41.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %.pn.i = load ptr, ptr %.pn41.i, align 4
  %138 = ptrtoint ptr %connector to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %connector, align 8
  %encoder_list6.i = getelementptr inbounds %struct.drm_device, ptr %139, i32 0, i32 30, i32 16
  %cmp.not.i = icmp eq ptr %.pn.i, %encoder_list6.i
  br i1 %cmp.not.i, label %for.inc.i.radeon_connector_update_scratch_regs.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.inc.i.radeon_connector_update_scratch_regs.exit_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %radeon_connector_update_scratch_regs.exit

radeon_connector_update_scratch_regs.exit:        ; preds = %for.inc.i.radeon_connector_update_scratch_regs.exit_crit_edge, %if.end231.radeon_connector_update_scratch_regs.exit_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @radeon_audio to i32))
  %140 = load i32, ptr @radeon_audio, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %140)
  %cmp232.not = icmp eq i32 %140, 0
  br i1 %cmp232.not, label %radeon_connector_update_scratch_regs.exit.exit_crit_edge, label %land.lhs.true234

radeon_connector_update_scratch_regs.exit.exit_crit_edge: ; preds = %radeon_connector_update_scratch_regs.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %exit

land.lhs.true234:                                 ; preds = %radeon_connector_update_scratch_regs.exit
  %use_digital235 = getelementptr inbounds %struct.radeon_connector, ptr %connector, i32 0, i32 5
  %141 = ptrtoint ptr %use_digital235 to i32
  call void @__asan_load1_noabort(i32 %141)
  %142 = load i8, ptr %use_digital235, align 1, !range !87
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %142)
  %tobool236.not = icmp eq i8 %142, 0
  br i1 %tobool236.not, label %land.lhs.true234.exit_crit_edge, label %if.then238

land.lhs.true234.exit_crit_edge:                  ; preds = %land.lhs.true234
  call void @__sanitizer_cov_trace_pc() #9
  br label %exit

if.then238:                                       ; preds = %land.lhs.true234
  %143 = ptrtoint ptr %helper_private.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %helper_private.i, align 4
  %best_encoder = getelementptr inbounds %struct.drm_connector_helper_funcs, ptr %144, i32 0, i32 4
  %145 = ptrtoint ptr %best_encoder to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %best_encoder, align 4
  %call240 = tail call ptr %146(ptr noundef %connector) #7
  %tobool241.not = icmp eq ptr %call240, null
  br i1 %tobool241.not, label %if.then238.exit_crit_edge, label %land.lhs.true242

if.then238.exit_crit_edge:                        ; preds = %if.then238
  call void @__sanitizer_cov_trace_pc() #9
  br label %exit

land.lhs.true242:                                 ; preds = %if.then238
  %encoder_type243 = getelementptr inbounds %struct.drm_encoder, ptr %call240, i32 0, i32 4
  %147 = ptrtoint ptr %encoder_type243 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %encoder_type243, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %148)
  %cmp244 = icmp eq i32 %148, 2
  br i1 %cmp244, label %if.then246, label %land.lhs.true242.exit_crit_edge

land.lhs.true242.exit_crit_edge:                  ; preds = %land.lhs.true242
  call void @__sanitizer_cov_trace_pc() #9
  br label %exit

if.then246:                                       ; preds = %land.lhs.true242
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @radeon_connector_get_edid(ptr noundef %connector)
  tail call void @radeon_audio_detect(ptr noundef %connector, ptr noundef nonnull %call240, i32 noundef %ret.6) #7
  br label %exit

exit:                                             ; preds = %if.then246, %land.lhs.true242.exit_crit_edge, %if.then238.exit_crit_edge, %land.lhs.true234.exit_crit_edge, %radeon_connector_update_scratch_regs.exit.exit_crit_edge, %if.then27, %if.then15
  %ret.7 = phi i32 [ %ret.6, %land.lhs.true234.exit_crit_edge ], [ %ret.6, %radeon_connector_update_scratch_regs.exit.exit_crit_edge ], [ 2, %if.then27 ], [ %26, %if.then15 ], [ %ret.6, %if.then246 ], [ %ret.6, %land.lhs.true242.exit_crit_edge ], [ %ret.6, %if.then238.exit_crit_edge ]
  %call249 = tail call zeroext i1 @drm_kms_helper_is_poll_worker() #7
  br i1 %call249, label %exit.cleanup_crit_edge, label %if.then250

exit.cleanup_crit_edge:                           ; preds = %exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then250:                                       ; preds = %exit
  call void @__sanitizer_cov_trace_pc() #9
  %149 = ptrtoint ptr %connector to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %connector, align 8
  %dev252 = getelementptr inbounds %struct.drm_device, ptr %150, i32 0, i32 2
  %151 = ptrtoint ptr %dev252 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %dev252, align 4
  %call.i383 = tail call i64 @ktime_get_mono_fast_ns() #7
  %last_busy.i = getelementptr inbounds %struct.device, ptr %152, i32 0, i32 12, i32 22
  %153 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %153)
  store volatile i64 %call.i383, ptr %last_busy.i, align 8
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.then250, %if.then.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ %ret.7, %if.then250 ], [ 2, %if.then.cleanup.sink.split_crit_edge ]
  %154 = ptrtoint ptr %connector to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %connector, align 8
  %dev254 = getelementptr inbounds %struct.drm_device, ptr %155, i32 0, i32 2
  %156 = ptrtoint ptr %dev254 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %dev254, align 4
  %call.i384 = tail call i32 @__pm_runtime_suspend(ptr noundef %157, i32 noundef 13) #7
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.7, %exit.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @radeon_dvi_mode_valid(ptr nocapture noundef %connector, ptr nocapture noundef readonly %mode) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %connector to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %connector, align 8
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_private, align 4
  %use_digital = getelementptr inbounds %struct.radeon_connector, ptr %connector, i32 0, i32 5
  %4 = ptrtoint ptr %use_digital to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %use_digital, align 1, !range !87
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %entry.if.end35_crit_edge, label %land.lhs.true

entry.if.end35_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end35

land.lhs.true:                                    ; preds = %entry
  %family = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 6
  %6 = ptrtoint ptr %family to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %family, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %7)
  %cmp = icmp eq i32 %7, 1
  %8 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %mode, align 4
  br i1 %cmp, label %land.lhs.true2, label %land.lhs.true6

land.lhs.true2:                                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_const_cmp4(i32 135000, i32 %9)
  %cmp3 = icmp sgt i32 %9, 135000
  br i1 %cmp3, label %land.lhs.true2.cleanup_crit_edge, label %land.lhs.true2.if.end35_crit_edge

land.lhs.true2.if.end35_crit_edge:                ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end35

land.lhs.true2.cleanup_crit_edge:                 ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

land.lhs.true6:                                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_const_cmp4(i32 165000, i32 %9)
  %cmp8 = icmp sgt i32 %9, 165000
  br i1 %cmp8, label %if.then9, label %land.lhs.true6.if.end35_crit_edge

land.lhs.true6.if.end35_crit_edge:                ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end35

if.then9:                                         ; preds = %land.lhs.true6
  %connector_object_id = getelementptr inbounds %struct.radeon_connector, ptr %connector, i32 0, i32 11
  %10 = ptrtoint ptr %connector_object_id to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %connector_object_id, align 4
  %12 = zext i16 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.42)
  switch i16 %11, label %if.else [
    i16 2, label %if.then9.cleanup_crit_edge
    i16 4, label %if.then9.cleanup_crit_edge57
    i16 13, label %if.then9.cleanup_crit_edge58
  ]

if.then9.cleanup_crit_edge58:                     ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then9.cleanup_crit_edge57:                     ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then9.cleanup_crit_edge:                       ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.else:                                          ; preds = %if.then9
  %13 = ptrtoint ptr %family to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %family, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 50, i32 %14)
  %cmp23 = icmp ugt i32 %14, 50
  br i1 %cmp23, label %land.lhs.true25, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

land.lhs.true25:                                  ; preds = %if.else
  %edid_blob_ptr.i = getelementptr inbounds %struct.drm_connector, ptr %connector, i32 0, i32 22
  %15 = ptrtoint ptr %edid_blob_ptr.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %edid_blob_ptr.i, align 4
  %edid.i = getelementptr inbounds %struct.radeon_connector, ptr %connector, i32 0, i32 6
  %17 = ptrtoint ptr %edid.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %edid.i, align 8
  %tobool.not.i = icmp eq ptr %18, null
  br i1 %tobool.not.i, label %if.else.i, label %land.lhs.true25.radeon_connector_edid.exit_crit_edge

land.lhs.true25.radeon_connector_edid.exit_crit_edge: ; preds = %land.lhs.true25
  call void @__sanitizer_cov_trace_pc() #9
  br label %radeon_connector_edid.exit

if.else.i:                                        ; preds = %land.lhs.true25
  %tobool2.not.i = icmp eq ptr %16, null
  br i1 %tobool2.not.i, label %if.else.i.if.end9.i_crit_edge, label %if.then3.i

if.else.i.if.end9.i_crit_edge:                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9.i

if.then3.i:                                       ; preds = %if.else.i
  %data.i = getelementptr inbounds %struct.drm_property_blob, ptr %16, i32 0, i32 5
  %19 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %data.i, align 4
  %length.i = getelementptr inbounds %struct.drm_property_blob, ptr %16, i32 0, i32 4
  %21 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %length.i, align 4
  %call.i = tail call ptr @kmemdup(ptr noundef %20, i32 noundef %22, i32 noundef 3264) #7
  %tobool5.not.i = icmp eq ptr %call.i, null
  br i1 %tobool5.not.i, label %if.then3.i.if.end9.i_crit_edge, label %if.then6.i

if.then3.i.if.end9.i_crit_edge:                   ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9.i

if.then6.i:                                       ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #9
  %23 = ptrtoint ptr %edid.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call.i, ptr %edid.i, align 8
  br label %if.end9.i

if.end9.i:                                        ; preds = %if.then6.i, %if.then3.i.if.end9.i_crit_edge, %if.else.i.if.end9.i_crit_edge
  %24 = ptrtoint ptr %edid.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %edid.i, align 8
  br label %radeon_connector_edid.exit

radeon_connector_edid.exit:                       ; preds = %if.end9.i, %land.lhs.true25.radeon_connector_edid.exit_crit_edge
  %retval.0.i = phi ptr [ %25, %if.end9.i ], [ %18, %land.lhs.true25.radeon_connector_edid.exit_crit_edge ]
  %call26 = tail call zeroext i1 @drm_detect_hdmi_monitor(ptr noundef %retval.0.i) #7
  br i1 %call26, label %if.then28, label %radeon_connector_edid.exit.cleanup_crit_edge

radeon_connector_edid.exit.cleanup_crit_edge:     ; preds = %radeon_connector_edid.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then28:                                        ; preds = %radeon_connector_edid.exit
  call void @__sanitizer_cov_trace_pc() #9
  %26 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 340000, i32 %27)
  %cmp30 = icmp sgt i32 %27, 340000
  %. = select i1 %cmp30, i32 15, i32 0
  br label %cleanup

if.end35:                                         ; preds = %land.lhs.true6.if.end35_crit_edge, %land.lhs.true2.if.end35_crit_edge, %entry.if.end35_crit_edge
  %28 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %mode, align 4
  %div = sdiv i32 %29, 10
  %max_pixel_clock = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 41, i32 10
  %30 = ptrtoint ptr %max_pixel_clock to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %max_pixel_clock, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %div, i32 %31)
  %cmp38 = icmp ugt i32 %div, %31
  %.55 = select i1 %cmp38, i32 15, i32 0
  br label %cleanup

cleanup:                                          ; preds = %if.end35, %if.then28, %radeon_connector_edid.exit.cleanup_crit_edge, %if.else.cleanup_crit_edge, %if.then9.cleanup_crit_edge, %if.then9.cleanup_crit_edge57, %if.then9.cleanup_crit_edge58, %land.lhs.true2.cleanup_crit_edge
  %retval.0 = phi i32 [ 15, %land.lhs.true2.cleanup_crit_edge ], [ 0, %if.then9.cleanup_crit_edge ], [ 0, %if.then9.cleanup_crit_edge57 ], [ 0, %if.then9.cleanup_crit_edge58 ], [ %., %if.then28 ], [ 15, %radeon_connector_edid.exit.cleanup_crit_edge ], [ 15, %if.else.cleanup_crit_edge ], [ %.55, %if.end35 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @radeon_tv_detect(ptr noundef %connector, i1 noundef zeroext %force) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dac_load_detect = getelementptr inbounds %struct.radeon_connector, ptr %connector, i32 0, i32 8
  %0 = ptrtoint ptr %dac_load_detect to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %dac_load_detect, align 8, !range !87
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call zeroext i1 @drm_kms_helper_is_poll_worker() #7
  br i1 %call, label %if.end.if.end9_crit_edge, label %if.then1

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9

if.then1:                                         ; preds = %if.end
  %2 = ptrtoint ptr %connector to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %connector, align 8
  %dev2 = getelementptr inbounds %struct.drm_device, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev2, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %5, i32 noundef 4) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %if.then1.cleanup.sink.split_crit_edge, label %if.then1.if.end9_crit_edge

if.then1.if.end9_crit_edge:                       ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9

if.then1.cleanup.sink.split_crit_edge:            ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

if.end9:                                          ; preds = %if.then1.if.end9_crit_edge, %if.end.if.end9_crit_edge
  %6 = ptrtoint ptr %connector to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %connector, align 8
  %encoder_list.i = getelementptr inbounds %struct.drm_device, ptr %7, i32 0, i32 30, i32 16
  %possible_encoders.i = getelementptr inbounds %struct.drm_connector, ptr %connector, i32 0, i32 40
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %if.end9
  %.pn.in.i = phi ptr [ %encoder_list.i, %if.end9 ], [ %.pn.i, %for.body.i.for.cond.i_crit_edge ]
  %8 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %.pn.i = load ptr, ptr %.pn.in.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %encoder_list.i
  br i1 %cmp.not.i, label %for.cond.i.if.end18_crit_edge, label %for.body.i

for.cond.i.if.end18_crit_edge:                    ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end18

for.body.i:                                       ; preds = %for.cond.i
  %9 = ptrtoint ptr %possible_encoders.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %possible_encoders.i, align 8
  %index.i.i.i = getelementptr i8, ptr %.pn.i, i32 36
  %11 = ptrtoint ptr %index.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %index.i.i.i, align 4
  %shl.i.i = shl nuw i32 1, %12
  %and.i = and i32 %shl.i.i, %10
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %for.body.i.for.cond.i_crit_edge, label %radeon_best_single_encoder.exit

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.i

radeon_best_single_encoder.exit:                  ; preds = %for.body.i
  %encoder.0.le.i = getelementptr i8, ptr %.pn.i, i32 -4
  %tobool11.not = icmp eq ptr %encoder.0.le.i, null
  br i1 %tobool11.not, label %radeon_best_single_encoder.exit.if.end18_crit_edge, label %if.end14

radeon_best_single_encoder.exit.if.end18_crit_edge: ; preds = %radeon_best_single_encoder.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end18

if.end14:                                         ; preds = %radeon_best_single_encoder.exit
  %helper_private = getelementptr i8, ptr %.pn.i, i32 64
  %13 = ptrtoint ptr %helper_private to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %helper_private, align 4
  %detect = getelementptr inbounds %struct.drm_encoder_helper_funcs, ptr %14, i32 0, i32 7
  %15 = ptrtoint ptr %detect to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %detect, align 4
  %call13 = tail call i32 %16(ptr noundef nonnull %encoder.0.le.i, ptr noundef %connector) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call13)
  %cmp15 = icmp eq i32 %call13, 1
  br i1 %cmp15, label %if.then16, label %if.end14.if.end18_crit_edge

if.end14.if.end18_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end18

if.then16:                                        ; preds = %if.end14
  %17 = ptrtoint ptr %connector to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %connector, align 8
  %connector_list.i = getelementptr inbounds %struct.drm_device, ptr %18, i32 0, i32 30, i32 12
  %19 = ptrtoint ptr %connector_list.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %.pn6.i = load ptr, ptr %connector_list.i, align 4
  %cmp.not8.i = icmp eq ptr %.pn6.i, %connector_list.i
  br i1 %cmp.not8.i, label %if.then16.if.end18_crit_edge, label %for.body.lr.ph.i

if.then16.if.end18_crit_edge:                     ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end18

for.body.lr.ph.i:                                 ; preds = %if.then16
  %name36.i = getelementptr inbounds %struct.drm_connector, ptr %connector, i32 0, i32 7
  br label %for.body.i47

for.body.i47:                                     ; preds = %cleanup.i.for.body.i47_crit_edge, %for.body.lr.ph.i
  %.pn10.i = phi ptr [ %.pn6.i, %for.body.lr.ph.i ], [ %.pn.i54, %cleanup.i.for.body.i47_crit_edge ]
  %current_status.addr.09.i = phi i32 [ 1, %for.body.lr.ph.i ], [ %current_status.addr.2.i, %cleanup.i.for.body.i47_crit_edge ]
  %conflict.011.i = getelementptr i8, ptr %.pn10.i, i32 -16
  %cmp4.i = icmp eq ptr %conflict.011.i, %connector
  br i1 %cmp4.i, label %for.body.i47.cleanup.i_crit_edge, label %if.end.i

for.body.i47.cleanup.i_crit_edge:                 ; preds = %for.body.i47
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.i

if.end.i:                                         ; preds = %for.body.i47
  %20 = ptrtoint ptr %conflict.011.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %conflict.011.i, align 8
  %encoder_list.i48 = getelementptr inbounds %struct.drm_device, ptr %21, i32 0, i32 30, i32 16
  %22 = ptrtoint ptr %encoder_list.i48 to i32
  call void @__asan_load4_noabort(i32 %22)
  %.pn13.i = load ptr, ptr %encoder_list.i48, align 4
  %cmp19.not4.i = icmp eq ptr %.pn13.i, %encoder_list.i48
  br i1 %cmp19.not4.i, label %if.end.i.cleanup.i_crit_edge, label %for.body21.lr.ph.i

if.end.i.cleanup.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.i

for.body21.lr.ph.i:                               ; preds = %if.end.i
  %possible_encoders.i49 = getelementptr i8, ptr %.pn10.i, i32 800
  %23 = ptrtoint ptr %possible_encoders.i49 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %possible_encoders.i49, align 8
  %status.i = getelementptr i8, ptr %.pn10.i, i32 160
  %use_digital.i = getelementptr i8, ptr %.pn10.i, i32 1037
  br label %for.body21.i

for.body21.i:                                     ; preds = %for.inc.i.for.body21.i_crit_edge, %for.body21.lr.ph.i
  %.pn15.i = phi ptr [ %.pn13.i, %for.body21.lr.ph.i ], [ %.pn1.i, %for.inc.i.for.body21.i_crit_edge ]
  %index.i.i.i50 = getelementptr i8, ptr %.pn15.i, i32 36
  %25 = ptrtoint ptr %index.i.i.i50 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %index.i.i.i50, align 4
  %shl.i.i51 = shl nuw i32 1, %26
  %and.i52 = and i32 %shl.i.i51, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i52)
  %tobool.not.i53 = icmp ne i32 %and.i52, 0
  %cmp23.i = icmp eq ptr %.pn15.i, %.pn.i
  %or.cond.i = select i1 %tobool.not.i53, i1 %cmp23.i, i1 false
  br i1 %or.cond.i, label %if.then24.i, label %for.body21.i.for.inc.i_crit_edge

for.body21.i.for.inc.i_crit_edge:                 ; preds = %for.body21.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

if.then24.i:                                      ; preds = %for.body21.i
  %27 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %status.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %28)
  %cmp25.not.i = icmp eq i32 %28, 1
  br i1 %cmp25.not.i, label %if.end27.i, label %if.then24.i.for.inc.i_crit_edge

if.then24.i.for.inc.i_crit_edge:                  ; preds = %if.then24.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

if.end27.i:                                       ; preds = %if.then24.i
  %29 = ptrtoint ptr %use_digital.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %use_digital.i, align 1, !range !87
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool28.not.i = icmp eq i8 %30, 0
  br i1 %tobool28.not.i, label %if.end30.i, label %if.end27.i.for.inc.i_crit_edge

if.end27.i.for.inc.i_crit_edge:                   ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

if.end30.i:                                       ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #9
  %31 = ptrtoint ptr %name36.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %name36.i, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.23, ptr noundef %32) #7
  %name37.i = getelementptr i8, ptr %.pn10.i, i32 36
  %33 = ptrtoint ptr %name37.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %name37.i, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.22, ptr noundef %34) #7
  br label %cleanup.i

for.inc.i:                                        ; preds = %if.end27.i.for.inc.i_crit_edge, %if.then24.i.for.inc.i_crit_edge, %for.body21.i.for.inc.i_crit_edge
  %35 = ptrtoint ptr %.pn15.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %.pn1.i = load ptr, ptr %.pn15.i, align 4
  %cmp19.not.i = icmp eq ptr %.pn1.i, %encoder_list.i48
  br i1 %cmp19.not.i, label %for.inc.i.cleanup.i_crit_edge, label %for.inc.i.for.body21.i_crit_edge

for.inc.i.for.body21.i_crit_edge:                 ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body21.i

for.inc.i.cleanup.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.i

cleanup.i:                                        ; preds = %for.inc.i.cleanup.i_crit_edge, %if.end30.i, %if.end.i.cleanup.i_crit_edge, %for.body.i47.cleanup.i_crit_edge
  %current_status.addr.2.i = phi i32 [ %current_status.addr.09.i, %for.body.i47.cleanup.i_crit_edge ], [ 2, %if.end30.i ], [ %current_status.addr.09.i, %if.end.i.cleanup.i_crit_edge ], [ %current_status.addr.09.i, %for.inc.i.cleanup.i_crit_edge ]
  %36 = ptrtoint ptr %.pn10.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %.pn.i54 = load ptr, ptr %.pn10.i, align 4
  %cmp.not.i55 = icmp eq ptr %.pn.i54, %connector_list.i
  br i1 %cmp.not.i55, label %cleanup.i.if.end18_crit_edge, label %cleanup.i.for.body.i47_crit_edge

cleanup.i.for.body.i47_crit_edge:                 ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i47

cleanup.i.if.end18_crit_edge:                     ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end18

if.end18:                                         ; preds = %cleanup.i.if.end18_crit_edge, %if.then16.if.end18_crit_edge, %if.end14.if.end18_crit_edge, %radeon_best_single_encoder.exit.if.end18_crit_edge, %for.cond.i.if.end18_crit_edge
  %ret.1 = phi i32 [ %call13, %if.end14.if.end18_crit_edge ], [ 1, %if.then16.if.end18_crit_edge ], [ 2, %radeon_best_single_encoder.exit.if.end18_crit_edge ], [ %current_status.addr.2.i, %cleanup.i.if.end18_crit_edge ], [ 2, %for.cond.i.if.end18_crit_edge ]
  %37 = ptrtoint ptr %connector to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %connector, align 8
  %dev_private.i = getelementptr inbounds %struct.drm_device, ptr %38, i32 0, i32 5
  %39 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %dev_private.i, align 4
  %helper_private.i = getelementptr inbounds %struct.drm_connector, ptr %connector, i32 0, i32 35
  %41 = ptrtoint ptr %helper_private.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %helper_private.i, align 4
  %best_encoder2.i = getelementptr inbounds %struct.drm_connector_helper_funcs, ptr %42, i32 0, i32 4
  %43 = ptrtoint ptr %best_encoder2.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %best_encoder2.i, align 4
  %call.i56 = tail call ptr %44(ptr noundef %connector) #7
  %45 = ptrtoint ptr %connector to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %connector, align 8
  %encoder_list.i57 = getelementptr inbounds %struct.drm_device, ptr %46, i32 0, i32 30, i32 16
  %47 = ptrtoint ptr %encoder_list.i57 to i32
  call void @__asan_load4_noabort(i32 %47)
  %.pn37.i = load ptr, ptr %encoder_list.i57, align 4
  %cmp.not40.i = icmp eq ptr %.pn37.i, %encoder_list.i57
  br i1 %cmp.not40.i, label %if.end18.radeon_connector_update_scratch_regs.exit_crit_edge, label %for.body.lr.ph.i59

if.end18.radeon_connector_update_scratch_regs.exit_crit_edge: ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #9
  br label %radeon_connector_update_scratch_regs.exit

for.body.lr.ph.i59:                               ; preds = %if.end18
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %ret.1)
  %cmp9.i = icmp eq i32 %ret.1, 1
  %is_atom_bios.i = getelementptr inbounds %struct.radeon_device, ptr %40, i32 0, i32 14
  br label %for.body.i64

for.body.i64:                                     ; preds = %for.inc.i68.for.body.i64_crit_edge, %for.body.lr.ph.i59
  %.pn41.i = phi ptr [ %.pn37.i, %for.body.lr.ph.i59 ], [ %.pn.i66, %for.inc.i68.for.body.i64_crit_edge ]
  %encoder.042.i = getelementptr i8, ptr %.pn41.i, i32 -4
  %48 = ptrtoint ptr %possible_encoders.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %possible_encoders.i, align 8
  %index.i.i.i60 = getelementptr i8, ptr %.pn41.i, i32 36
  %50 = ptrtoint ptr %index.i.i.i60 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %index.i.i.i60, align 4
  %shl.i.i61 = shl nuw i32 1, %51
  %and.i62 = and i32 %shl.i.i61, %49
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i62)
  %tobool.not.i63 = icmp eq i32 %and.i62, 0
  br i1 %tobool.not.i63, label %for.body.i64.for.inc.i68_crit_edge, label %if.else.i

for.body.i64.for.inc.i68_crit_edge:               ; preds = %for.body.i64
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i68

if.else.i:                                        ; preds = %for.body.i64
  %cmp8.i = icmp eq ptr %encoder.042.i, %call.i56
  %or.cond.i65 = and i1 %cmp9.i, %cmp8.i
  %52 = ptrtoint ptr %is_atom_bios.i to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %is_atom_bios.i, align 4, !range !87
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %53)
  %tobool12.not.i = icmp eq i8 %53, 0
  br i1 %tobool12.not.i, label %if.else15.i, label %if.then13.i

if.then13.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @radeon_atombios_connected_scratch_regs(ptr noundef %connector, ptr noundef %encoder.042.i, i1 noundef zeroext %or.cond.i65) #7
  br label %for.inc.i68

if.else15.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @radeon_combios_connected_scratch_regs(ptr noundef %connector, ptr noundef %encoder.042.i, i1 noundef zeroext %or.cond.i65) #7
  br label %for.inc.i68

for.inc.i68:                                      ; preds = %if.else15.i, %if.then13.i, %for.body.i64.for.inc.i68_crit_edge
  %54 = ptrtoint ptr %.pn41.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %.pn.i66 = load ptr, ptr %.pn41.i, align 4
  %55 = ptrtoint ptr %connector to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %connector, align 8
  %encoder_list6.i = getelementptr inbounds %struct.drm_device, ptr %56, i32 0, i32 30, i32 16
  %cmp.not.i67 = icmp eq ptr %.pn.i66, %encoder_list6.i
  br i1 %cmp.not.i67, label %for.inc.i68.radeon_connector_update_scratch_regs.exit_crit_edge, label %for.inc.i68.for.body.i64_crit_edge

for.inc.i68.for.body.i64_crit_edge:               ; preds = %for.inc.i68
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i64

for.inc.i68.radeon_connector_update_scratch_regs.exit_crit_edge: ; preds = %for.inc.i68
  call void @__sanitizer_cov_trace_pc() #9
  br label %radeon_connector_update_scratch_regs.exit

radeon_connector_update_scratch_regs.exit:        ; preds = %for.inc.i68.radeon_connector_update_scratch_regs.exit_crit_edge, %if.end18.radeon_connector_update_scratch_regs.exit_crit_edge
  %call19 = tail call zeroext i1 @drm_kms_helper_is_poll_worker() #7
  br i1 %call19, label %radeon_connector_update_scratch_regs.exit.cleanup_crit_edge, label %if.then20

radeon_connector_update_scratch_regs.exit.cleanup_crit_edge: ; preds = %radeon_connector_update_scratch_regs.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then20:                                        ; preds = %radeon_connector_update_scratch_regs.exit
  call void @__sanitizer_cov_trace_pc() #9
  %57 = ptrtoint ptr %connector to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %connector, align 8
  %dev22 = getelementptr inbounds %struct.drm_device, ptr %58, i32 0, i32 2
  %59 = ptrtoint ptr %dev22 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %dev22, align 4
  %call.i69 = tail call i64 @ktime_get_mono_fast_ns() #7
  %last_busy.i = getelementptr inbounds %struct.device, ptr %60, i32 0, i32 12, i32 22
  %61 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %61)
  store volatile i64 %call.i69, ptr %last_busy.i, align 8
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.then20, %if.then1.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ %ret.1, %if.then20 ], [ 2, %if.then1.cleanup.sink.split_crit_edge ]
  %62 = ptrtoint ptr %connector to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %connector, align 8
  %dev24 = getelementptr inbounds %struct.drm_device, ptr %63, i32 0, i32 2
  %64 = ptrtoint ptr %dev24 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %dev24, align 4
  %call.i70 = tail call i32 @__pm_runtime_suspend(ptr noundef %65, i32 noundef 13) #7
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %radeon_connector_update_scratch_regs.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 2, %entry.cleanup_crit_edge ], [ %ret.1, %radeon_connector_update_scratch_regs.exit.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @radeon_tv_get_modes(ptr noundef %connector) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %connector to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %connector, align 8
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_private, align 4
  %encoder_list.i = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 30, i32 16
  %possible_encoders.i = getelementptr inbounds %struct.drm_connector, ptr %connector, i32 0, i32 40
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %entry
  %.pn.in.i = phi ptr [ %encoder_list.i, %entry ], [ %.pn.i, %for.body.i.for.cond.i_crit_edge ]
  %4 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %.pn.i = load ptr, ptr %.pn.in.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %encoder_list.i
  br i1 %cmp.not.i, label %for.cond.i.cleanup_crit_edge, label %for.body.i

for.cond.i.cleanup_crit_edge:                     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body.i:                                       ; preds = %for.cond.i
  %5 = ptrtoint ptr %possible_encoders.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %possible_encoders.i, align 8
  %index.i.i.i = getelementptr i8, ptr %.pn.i, i32 36
  %7 = ptrtoint ptr %index.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %index.i.i.i, align 4
  %shl.i.i = shl nuw i32 1, %8
  %and.i = and i32 %shl.i.i, %6
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %for.body.i.for.cond.i_crit_edge, label %radeon_best_single_encoder.exit

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.i

radeon_best_single_encoder.exit:                  ; preds = %for.body.i
  %encoder.0.le.i = getelementptr i8, ptr %.pn.i, i32 -4
  %tobool.not = icmp eq ptr %encoder.0.le.i, null
  br i1 %tobool.not, label %radeon_best_single_encoder.exit.cleanup_crit_edge, label %if.end

radeon_best_single_encoder.exit.cleanup_crit_edge: ; preds = %radeon_best_single_encoder.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %radeon_best_single_encoder.exit
  %family = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 6
  %9 = ptrtoint ptr %family to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %family, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %10)
  %cmp = icmp ugt i32 %10, 17
  br i1 %cmp, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @radeon_add_common_modes(ptr noundef nonnull %encoder.0.le.i, ptr noundef %connector)
  br label %cleanup

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call3 = tail call ptr @drm_cvt_mode(ptr noundef %1, i32 noundef 800, i32 noundef 600, i32 noundef 60, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %type = getelementptr inbounds %struct.drm_display_mode, ptr %call3, i32 0, i32 28
  %11 = ptrtoint ptr %type to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 72, ptr %type, align 2
  tail call void @drm_mode_probed_add(ptr noundef %connector, ptr noundef %call3) #7
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then2, %radeon_best_single_encoder.exit.cleanup_crit_edge, %for.cond.i.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %radeon_best_single_encoder.exit.cleanup_crit_edge ], [ 1, %if.else ], [ 1, %if.then2 ], [ 0, %for.cond.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @radeon_tv_mode_valid(ptr nocapture noundef readnone %connector, ptr nocapture noundef readonly %mode) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %hdisplay = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 1
  %0 = ptrtoint ptr %hdisplay to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %hdisplay, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 1024, i16 %1)
  %cmp = icmp ugt i16 %1, 1024
  br i1 %cmp, label %entry.return_crit_edge, label %lor.lhs.false

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

lor.lhs.false:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %vdisplay = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 6
  %2 = ptrtoint ptr %vdisplay to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %vdisplay, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 768, i16 %3)
  %cmp3 = icmp ugt i16 %3, 768
  %spec.select = select i1 %cmp3, i32 17, i32 0
  br label %return

return:                                           ; preds = %lor.lhs.false, %entry.return_crit_edge
  %retval.0 = phi i32 [ 17, %entry.return_crit_edge ], [ %spec.select, %lor.lhs.false ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @radeon_lvds_detect(ptr noundef %connector, i1 noundef zeroext %force) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %connector to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %connector, align 8
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_private, align 4
  %encoder_list.i = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 30, i32 16
  %possible_encoders.i = getelementptr inbounds %struct.drm_connector, ptr %connector, i32 0, i32 40
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %entry
  %.pn.in.i = phi ptr [ %encoder_list.i, %entry ], [ %.pn.i, %for.body.i.for.cond.i_crit_edge ]
  %4 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %.pn.i = load ptr, ptr %.pn.in.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %encoder_list.i
  br i1 %cmp.not.i, label %for.cond.i.radeon_best_single_encoder.exit_crit_edge, label %for.body.i

for.cond.i.radeon_best_single_encoder.exit_crit_edge: ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %radeon_best_single_encoder.exit

for.body.i:                                       ; preds = %for.cond.i
  %5 = ptrtoint ptr %possible_encoders.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %possible_encoders.i, align 8
  %index.i.i.i = getelementptr i8, ptr %.pn.i, i32 36
  %7 = ptrtoint ptr %index.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %index.i.i.i, align 4
  %shl.i.i = shl nuw i32 1, %8
  %and.i = and i32 %shl.i.i, %6
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %for.body.i.for.cond.i_crit_edge, label %cleanup.split.loop.exit14.i

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.i

cleanup.split.loop.exit14.i:                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %encoder.0.le.i = getelementptr i8, ptr %.pn.i, i32 -4
  br label %radeon_best_single_encoder.exit

radeon_best_single_encoder.exit:                  ; preds = %cleanup.split.loop.exit14.i, %for.cond.i.radeon_best_single_encoder.exit_crit_edge
  %retval.0.i = phi ptr [ %encoder.0.le.i, %cleanup.split.loop.exit14.i ], [ null, %for.cond.i.radeon_best_single_encoder.exit_crit_edge ]
  %call2 = tail call zeroext i1 @drm_kms_helper_is_poll_worker() #7
  br i1 %call2, label %radeon_best_single_encoder.exit.if.end10_crit_edge, label %if.then

radeon_best_single_encoder.exit.if.end10_crit_edge: ; preds = %radeon_best_single_encoder.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10

if.then:                                          ; preds = %radeon_best_single_encoder.exit
  %9 = ptrtoint ptr %connector to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %connector, align 8
  %dev4 = getelementptr inbounds %struct.drm_device, ptr %10, i32 0, i32 2
  %11 = ptrtoint ptr %dev4 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev4, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %12, i32 noundef 4) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %if.then.cleanup.sink.split_crit_edge, label %if.then.if.end10_crit_edge

if.then.if.end10_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10

if.then.cleanup.sink.split_crit_edge:             ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

if.end10:                                         ; preds = %if.then.if.end10_crit_edge, %radeon_best_single_encoder.exit.if.end10_crit_edge
  %tobool.not = icmp eq ptr %retval.0.i, null
  br i1 %tobool.not, label %if.end10.if.end29_crit_edge, label %if.then11

if.end10.if.end29_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end29

if.then11:                                        ; preds = %if.end10
  %hdisplay = getelementptr inbounds %struct.radeon_encoder, ptr %retval.0.i, i32 0, i32 11, i32 1
  %13 = ptrtoint ptr %hdisplay to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %hdisplay, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 319, i16 %14)
  %cmp16 = icmp ugt i16 %14, 319
  br i1 %cmp16, label %land.lhs.true, label %if.then11.if.end22_crit_edge

if.then11.if.end22_crit_edge:                     ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end22

land.lhs.true:                                    ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #9
  %vdisplay = getelementptr inbounds %struct.radeon_encoder, ptr %retval.0.i, i32 0, i32 11, i32 6
  %15 = ptrtoint ptr %vdisplay to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %vdisplay, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 239, i16 %16)
  %cmp19 = icmp ugt i16 %16, 239
  %spec.select = select i1 %cmp19, i32 1, i32 2
  br label %if.end22

if.end22:                                         ; preds = %land.lhs.true, %if.then11.if.end22_crit_edge
  %ret.0 = phi i32 [ 2, %if.then11.if.end22_crit_edge ], [ %spec.select, %land.lhs.true ]
  %flags = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 7
  %17 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %flags, align 8
  %and = and i32 %18, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool23.not = icmp eq i32 %and, 0
  br i1 %tobool23.not, label %if.end22.if.end29_crit_edge, label %land.lhs.true24

if.end22.if.end29_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end29

land.lhs.true24:                                  ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @radeon_runtime_pm to i32))
  %19 = load i32, ptr @radeon_runtime_pm, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp25.not = icmp eq i32 %19, 0
  %spec.select57 = select i1 %cmp25.not, i32 %ret.0, i32 2
  br label %if.end29

if.end29:                                         ; preds = %land.lhs.true24, %if.end22.if.end29_crit_edge, %if.end10.if.end29_crit_edge
  %ret.2 = phi i32 [ 2, %if.end10.if.end29_crit_edge ], [ %ret.0, %if.end22.if.end29_crit_edge ], [ %spec.select57, %land.lhs.true24 ]
  tail call fastcc void @radeon_connector_get_edid(ptr noundef %connector)
  %edid = getelementptr inbounds %struct.radeon_connector, ptr %connector, i32 0, i32 6
  %20 = ptrtoint ptr %edid to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %edid, align 8
  %tobool30.not = icmp eq ptr %21, null
  %spec.select58 = select i1 %tobool30.not, i32 %ret.2, i32 1
  %22 = ptrtoint ptr %connector to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %connector, align 8
  %dev_private.i = getelementptr inbounds %struct.drm_device, ptr %23, i32 0, i32 5
  %24 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev_private.i, align 4
  %helper_private.i = getelementptr inbounds %struct.drm_connector, ptr %connector, i32 0, i32 35
  %26 = ptrtoint ptr %helper_private.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %helper_private.i, align 4
  %best_encoder2.i = getelementptr inbounds %struct.drm_connector_helper_funcs, ptr %27, i32 0, i32 4
  %28 = ptrtoint ptr %best_encoder2.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %best_encoder2.i, align 4
  %call.i60 = tail call ptr %29(ptr noundef %connector) #7
  %30 = ptrtoint ptr %connector to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %connector, align 8
  %encoder_list.i61 = getelementptr inbounds %struct.drm_device, ptr %31, i32 0, i32 30, i32 16
  %32 = ptrtoint ptr %encoder_list.i61 to i32
  call void @__asan_load4_noabort(i32 %32)
  %.pn37.i = load ptr, ptr %encoder_list.i61, align 4
  %cmp.not40.i = icmp eq ptr %.pn37.i, %encoder_list.i61
  br i1 %cmp.not40.i, label %if.end29.radeon_connector_update_scratch_regs.exit_crit_edge, label %for.body.lr.ph.i

if.end29.radeon_connector_update_scratch_regs.exit_crit_edge: ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #9
  br label %radeon_connector_update_scratch_regs.exit

for.body.lr.ph.i:                                 ; preds = %if.end29
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %spec.select58)
  %cmp9.i = icmp eq i32 %spec.select58, 1
  %is_atom_bios.i = getelementptr inbounds %struct.radeon_device, ptr %25, i32 0, i32 14
  br label %for.body.i67

for.body.i67:                                     ; preds = %for.inc.i.for.body.i67_crit_edge, %for.body.lr.ph.i
  %.pn41.i = phi ptr [ %.pn37.i, %for.body.lr.ph.i ], [ %.pn.i68, %for.inc.i.for.body.i67_crit_edge ]
  %encoder.042.i = getelementptr i8, ptr %.pn41.i, i32 -4
  %33 = ptrtoint ptr %possible_encoders.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %possible_encoders.i, align 8
  %index.i.i.i63 = getelementptr i8, ptr %.pn41.i, i32 36
  %35 = ptrtoint ptr %index.i.i.i63 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %index.i.i.i63, align 4
  %shl.i.i64 = shl nuw i32 1, %36
  %and.i65 = and i32 %shl.i.i64, %34
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i65)
  %tobool.not.i66 = icmp eq i32 %and.i65, 0
  br i1 %tobool.not.i66, label %for.body.i67.for.inc.i_crit_edge, label %if.else.i

for.body.i67.for.inc.i_crit_edge:                 ; preds = %for.body.i67
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

if.else.i:                                        ; preds = %for.body.i67
  %cmp8.i = icmp eq ptr %encoder.042.i, %call.i60
  %or.cond.i = and i1 %cmp9.i, %cmp8.i
  %37 = ptrtoint ptr %is_atom_bios.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %is_atom_bios.i, align 4, !range !87
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %tobool12.not.i = icmp eq i8 %38, 0
  br i1 %tobool12.not.i, label %if.else15.i, label %if.then13.i

if.then13.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @radeon_atombios_connected_scratch_regs(ptr noundef %connector, ptr noundef %encoder.042.i, i1 noundef zeroext %or.cond.i) #7
  br label %for.inc.i

if.else15.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @radeon_combios_connected_scratch_regs(ptr noundef %connector, ptr noundef %encoder.042.i, i1 noundef zeroext %or.cond.i) #7
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.else15.i, %if.then13.i, %for.body.i67.for.inc.i_crit_edge
  %39 = ptrtoint ptr %.pn41.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %.pn.i68 = load ptr, ptr %.pn41.i, align 4
  %40 = ptrtoint ptr %connector to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %connector, align 8
  %encoder_list6.i = getelementptr inbounds %struct.drm_device, ptr %41, i32 0, i32 30, i32 16
  %cmp.not.i69 = icmp eq ptr %.pn.i68, %encoder_list6.i
  br i1 %cmp.not.i69, label %for.inc.i.radeon_connector_update_scratch_regs.exit_crit_edge, label %for.inc.i.for.body.i67_crit_edge

for.inc.i.for.body.i67_crit_edge:                 ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i67

for.inc.i.radeon_connector_update_scratch_regs.exit_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %radeon_connector_update_scratch_regs.exit

radeon_connector_update_scratch_regs.exit:        ; preds = %for.inc.i.radeon_connector_update_scratch_regs.exit_crit_edge, %if.end29.radeon_connector_update_scratch_regs.exit_crit_edge
  %call33 = tail call zeroext i1 @drm_kms_helper_is_poll_worker() #7
  br i1 %call33, label %radeon_connector_update_scratch_regs.exit.cleanup_crit_edge, label %if.then34

radeon_connector_update_scratch_regs.exit.cleanup_crit_edge: ; preds = %radeon_connector_update_scratch_regs.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then34:                                        ; preds = %radeon_connector_update_scratch_regs.exit
  call void @__sanitizer_cov_trace_pc() #9
  %42 = ptrtoint ptr %connector to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %connector, align 8
  %dev36 = getelementptr inbounds %struct.drm_device, ptr %43, i32 0, i32 2
  %44 = ptrtoint ptr %dev36 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %dev36, align 4
  %call.i70 = tail call i64 @ktime_get_mono_fast_ns() #7
  %last_busy.i = getelementptr inbounds %struct.device, ptr %45, i32 0, i32 12, i32 22
  %46 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %46)
  store volatile i64 %call.i70, ptr %last_busy.i, align 8
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.then34, %if.then.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ %spec.select58, %if.then34 ], [ 2, %if.then.cleanup.sink.split_crit_edge ]
  %47 = ptrtoint ptr %connector to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %connector, align 8
  %dev38 = getelementptr inbounds %struct.drm_device, ptr %48, i32 0, i32 2
  %49 = ptrtoint ptr %dev38 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %dev38, align 4
  %call.i71 = tail call i32 @__pm_runtime_suspend(ptr noundef %50, i32 noundef 13) #7
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %radeon_connector_update_scratch_regs.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %spec.select58, %radeon_connector_update_scratch_regs.exit.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @radeon_lvds_get_modes(ptr noundef %connector) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @radeon_connector_get_edid(ptr noundef %connector)
  %edid.i = getelementptr inbounds %struct.radeon_connector, ptr %connector, i32 0, i32 6
  %0 = ptrtoint ptr %edid.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %edid.i, align 8
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %radeon_ddc_get_modes.exit.thread, label %radeon_ddc_get_modes.exit

radeon_ddc_get_modes.exit.thread:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call4.i = tail call i32 @drm_connector_update_edid_property(ptr noundef %connector, ptr noundef null) #7
  br label %if.end3

radeon_ddc_get_modes.exit:                        ; preds = %entry
  %call.i = tail call i32 @drm_connector_update_edid_property(ptr noundef %connector, ptr noundef nonnull %1) #7
  %2 = ptrtoint ptr %edid.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %edid.i, align 8
  %call3.i = tail call i32 @drm_add_edid_modes(ptr noundef %connector, ptr noundef %3) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %cmp = icmp sgt i32 %call3.i, 0
  br i1 %cmp, label %if.then, label %radeon_ddc_get_modes.exit.if.end3_crit_edge

radeon_ddc_get_modes.exit.if.end3_crit_edge:      ; preds = %radeon_ddc_get_modes.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end3

if.then:                                          ; preds = %radeon_ddc_get_modes.exit
  %4 = ptrtoint ptr %connector to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %connector, align 8
  %encoder_list.i = getelementptr inbounds %struct.drm_device, ptr %5, i32 0, i32 30, i32 16
  %possible_encoders.i = getelementptr inbounds %struct.drm_connector, ptr %connector, i32 0, i32 40
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %if.then
  %.pn.in.i = phi ptr [ %encoder_list.i, %if.then ], [ %.pn.i, %for.body.i.for.cond.i_crit_edge ]
  %6 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %.pn.i = load ptr, ptr %.pn.in.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %encoder_list.i
  br i1 %cmp.not.i, label %for.cond.i.cleanup_crit_edge, label %for.body.i

for.cond.i.cleanup_crit_edge:                     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body.i:                                       ; preds = %for.cond.i
  %7 = ptrtoint ptr %possible_encoders.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %possible_encoders.i, align 8
  %index.i.i.i = getelementptr i8, ptr %.pn.i, i32 36
  %9 = ptrtoint ptr %index.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %index.i.i.i, align 4
  %shl.i.i = shl nuw i32 1, %10
  %and.i = and i32 %shl.i.i, %8
  %tobool.not.i37 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i37, label %for.body.i.for.cond.i_crit_edge, label %radeon_best_single_encoder.exit

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.i

radeon_best_single_encoder.exit:                  ; preds = %for.body.i
  %encoder.0.le.i = getelementptr i8, ptr %.pn.i, i32 -4
  %tobool.not = icmp eq ptr %encoder.0.le.i, null
  br i1 %tobool.not, label %radeon_best_single_encoder.exit.cleanup_crit_edge, label %if.then2

radeon_best_single_encoder.exit.cleanup_crit_edge: ; preds = %radeon_best_single_encoder.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then2:                                         ; preds = %radeon_best_single_encoder.exit
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @radeon_fixup_lvds_native_mode(ptr noundef nonnull %encoder.0.le.i, ptr noundef %connector)
  br label %cleanup.sink.split

if.end3:                                          ; preds = %radeon_ddc_get_modes.exit.if.end3_crit_edge, %radeon_ddc_get_modes.exit.thread
  %retval.0.i59 = phi i32 [ 0, %radeon_ddc_get_modes.exit.thread ], [ %call3.i, %radeon_ddc_get_modes.exit.if.end3_crit_edge ]
  %11 = ptrtoint ptr %connector to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %connector, align 8
  %encoder_list.i39 = getelementptr inbounds %struct.drm_device, ptr %12, i32 0, i32 30, i32 16
  %possible_encoders.i40 = getelementptr inbounds %struct.drm_connector, ptr %connector, i32 0, i32 40
  br label %for.cond.i44

for.cond.i44:                                     ; preds = %for.body.i49.for.cond.i44_crit_edge, %if.end3
  %.pn.in.i41 = phi ptr [ %encoder_list.i39, %if.end3 ], [ %.pn.i42, %for.body.i49.for.cond.i44_crit_edge ]
  %13 = ptrtoint ptr %.pn.in.i41 to i32
  call void @__asan_load4_noabort(i32 %13)
  %.pn.i42 = load ptr, ptr %.pn.in.i41, align 4
  %cmp.not.i43 = icmp eq ptr %.pn.i42, %encoder_list.i39
  br i1 %cmp.not.i43, label %for.cond.i44.cleanup_crit_edge, label %for.body.i49

for.cond.i44.cleanup_crit_edge:                   ; preds = %for.cond.i44
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body.i49:                                     ; preds = %for.cond.i44
  %14 = ptrtoint ptr %possible_encoders.i40 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %possible_encoders.i40, align 8
  %index.i.i.i45 = getelementptr i8, ptr %.pn.i42, i32 36
  %16 = ptrtoint ptr %index.i.i.i45 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %index.i.i.i45, align 4
  %shl.i.i46 = shl nuw i32 1, %17
  %and.i47 = and i32 %shl.i.i46, %15
  %tobool.not.i48 = icmp eq i32 %and.i47, 0
  br i1 %tobool.not.i48, label %for.body.i49.for.cond.i44_crit_edge, label %radeon_best_single_encoder.exit53

for.body.i49.for.cond.i44_crit_edge:              ; preds = %for.body.i49
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.i44

radeon_best_single_encoder.exit53:                ; preds = %for.body.i49
  %encoder.0.le.i50 = getelementptr i8, ptr %.pn.i42, i32 -4
  %tobool5.not = icmp eq ptr %encoder.0.le.i50, null
  br i1 %tobool5.not, label %radeon_best_single_encoder.exit53.cleanup_crit_edge, label %if.end7

radeon_best_single_encoder.exit53.cleanup_crit_edge: ; preds = %radeon_best_single_encoder.exit53
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end7:                                          ; preds = %radeon_best_single_encoder.exit53
  %18 = ptrtoint ptr %encoder.0.le.i50 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %encoder.0.le.i50, align 4
  %native_mode2.i = getelementptr i8, ptr %.pn.i42, i32 108
  %hdisplay.i = getelementptr i8, ptr %.pn.i42, i32 112
  %20 = ptrtoint ptr %hdisplay.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %hdisplay.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %21)
  %cmp.not.i54 = icmp eq i16 %21, 0
  br i1 %cmp.not.i54, label %if.end7.cleanup_crit_edge, label %land.lhs.true.i

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

land.lhs.true.i:                                  ; preds = %if.end7
  %vdisplay.i = getelementptr i8, ptr %.pn.i42, i32 122
  %22 = ptrtoint ptr %vdisplay.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %vdisplay.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %23)
  %cmp5.not.i = icmp eq i16 %23, 0
  br i1 %cmp5.not.i, label %land.lhs.true.i.cleanup_crit_edge, label %land.lhs.true7.i

land.lhs.true.i.cleanup_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

land.lhs.true7.i:                                 ; preds = %land.lhs.true.i
  %24 = ptrtoint ptr %native_mode2.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %native_mode2.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp8.not.i = icmp eq i32 %25, 0
  br i1 %cmp8.not.i, label %if.then19.i, label %if.then.i56

if.then.i56:                                      ; preds = %land.lhs.true7.i
  call void @__sanitizer_cov_trace_pc() #9
  %call.i55 = tail call ptr @drm_mode_duplicate(ptr noundef %19, ptr noundef %native_mode2.i) #7
  %type.i = getelementptr inbounds %struct.drm_display_mode, ptr %call.i55, i32 0, i32 28
  %26 = ptrtoint ptr %type.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 72, ptr %type.i, align 2
  tail call void @drm_mode_set_name(ptr noundef %call.i55) #7
  br label %radeon_fp_native_mode.exit

if.then19.i:                                      ; preds = %land.lhs.true7.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv1143.i = zext i16 %21 to i32
  %conv16.i = zext i16 %23 to i32
  %call24.i = tail call ptr @drm_cvt_mode(ptr noundef %19, i32 noundef %conv1143.i, i32 noundef %conv16.i, i32 noundef 60, i1 noundef zeroext true, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %type25.i = getelementptr inbounds %struct.drm_display_mode, ptr %call24.i, i32 0, i32 28
  %27 = ptrtoint ptr %type25.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 72, ptr %type25.i, align 2
  br label %radeon_fp_native_mode.exit

radeon_fp_native_mode.exit:                       ; preds = %if.then19.i, %if.then.i56
  %call24.sink.i = phi ptr [ %call24.i, %if.then19.i ], [ %call.i55, %if.then.i56 ]
  %.str.18.sink.i = phi ptr [ @.str.18, %if.then19.i ], [ @.str.17, %if.then.i56 ]
  %name26.i = getelementptr inbounds %struct.drm_display_mode, ptr %call24.sink.i, i32 0, i32 31
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull %.str.18.sink.i, ptr noundef %name26.i) #7
  %tobool9.not = icmp eq ptr %call24.sink.i, null
  br i1 %tobool9.not, label %radeon_fp_native_mode.exit.cleanup_crit_edge, label %if.then10

radeon_fp_native_mode.exit.cleanup_crit_edge:     ; preds = %radeon_fp_native_mode.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then10:                                        ; preds = %radeon_fp_native_mode.exit
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @drm_mode_probed_add(ptr noundef %connector, ptr noundef nonnull %call24.sink.i) #7
  %width_mm = getelementptr inbounds %struct.drm_display_mode, ptr %call24.sink.i, i32 0, i32 26
  %28 = ptrtoint ptr %width_mm to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %width_mm, align 2
  %conv = zext i16 %29 to i32
  %display_info = getelementptr inbounds %struct.drm_connector, ptr %connector, i32 0, i32 20
  %30 = ptrtoint ptr %display_info to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %conv, ptr %display_info, align 8
  %height_mm = getelementptr inbounds %struct.drm_display_mode, ptr %call24.sink.i, i32 0, i32 27
  %31 = ptrtoint ptr %height_mm to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %height_mm, align 4
  %conv12 = zext i16 %32 to i32
  %height_mm14 = getelementptr inbounds %struct.drm_connector, ptr %connector, i32 0, i32 20, i32 1
  %33 = ptrtoint ptr %height_mm14 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %conv12, ptr %height_mm14, align 4
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.then10, %if.then2
  %encoder.0.le.i50.sink = phi ptr [ %encoder.0.le.i50, %if.then10 ], [ %encoder.0.le.i, %if.then2 ]
  %retval.0.ph = phi i32 [ 1, %if.then10 ], [ %call3.i, %if.then2 ]
  tail call fastcc void @radeon_add_common_modes(ptr noundef nonnull %encoder.0.le.i50.sink, ptr noundef %connector)
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %radeon_fp_native_mode.exit.cleanup_crit_edge, %land.lhs.true.i.cleanup_crit_edge, %if.end7.cleanup_crit_edge, %radeon_best_single_encoder.exit53.cleanup_crit_edge, %for.cond.i44.cleanup_crit_edge, %radeon_best_single_encoder.exit.cleanup_crit_edge, %for.cond.i.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3.i, %radeon_best_single_encoder.exit.cleanup_crit_edge ], [ 0, %radeon_best_single_encoder.exit53.cleanup_crit_edge ], [ %retval.0.i59, %radeon_fp_native_mode.exit.cleanup_crit_edge ], [ %retval.0.i59, %if.end7.cleanup_crit_edge ], [ %retval.0.i59, %land.lhs.true.i.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ], [ 0, %for.cond.i44.cleanup_crit_edge ], [ %call3.i, %for.cond.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define internal i32 @radeon_lvds_mode_valid(ptr nocapture noundef readonly %connector, ptr nocapture noundef readonly %mode) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %connector to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %connector, align 8
  %encoder_list.i = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 30, i32 16
  %possible_encoders.i = getelementptr inbounds %struct.drm_connector, ptr %connector, i32 0, i32 40
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %entry
  %.pn.in.i = phi ptr [ %encoder_list.i, %entry ], [ %.pn.i, %for.body.i.for.cond.i_crit_edge ]
  %2 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn.i = load ptr, ptr %.pn.in.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %encoder_list.i
  br i1 %cmp.not.i, label %for.cond.i.radeon_best_single_encoder.exit_crit_edge, label %for.body.i

for.cond.i.radeon_best_single_encoder.exit_crit_edge: ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %radeon_best_single_encoder.exit

for.body.i:                                       ; preds = %for.cond.i
  %3 = ptrtoint ptr %possible_encoders.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %possible_encoders.i, align 8
  %index.i.i.i = getelementptr i8, ptr %.pn.i, i32 36
  %5 = ptrtoint ptr %index.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %index.i.i.i, align 4
  %shl.i.i = shl nuw i32 1, %6
  %and.i = and i32 %shl.i.i, %4
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %for.body.i.for.cond.i_crit_edge, label %cleanup.split.loop.exit14.i

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.i

cleanup.split.loop.exit14.i:                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %encoder.0.le.i = getelementptr i8, ptr %.pn.i, i32 -4
  br label %radeon_best_single_encoder.exit

radeon_best_single_encoder.exit:                  ; preds = %cleanup.split.loop.exit14.i, %for.cond.i.radeon_best_single_encoder.exit_crit_edge
  %retval.0.i = phi ptr [ %encoder.0.le.i, %cleanup.split.loop.exit14.i ], [ null, %for.cond.i.radeon_best_single_encoder.exit_crit_edge ]
  %hdisplay = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 1
  %7 = ptrtoint ptr %hdisplay to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %hdisplay, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 320, i16 %8)
  %cmp = icmp ult i16 %8, 320
  br i1 %cmp, label %radeon_best_single_encoder.exit.cleanup43_crit_edge, label %lor.lhs.false

radeon_best_single_encoder.exit.cleanup43_crit_edge: ; preds = %radeon_best_single_encoder.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup43

lor.lhs.false:                                    ; preds = %radeon_best_single_encoder.exit
  %vdisplay = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 6
  %9 = ptrtoint ptr %vdisplay to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %vdisplay, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 240, i16 %10)
  %cmp3 = icmp ult i16 %10, 240
  br i1 %cmp3, label %lor.lhs.false.cleanup43_crit_edge, label %if.end

lor.lhs.false.cleanup43_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup43

if.end:                                           ; preds = %lor.lhs.false
  %tobool.not = icmp eq ptr %retval.0.i, null
  br i1 %tobool.not, label %if.end.cleanup43_crit_edge, label %if.then5

if.end.cleanup43_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup43

if.then5:                                         ; preds = %if.end
  %hdisplay9 = getelementptr inbounds %struct.radeon_encoder, ptr %retval.0.i, i32 0, i32 11, i32 1
  %11 = ptrtoint ptr %hdisplay9 to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %hdisplay9, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %8, i16 %12)
  %cmp11 = icmp ugt i16 %8, %12
  br i1 %cmp11, label %if.then5.cleanup43_crit_edge, label %lor.lhs.false13

if.then5.cleanup43_crit_edge:                     ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup43

lor.lhs.false13:                                  ; preds = %if.then5
  %vdisplay16 = getelementptr inbounds %struct.radeon_encoder, ptr %retval.0.i, i32 0, i32 11, i32 6
  %13 = ptrtoint ptr %vdisplay16 to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %vdisplay16, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %10, i16 %14)
  %cmp18 = icmp ugt i16 %10, %14
  br i1 %cmp18, label %lor.lhs.false13.cleanup43_crit_edge, label %if.end21

lor.lhs.false13.cleanup43_crit_edge:              ; preds = %lor.lhs.false13
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup43

if.end21:                                         ; preds = %lor.lhs.false13
  %rmx_type = getelementptr inbounds %struct.radeon_encoder, ptr %retval.0.i, i32 0, i32 7
  %15 = ptrtoint ptr %rmx_type to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %rmx_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp22 = icmp eq i32 %16, 0
  br i1 %cmp22, label %if.then24, label %if.end21.if.end42.critedge_crit_edge

if.end21.if.end42.critedge_crit_edge:             ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end42.critedge

if.then24:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_cmp2(i16 %8, i16 %12)
  %cmp29.not = icmp eq i16 %8, %12
  call void @__sanitizer_cov_trace_cmp2(i16 %10, i16 %14)
  %cmp36.not = icmp eq i16 %10, %14
  %or.cond = select i1 %cmp29.not, i1 %cmp36.not, i1 false
  br i1 %or.cond, label %if.then24.if.end42.critedge_crit_edge, label %if.then24.cleanup43_crit_edge

if.then24.cleanup43_crit_edge:                    ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup43

if.then24.if.end42.critedge_crit_edge:            ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end42.critedge

if.end42.critedge:                                ; preds = %if.then24.if.end42.critedge_crit_edge, %if.end21.if.end42.critedge_crit_edge
  br label %cleanup43

cleanup43:                                        ; preds = %if.end42.critedge, %if.then24.cleanup43_crit_edge, %lor.lhs.false13.cleanup43_crit_edge, %if.then5.cleanup43_crit_edge, %if.end.cleanup43_crit_edge, %lor.lhs.false.cleanup43_crit_edge, %radeon_best_single_encoder.exit.cleanup43_crit_edge
  %retval.1 = phi i32 [ 29, %lor.lhs.false.cleanup43_crit_edge ], [ 29, %radeon_best_single_encoder.exit.cleanup43_crit_edge ], [ 29, %if.then24.cleanup43_crit_edge ], [ 29, %if.then5.cleanup43_crit_edge ], [ 29, %lor.lhs.false13.cleanup43_crit_edge ], [ 0, %if.end42.critedge ], [ 0, %if.end.cleanup43_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

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

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 39)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 39)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76}
!llvm.module.flags = !{!78, !79, !80, !81, !82, !83, !84, !85}
!llvm.ident = !{!86}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/radeon/radeon_connectors.c", i32 177, i32 4}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/radeon/radeon_connectors.c", i32 189, i32 4}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/radeon/radeon_connectors.c", i32 202, i32 4}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/radeon/radeon_connectors.c", i32 213, i32 5}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/radeon/radeon_connectors.c", i32 219, i32 5}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/radeon/radeon_connectors.c", i32 225, i32 4}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/radeon/radeon_connectors.c", i32 232, i32 3}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/radeon/radeon_connectors.c", i32 237, i32 2}
!16 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/radeon/radeon_connectors.c", i32 1941, i32 4}
!18 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/gpu/drm/radeon/radeon_connectors.c", i32 1956, i32 5}
!20 = !{ptr @.str.10, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/gpu/drm/radeon/radeon_connectors.c", i32 2058, i32 6}
!22 = !{ptr @.str.11, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/gpu/drm/radeon/radeon_connectors.c", i32 2088, i32 6}
!24 = !{ptr @.str.12, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/gpu/drm/radeon/radeon_connectors.c", i32 2124, i32 6}
!26 = !{ptr @.str.13, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/gpu/drm/radeon/radeon_connectors.c", i32 2186, i32 6}
!28 = !{ptr @.str.14, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/gpu/drm/radeon/radeon_connectors.c", i32 2343, i32 6}
!30 = !{ptr @radeon_dp_connector_funcs, !31, !"radeon_dp_connector_funcs", i1 false, i1 false}
!31 = !{!"../drivers/gpu/drm/radeon/radeon_connectors.c", i32 1827, i32 41}
!32 = !{ptr @radeon_dp_connector_helper_funcs, !33, !"radeon_dp_connector_helper_funcs", i1 false, i1 false}
!33 = !{!"../drivers/gpu/drm/radeon/radeon_connectors.c", i32 1821, i32 48}
!34 = !{ptr @.str.15, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/gpu/drm/radeon/radeon_connectors.c", i32 791, i32 5}
!36 = !{ptr @.str.16, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/gpu/drm/radeon/radeon_connectors.c", i32 798, i32 3}
!38 = !{ptr @.str.17, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/gpu/drm/radeon/radeon_connectors.c", i32 479, i32 3}
!40 = !{ptr @.str.18, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/gpu/drm/radeon/radeon_connectors.c", i32 491, i32 3}
!42 = !{ptr @radeon_lvds_bridge_connector_funcs, !43, !"radeon_lvds_bridge_connector_funcs", i1 false, i1 false}
!43 = !{!"../drivers/gpu/drm/radeon/radeon_connectors.c", i32 1847, i32 41}
!44 = !{ptr @.str.19, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/gpu/drm/radeon/radeon_connectors.c", i32 947, i32 2}
!46 = !{ptr @radeon_vga_connector_funcs, !47, !"radeon_vga_connector_funcs", i1 false, i1 false}
!47 = !{!"../drivers/gpu/drm/radeon/radeon_connectors.c", i32 1115, i32 41}
!48 = !{ptr @.str.20, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/gpu/drm/radeon/radeon_connectors.c", i32 1048, i32 4}
!50 = !{ptr @.str.21, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/gpu/drm/radeon/radeon_connectors.c", i32 444, i32 6}
!52 = !{ptr @.str.22, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/gpu/drm/radeon/radeon_connectors.c", i32 446, i32 6}
!54 = !{ptr @.str.23, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/gpu/drm/radeon/radeon_connectors.c", i32 451, i32 6}
!56 = !{ptr @radeon_vga_connector_helper_funcs, !57, !"radeon_vga_connector_helper_funcs", i1 false, i1 false}
!57 = !{!"../drivers/gpu/drm/radeon/radeon_connectors.c", i32 1109, i32 48}
!58 = !{ptr @radeon_dvi_connector_funcs, !59, !"radeon_dvi_connector_funcs", i1 false, i1 false}
!59 = !{!"../drivers/gpu/drm/radeon/radeon_connectors.c", i32 1523, i32 41}
!60 = !{ptr @.str.24, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/gpu/drm/radeon/radeon_connectors.c", i32 1281, i32 4}
!62 = !{ptr @.str.25, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/gpu/drm/radeon/radeon_connectors.c", i32 1301, i32 5}
!64 = !{ptr @.str.26, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/gpu/drm/radeon/radeon_connectors.c", i32 1392, i32 6}
!66 = !{ptr @radeon_dvi_connector_helper_funcs, !67, !"radeon_dvi_connector_helper_funcs", i1 false, i1 false}
!67 = !{!"../drivers/gpu/drm/radeon/radeon_connectors.c", i32 1517, i32 48}
!68 = !{ptr @radeon_edp_connector_funcs, !69, !"radeon_edp_connector_funcs", i1 false, i1 false}
!69 = !{!"../drivers/gpu/drm/radeon/radeon_connectors.c", i32 1837, i32 41}
!70 = !{ptr @radeon_tv_connector_funcs, !71, !"radeon_tv_connector_funcs", i1 false, i1 false}
!71 = !{!"../drivers/gpu/drm/radeon/radeon_connectors.c", i32 1201, i32 41}
!72 = !{ptr @radeon_tv_connector_helper_funcs, !73, !"radeon_tv_connector_helper_funcs", i1 false, i1 false}
!73 = !{!"../drivers/gpu/drm/radeon/radeon_connectors.c", i32 1195, i32 48}
!74 = !{ptr @radeon_lvds_connector_funcs, !75, !"radeon_lvds_connector_funcs", i1 false, i1 false}
!75 = !{!"../drivers/gpu/drm/radeon/radeon_connectors.c", i32 981, i32 41}
!76 = !{ptr @radeon_lvds_connector_helper_funcs, !77, !"radeon_lvds_connector_helper_funcs", i1 false, i1 false}
!77 = !{!"../drivers/gpu/drm/radeon/radeon_connectors.c", i32 975, i32 48}
!78 = !{i32 1, !"wchar_size", i32 2}
!79 = !{i32 1, !"min_enum_size", i32 4}
!80 = !{i32 8, !"branch-target-enforcement", i32 0}
!81 = !{i32 8, !"sign-return-address", i32 0}
!82 = !{i32 8, !"sign-return-address-all", i32 0}
!83 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!84 = !{i32 7, !"uwtable", i32 1}
!85 = !{i32 7, !"frame-pointer", i32 2}
!86 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!87 = !{i8 0, i8 2}
