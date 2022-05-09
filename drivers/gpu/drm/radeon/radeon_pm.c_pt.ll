; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/radeon/radeon_pm.c_pt.bc'
source_filename = "../drivers/gpu/drm/radeon/radeon_pm.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.sensor_device_attribute = type { %struct.device_attribute, i32 }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.radeon_power_state = type { i32, ptr, i32, ptr, i32, i32, i32, i32 }
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
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.radeon_bo = type { %struct.list_head, i32, [4 x %struct.ttm_place], %struct.ttm_placement, %struct.ttm_buffer_object, %struct.ttm_bo_kmap_obj, i32, ptr, i32, i32, i32, i32, %struct.list_head, ptr, i32, %struct.mmu_interval_notifier }
%struct.ttm_place = type { i32, i32, i32, i32 }
%struct.ttm_placement = type { i32, ptr, i32, ptr }
%struct.ttm_buffer_object = type { %struct.drm_gem_object, ptr, i32, i32, ptr, %struct.kref, ptr, ptr, i8, %struct.list_head, %struct.list_head, ptr, i32, i32, ptr }
%struct.drm_gem_object = type { %struct.kref, i32, ptr, ptr, %struct.drm_vma_offset_node, i32, i32, ptr, ptr, ptr, %struct.dma_resv, ptr }
%struct.drm_vma_offset_node = type { %struct.rwlock_t, %struct.drm_mm_node, %struct.rb_root, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.drm_mm_node = type { i32, i64, i64, ptr, %struct.list_head, %struct.list_head, %struct.rb_node, %struct.rb_node, %struct.rb_node, i64, i64, i64, i32, i32 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.rb_root = type { ptr }
%struct.dma_resv = type { %struct.ww_mutex, %struct.seqcount_ww_mutex, ptr, ptr }
%struct.ww_mutex = type { %struct.mutex, ptr, ptr }
%struct.seqcount_ww_mutex = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.ttm_bo_kmap_obj = type { ptr, ptr, i32, ptr }
%struct.mmu_interval_notifier = type { %struct.interval_tree_node, ptr, ptr, %struct.hlist_node, i32 }
%struct.interval_tree_node = type { %struct.rb_node, i32, i32, i32 }
%struct.ttm_resource = type { i32, i32, i32, i32, %struct.ttm_bus_placement }
%struct.ttm_bus_placement = type { ptr, i32, i8, i32 }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.78, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.89, ptr, i32, ptr, i8, i32 }
%struct.anon.78 = type { %struct.list_head, ptr, %struct.spinlock }
%struct.drm_mode_config = type { %struct.mutex, %struct.drm_modeset_lock, ptr, %struct.mutex, %struct.idr, %struct.idr, %struct.mutex, i32, %struct.list_head, %struct.spinlock, i32, %struct.ida, %struct.list_head, %struct.llist_head, %struct.work_struct, i32, %struct.list_head, i32, %struct.list_head, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, ptr, i32, i8, i8, i8, %struct.delayed_work, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, ptr, i32, i32, ptr, ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.llist_head = type { ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.drm_open_hash = type { ptr, i8 }
%struct.anon.89 = type { i32, ptr }
%struct.radeon_pm_clock_info = type { i32, i32, %struct.radeon_voltage, i32 }
%struct.radeon_voltage = type { i32, %struct.radeon_gpio_rec, i32, i8, i8, i8, i8, i16, i16 }
%struct.radeon_gpio_rec = type { i8, i8, i32, i32, i32 }
%struct.drm_crtc = type { ptr, ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, ptr, ptr, i32, i32, i32, i8, %struct.drm_display_mode, %struct.drm_display_mode, i32, i32, ptr, i32, ptr, ptr, %struct.drm_object_properties, ptr, ptr, %struct.list_head, %struct.spinlock, ptr, %struct.drm_crtc_crc, i32, %struct.spinlock, i32, [32 x i8], ptr }
%struct.drm_mode_object = type { i32, i32, ptr, %struct.kref, ptr }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }
%struct.drm_object_properties = type { i32, [24 x ptr], [24 x i64] }
%struct.drm_crtc_crc = type { %struct.spinlock, ptr, i8, i8, ptr, i32, i32, i32, %struct.wait_queue_head }
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
%struct.radeon_router = type { i32, %struct.radeon_i2c_bus_rec, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.radeon_i2c_bus_rec = type { i8, i8, i32, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.drm_dp_mst_topology_mgr = type { %struct.drm_private_obj, ptr, ptr, i32, ptr, i32, i32, i32, i32, %struct.drm_dp_sideband_msg_rx, %struct.drm_dp_sideband_msg_rx, %struct.mutex, %struct.mutex, i8, ptr, [15 x i8], i8, i32, ptr, %struct.mutex, %struct.list_head, %struct.mutex, ptr, ptr, i32, i32, %struct.wait_queue_head, %struct.work_struct, %struct.work_struct, %struct.list_head, %struct.list_head, %struct.mutex, ptr, %struct.work_struct, %struct.list_head, %struct.mutex, %struct.work_struct, %struct.mutex }
%struct.drm_private_obj = type { %struct.list_head, %struct.drm_modeset_lock, ptr, ptr }
%struct.drm_dp_sideband_msg_rx = type { [48 x i8], [256 x i8], i8, i8, i8, i8, i8, i8, %struct.drm_dp_sideband_msg_hdr }
%struct.drm_dp_sideband_msg_hdr = type { i8, i8, [8 x i8], i8, i8, i8, i8, i8, i8 }
%struct.stream_attribs = type { i16, i16 }
%struct.radeon_ps = type { i32, i32, i32, i32, i32, i32, i32, i8, i32, ptr }
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
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.88 = type { ptr }
%struct.drm_minor = type { i32, i32, ptr, ptr, ptr, %struct.list_head, %struct.mutex }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.79, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.80, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.81, ptr, %struct.address_space, %struct.list_head, %union.anon.82, i32, i32, ptr, ptr, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.79 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%union.anon.80 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%union.anon.81 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%union.anon.82 = type { ptr }
%struct.seq_file = type { ptr, i32, i32, i32, i32, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }

@radeon_dpm = external dso_local local_unnamed_addr global i32, align 4
@dev_attr_power_dpm_state = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.63, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @radeon_get_dpm_state, ptr @radeon_set_dpm_state }, [36 x i8] zeroinitializer }, align 32
@.str = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"failed to create device file for dpm state\0A\00", [52 x i8] zeroinitializer }, align 32
@dev_attr_power_dpm_force_performance_level = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.68, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @radeon_get_dpm_forced_performance_level, ptr @radeon_set_dpm_forced_performance_level }, [36 x i8] zeroinitializer }, align 32
@dev_attr_power_profile = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.73, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @radeon_get_pm_profile, ptr @radeon_set_pm_profile }, [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"failed to create device file for power profile\0A\00", [48 x i8] zeroinitializer }, align 32
@dev_attr_power_method = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.76, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @radeon_get_pm_method, ptr @radeon_set_pm_method }, [36 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"failed to create device file for power method\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"radeon_pm_late_init failed, disabling dpm\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"crtc %d no vblank, can glitch\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Setting: e: %d\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Setting: m: %d\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"pm: GUI not idle!!!\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"drivers/gpu/drm/radeon/radeon_pm.c\00", [61 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"not in vbl for pm change %08x at %s\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"exit\00", [27 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"entry\00", [26 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"radeon: dpm resume failed\0A\00", [37 x i8] zeroinitializer }, align 32
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@radeon_pm_init_dpm.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.13 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"(work_completion)(&rdev->pm.dpm.thermal.work)\00", [50 x i8] zeroinitializer }, align 32
@radeon_pm_init_dpm._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.8, i32 1455, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\016[drm] radeon: dpm initialized\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"radeon_pm_init_dpm\00", [45 x i8] zeroinitializer }, align 32
@radeon_pm_init_dpm._entry_ptr = internal global ptr @radeon_pm_init_dpm._entry, section ".printk_index", align 4
@.str.16 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"radeon: dpm initialization failed\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"radeon\00", [25 x i8] zeroinitializer }, align 32
@hwmon_groups = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @hwmon_attrgroup, ptr null], [24 x i8] zeroinitializer }, align 32
@radeon_hwmon_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.8, i32 858, ptr @.str.20, ptr @.str.21 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Unable to register hwmon device: %d\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"radeon_hwmon_init\00", [46 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@radeon_hwmon_init._entry_ptr = internal global ptr @radeon_hwmon_init._entry, section ".printk_index", align 4
@hwmon_attrgroup = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr @hwmon_attributes_visible, ptr null, ptr @hwmon_attributes, ptr null }, [44 x i8] zeroinitializer }, align 32
@hwmon_attributes = internal global { [10 x ptr], [56 x i8] } { [10 x ptr] [ptr @sensor_dev_attr_temp1_input, ptr @sensor_dev_attr_temp1_crit, ptr @sensor_dev_attr_temp1_crit_hyst, ptr @sensor_dev_attr_pwm1, ptr @sensor_dev_attr_pwm1_enable, ptr @sensor_dev_attr_pwm1_min, ptr @sensor_dev_attr_pwm1_max, ptr @sensor_dev_attr_freq1_input, ptr @sensor_dev_attr_in0_input, ptr null], [56 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp1_crit = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.22, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @radeon_hwmon_show_temp_thresh, ptr null }, i32 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp1_crit_hyst = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.24, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @radeon_hwmon_show_temp_thresh, ptr null }, i32 1 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_pwm1 = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.25, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @radeon_hwmon_get_pwm1, ptr @radeon_hwmon_set_pwm1 }, i32 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_pwm1_enable = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.27, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @radeon_hwmon_get_pwm1_enable, ptr @radeon_hwmon_set_pwm1_enable }, i32 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_pwm1_max = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.28, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @radeon_hwmon_get_pwm1_max, ptr null }, i32 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_pwm1_min = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.29, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @radeon_hwmon_get_pwm1_min, ptr null }, i32 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_freq1_input = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.30, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @radeon_hwmon_show_sclk, ptr null }, i32 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in0_input = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.32, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @radeon_hwmon_show_vddc, ptr null }, i32 0 }, [32 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"temp1_crit\00", [21 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"temp1_crit_hyst\00", [16 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pwm1\00", [27 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%i\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"pwm1_enable\00", [20 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"pwm1_max\00", [23 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"pwm1_min\00", [23 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"freq1_input\00", [20 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%u\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in0_input\00", [22 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp1_input = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.33, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @radeon_hwmon_show_temp, ptr null }, i32 0 }, [32 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"temp1_input\00", [20 x i8] zeroinitializer }, align 32
@radeon_dpm_print_power_states._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.35, ptr @.str.8, i32 1411, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"== power state %d ==\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"radeon_dpm_print_power_states\00", [34 x i8] zeroinitializer }, align 32
@radeon_dpm_print_power_states._entry_ptr = internal global ptr @radeon_dpm_print_power_states._entry, section ".printk_index", align 4
@.str.36 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"radeon_pm_info\00", [17 x i8] zeroinitializer }, align 32
@radeon_debugfs_pm_info_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @radeon_debugfs_pm_info_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"PX asic powered off\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"Debugfs support not implemented for this asic\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"default engine clock: %u0 kHz\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"current engine clock: %u0 kHz\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"default memory clock: %u0 kHz\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"current memory clock: %u0 kHz\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"voltage: %u mV\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"PCIE lanes: %d\0A\00", [16 x i8] zeroinitializer }, align 32
@radeon_pm_init_old.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.45 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"(work_completion)(&(&rdev->pm.dynpm_idle_work)->work)\00", [42 x i8] zeroinitializer }, align 32
@radeon_pm_init_old.__key.46 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.47 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"&(&rdev->pm.dynpm_idle_work)->timer\00", [60 x i8] zeroinitializer }, align 32
@radeon_pm_init_old._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.49, ptr @.str.8, i32 1400, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\016[drm] radeon: power management initialized\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"radeon_pm_init_old\00", [45 x i8] zeroinitializer }, align 32
@radeon_pm_init_old._entry_ptr = internal global ptr @radeon_pm_init_old._entry, section ".printk_index", align 4
@.str.50 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"%d Power State(s)\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"State %d: %s\0A\00", [18 x i8] zeroinitializer }, align 32
@radeon_pm_state_type_name = internal constant { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62], [44 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"\09Default\00", [23 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"\09%d PCIE Lanes\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\09Single display only\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"\09%d Clock Mode(s)\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"\09\09%d e: %d\0A\00", [20 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\09\09%d e: %d\09m: %d\09v: %d\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.59 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Powersave\00", [22 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Battery\00", [24 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Balanced\00", [23 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Performance\00", [20 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@.str.63 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"power_dpm_state\00", [16 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"battery\00", [24 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"balanced\00", [23 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"performance\00", [20 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"power_dpm_force_performance_level\00", [62 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"off\0A\00", [27 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"auto\00", [27 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"low\00", [28 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"high\00", [27 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"power_profile\00", [18 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"mid\00", [28 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"default\00", [24 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"power_method\00", [19 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"dynpm\00", [26 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"profile\00", [24 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"dpm\00", [28 x i8] zeroinitializer }, align 32
@radeon_dpm_change_power_state_locked._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.80, ptr @.str.81, ptr @.str.8, i32 1126, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"switching from power state:\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"radeon_dpm_change_power_state_locked\00", [59 x i8] zeroinitializer }, align 32
@radeon_dpm_change_power_state_locked._entry_ptr = internal global ptr @radeon_dpm_change_power_state_locked._entry, section ".printk_index", align 4
@radeon_dpm_change_power_state_locked._entry.82 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.83, ptr @.str.81, ptr @.str.8, i32 1128, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"switching to power state:\0A\00", [37 x i8] zeroinitializer }, align 32
@radeon_dpm_change_power_state_locked._entry_ptr.84 = internal global ptr @radeon_dpm_change_power_state_locked._entry.82, section ".printk_index", align 4
@.str.85 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"radeon: dynamic power management deactivated\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"radeon: dynamic power management activated\0A\00", [52 x i8] zeroinitializer }, align 32
@switch.table.radeon_get_pm_profile = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.70, ptr @.str.71, ptr @.str.74], [20 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@__sancov_gen_cov_switch_values.87 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.88 = internal global [14 x i64] [i64 12, i64 32, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 11, i64 12, i64 13, i64 14]
@__sancov_gen_cov_switch_values.89 = internal global [11 x i64] [i64 9, i64 32, i64 2, i64 3, i64 6, i64 7, i64 8, i64 9, i64 11, i64 12, i64 14]
@__sancov_gen_cov_switch_values.90 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.91 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.92 = internal global [36 x i64] [i64 34, i64 32, i64 28, i64 29, i64 30, i64 31, i64 32, i64 33, i64 34, i64 35, i64 36, i64 37, i64 38, i64 39, i64 40, i64 41, i64 42, i64 43, i64 44, i64 45, i64 46, i64 47, i64 48, i64 49, i64 50, i64 51, i64 52, i64 53, i64 54, i64 55, i64 56, i64 57, i64 58, i64 59, i64 60, i64 61]
@__sancov_gen_cov_switch_values.93 = internal global [10 x i64] [i64 8, i64 32, i64 3, i64 4, i64 6, i64 7, i64 8, i64 9, i64 11, i64 12]
@__sancov_gen_cov_switch_values.94 = internal global [10 x i64] [i64 8, i64 32, i64 3, i64 4, i64 6, i64 7, i64 8, i64 9, i64 11, i64 12]
@__sancov_gen_cov_switch_values.95 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.96 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@__sancov_gen_cov_switch_values.97 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 3]
@___asan_gen_.98 = private unnamed_addr constant [25 x i8] c"dev_attr_power_dpm_state\00", align 1
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.429, i32 1595, i32 6 }
@___asan_gen_.104 = private unnamed_addr constant [43 x i8] c"dev_attr_power_dpm_force_performance_level\00", align 1
@___asan_gen_.107 = private unnamed_addr constant [23 x i8] c"dev_attr_power_profile\00", align 1
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.429, i32 1602, i32 6 }
@___asan_gen_.113 = private unnamed_addr constant [22 x i8] c"dev_attr_power_method\00", align 1
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.429, i32 1605, i32 6 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.429, i32 1614, i32 5 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.429, i32 290, i32 6 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.429, i32 228, i32 4 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.429, i32 237, i32 4 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.429, i32 249, i32 3 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.429, i32 166, i32 3 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.429, i32 1848, i32 3 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.429, i32 1327, i32 2 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.429, i32 1440, i32 2 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.429, i32 1455, i32 2 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.429, i32 1475, i32 2 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.429, i32 853, i32 13 }
@___asan_gen_.170 = private unnamed_addr constant [13 x i8] c"hwmon_groups\00", align 1
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.429, i32 832, i32 38 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.429, i32 857, i32 4 }
@___asan_gen_.188 = private unnamed_addr constant [16 x i8] c"hwmon_attrgroup\00", align 1
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.429, i32 827, i32 37 }
@___asan_gen_.191 = private unnamed_addr constant [17 x i8] c"hwmon_attributes\00", align 1
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.429, i32 759, i32 26 }
@___asan_gen_.194 = private unnamed_addr constant [27 x i8] c"sensor_dev_attr_temp1_crit\00", align 1
@___asan_gen_.197 = private unnamed_addr constant [32 x i8] c"sensor_dev_attr_temp1_crit_hyst\00", align 1
@___asan_gen_.200 = private unnamed_addr constant [21 x i8] c"sensor_dev_attr_pwm1\00", align 1
@___asan_gen_.203 = private unnamed_addr constant [28 x i8] c"sensor_dev_attr_pwm1_enable\00", align 1
@___asan_gen_.206 = private unnamed_addr constant [25 x i8] c"sensor_dev_attr_pwm1_max\00", align 1
@___asan_gen_.209 = private unnamed_addr constant [25 x i8] c"sensor_dev_attr_pwm1_min\00", align 1
@___asan_gen_.212 = private unnamed_addr constant [28 x i8] c"sensor_dev_attr_freq1_input\00", align 1
@___asan_gen_.215 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_in0_input\00", align 1
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.429, i32 706, i32 8 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.429, i32 702, i32 25 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.429, i32 707, i32 8 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.429, i32 708, i32 8 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.429, i32 658, i32 22 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.429, i32 709, i32 8 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.429, i32 711, i32 8 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.429, i32 710, i32 8 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.429, i32 735, i32 8 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.429, i32 732, i32 25 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.429, i32 756, i32 8 }
@___asan_gen_.251 = private unnamed_addr constant [28 x i8] c"sensor_dev_attr_temp1_input\00", align 1
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.429, i32 705, i32 8 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.429, i32 1411, i32 3 }
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.429, i32 1961, i32 22 }
@___asan_gen_.269 = private unnamed_addr constant [28 x i8] c"radeon_debugfs_pm_info_fops\00", align 1
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.429, i32 1953, i32 1 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.429, i32 1926, i32 17 }
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.429, i32 1932, i32 18 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.429, i32 1935, i32 17 }
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.429, i32 1938, i32 18 }
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.429, i32 1941, i32 17 }
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.429, i32 1943, i32 18 }
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.429, i32 1945, i32 18 }
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.429, i32 1947, i32 18 }
@___asan_gen_.302 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.429, i32 1396, i32 2 }
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.429, i32 1400, i32 3 }
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.429, i32 327, i32 2 }
@___asan_gen_.322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.429, i32 330, i32 3 }
@___asan_gen_.323 = private unnamed_addr constant [26 x i8] c"radeon_pm_state_type_name\00", align 1
@___asan_gen_.325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.429, i32 41, i32 20 }
@___asan_gen_.328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.429, i32 333, i32 4 }
@___asan_gen_.331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.429, i32 335, i32 4 }
@___asan_gen_.334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.429, i32 337, i32 4 }
@___asan_gen_.337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.429, i32 338, i32 3 }
@___asan_gen_.340 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.429, i32 342, i32 5 }
@___asan_gen_.343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.429, i32 346, i32 5 }
@___asan_gen_.346 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.429, i32 42, i32 2 }
@___asan_gen_.349 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.429, i32 43, i32 2 }
@___asan_gen_.352 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.429, i32 44, i32 2 }
@___asan_gen_.355 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.429, i32 45, i32 2 }
@___asan_gen_.358 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.429, i32 46, i32 2 }
@___asan_gen_.361 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.429, i32 663, i32 8 }
@___asan_gen_.364 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.429, i32 473, i32 25 }
@___asan_gen_.367 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.429, i32 474, i32 41 }
@___asan_gen_.370 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.429, i32 475, i32 42 }
@___asan_gen_.373 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.429, i32 475, i32 55 }
@___asan_gen_.376 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.429, i32 664, i32 8 }
@___asan_gen_.379 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.429, i32 519, i32 26 }
@___asan_gen_.382 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.429, i32 522, i32 48 }
@___asan_gen_.385 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.429, i32 523, i32 47 }
@___asan_gen_.388 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.429, i32 523, i32 55 }
@___asan_gen_.391 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.429, i32 661, i32 8 }
@___asan_gen_.394 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.429, i32 365, i32 31 }
@___asan_gen_.397 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.429, i32 366, i32 41 }
@___asan_gen_.400 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.429, i32 662, i32 8 }
@___asan_gen_.403 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.429, i32 417, i32 59 }
@___asan_gen_.406 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.429, i32 418, i32 34 }
@___asan_gen_.409 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.429, i32 418, i32 46 }
@___asan_gen_.418 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.429, i32 1126, i32 3 }
@___asan_gen_.419 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.424 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.429, i32 1128, i32 3 }
@___asan_gen_.427 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.429, i32 1730, i32 6 }
@___asan_gen_.428 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.429 = private constant [38 x i8] c"../drivers/gpu/drm/radeon/radeon_pm.c\00", align 1
@___asan_gen_.430 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.429, i32 1747, i32 6 }
@___asan_gen_.431 = private unnamed_addr constant [35 x i8] c"switch.table.radeon_get_pm_profile\00", align 1
@llvm.compiler.used = appending global [118 x ptr] [ptr @radeon_dpm_change_power_state_locked._entry, ptr @radeon_dpm_change_power_state_locked._entry.82, ptr @radeon_dpm_change_power_state_locked._entry_ptr, ptr @radeon_dpm_change_power_state_locked._entry_ptr.84, ptr @radeon_dpm_print_power_states._entry, ptr @radeon_dpm_print_power_states._entry_ptr, ptr @radeon_hwmon_init._entry, ptr @radeon_hwmon_init._entry_ptr, ptr @radeon_pm_init_dpm._entry, ptr @radeon_pm_init_dpm._entry_ptr, ptr @radeon_pm_init_old._entry, ptr @radeon_pm_init_old._entry_ptr, ptr @dev_attr_power_dpm_state, ptr @.str, ptr @dev_attr_power_dpm_force_performance_level, ptr @dev_attr_power_profile, ptr @.str.1, ptr @dev_attr_power_method, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @radeon_pm_init_dpm.__key, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @hwmon_groups, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @hwmon_attrgroup, ptr @hwmon_attributes, ptr @sensor_dev_attr_temp1_crit, ptr @sensor_dev_attr_temp1_crit_hyst, ptr @sensor_dev_attr_pwm1, ptr @sensor_dev_attr_pwm1_enable, ptr @sensor_dev_attr_pwm1_max, ptr @sensor_dev_attr_pwm1_min, ptr @sensor_dev_attr_freq1_input, ptr @sensor_dev_attr_in0_input, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @sensor_dev_attr_temp1_input, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @radeon_debugfs_pm_info_fops, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @radeon_pm_init_old.__key, ptr @.str.45, ptr @radeon_pm_init_old.__key.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @radeon_pm_state_type_name, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.83, ptr @.str.85, ptr @.str.86, ptr @switch.table.radeon_get_pm_profile], section "llvm.metadata"
@0 = internal global [112 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_power_dpm_state to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_power_dpm_force_performance_level to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_power_profile to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_power_method to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radeon_pm_init_dpm.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radeon_pm_init_dpm._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hwmon_groups to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radeon_hwmon_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hwmon_attrgroup to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hwmon_attributes to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp1_crit to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp1_crit_hyst to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_pwm1 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_pwm1_enable to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_pwm1_max to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_pwm1_min to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_freq1_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in0_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp1_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radeon_dpm_print_power_states._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radeon_debugfs_pm_info_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radeon_pm_init_old.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radeon_pm_init_old.__key.46 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radeon_pm_init_old._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radeon_pm_state_type_name to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radeon_dpm_change_power_state_locked._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radeon_dpm_change_power_state_locked._entry.82 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.radeon_get_pm_profile to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local i32 @radeon_pm_get_type_index(ptr nocapture noundef readonly %rdev, i32 noundef %ps_type, i32 noundef %instance) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %num_power_states = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 19
  %0 = ptrtoint ptr %num_power_states to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_power_states, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp16 = icmp sgt i32 %1, 0
  br i1 %cmp16, label %for.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %power_state = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 18
  %2 = ptrtoint ptr %power_state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %power_state, align 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %found_instance.019 = phi i32 [ -1, %for.body.lr.ph ], [ %found_instance.1, %for.inc.for.body_crit_edge ]
  %i.017 = phi i32 [ 0, %for.body.lr.ph ], [ %inc6, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.radeon_power_state, ptr %3, i32 %i.017
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %ps_type)
  %cmp2 = icmp eq i32 %5, %ps_type
  br i1 %cmp2, label %if.then, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.then:                                          ; preds = %for.body
  %inc = add i32 %found_instance.019, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc, i32 %instance)
  %cmp3 = icmp eq i32 %inc, %instance
  br i1 %cmp3, label %if.then.cleanup_crit_edge, label %if.then.for.inc_crit_edge

if.then.for.inc_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.inc:                                          ; preds = %if.then.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %found_instance.1 = phi i32 [ %inc, %if.then.for.inc_crit_edge ], [ %found_instance.019, %for.body.for.inc_crit_edge ]
  %inc6 = add nuw nsw i32 %i.017, 1
  %exitcond.not = icmp eq i32 %inc6, %1
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %default_power_state_index = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 24
  %6 = ptrtoint ptr %default_power_state_index to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %default_power_state_index, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %7, %for.end ], [ %i.017, %if.then.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @radeon_pm_acpi_event_handler(ptr noundef %rdev) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %pm = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58
  %pm_method = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 34
  %0 = ptrtoint ptr %pm_method to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %pm_method, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %1, label %entry.if.end39_crit_edge [
    i32 2, label %land.lhs.true
    i32 0, label %if.then29
  ]

entry.if.end39_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end39

land.lhs.true:                                    ; preds = %entry
  %dpm_enabled = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 50
  %3 = ptrtoint ptr %dpm_enabled to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %dpm_enabled, align 8, !range !207
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  br i1 %tobool.not, label %land.lhs.true.if.end39_crit_edge, label %if.then

land.lhs.true.if.end39_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end39

if.then:                                          ; preds = %land.lhs.true
  tail call void @mutex_lock_nested(ptr noundef %pm, i32 noundef 0) #10
  %call = tail call i32 @power_supply_is_system_supplied() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp3 = icmp sgt i32 %call, 0
  %spec.select = zext i1 %cmp3 to i8
  %5 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 31
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %spec.select, ptr %5, align 1
  %family = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 6
  %7 = ptrtoint ptr %family to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %family, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 51, i32 %8)
  %cmp9 = icmp eq i32 %8, 51
  br i1 %cmp9, label %if.then10, label %if.then.if.end39.sink.split_crit_edge

if.then.if.end39.sink.split_crit_edge:            ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end39.sink.split

if.then10:                                        ; preds = %if.then
  %asic = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 56
  %9 = ptrtoint ptr %asic to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %asic, align 8
  %enable_bapm = getelementptr inbounds %struct.radeon_asic, ptr %10, i32 0, i32 21, i32 17
  %11 = ptrtoint ptr %enable_bapm to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %enable_bapm, align 4
  %tobool12.not = icmp eq ptr %12, null
  br i1 %tobool12.not, label %if.then10.if.end39.sink.split_crit_edge, label %if.then13

if.then10.if.end39.sink.split_crit_edge:          ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end39.sink.split

if.then13:                                        ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #12
  %13 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %5, align 1, !range !207
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool20 = icmp ne i8 %14, 0
  tail call void %12(ptr noundef %rdev, i1 noundef zeroext %tobool20) #10
  br label %if.end39.sink.split

if.then29:                                        ; preds = %entry
  %profile = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 41
  %15 = ptrtoint ptr %profile to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %profile, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %16)
  %cmp31 = icmp eq i32 %16, 1
  br i1 %cmp31, label %if.then32, label %if.then29.if.end39_crit_edge

if.then29.if.end39_crit_edge:                     ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end39

if.then32:                                        ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @mutex_lock_nested(ptr noundef %pm, i32 noundef 0) #10
  tail call fastcc void @radeon_pm_update_profile(ptr noundef %rdev)
  tail call fastcc void @radeon_pm_set_clocks(ptr noundef %rdev)
  br label %if.end39.sink.split

if.end39.sink.split:                              ; preds = %if.then32, %if.then13, %if.then10.if.end39.sink.split_crit_edge, %if.then.if.end39.sink.split_crit_edge
  tail call void @mutex_unlock(ptr noundef %pm) #10
  br label %if.end39

if.end39:                                         ; preds = %if.end39.sink.split, %if.then29.if.end39_crit_edge, %land.lhs.true.if.end39_crit_edge, %entry.if.end39_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @power_supply_is_system_supplied() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @radeon_pm_update_profile(ptr noundef %rdev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %profile = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 41
  %0 = ptrtoint ptr %profile to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %profile, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.87)
  switch i32 %1, label %entry.sw.epilog_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb2
    i32 2, label %sw.bb22
    i32 3, label %sw.bb33
    i32 4, label %sw.bb44
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %profile_index = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 42
  %3 = ptrtoint ptr %profile_index to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %profile_index, align 8
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  %call = tail call i32 @power_supply_is_system_supplied() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp sgt i32 %call, 0
  %active_crtc_count = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 3
  %4 = ptrtoint ptr %active_crtc_count to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %active_crtc_count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp4 = icmp sgt i32 %5, 1
  %profile_index7 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 42
  br i1 %cmp, label %if.then, label %if.else10

if.then:                                          ; preds = %sw.bb2
  br i1 %cmp4, label %if.then5, label %if.else

if.then5:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %6 = ptrtoint ptr %profile_index7 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 6, ptr %profile_index7, align 8
  br label %sw.epilog

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %7 = ptrtoint ptr %profile_index7 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 3, ptr %profile_index7, align 8
  br label %sw.epilog

if.else10:                                        ; preds = %sw.bb2
  br i1 %cmp4, label %if.then14, label %if.else17

if.then14:                                        ; preds = %if.else10
  call void @__sanitizer_cov_trace_pc() #12
  %8 = ptrtoint ptr %profile_index7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 5, ptr %profile_index7, align 8
  br label %sw.epilog

if.else17:                                        ; preds = %if.else10
  call void @__sanitizer_cov_trace_pc() #12
  %9 = ptrtoint ptr %profile_index7 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 2, ptr %profile_index7, align 8
  br label %sw.epilog

sw.bb22:                                          ; preds = %entry
  %active_crtc_count24 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 3
  %10 = ptrtoint ptr %active_crtc_count24 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %active_crtc_count24, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %11)
  %cmp25 = icmp sgt i32 %11, 1
  %profile_index28 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 42
  br i1 %cmp25, label %if.then26, label %if.else29

if.then26:                                        ; preds = %sw.bb22
  call void @__sanitizer_cov_trace_pc() #12
  %12 = ptrtoint ptr %profile_index28 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 4, ptr %profile_index28, align 8
  br label %sw.epilog

if.else29:                                        ; preds = %sw.bb22
  call void @__sanitizer_cov_trace_pc() #12
  %13 = ptrtoint ptr %profile_index28 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 1, ptr %profile_index28, align 8
  br label %sw.epilog

sw.bb33:                                          ; preds = %entry
  %active_crtc_count35 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 3
  %14 = ptrtoint ptr %active_crtc_count35 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %active_crtc_count35, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %15)
  %cmp36 = icmp sgt i32 %15, 1
  %profile_index39 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 42
  br i1 %cmp36, label %if.then37, label %if.else40

if.then37:                                        ; preds = %sw.bb33
  call void @__sanitizer_cov_trace_pc() #12
  %16 = ptrtoint ptr %profile_index39 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 5, ptr %profile_index39, align 8
  br label %sw.epilog

if.else40:                                        ; preds = %sw.bb33
  call void @__sanitizer_cov_trace_pc() #12
  %17 = ptrtoint ptr %profile_index39 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 2, ptr %profile_index39, align 8
  br label %sw.epilog

sw.bb44:                                          ; preds = %entry
  %active_crtc_count46 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 3
  %18 = ptrtoint ptr %active_crtc_count46 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %active_crtc_count46, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %19)
  %cmp47 = icmp sgt i32 %19, 1
  %profile_index50 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 42
  br i1 %cmp47, label %if.then48, label %if.else51

if.then48:                                        ; preds = %sw.bb44
  call void @__sanitizer_cov_trace_pc() #12
  %20 = ptrtoint ptr %profile_index50 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 6, ptr %profile_index50, align 8
  br label %sw.epilog

if.else51:                                        ; preds = %sw.bb44
  call void @__sanitizer_cov_trace_pc() #12
  %21 = ptrtoint ptr %profile_index50 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 3, ptr %profile_index50, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.else51, %if.then48, %if.else40, %if.then37, %if.else29, %if.then26, %if.else17, %if.then14, %if.else, %if.then5, %sw.bb, %entry.sw.epilog_crit_edge
  %active_crtc_count56 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 3
  %22 = ptrtoint ptr %active_crtc_count56 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %active_crtc_count56, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp57 = icmp eq i32 %23, 0
  %profile_index61 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 42
  %24 = ptrtoint ptr %profile_index61 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %profile_index61, align 8
  br i1 %cmp57, label %if.then58, label %if.else69

if.then58:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 43, i32 %25
  %26 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx, align 4
  %requested_power_state_index = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 22
  %28 = ptrtoint ptr %requested_power_state_index to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %requested_power_state_index, align 4
  %dpms_off_cm_idx = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 43, i32 %25, i32 2
  br label %if.end84

if.else69:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  %dpms_on_ps_idx = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 43, i32 %25, i32 1
  %29 = ptrtoint ptr %dpms_on_ps_idx to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %dpms_on_ps_idx, align 4
  %requested_power_state_index76 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 22
  %31 = ptrtoint ptr %requested_power_state_index76 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %requested_power_state_index76, align 4
  %dpms_on_cm_idx = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 43, i32 %25, i32 3
  br label %if.end84

if.end84:                                         ; preds = %if.else69, %if.then58
  %.sink.in = phi ptr [ %dpms_off_cm_idx, %if.then58 ], [ %dpms_on_cm_idx, %if.else69 ]
  %32 = ptrtoint ptr %.sink.in to i32
  call void @__asan_load4_noabort(i32 %32)
  %.sink = load i32, ptr %.sink.in, align 4
  %33 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 23
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %.sink, ptr %33, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @radeon_pm_set_clocks(ptr noundef %rdev) unnamed_addr #2 align 64 {
entry:
  %vpos.i.i250.i = alloca i32, align 4
  %hpos.i.i251.i = alloca i32, align 4
  %vpos.i.i222.i = alloca i32, align 4
  %hpos.i.i223.i = alloca i32, align 4
  %vpos.i.i194.i = alloca i32, align 4
  %hpos.i.i195.i = alloca i32, align 4
  %vpos.i.i.i = alloca i32, align 4
  %hpos.i.i.i = alloca i32, align 4
  %vpos.i.i = alloca i32, align 4
  %hpos.i.i = alloca i32, align 4
  %__wq_entry.i.i = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %requested_clock_mode_index = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 23
  %0 = ptrtoint ptr %requested_clock_mode_index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %requested_clock_mode_index, align 8
  %current_clock_mode_index = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 21
  %2 = ptrtoint ptr %current_clock_mode_index to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %current_clock_mode_index, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %3)
  %cmp = icmp eq i32 %1, %3
  br i1 %cmp, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %requested_power_state_index = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 22
  %4 = ptrtoint ptr %requested_power_state_index to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %requested_power_state_index, align 4
  %current_power_state_index = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 20
  %6 = ptrtoint ptr %current_power_state_index to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %current_power_state_index, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %7)
  %cmp4 = icmp eq i32 %5, %7
  br i1 %cmp4, label %land.lhs.true.cleanup90_crit_edge, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true.cleanup90_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup90

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %mclk_lock = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 1
  tail call void @down_write(ptr noundef %mclk_lock) #10
  %ring_lock = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 51
  tail call void @mutex_lock_nested(ptr noundef %ring_lock, i32 noundef 0) #10
  %ready = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 52, i32 0, i32 17
  %8 = ptrtoint ptr %ready to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %ready, align 8, !range !207
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not = icmp eq i8 %9, 0
  br i1 %tobool.not, label %if.end.for.inc_crit_edge, label %if.end9

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.end9:                                          ; preds = %if.end
  %call = tail call i32 @radeon_fence_wait_empty(ptr noundef %rdev, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool10.not = icmp eq i32 %call, 0
  br i1 %tobool10.not, label %if.end9.for.inc_crit_edge, label %if.end9.cleanup_crit_edge

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end9.for.inc_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

cleanup:                                          ; preds = %if.end9.7.cleanup_crit_edge, %if.end9.6.cleanup_crit_edge, %if.end9.5.cleanup_crit_edge, %if.end9.4.cleanup_crit_edge, %if.end9.3.cleanup_crit_edge, %if.end9.2.cleanup_crit_edge, %if.end9.1.cleanup_crit_edge, %if.end9.cleanup_crit_edge
  tail call void @mutex_unlock(ptr noundef %ring_lock) #10
  tail call void @up_write(ptr noundef %mclk_lock) #10
  br label %cleanup90

for.inc:                                          ; preds = %if.end9.for.inc_crit_edge, %if.end.for.inc_crit_edge
  %ready.1 = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 52, i32 1, i32 17
  %10 = ptrtoint ptr %ready.1 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %ready.1, align 8, !range !207
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.not.1 = icmp eq i8 %11, 0
  br i1 %tobool.not.1, label %for.inc.for.inc.1_crit_edge, label %if.end9.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.1

if.end9.1:                                        ; preds = %for.inc
  %call.1 = tail call i32 @radeon_fence_wait_empty(ptr noundef %rdev, i32 noundef 1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.1)
  %tobool10.not.1 = icmp eq i32 %call.1, 0
  br i1 %tobool10.not.1, label %if.end9.1.for.inc.1_crit_edge, label %if.end9.1.cleanup_crit_edge

if.end9.1.cleanup_crit_edge:                      ; preds = %if.end9.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end9.1.for.inc.1_crit_edge:                    ; preds = %if.end9.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.end9.1.for.inc.1_crit_edge, %for.inc.for.inc.1_crit_edge
  %ready.2 = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 52, i32 2, i32 17
  %12 = ptrtoint ptr %ready.2 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %ready.2, align 8, !range !207
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool.not.2 = icmp eq i8 %13, 0
  br i1 %tobool.not.2, label %for.inc.1.for.inc.2_crit_edge, label %if.end9.2

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.2

if.end9.2:                                        ; preds = %for.inc.1
  %call.2 = tail call i32 @radeon_fence_wait_empty(ptr noundef %rdev, i32 noundef 2) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.2)
  %tobool10.not.2 = icmp eq i32 %call.2, 0
  br i1 %tobool10.not.2, label %if.end9.2.for.inc.2_crit_edge, label %if.end9.2.cleanup_crit_edge

if.end9.2.cleanup_crit_edge:                      ; preds = %if.end9.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end9.2.for.inc.2_crit_edge:                    ; preds = %if.end9.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.end9.2.for.inc.2_crit_edge, %for.inc.1.for.inc.2_crit_edge
  %ready.3 = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 52, i32 3, i32 17
  %14 = ptrtoint ptr %ready.3 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %ready.3, align 8, !range !207
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool.not.3 = icmp eq i8 %15, 0
  br i1 %tobool.not.3, label %for.inc.2.for.inc.3_crit_edge, label %if.end9.3

for.inc.2.for.inc.3_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.3

if.end9.3:                                        ; preds = %for.inc.2
  %call.3 = tail call i32 @radeon_fence_wait_empty(ptr noundef %rdev, i32 noundef 3) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.3)
  %tobool10.not.3 = icmp eq i32 %call.3, 0
  br i1 %tobool10.not.3, label %if.end9.3.for.inc.3_crit_edge, label %if.end9.3.cleanup_crit_edge

if.end9.3.cleanup_crit_edge:                      ; preds = %if.end9.3
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end9.3.for.inc.3_crit_edge:                    ; preds = %if.end9.3
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.3

for.inc.3:                                        ; preds = %if.end9.3.for.inc.3_crit_edge, %for.inc.2.for.inc.3_crit_edge
  %ready.4 = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 52, i32 4, i32 17
  %16 = ptrtoint ptr %ready.4 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %ready.4, align 8, !range !207
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool.not.4 = icmp eq i8 %17, 0
  br i1 %tobool.not.4, label %for.inc.3.for.inc.4_crit_edge, label %if.end9.4

for.inc.3.for.inc.4_crit_edge:                    ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.4

if.end9.4:                                        ; preds = %for.inc.3
  %call.4 = tail call i32 @radeon_fence_wait_empty(ptr noundef %rdev, i32 noundef 4) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.4)
  %tobool10.not.4 = icmp eq i32 %call.4, 0
  br i1 %tobool10.not.4, label %if.end9.4.for.inc.4_crit_edge, label %if.end9.4.cleanup_crit_edge

if.end9.4.cleanup_crit_edge:                      ; preds = %if.end9.4
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end9.4.for.inc.4_crit_edge:                    ; preds = %if.end9.4
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.4

for.inc.4:                                        ; preds = %if.end9.4.for.inc.4_crit_edge, %for.inc.3.for.inc.4_crit_edge
  %ready.5 = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 52, i32 5, i32 17
  %18 = ptrtoint ptr %ready.5 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %ready.5, align 8, !range !207
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool.not.5 = icmp eq i8 %19, 0
  br i1 %tobool.not.5, label %for.inc.4.for.inc.5_crit_edge, label %if.end9.5

for.inc.4.for.inc.5_crit_edge:                    ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.5

if.end9.5:                                        ; preds = %for.inc.4
  %call.5 = tail call i32 @radeon_fence_wait_empty(ptr noundef %rdev, i32 noundef 5) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.5)
  %tobool10.not.5 = icmp eq i32 %call.5, 0
  br i1 %tobool10.not.5, label %if.end9.5.for.inc.5_crit_edge, label %if.end9.5.cleanup_crit_edge

if.end9.5.cleanup_crit_edge:                      ; preds = %if.end9.5
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end9.5.for.inc.5_crit_edge:                    ; preds = %if.end9.5
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.5

for.inc.5:                                        ; preds = %if.end9.5.for.inc.5_crit_edge, %for.inc.4.for.inc.5_crit_edge
  %ready.6 = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 52, i32 6, i32 17
  %20 = ptrtoint ptr %ready.6 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %ready.6, align 8, !range !207
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool.not.6 = icmp eq i8 %21, 0
  br i1 %tobool.not.6, label %for.inc.5.for.inc.6_crit_edge, label %if.end9.6

for.inc.5.for.inc.6_crit_edge:                    ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.6

if.end9.6:                                        ; preds = %for.inc.5
  %call.6 = tail call i32 @radeon_fence_wait_empty(ptr noundef %rdev, i32 noundef 6) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.6)
  %tobool10.not.6 = icmp eq i32 %call.6, 0
  br i1 %tobool10.not.6, label %if.end9.6.for.inc.6_crit_edge, label %if.end9.6.cleanup_crit_edge

if.end9.6.cleanup_crit_edge:                      ; preds = %if.end9.6
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end9.6.for.inc.6_crit_edge:                    ; preds = %if.end9.6
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.6

for.inc.6:                                        ; preds = %if.end9.6.for.inc.6_crit_edge, %for.inc.5.for.inc.6_crit_edge
  %ready.7 = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 52, i32 7, i32 17
  %22 = ptrtoint ptr %ready.7 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %ready.7, align 8, !range !207
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool.not.7 = icmp eq i8 %23, 0
  br i1 %tobool.not.7, label %for.inc.6.for.inc.7_crit_edge, label %if.end9.7

for.inc.6.for.inc.7_crit_edge:                    ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.7

if.end9.7:                                        ; preds = %for.inc.6
  %call.7 = tail call i32 @radeon_fence_wait_empty(ptr noundef %rdev, i32 noundef 7) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.7)
  %tobool10.not.7 = icmp eq i32 %call.7, 0
  br i1 %tobool10.not.7, label %if.end9.7.for.inc.7_crit_edge, label %if.end9.7.cleanup_crit_edge

if.end9.7.cleanup_crit_edge:                      ; preds = %if.end9.7
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end9.7.for.inc.7_crit_edge:                    ; preds = %if.end9.7
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.7

for.inc.7:                                        ; preds = %if.end9.7.for.inc.7_crit_edge, %for.inc.6.for.inc.7_crit_edge
  %objects.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 57, i32 1
  %24 = ptrtoint ptr %objects.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile ptr, ptr %objects.i, align 4
  %cmp.i.not.i = icmp eq ptr %25, %objects.i
  br i1 %cmp.i.not.i, label %for.inc.7.radeon_unmap_vram_bos.exit_crit_edge, label %for.inc.7.for.body.i_crit_edge

for.inc.7.for.body.i_crit_edge:                   ; preds = %for.inc.7
  br label %for.body.i

for.inc.7.radeon_unmap_vram_bos.exit_crit_edge:   ; preds = %for.inc.7
  call void @__sanitizer_cov_trace_pc() #12
  br label %radeon_unmap_vram_bos.exit

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.inc.7.for.body.i_crit_edge
  %bo.028.i = phi ptr [ %n.029.i, %for.inc.i.for.body.i_crit_edge ], [ %25, %for.inc.7.for.body.i_crit_edge ]
  %26 = ptrtoint ptr %bo.028.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %n.029.i = load ptr, ptr %bo.028.i, align 8
  %resource.i = getelementptr inbounds %struct.radeon_bo, ptr %bo.028.i, i32 0, i32 4, i32 6
  %27 = ptrtoint ptr %resource.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %resource.i, align 4
  %mem_type.i = getelementptr inbounds %struct.ttm_resource, ptr %28, i32 0, i32 2
  %29 = ptrtoint ptr %mem_type.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %mem_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %30)
  %cmp10.i = icmp eq i32 %30, 2
  br i1 %cmp10.i, label %if.then11.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

if.then11.i:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %tbo.i = getelementptr inbounds %struct.radeon_bo, ptr %bo.028.i, i32 0, i32 4
  tail call void @ttm_bo_unmap_virtual(ptr noundef %tbo.i) #10
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then11.i, %for.body.i.for.inc.i_crit_edge
  %cmp.not.i = icmp eq ptr %n.029.i, %objects.i
  br i1 %cmp.not.i, label %for.inc.i.radeon_unmap_vram_bos.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.inc.i.radeon_unmap_vram_bos.exit_crit_edge:   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %radeon_unmap_vram_bos.exit

radeon_unmap_vram_bos.exit:                       ; preds = %for.inc.i.radeon_unmap_vram_bos.exit_crit_edge, %for.inc.7.radeon_unmap_vram_bos.exit_crit_edge
  %irq = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 55
  %31 = ptrtoint ptr %irq to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %irq, align 8, !range !207
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %tobool16.not = icmp eq i8 %32, 0
  br i1 %tobool16.not, label %radeon_unmap_vram_bos.exit.if.end42_crit_edge, label %if.then17

radeon_unmap_vram_bos.exit.if.end42_crit_edge:    ; preds = %radeon_unmap_vram_bos.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end42

if.then17:                                        ; preds = %radeon_unmap_vram_bos.exit
  %ddev = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 1
  %33 = ptrtoint ptr %ddev to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %ddev, align 4
  %crtc_list = getelementptr inbounds %struct.drm_device, ptr %34, i32 0, i32 30, i32 20
  %35 = ptrtoint ptr %crtc_list to i32
  call void @__asan_load4_noabort(i32 %35)
  %.pn138142 = load ptr, ptr %crtc_list, align 4
  %cmp22.not145 = icmp eq ptr %.pn138142, %crtc_list
  br i1 %cmp22.not145, label %if.then17.if.end42_crit_edge, label %for.body23.lr.ph

if.then17.if.end42_crit_edge:                     ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end42

for.body23.lr.ph:                                 ; preds = %if.then17
  %active_crtcs = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 2
  %req_vblank = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 4
  br label %for.body23

for.body23:                                       ; preds = %if.end33.for.body23_crit_edge, %for.body23.lr.ph
  %.pn138148 = phi ptr [ %.pn138142, %for.body23.lr.ph ], [ %.pn138, %if.end33.for.body23_crit_edge ]
  %i.1146 = phi i32 [ 0, %for.body23.lr.ph ], [ %inc34, %if.end33.for.body23_crit_edge ]
  %36 = ptrtoint ptr %active_crtcs to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %active_crtcs, align 4
  %shl = shl nuw i32 1, %i.1146
  %and = and i32 %37, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool25.not = icmp eq i32 %and, 0
  br i1 %tobool25.not, label %for.body23.if.end33_crit_edge, label %if.then26

for.body23.if.end33_crit_edge:                    ; preds = %for.body23
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end33

if.then26:                                        ; preds = %for.body23
  %crtc.0149 = getelementptr i8, ptr %.pn138148, i32 -8
  %call27 = tail call i32 @drm_crtc_vblank_get(ptr noundef %crtc.0149) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %cmp28 = icmp eq i32 %call27, 0
  br i1 %cmp28, label %if.then29, label %if.else

if.then29:                                        ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #12
  %38 = ptrtoint ptr %req_vblank to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %req_vblank, align 4
  %or = or i32 %39, %shl
  store i32 %or, ptr %req_vblank, align 4
  br label %if.end33

if.else:                                          ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.4, i32 noundef %i.1146) #10
  br label %if.end33

if.end33:                                         ; preds = %if.else, %if.then29, %for.body23.if.end33_crit_edge
  %inc34 = add i32 %i.1146, 1
  %40 = ptrtoint ptr %.pn138148 to i32
  call void @__asan_load4_noabort(i32 %40)
  %.pn138 = load ptr, ptr %.pn138148, align 4
  %41 = ptrtoint ptr %ddev to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %ddev, align 4
  %crtc_list21 = getelementptr inbounds %struct.drm_device, ptr %42, i32 0, i32 30, i32 20
  %cmp22.not = icmp eq ptr %.pn138, %crtc_list21
  br i1 %cmp22.not, label %if.end33.if.end42_crit_edge, label %if.end33.for.body23_crit_edge

if.end33.for.body23_crit_edge:                    ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body23

if.end33.if.end42_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end42

if.end42:                                         ; preds = %if.end33.if.end42_crit_edge, %if.then17.if.end42_crit_edge, %radeon_unmap_vram_bos.exit.if.end42_crit_edge
  %43 = ptrtoint ptr %requested_clock_mode_index to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %requested_clock_mode_index, align 8
  %45 = ptrtoint ptr %current_clock_mode_index to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %current_clock_mode_index, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %44, i32 %46)
  %cmp.i = icmp eq i32 %44, %46
  br i1 %cmp.i, label %land.lhs.true.i, label %if.end42.if.end.i_crit_edge

if.end42.if.end.i_crit_edge:                      ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %if.end42
  %requested_power_state_index.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 22
  %47 = ptrtoint ptr %requested_power_state_index.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %requested_power_state_index.i, align 4
  %current_power_state_index.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 20
  %49 = ptrtoint ptr %current_power_state_index.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %current_power_state_index.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %48, i32 %50)
  %cmp4.i = icmp eq i32 %48, %50
  br i1 %cmp4.i, label %land.lhs.true.i.radeon_set_power_state.exit_crit_edge, label %land.lhs.true.i.if.end.i_crit_edge

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

land.lhs.true.i.radeon_set_power_state.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %radeon_set_power_state.exit

if.end.i:                                         ; preds = %land.lhs.true.i.if.end.i_crit_edge, %if.end42.if.end.i_crit_edge
  %asic.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 56
  %51 = ptrtoint ptr %asic.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %asic.i, align 8
  %gui_idle.i = getelementptr inbounds %struct.radeon_asic, ptr %52, i32 0, i32 7
  %53 = ptrtoint ptr %gui_idle.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %gui_idle.i, align 4
  %call.i = tail call zeroext i1 %54(ptr noundef %rdev) #10
  br i1 %call.i, label %if.then5.i, label %if.else120.i

if.then5.i:                                       ; preds = %if.end.i
  %power_state.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 18
  %55 = ptrtoint ptr %power_state.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %power_state.i, align 4
  %requested_power_state_index8.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 22
  %57 = ptrtoint ptr %requested_power_state_index8.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %requested_power_state_index8.i, align 4
  %clock_info.i = getelementptr %struct.radeon_power_state, ptr %56, i32 %58, i32 1
  %59 = ptrtoint ptr %clock_info.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %clock_info.i, align 4
  %61 = ptrtoint ptr %requested_clock_mode_index to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %requested_clock_mode_index, align 8
  %sclk12.i = getelementptr %struct.radeon_pm_clock_info, ptr %60, i32 %62, i32 1
  %63 = ptrtoint ptr %sclk12.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %sclk12.i, align 4
  %default_sclk.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 29
  %65 = ptrtoint ptr %default_sclk.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %default_sclk.i, align 4
  %67 = tail call i32 @llvm.umin.i32(i32 %64, i32 %66) #10
  %pm_method.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 34
  %68 = ptrtoint ptr %pm_method.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %pm_method.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %69)
  %cmp20.i = icmp eq i32 %69, 0
  br i1 %cmp20.i, label %land.lhs.true21.i, label %if.then5.i.if.end52.i_crit_edge

if.then5.i.if.end52.i_crit_edge:                  ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end52.i

land.lhs.true21.i:                                ; preds = %if.then5.i
  %family.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 6
  %70 = ptrtoint ptr %family.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %family.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 46, i32 %71)
  %cmp22.i = icmp ugt i32 %71, 46
  br i1 %cmp22.i, label %land.lhs.true23.i, label %land.lhs.true21.i.if.end52.i_crit_edge

land.lhs.true21.i.if.end52.i_crit_edge:           ; preds = %land.lhs.true21.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end52.i

land.lhs.true23.i:                                ; preds = %land.lhs.true21.i
  %active_crtc_count.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 3
  %72 = ptrtoint ptr %active_crtc_count.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %active_crtc_count.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %73)
  %tobool.not.i = icmp eq i32 %73, 0
  br i1 %tobool.not.i, label %land.lhs.true23.i.if.end52.i_crit_edge, label %land.lhs.true25.i

land.lhs.true23.i.if.end52.i_crit_edge:           ; preds = %land.lhs.true23.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end52.i

land.lhs.true25.i:                                ; preds = %land.lhs.true23.i
  %profile_index.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 42
  %74 = ptrtoint ptr %profile_index.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %profile_index.i, align 8
  %76 = and i32 %75, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %76)
  %switch.i = icmp eq i32 %76, 4
  br i1 %switch.i, label %if.then31.i, label %land.lhs.true25.i.if.end52.i_crit_edge

land.lhs.true25.i.if.end52.i_crit_edge:           ; preds = %land.lhs.true25.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end52.i

if.then31.i:                                      ; preds = %land.lhs.true25.i
  call void @__sanitizer_cov_trace_pc() #12
  %dpms_on_cm_idx.i = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 43, i32 6, i32 3
  %77 = ptrtoint ptr %dpms_on_cm_idx.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %dpms_on_cm_idx.i, align 4
  br label %if.end52.i

if.end52.i:                                       ; preds = %if.then31.i, %land.lhs.true25.i.if.end52.i_crit_edge, %land.lhs.true23.i.if.end52.i_crit_edge, %land.lhs.true21.i.if.end52.i_crit_edge, %if.then5.i.if.end52.i_crit_edge
  %.pn.i = phi i32 [ %78, %if.then31.i ], [ %62, %land.lhs.true25.i.if.end52.i_crit_edge ], [ %62, %land.lhs.true23.i.if.end52.i_crit_edge ], [ %62, %land.lhs.true21.i.if.end52.i_crit_edge ], [ %62, %if.then5.i.if.end52.i_crit_edge ]
  %mclk.0.in.i = getelementptr %struct.radeon_pm_clock_info, ptr %60, i32 %.pn.i
  %79 = ptrtoint ptr %mclk.0.in.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %mclk.0.i = load i32, ptr %mclk.0.in.i, align 4
  %default_mclk.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 30
  %80 = ptrtoint ptr %default_mclk.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %default_mclk.i, align 8
  %82 = tail call i32 @llvm.umin.i32(i32 %mclk.0.i, i32 %81) #10
  %current_sclk.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 25
  %83 = ptrtoint ptr %current_sclk.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %current_sclk.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %67, i32 %84)
  %cmp60.i = icmp ult i32 %67, %84
  %active_crtcs.i.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 2
  %85 = ptrtoint ptr %active_crtcs.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %active_crtcs.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %86)
  %tobool.not.i.i = icmp eq i32 %86, 0
  br i1 %tobool.not.i.i, label %if.end52.i.radeon_sync_with_vblank.exit.i_crit_edge, label %if.then.i.i

if.end52.i.radeon_sync_with_vblank.exit.i_crit_edge: ; preds = %if.end52.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %radeon_sync_with_vblank.exit.i

if.then.i.i:                                      ; preds = %if.end52.i
  %vblank_sync.i.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 5
  %87 = ptrtoint ptr %vblank_sync.i.i to i32
  call void @__asan_store1_noabort(i32 %87)
  store i8 0, ptr %vblank_sync.i.i, align 8
  tail call void @__might_sleep(ptr noundef nonnull @.str.8, i32 noundef 168) #10
  %88 = ptrtoint ptr %vblank_sync.i.i to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %vblank_sync.i.i, align 8, !range !207
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %89)
  %tobool7.not.not.i.i = icmp eq i8 %89, 0
  br i1 %tobool7.not.not.i.i, label %if.then14.i.i, label %if.then.i.i.radeon_sync_with_vblank.exit.i_crit_edge

if.then.i.i.radeon_sync_with_vblank.exit.i_crit_edge: ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %radeon_sync_with_vblank.exit.i

if.then14.i.i:                                    ; preds = %if.then.i.i
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry.i.i) #10
  %90 = call ptr @memset(ptr %__wq_entry.i.i, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry.i.i, i32 noundef 0) #10
  %vblank_queue.i.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 55, i32 5
  %call1761.i.i = call i32 @prepare_to_wait_event(ptr noundef %vblank_queue.i.i, ptr noundef nonnull %__wq_entry.i.i, i32 noundef 2) #10
  %91 = ptrtoint ptr %vblank_sync.i.i to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %vblank_sync.i.i, align 8, !range !207
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %92)
  %tobool21.not62.not.i.i = icmp eq i8 %92, 0
  br i1 %tobool21.not62.not.i.i, label %if.then14.i.i.cleanup.i.i_crit_edge, label %if.then14.i.i.for.end.i.i_crit_edge

if.then14.i.i.for.end.i.i_crit_edge:              ; preds = %if.then14.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i.i

if.then14.i.i.cleanup.i.i_crit_edge:              ; preds = %if.then14.i.i
  br label %cleanup.i.i

cleanup.i.i:                                      ; preds = %cleanup.i.i.cleanup.i.i_crit_edge, %if.then14.i.i.cleanup.i.i_crit_edge
  %__ret15.164.i.i = phi i32 [ %__ret15.1.i.i, %cleanup.i.i.cleanup.i.i_crit_edge ], [ 20, %if.then14.i.i.cleanup.i.i_crit_edge ]
  %call38.i.i = call i32 @schedule_timeout(i32 noundef %__ret15.164.i.i) #10
  %call17.i.i = call i32 @prepare_to_wait_event(ptr noundef %vblank_queue.i.i, ptr noundef nonnull %__wq_entry.i.i, i32 noundef 2) #10
  %93 = ptrtoint ptr %vblank_sync.i.i to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %vblank_sync.i.i, align 8, !range !207
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %94)
  %tobool21.not.i.i = icmp eq i8 %94, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38.i.i)
  %tobool25.not.i.i = icmp eq i32 %call38.i.i, 0
  %spec.store.select45.i.i = select i1 %tobool25.not.i.i, i32 1, i32 %call38.i.i
  %__ret15.1.i.i = select i1 %tobool21.not.i.i, i32 %call38.i.i, i32 %spec.store.select45.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret15.1.i.i)
  %tobool31.not.i.i = icmp eq i32 %__ret15.1.i.i, 0
  %not.tobool21.not.i.i = xor i1 %tobool21.not.i.i, true
  %95 = select i1 %not.tobool21.not.i.i, i1 true, i1 %tobool31.not.i.i
  br i1 %95, label %cleanup.i.i.for.end.i.i_crit_edge, label %cleanup.i.i.cleanup.i.i_crit_edge

cleanup.i.i.cleanup.i.i_crit_edge:                ; preds = %cleanup.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.i.i

cleanup.i.i.for.end.i.i_crit_edge:                ; preds = %cleanup.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i.i

for.end.i.i:                                      ; preds = %cleanup.i.i.for.end.i.i_crit_edge, %if.then14.i.i.for.end.i.i_crit_edge
  call void @finish_wait(ptr noundef %vblank_queue.i.i, ptr noundef nonnull %__wq_entry.i.i) #10
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry.i.i) #10
  br label %radeon_sync_with_vblank.exit.i

radeon_sync_with_vblank.exit.i:                   ; preds = %for.end.i.i, %if.then.i.i.radeon_sync_with_vblank.exit.i_crit_edge, %if.end52.i.radeon_sync_with_vblank.exit.i_crit_edge
  %96 = ptrtoint ptr %pm_method.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %pm_method.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %97)
  %cmp65.i = icmp eq i32 %97, 1
  br i1 %cmp65.i, label %if.then66.i, label %radeon_sync_with_vblank.exit.i.if.end70.i_crit_edge

radeon_sync_with_vblank.exit.i.if.end70.i_crit_edge: ; preds = %radeon_sync_with_vblank.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end70.i

if.then66.i:                                      ; preds = %radeon_sync_with_vblank.exit.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %vpos.i.i) #10
  %98 = ptrtoint ptr %vpos.i.i to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 -1, ptr %vpos.i.i, align 4, !annotation !208
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %hpos.i.i) #10
  %99 = ptrtoint ptr %hpos.i.i to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 -1, ptr %hpos.i.i, align 4, !annotation !208
  %num_crtc.i.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 91
  %100 = ptrtoint ptr %num_crtc.i.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %num_crtc.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %101)
  %cmp21.i.i = icmp slt i32 %101, 1
  br i1 %cmp21.i.i, label %radeon_pm_in_vbl.exit.thread.i, label %for.body.lr.ph.i.i

radeon_pm_in_vbl.exit.thread.i:                   ; preds = %if.then66.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %hpos.i.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %vpos.i.i) #10
  br label %if.end70.i

for.body.lr.ph.i.i:                               ; preds = %if.then66.i
  %ddev.i.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 1
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %in_vbl.0.off024.i.i = phi i1 [ true, %for.body.lr.ph.i.i ], [ %in_vbl.1.off0.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %crtc.022.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %102 = ptrtoint ptr %active_crtcs.i.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %active_crtcs.i.i, align 4
  %shl.i.i = shl nuw i32 1, %crtc.022.i.i
  %and.i.i = and i32 %103, %shl.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool1.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool1.not.i.i, label %for.body.i.i.for.inc.i.i_crit_edge, label %if.then.i191.i

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i.i

if.then.i191.i:                                   ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %104 = ptrtoint ptr %ddev.i.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %ddev.i.i, align 4
  %arrayidx.i.i = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 44, i32 4, i32 %crtc.022.i.i
  %106 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %arrayidx.i.i, align 4
  %hwmode.i.i = getelementptr inbounds %struct.drm_crtc, ptr %107, i32 0, i32 13
  %call.i.i = call i32 @radeon_get_crtc_scanoutpos(ptr noundef %105, i32 noundef %crtc.022.i.i, i32 noundef 1073741824, ptr noundef nonnull %vpos.i.i, ptr noundef nonnull %hpos.i.i, ptr noundef null, ptr noundef null, ptr noundef %hwmode.i.i) #10
  %108 = and i32 %call.i.i, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %108)
  %109 = icmp ne i32 %108, 1
  %spec.select.i.i = select i1 %109, i1 %in_vbl.0.off024.i.i, i1 false
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %if.then.i191.i, %for.body.i.i.for.inc.i.i_crit_edge
  %in_vbl.1.off0.i.i = phi i1 [ %in_vbl.0.off024.i.i, %for.body.i.i.for.inc.i.i_crit_edge ], [ %spec.select.i.i, %if.then.i191.i ]
  %inc.i.i = add nuw nsw i32 %crtc.022.i.i, 1
  %110 = ptrtoint ptr %num_crtc.i.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %num_crtc.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i.i, i32 %111)
  %cmp.i.i = icmp sge i32 %inc.i.i, %111
  %in_vbl.0.off0.not.i.i = xor i1 %in_vbl.1.off0.i.i, true
  %brmerge.i.i = select i1 %cmp.i.i, i1 true, i1 %in_vbl.0.off0.not.i.i
  br i1 %brmerge.i.i, label %radeon_pm_in_vbl.exit.i, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i

radeon_pm_in_vbl.exit.i:                          ; preds = %for.inc.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %hpos.i.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %vpos.i.i) #10
  br i1 %in_vbl.1.off0.i.i, label %radeon_pm_in_vbl.exit.i.if.end70.i_crit_edge, label %radeon_pm_in_vbl.exit.i.radeon_set_power_state.exit_crit_edge

radeon_pm_in_vbl.exit.i.radeon_set_power_state.exit_crit_edge: ; preds = %radeon_pm_in_vbl.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %radeon_set_power_state.exit

radeon_pm_in_vbl.exit.i.if.end70.i_crit_edge:     ; preds = %radeon_pm_in_vbl.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end70.i

if.end70.i:                                       ; preds = %radeon_pm_in_vbl.exit.i.if.end70.i_crit_edge, %radeon_pm_in_vbl.exit.thread.i, %radeon_sync_with_vblank.exit.i.if.end70.i_crit_edge
  %112 = ptrtoint ptr %asic.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %asic.i, align 8
  %prepare.i = getelementptr inbounds %struct.radeon_asic, ptr %113, i32 0, i32 20, i32 1
  %114 = ptrtoint ptr %prepare.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %prepare.i, align 4
  call void %115(ptr noundef %rdev) #10
  br i1 %cmp60.i, label %if.end70.i.if.end77.i_crit_edge, label %if.then74.i

if.end70.i.if.end77.i_crit_edge:                  ; preds = %if.end70.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end77.i

if.then74.i:                                      ; preds = %if.end70.i
  call void @__sanitizer_cov_trace_pc() #12
  %116 = ptrtoint ptr %asic.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %asic.i, align 8
  %pm76.i = getelementptr inbounds %struct.radeon_asic, ptr %117, i32 0, i32 20
  %118 = ptrtoint ptr %pm76.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %pm76.i, align 4
  call void %119(ptr noundef %rdev) #10
  br label %if.end77.i

if.end77.i:                                       ; preds = %if.then74.i, %if.end70.i.if.end77.i_crit_edge
  %120 = ptrtoint ptr %current_sclk.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %current_sclk.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %67, i32 %121)
  %cmp80.not.i = icmp eq i32 %67, %121
  br i1 %cmp80.not.i, label %if.end77.i.if.end88.i_crit_edge, label %if.then81.i

if.end77.i.if.end88.i_crit_edge:                  ; preds = %if.end77.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end88.i

if.then81.i:                                      ; preds = %if.end77.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %vpos.i.i.i) #10
  %122 = ptrtoint ptr %vpos.i.i.i to i32
  call void @__asan_store4_noabort(i32 %122)
  store i32 -1, ptr %vpos.i.i.i, align 4, !annotation !208
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %hpos.i.i.i) #10
  %123 = ptrtoint ptr %hpos.i.i.i to i32
  call void @__asan_store4_noabort(i32 %123)
  store i32 -1, ptr %hpos.i.i.i, align 4, !annotation !208
  %num_crtc.i.i.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 91
  %124 = ptrtoint ptr %num_crtc.i.i.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %num_crtc.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %125)
  %cmp21.i.i.i = icmp slt i32 %125, 1
  br i1 %cmp21.i.i.i, label %radeon_pm_in_vbl.exit.thread.i.i, label %for.body.lr.ph.i.i.i

radeon_pm_in_vbl.exit.thread.i.i:                 ; preds = %if.then81.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %hpos.i.i.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %vpos.i.i.i) #10
  br label %radeon_pm_debug_check_in_vbl.exit.i

for.body.lr.ph.i.i.i:                             ; preds = %if.then81.i
  %ddev.i.i.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 1
  br label %for.body.i.i.i

for.body.i.i.i:                                   ; preds = %for.inc.i.i.i.for.body.i.i.i_crit_edge, %for.body.lr.ph.i.i.i
  %in_vbl.0.off024.i.i.i = phi i1 [ true, %for.body.lr.ph.i.i.i ], [ %in_vbl.1.off0.i.i.i, %for.inc.i.i.i.for.body.i.i.i_crit_edge ]
  %crtc.022.i.i.i = phi i32 [ 0, %for.body.lr.ph.i.i.i ], [ %inc.i.i.i, %for.inc.i.i.i.for.body.i.i.i_crit_edge ]
  %126 = ptrtoint ptr %active_crtcs.i.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %active_crtcs.i.i, align 4
  %shl.i.i.i = shl nuw i32 1, %crtc.022.i.i.i
  %and.i.i.i = and i32 %127, %shl.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool1.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool1.not.i.i.i, label %for.body.i.i.i.for.inc.i.i.i_crit_edge, label %if.then.i.i.i

for.body.i.i.i.for.inc.i.i.i_crit_edge:           ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i.i.i

if.then.i.i.i:                                    ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %128 = ptrtoint ptr %ddev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %ddev.i.i.i, align 4
  %arrayidx.i.i.i = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 44, i32 4, i32 %crtc.022.i.i.i
  %130 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %arrayidx.i.i.i, align 4
  %hwmode.i.i.i = getelementptr inbounds %struct.drm_crtc, ptr %131, i32 0, i32 13
  %call.i.i.i = call i32 @radeon_get_crtc_scanoutpos(ptr noundef %129, i32 noundef %crtc.022.i.i.i, i32 noundef 1073741824, ptr noundef nonnull %vpos.i.i.i, ptr noundef nonnull %hpos.i.i.i, ptr noundef null, ptr noundef null, ptr noundef %hwmode.i.i.i) #10
  %132 = and i32 %call.i.i.i, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %132)
  %133 = icmp ne i32 %132, 1
  %spec.select.i.i.i = select i1 %133, i1 %in_vbl.0.off024.i.i.i, i1 false
  br label %for.inc.i.i.i

for.inc.i.i.i:                                    ; preds = %if.then.i.i.i, %for.body.i.i.i.for.inc.i.i.i_crit_edge
  %in_vbl.1.off0.i.i.i = phi i1 [ %in_vbl.0.off024.i.i.i, %for.body.i.i.i.for.inc.i.i.i_crit_edge ], [ %spec.select.i.i.i, %if.then.i.i.i ]
  %inc.i.i.i = add nuw nsw i32 %crtc.022.i.i.i, 1
  %134 = ptrtoint ptr %num_crtc.i.i.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %num_crtc.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i.i.i, i32 %135)
  %cmp.i.i.i = icmp sge i32 %inc.i.i.i, %135
  %in_vbl.0.off0.not.i.i.i = xor i1 %in_vbl.1.off0.i.i.i, true
  %brmerge.i.i.i = select i1 %cmp.i.i.i, i1 true, i1 %in_vbl.0.off0.not.i.i.i
  br i1 %brmerge.i.i.i, label %radeon_pm_in_vbl.exit.i.i, label %for.inc.i.i.i.for.body.i.i.i_crit_edge

for.inc.i.i.i.for.body.i.i.i_crit_edge:           ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i.i

radeon_pm_in_vbl.exit.i.i:                        ; preds = %for.inc.i.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %hpos.i.i.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %vpos.i.i.i) #10
  br i1 %in_vbl.1.off0.i.i.i, label %radeon_pm_in_vbl.exit.i.i.radeon_pm_debug_check_in_vbl.exit.i_crit_edge, label %if.then.i193.i

radeon_pm_in_vbl.exit.i.i.radeon_pm_debug_check_in_vbl.exit.i_crit_edge: ; preds = %radeon_pm_in_vbl.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %radeon_pm_debug_check_in_vbl.exit.i

if.then.i193.i:                                   ; preds = %radeon_pm_in_vbl.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.9, i32 noundef 0, ptr noundef nonnull @.str.11) #10
  br label %radeon_pm_debug_check_in_vbl.exit.i

radeon_pm_debug_check_in_vbl.exit.i:              ; preds = %if.then.i193.i, %radeon_pm_in_vbl.exit.i.i.radeon_pm_debug_check_in_vbl.exit.i_crit_edge, %radeon_pm_in_vbl.exit.thread.i.i
  %136 = ptrtoint ptr %asic.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %asic.i, align 8
  %set_engine_clock.i = getelementptr inbounds %struct.radeon_asic, ptr %137, i32 0, i32 20, i32 6
  %138 = ptrtoint ptr %set_engine_clock.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %set_engine_clock.i, align 4
  call void %139(ptr noundef %rdev, i32 noundef %67) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %vpos.i.i194.i) #10
  %140 = ptrtoint ptr %vpos.i.i194.i to i32
  call void @__asan_store4_noabort(i32 %140)
  store i32 -1, ptr %vpos.i.i194.i, align 4, !annotation !208
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %hpos.i.i195.i) #10
  %141 = ptrtoint ptr %hpos.i.i195.i to i32
  call void @__asan_store4_noabort(i32 %141)
  store i32 -1, ptr %hpos.i.i195.i, align 4, !annotation !208
  %142 = ptrtoint ptr %num_crtc.i.i.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %num_crtc.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %143)
  %cmp21.i.i197.i = icmp slt i32 %143, 1
  br i1 %cmp21.i.i197.i, label %radeon_pm_in_vbl.exit.thread.i198.i, label %for.body.lr.ph.i.i201.i

radeon_pm_in_vbl.exit.thread.i198.i:              ; preds = %radeon_pm_debug_check_in_vbl.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %hpos.i.i195.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %vpos.i.i194.i) #10
  br label %radeon_pm_debug_check_in_vbl.exit221.i

for.body.lr.ph.i.i201.i:                          ; preds = %radeon_pm_debug_check_in_vbl.exit.i
  %ddev.i.i200.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 1
  br label %for.body.i.i207.i

for.body.i.i207.i:                                ; preds = %for.inc.i.i218.i.for.body.i.i207.i_crit_edge, %for.body.lr.ph.i.i201.i
  %in_vbl.0.off024.i.i202.i = phi i1 [ true, %for.body.lr.ph.i.i201.i ], [ %in_vbl.1.off0.i.i213.i, %for.inc.i.i218.i.for.body.i.i207.i_crit_edge ]
  %crtc.022.i.i203.i = phi i32 [ 0, %for.body.lr.ph.i.i201.i ], [ %inc.i.i214.i, %for.inc.i.i218.i.for.body.i.i207.i_crit_edge ]
  %144 = ptrtoint ptr %active_crtcs.i.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %active_crtcs.i.i, align 4
  %shl.i.i204.i = shl nuw i32 1, %crtc.022.i.i203.i
  %and.i.i205.i = and i32 %145, %shl.i.i204.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i205.i)
  %tobool1.not.i.i206.i = icmp eq i32 %and.i.i205.i, 0
  br i1 %tobool1.not.i.i206.i, label %for.body.i.i207.i.for.inc.i.i218.i_crit_edge, label %if.then.i.i212.i

for.body.i.i207.i.for.inc.i.i218.i_crit_edge:     ; preds = %for.body.i.i207.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i.i218.i

if.then.i.i212.i:                                 ; preds = %for.body.i.i207.i
  call void @__sanitizer_cov_trace_pc() #12
  %146 = ptrtoint ptr %ddev.i.i200.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %ddev.i.i200.i, align 4
  %arrayidx.i.i208.i = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 44, i32 4, i32 %crtc.022.i.i203.i
  %148 = ptrtoint ptr %arrayidx.i.i208.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %arrayidx.i.i208.i, align 4
  %hwmode.i.i209.i = getelementptr inbounds %struct.drm_crtc, ptr %149, i32 0, i32 13
  %call.i.i210.i = call i32 @radeon_get_crtc_scanoutpos(ptr noundef %147, i32 noundef %crtc.022.i.i203.i, i32 noundef 1073741824, ptr noundef nonnull %vpos.i.i194.i, ptr noundef nonnull %hpos.i.i195.i, ptr noundef null, ptr noundef null, ptr noundef %hwmode.i.i209.i) #10
  %150 = and i32 %call.i.i210.i, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %150)
  %151 = icmp ne i32 %150, 1
  %spec.select.i.i211.i = select i1 %151, i1 %in_vbl.0.off024.i.i202.i, i1 false
  br label %for.inc.i.i218.i

for.inc.i.i218.i:                                 ; preds = %if.then.i.i212.i, %for.body.i.i207.i.for.inc.i.i218.i_crit_edge
  %in_vbl.1.off0.i.i213.i = phi i1 [ %in_vbl.0.off024.i.i202.i, %for.body.i.i207.i.for.inc.i.i218.i_crit_edge ], [ %spec.select.i.i211.i, %if.then.i.i212.i ]
  %inc.i.i214.i = add nuw nsw i32 %crtc.022.i.i203.i, 1
  %152 = ptrtoint ptr %num_crtc.i.i.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %num_crtc.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i.i214.i, i32 %153)
  %cmp.i.i215.i = icmp sge i32 %inc.i.i214.i, %153
  %in_vbl.0.off0.not.i.i216.i = xor i1 %in_vbl.1.off0.i.i213.i, true
  %brmerge.i.i217.i = select i1 %cmp.i.i215.i, i1 true, i1 %in_vbl.0.off0.not.i.i216.i
  br i1 %brmerge.i.i217.i, label %radeon_pm_in_vbl.exit.i219.i, label %for.inc.i.i218.i.for.body.i.i207.i_crit_edge

for.inc.i.i218.i.for.body.i.i207.i_crit_edge:     ; preds = %for.inc.i.i218.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i207.i

radeon_pm_in_vbl.exit.i219.i:                     ; preds = %for.inc.i.i218.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %hpos.i.i195.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %vpos.i.i194.i) #10
  br i1 %in_vbl.1.off0.i.i213.i, label %radeon_pm_in_vbl.exit.i219.i.radeon_pm_debug_check_in_vbl.exit221.i_crit_edge, label %if.then.i220.i

radeon_pm_in_vbl.exit.i219.i.radeon_pm_debug_check_in_vbl.exit221.i_crit_edge: ; preds = %radeon_pm_in_vbl.exit.i219.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %radeon_pm_debug_check_in_vbl.exit221.i

if.then.i220.i:                                   ; preds = %radeon_pm_in_vbl.exit.i219.i
  call void @__sanitizer_cov_trace_pc() #12
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.9, i32 noundef 0, ptr noundef nonnull @.str.10) #10
  br label %radeon_pm_debug_check_in_vbl.exit221.i

radeon_pm_debug_check_in_vbl.exit221.i:           ; preds = %if.then.i220.i, %radeon_pm_in_vbl.exit.i219.i.radeon_pm_debug_check_in_vbl.exit221.i_crit_edge, %radeon_pm_in_vbl.exit.thread.i198.i
  %154 = ptrtoint ptr %current_sclk.i to i32
  call void @__asan_store4_noabort(i32 %154)
  store i32 %67, ptr %current_sclk.i, align 8
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.5, i32 noundef %67) #10
  br label %if.end88.i

if.end88.i:                                       ; preds = %radeon_pm_debug_check_in_vbl.exit221.i, %if.end77.i.if.end88.i_crit_edge
  %155 = ptrtoint ptr %asic.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %asic.i, align 8
  %set_memory_clock.i = getelementptr inbounds %struct.radeon_asic, ptr %156, i32 0, i32 20, i32 8
  %157 = ptrtoint ptr %set_memory_clock.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %set_memory_clock.i, align 4
  %tobool91.not.i = icmp eq ptr %158, null
  br i1 %tobool91.not.i, label %if.end88.i.if.end103.i_crit_edge, label %land.lhs.true92.i

if.end88.i.if.end103.i_crit_edge:                 ; preds = %if.end88.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end103.i

land.lhs.true92.i:                                ; preds = %if.end88.i
  %current_mclk.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 26
  %159 = ptrtoint ptr %current_mclk.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %current_mclk.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %82, i32 %160)
  %cmp94.not.i = icmp eq i32 %82, %160
  br i1 %cmp94.not.i, label %land.lhs.true92.i.if.end103.i_crit_edge, label %if.then95.i

land.lhs.true92.i.if.end103.i_crit_edge:          ; preds = %land.lhs.true92.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end103.i

if.then95.i:                                      ; preds = %land.lhs.true92.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %vpos.i.i222.i) #10
  %161 = ptrtoint ptr %vpos.i.i222.i to i32
  call void @__asan_store4_noabort(i32 %161)
  store i32 -1, ptr %vpos.i.i222.i, align 4, !annotation !208
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %hpos.i.i223.i) #10
  %162 = ptrtoint ptr %hpos.i.i223.i to i32
  call void @__asan_store4_noabort(i32 %162)
  store i32 -1, ptr %hpos.i.i223.i, align 4, !annotation !208
  %num_crtc.i.i224.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 91
  %163 = ptrtoint ptr %num_crtc.i.i224.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %num_crtc.i.i224.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %164)
  %cmp21.i.i225.i = icmp slt i32 %164, 1
  br i1 %cmp21.i.i225.i, label %radeon_pm_in_vbl.exit.thread.i226.i, label %for.body.lr.ph.i.i229.i

radeon_pm_in_vbl.exit.thread.i226.i:              ; preds = %if.then95.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %hpos.i.i223.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %vpos.i.i222.i) #10
  br label %radeon_pm_debug_check_in_vbl.exit249.i

for.body.lr.ph.i.i229.i:                          ; preds = %if.then95.i
  %ddev.i.i228.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 1
  br label %for.body.i.i235.i

for.body.i.i235.i:                                ; preds = %for.inc.i.i246.i.for.body.i.i235.i_crit_edge, %for.body.lr.ph.i.i229.i
  %in_vbl.0.off024.i.i230.i = phi i1 [ true, %for.body.lr.ph.i.i229.i ], [ %in_vbl.1.off0.i.i241.i, %for.inc.i.i246.i.for.body.i.i235.i_crit_edge ]
  %crtc.022.i.i231.i = phi i32 [ 0, %for.body.lr.ph.i.i229.i ], [ %inc.i.i242.i, %for.inc.i.i246.i.for.body.i.i235.i_crit_edge ]
  %165 = ptrtoint ptr %active_crtcs.i.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %active_crtcs.i.i, align 4
  %shl.i.i232.i = shl nuw i32 1, %crtc.022.i.i231.i
  %and.i.i233.i = and i32 %166, %shl.i.i232.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i233.i)
  %tobool1.not.i.i234.i = icmp eq i32 %and.i.i233.i, 0
  br i1 %tobool1.not.i.i234.i, label %for.body.i.i235.i.for.inc.i.i246.i_crit_edge, label %if.then.i.i240.i

for.body.i.i235.i.for.inc.i.i246.i_crit_edge:     ; preds = %for.body.i.i235.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i.i246.i

if.then.i.i240.i:                                 ; preds = %for.body.i.i235.i
  call void @__sanitizer_cov_trace_pc() #12
  %167 = ptrtoint ptr %ddev.i.i228.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %ddev.i.i228.i, align 4
  %arrayidx.i.i236.i = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 44, i32 4, i32 %crtc.022.i.i231.i
  %169 = ptrtoint ptr %arrayidx.i.i236.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %arrayidx.i.i236.i, align 4
  %hwmode.i.i237.i = getelementptr inbounds %struct.drm_crtc, ptr %170, i32 0, i32 13
  %call.i.i238.i = call i32 @radeon_get_crtc_scanoutpos(ptr noundef %168, i32 noundef %crtc.022.i.i231.i, i32 noundef 1073741824, ptr noundef nonnull %vpos.i.i222.i, ptr noundef nonnull %hpos.i.i223.i, ptr noundef null, ptr noundef null, ptr noundef %hwmode.i.i237.i) #10
  %171 = and i32 %call.i.i238.i, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %171)
  %172 = icmp ne i32 %171, 1
  %spec.select.i.i239.i = select i1 %172, i1 %in_vbl.0.off024.i.i230.i, i1 false
  br label %for.inc.i.i246.i

for.inc.i.i246.i:                                 ; preds = %if.then.i.i240.i, %for.body.i.i235.i.for.inc.i.i246.i_crit_edge
  %in_vbl.1.off0.i.i241.i = phi i1 [ %in_vbl.0.off024.i.i230.i, %for.body.i.i235.i.for.inc.i.i246.i_crit_edge ], [ %spec.select.i.i239.i, %if.then.i.i240.i ]
  %inc.i.i242.i = add nuw nsw i32 %crtc.022.i.i231.i, 1
  %173 = ptrtoint ptr %num_crtc.i.i224.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load i32, ptr %num_crtc.i.i224.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i.i242.i, i32 %174)
  %cmp.i.i243.i = icmp sge i32 %inc.i.i242.i, %174
  %in_vbl.0.off0.not.i.i244.i = xor i1 %in_vbl.1.off0.i.i241.i, true
  %brmerge.i.i245.i = select i1 %cmp.i.i243.i, i1 true, i1 %in_vbl.0.off0.not.i.i244.i
  br i1 %brmerge.i.i245.i, label %radeon_pm_in_vbl.exit.i247.i, label %for.inc.i.i246.i.for.body.i.i235.i_crit_edge

for.inc.i.i246.i.for.body.i.i235.i_crit_edge:     ; preds = %for.inc.i.i246.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i235.i

radeon_pm_in_vbl.exit.i247.i:                     ; preds = %for.inc.i.i246.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %hpos.i.i223.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %vpos.i.i222.i) #10
  br i1 %in_vbl.1.off0.i.i241.i, label %radeon_pm_in_vbl.exit.i247.i.radeon_pm_debug_check_in_vbl.exit249.i_crit_edge, label %if.then.i248.i

radeon_pm_in_vbl.exit.i247.i.radeon_pm_debug_check_in_vbl.exit249.i_crit_edge: ; preds = %radeon_pm_in_vbl.exit.i247.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %radeon_pm_debug_check_in_vbl.exit249.i

if.then.i248.i:                                   ; preds = %radeon_pm_in_vbl.exit.i247.i
  call void @__sanitizer_cov_trace_pc() #12
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.9, i32 noundef 0, ptr noundef nonnull @.str.11) #10
  br label %radeon_pm_debug_check_in_vbl.exit249.i

radeon_pm_debug_check_in_vbl.exit249.i:           ; preds = %if.then.i248.i, %radeon_pm_in_vbl.exit.i247.i.radeon_pm_debug_check_in_vbl.exit249.i_crit_edge, %radeon_pm_in_vbl.exit.thread.i226.i
  %175 = ptrtoint ptr %asic.i to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %asic.i, align 8
  %set_memory_clock99.i = getelementptr inbounds %struct.radeon_asic, ptr %176, i32 0, i32 20, i32 8
  %177 = ptrtoint ptr %set_memory_clock99.i to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %set_memory_clock99.i, align 4
  call void %178(ptr noundef %rdev, i32 noundef %82) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %vpos.i.i250.i) #10
  %179 = ptrtoint ptr %vpos.i.i250.i to i32
  call void @__asan_store4_noabort(i32 %179)
  store i32 -1, ptr %vpos.i.i250.i, align 4, !annotation !208
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %hpos.i.i251.i) #10
  %180 = ptrtoint ptr %hpos.i.i251.i to i32
  call void @__asan_store4_noabort(i32 %180)
  store i32 -1, ptr %hpos.i.i251.i, align 4, !annotation !208
  %181 = ptrtoint ptr %num_crtc.i.i224.i to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load i32, ptr %num_crtc.i.i224.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %182)
  %cmp21.i.i253.i = icmp slt i32 %182, 1
  br i1 %cmp21.i.i253.i, label %radeon_pm_in_vbl.exit.thread.i254.i, label %for.body.lr.ph.i.i257.i

radeon_pm_in_vbl.exit.thread.i254.i:              ; preds = %radeon_pm_debug_check_in_vbl.exit249.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %hpos.i.i251.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %vpos.i.i250.i) #10
  br label %radeon_pm_debug_check_in_vbl.exit277.i

for.body.lr.ph.i.i257.i:                          ; preds = %radeon_pm_debug_check_in_vbl.exit249.i
  %ddev.i.i256.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 1
  br label %for.body.i.i263.i

for.body.i.i263.i:                                ; preds = %for.inc.i.i274.i.for.body.i.i263.i_crit_edge, %for.body.lr.ph.i.i257.i
  %in_vbl.0.off024.i.i258.i = phi i1 [ true, %for.body.lr.ph.i.i257.i ], [ %in_vbl.1.off0.i.i269.i, %for.inc.i.i274.i.for.body.i.i263.i_crit_edge ]
  %crtc.022.i.i259.i = phi i32 [ 0, %for.body.lr.ph.i.i257.i ], [ %inc.i.i270.i, %for.inc.i.i274.i.for.body.i.i263.i_crit_edge ]
  %183 = ptrtoint ptr %active_crtcs.i.i to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load i32, ptr %active_crtcs.i.i, align 4
  %shl.i.i260.i = shl nuw i32 1, %crtc.022.i.i259.i
  %and.i.i261.i = and i32 %184, %shl.i.i260.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i261.i)
  %tobool1.not.i.i262.i = icmp eq i32 %and.i.i261.i, 0
  br i1 %tobool1.not.i.i262.i, label %for.body.i.i263.i.for.inc.i.i274.i_crit_edge, label %if.then.i.i268.i

for.body.i.i263.i.for.inc.i.i274.i_crit_edge:     ; preds = %for.body.i.i263.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i.i274.i

if.then.i.i268.i:                                 ; preds = %for.body.i.i263.i
  call void @__sanitizer_cov_trace_pc() #12
  %185 = ptrtoint ptr %ddev.i.i256.i to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %ddev.i.i256.i, align 4
  %arrayidx.i.i264.i = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 44, i32 4, i32 %crtc.022.i.i259.i
  %187 = ptrtoint ptr %arrayidx.i.i264.i to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %arrayidx.i.i264.i, align 4
  %hwmode.i.i265.i = getelementptr inbounds %struct.drm_crtc, ptr %188, i32 0, i32 13
  %call.i.i266.i = call i32 @radeon_get_crtc_scanoutpos(ptr noundef %186, i32 noundef %crtc.022.i.i259.i, i32 noundef 1073741824, ptr noundef nonnull %vpos.i.i250.i, ptr noundef nonnull %hpos.i.i251.i, ptr noundef null, ptr noundef null, ptr noundef %hwmode.i.i265.i) #10
  %189 = and i32 %call.i.i266.i, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %189)
  %190 = icmp ne i32 %189, 1
  %spec.select.i.i267.i = select i1 %190, i1 %in_vbl.0.off024.i.i258.i, i1 false
  br label %for.inc.i.i274.i

for.inc.i.i274.i:                                 ; preds = %if.then.i.i268.i, %for.body.i.i263.i.for.inc.i.i274.i_crit_edge
  %in_vbl.1.off0.i.i269.i = phi i1 [ %in_vbl.0.off024.i.i258.i, %for.body.i.i263.i.for.inc.i.i274.i_crit_edge ], [ %spec.select.i.i267.i, %if.then.i.i268.i ]
  %inc.i.i270.i = add nuw nsw i32 %crtc.022.i.i259.i, 1
  %191 = ptrtoint ptr %num_crtc.i.i224.i to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load i32, ptr %num_crtc.i.i224.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i.i270.i, i32 %192)
  %cmp.i.i271.i = icmp sge i32 %inc.i.i270.i, %192
  %in_vbl.0.off0.not.i.i272.i = xor i1 %in_vbl.1.off0.i.i269.i, true
  %brmerge.i.i273.i = select i1 %cmp.i.i271.i, i1 true, i1 %in_vbl.0.off0.not.i.i272.i
  br i1 %brmerge.i.i273.i, label %radeon_pm_in_vbl.exit.i275.i, label %for.inc.i.i274.i.for.body.i.i263.i_crit_edge

for.inc.i.i274.i.for.body.i.i263.i_crit_edge:     ; preds = %for.inc.i.i274.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i263.i

radeon_pm_in_vbl.exit.i275.i:                     ; preds = %for.inc.i.i274.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %hpos.i.i251.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %vpos.i.i250.i) #10
  br i1 %in_vbl.1.off0.i.i269.i, label %radeon_pm_in_vbl.exit.i275.i.radeon_pm_debug_check_in_vbl.exit277.i_crit_edge, label %if.then.i276.i

radeon_pm_in_vbl.exit.i275.i.radeon_pm_debug_check_in_vbl.exit277.i_crit_edge: ; preds = %radeon_pm_in_vbl.exit.i275.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %radeon_pm_debug_check_in_vbl.exit277.i

if.then.i276.i:                                   ; preds = %radeon_pm_in_vbl.exit.i275.i
  call void @__sanitizer_cov_trace_pc() #12
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.9, i32 noundef 0, ptr noundef nonnull @.str.10) #10
  br label %radeon_pm_debug_check_in_vbl.exit277.i

radeon_pm_debug_check_in_vbl.exit277.i:           ; preds = %if.then.i276.i, %radeon_pm_in_vbl.exit.i275.i.radeon_pm_debug_check_in_vbl.exit277.i_crit_edge, %radeon_pm_in_vbl.exit.thread.i254.i
  %193 = ptrtoint ptr %current_mclk.i to i32
  call void @__asan_store4_noabort(i32 %193)
  store i32 %82, ptr %current_mclk.i, align 4
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.6, i32 noundef %82) #10
  br label %if.end103.i

if.end103.i:                                      ; preds = %radeon_pm_debug_check_in_vbl.exit277.i, %land.lhs.true92.i.if.end103.i_crit_edge, %if.end88.i.if.end103.i_crit_edge
  br i1 %cmp60.i, label %if.then105.i, label %if.end103.i.if.end109.i_crit_edge

if.end103.i.if.end109.i_crit_edge:                ; preds = %if.end103.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end109.i

if.then105.i:                                     ; preds = %if.end103.i
  call void @__sanitizer_cov_trace_pc() #12
  %194 = ptrtoint ptr %asic.i to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %asic.i, align 8
  %pm107.i = getelementptr inbounds %struct.radeon_asic, ptr %195, i32 0, i32 20
  %196 = ptrtoint ptr %pm107.i to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %pm107.i, align 4
  call void %197(ptr noundef %rdev) #10
  br label %if.end109.i

if.end109.i:                                      ; preds = %if.then105.i, %if.end103.i.if.end109.i_crit_edge
  %198 = ptrtoint ptr %asic.i to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %asic.i, align 8
  %finish.i = getelementptr inbounds %struct.radeon_asic, ptr %199, i32 0, i32 20, i32 2
  %200 = ptrtoint ptr %finish.i to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load ptr, ptr %finish.i, align 4
  call void %201(ptr noundef %rdev) #10
  %202 = ptrtoint ptr %requested_power_state_index8.i to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load i32, ptr %requested_power_state_index8.i, align 4
  %current_power_state_index115.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 20
  %204 = ptrtoint ptr %current_power_state_index115.i to i32
  call void @__asan_store4_noabort(i32 %204)
  store i32 %203, ptr %current_power_state_index115.i, align 4
  %205 = ptrtoint ptr %requested_clock_mode_index to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load i32, ptr %requested_clock_mode_index, align 8
  %207 = ptrtoint ptr %current_clock_mode_index to i32
  call void @__asan_store4_noabort(i32 %207)
  store i32 %206, ptr %current_clock_mode_index, align 8
  br label %radeon_set_power_state.exit

if.else120.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.7) #10
  br label %radeon_set_power_state.exit

radeon_set_power_state.exit:                      ; preds = %if.else120.i, %if.end109.i, %radeon_pm_in_vbl.exit.i.radeon_set_power_state.exit_crit_edge, %land.lhs.true.i.radeon_set_power_state.exit_crit_edge
  %208 = ptrtoint ptr %irq to i32
  call void @__asan_load1_noabort(i32 %208)
  %209 = load i8, ptr %irq, align 8, !range !207
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %209)
  %tobool45.not = icmp eq i8 %209, 0
  br i1 %tobool45.not, label %radeon_set_power_state.exit.if.end81_crit_edge, label %if.then46

radeon_set_power_state.exit.if.end81_crit_edge:   ; preds = %radeon_set_power_state.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end81

if.then46:                                        ; preds = %radeon_set_power_state.exit
  %ddev48 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 1
  %210 = ptrtoint ptr %ddev48 to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load ptr, ptr %ddev48, align 4
  %crtc_list50 = getelementptr inbounds %struct.drm_device, ptr %211, i32 0, i32 30, i32 20
  %212 = ptrtoint ptr %crtc_list50 to i32
  call void @__asan_load4_noabort(i32 %212)
  %.pn150 = load ptr, ptr %crtc_list50, align 4
  %cmp59.not153 = icmp eq ptr %.pn150, %crtc_list50
  br i1 %cmp59.not153, label %if.then46.if.end81_crit_edge, label %for.body61.lr.ph

if.then46.if.end81_crit_edge:                     ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end81

for.body61.lr.ph:                                 ; preds = %if.then46
  %req_vblank63 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 4
  br label %for.body61

for.body61:                                       ; preds = %if.end72.for.body61_crit_edge, %for.body61.lr.ph
  %.pn155 = phi ptr [ %.pn150, %for.body61.lr.ph ], [ %.pn, %if.end72.for.body61_crit_edge ]
  %i.2154 = phi i32 [ 0, %for.body61.lr.ph ], [ %inc73, %if.end72.for.body61_crit_edge ]
  %213 = ptrtoint ptr %req_vblank63 to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load i32, ptr %req_vblank63, align 4
  %shl64 = shl nuw i32 1, %i.2154
  %and65 = and i32 %214, %shl64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and65)
  %tobool66.not = icmp eq i32 %and65, 0
  br i1 %tobool66.not, label %for.body61.if.end72_crit_edge, label %if.then67

for.body61.if.end72_crit_edge:                    ; preds = %for.body61
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end72

if.then67:                                        ; preds = %for.body61
  call void @__sanitizer_cov_trace_pc() #12
  %crtc.1156 = getelementptr i8, ptr %.pn155, i32 -8
  %neg = xor i32 %shl64, -1
  %and71 = and i32 %214, %neg
  %215 = ptrtoint ptr %req_vblank63 to i32
  call void @__asan_store4_noabort(i32 %215)
  store i32 %and71, ptr %req_vblank63, align 4
  call void @drm_crtc_vblank_put(ptr noundef %crtc.1156) #10
  br label %if.end72

if.end72:                                         ; preds = %if.then67, %for.body61.if.end72_crit_edge
  %inc73 = add i32 %i.2154, 1
  %216 = ptrtoint ptr %.pn155 to i32
  call void @__asan_load4_noabort(i32 %216)
  %.pn = load ptr, ptr %.pn155, align 4
  %217 = ptrtoint ptr %ddev48 to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load ptr, ptr %ddev48, align 4
  %crtc_list58 = getelementptr inbounds %struct.drm_device, ptr %218, i32 0, i32 30, i32 20
  %cmp59.not = icmp eq ptr %.pn, %crtc_list58
  br i1 %cmp59.not, label %if.end72.if.end81_crit_edge, label %if.end72.for.body61_crit_edge

if.end72.for.body61_crit_edge:                    ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body61

if.end72.if.end81_crit_edge:                      ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end81

if.end81:                                         ; preds = %if.end72.if.end81_crit_edge, %if.then46.if.end81_crit_edge, %radeon_set_power_state.exit.if.end81_crit_edge
  call void @radeon_update_bandwidth_info(ptr noundef %rdev) #10
  %active_crtc_count = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 3
  %219 = ptrtoint ptr %active_crtc_count to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load i32, ptr %active_crtc_count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %220)
  %tobool83.not = icmp eq i32 %220, 0
  br i1 %tobool83.not, label %if.end81.if.end85_crit_edge, label %if.then84

if.end81.if.end85_crit_edge:                      ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end85

if.then84:                                        ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #12
  %asic = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 56
  %221 = ptrtoint ptr %asic to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load ptr, ptr %asic, align 8
  %display = getelementptr inbounds %struct.radeon_asic, ptr %222, i32 0, i32 16
  %223 = ptrtoint ptr %display to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load ptr, ptr %display, align 4
  call void %224(ptr noundef %rdev) #10
  br label %if.end85

if.end85:                                         ; preds = %if.then84, %if.end81.if.end85_crit_edge
  %dynpm_planned_action = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 37
  %225 = ptrtoint ptr %dynpm_planned_action to i32
  call void @__asan_store4_noabort(i32 %225)
  store i32 0, ptr %dynpm_planned_action, align 8
  call void @mutex_unlock(ptr noundef %ring_lock) #10
  call void @up_write(ptr noundef %mclk_lock) #10
  br label %cleanup90

cleanup90:                                        ; preds = %if.end85, %cleanup, %land.lhs.true.cleanup90_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @radeon_dpm_enable_uvd(ptr noundef %rdev, i1 noundef zeroext %enable) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %asic = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 56
  %0 = ptrtoint ptr %asic to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %asic, align 8
  %powergate_uvd = getelementptr inbounds %struct.radeon_asic, ptr %1, i32 0, i32 21, i32 16
  %2 = ptrtoint ptr %powergate_uvd to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %powergate_uvd, align 4
  %tobool.not = icmp eq ptr %3, null
  %pm24 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58
  tail call void @mutex_lock_nested(ptr noundef %pm24, i32 noundef 0) #10
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %sd = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 37
  %4 = ptrtoint ptr %sd to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %sd, align 4
  %hd = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 38
  %6 = ptrtoint ptr %hd to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %hd, align 4
  %8 = or i32 %7, %5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %9 = icmp ne i32 %8, 0
  %10 = or i1 %9, %enable
  %11 = ptrtoint ptr %asic to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %asic, align 8
  %powergate_uvd18 = getelementptr inbounds %struct.radeon_asic, ptr %12, i32 0, i32 21, i32 16
  %13 = ptrtoint ptr %powergate_uvd18 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %powergate_uvd18, align 4
  %lnot = xor i1 %10, true
  tail call void %14(ptr noundef %rdev, i1 noundef zeroext %lnot) #10
  tail call void @mutex_unlock(ptr noundef %pm24) #10
  br label %if.end40

if.else:                                          ; preds = %entry
  %uvd_active = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 33
  br i1 %enable, label %if.then23, label %if.else32

if.then23:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %15 = ptrtoint ptr %uvd_active to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 1, ptr %uvd_active, align 1
  %state = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 8
  %16 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 5, ptr %state, align 4
  br label %if.end

if.else32:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %17 = ptrtoint ptr %uvd_active to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 0, ptr %uvd_active, align 1
  br label %if.end

if.end:                                           ; preds = %if.else32, %if.then23
  tail call void @mutex_unlock(ptr noundef %pm24) #10
  tail call void @radeon_pm_compute_clocks(ptr noundef %rdev)
  br label %if.end40

if.end40:                                         ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @radeon_pm_compute_clocks(ptr noundef %rdev) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %pm_method = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 34
  %0 = ptrtoint ptr %pm_method to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %pm_method, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp = icmp eq i32 %1, 2
  %ddev1.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 1
  %2 = ptrtoint ptr %ddev1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ddev1.i, align 4
  %pm.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %dpm_enabled.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 50
  %4 = ptrtoint ptr %dpm_enabled.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %dpm_enabled.i, align 8, !range !207
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not.i = icmp eq i8 %5, 0
  br i1 %tobool.not.i, label %if.then.if.end_crit_edge, label %if.end.i

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.end.i:                                         ; preds = %if.then
  tail call void @mutex_lock_nested(ptr noundef %pm.i, i32 noundef 0) #10
  %new_active_crtcs.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 14
  %6 = ptrtoint ptr %new_active_crtcs.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %new_active_crtcs.i, align 4
  %new_active_crtc_count.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 15
  %7 = ptrtoint ptr %new_active_crtc_count.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %new_active_crtc_count.i, align 4
  %high_pixelclock_count.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 16
  %8 = ptrtoint ptr %high_pixelclock_count.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %high_pixelclock_count.i, align 4
  %num_crtc.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 91
  %9 = ptrtoint ptr %num_crtc.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %num_crtc.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool8.not.i = icmp eq i32 %10, 0
  br i1 %tobool8.not.i, label %if.end.i.if.end44.i_crit_edge, label %land.lhs.true.i

if.end.i.if.end44.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end44.i

land.lhs.true.i:                                  ; preds = %if.end.i
  %mode_config_initialized.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 44, i32 3
  %11 = ptrtoint ptr %mode_config_initialized.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %mode_config_initialized.i, align 4, !range !207
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool9.not.i = icmp eq i8 %12, 0
  br i1 %tobool9.not.i, label %land.lhs.true.i.if.end44.i_crit_edge, label %if.then10.i

land.lhs.true.i.if.end44.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end44.i

if.then10.i:                                      ; preds = %land.lhs.true.i
  %crtc_list.i = getelementptr inbounds %struct.drm_device, ptr %3, i32 0, i32 30, i32 20
  %13 = ptrtoint ptr %crtc_list.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %.pn82.i = load ptr, ptr %crtc_list.i, align 4
  %cmp.not83.i = icmp eq ptr %.pn82.i, %crtc_list.i
  br i1 %cmp.not83.i, label %if.then10.i.if.end44.i_crit_edge, label %if.then10.i.for.body.i_crit_edge

if.then10.i.for.body.i_crit_edge:                 ; preds = %if.then10.i
  br label %for.body.i

if.then10.i.if.end44.i_crit_edge:                 ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end44.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.then10.i.for.body.i_crit_edge
  %.pn84.i = phi ptr [ %.pn.i, %for.inc.i.for.body.i_crit_edge ], [ %.pn82.i, %if.then10.i.for.body.i_crit_edge ]
  %enabled.i = getelementptr i8, ptr %.pn84.i, i32 160
  %14 = ptrtoint ptr %enabled.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %enabled.i, align 8, !range !207
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool16.not.i = icmp eq i8 %15, 0
  br i1 %tobool16.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.then17.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

if.then17.i:                                      ; preds = %for.body.i
  %crtc_id.i = getelementptr i8, ptr %.pn84.i, i32 984
  %16 = ptrtoint ptr %crtc_id.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %crtc_id.i, align 8
  %shl.i = shl nuw i32 1, %17
  %18 = ptrtoint ptr %new_active_crtcs.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %new_active_crtcs.i, align 4
  %or.i = or i32 %19, %shl.i
  store i32 %or.i, ptr %new_active_crtcs.i, align 4
  %20 = ptrtoint ptr %new_active_crtc_count.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %new_active_crtc_count.i, align 4
  %inc.i = add i32 %21, 1
  store i32 %inc.i, ptr %new_active_crtc_count.i, align 4
  %connector.i = getelementptr i8, ptr %.pn84.i, i32 1232
  %22 = ptrtoint ptr %connector.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %connector.i, align 8
  %tobool24.not.i = icmp eq ptr %23, null
  br i1 %tobool24.not.i, label %if.then17.i.for.inc.i_crit_edge, label %if.end26.i

if.then17.i.for.inc.i_crit_edge:                  ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

if.end26.i:                                       ; preds = %if.then17.i
  %pixelclock_for_modeset.i = getelementptr inbounds %struct.radeon_connector, ptr %23, i32 0, i32 17
  %24 = ptrtoint ptr %pixelclock_for_modeset.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %pixelclock_for_modeset.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 297000, i32 %25)
  %cmp31.i = icmp sgt i32 %25, 297000
  br i1 %cmp31.i, label %if.then32.i, label %if.end26.i.for.inc.i_crit_edge

if.end26.i.for.inc.i_crit_edge:                   ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

if.then32.i:                                      ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #12
  %26 = ptrtoint ptr %high_pixelclock_count.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %high_pixelclock_count.i, align 4
  %inc36.i = add i32 %27, 1
  store i32 %inc36.i, ptr %high_pixelclock_count.i, align 4
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then32.i, %if.end26.i.for.inc.i_crit_edge, %if.then17.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %28 = ptrtoint ptr %.pn84.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %.pn.i = load ptr, ptr %.pn84.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %crtc_list.i
  br i1 %cmp.not.i, label %for.inc.i.if.end44.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.inc.i.if.end44.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end44.i

if.end44.i:                                       ; preds = %for.inc.i.if.end44.i_crit_edge, %if.then10.i.if.end44.i_crit_edge, %land.lhs.true.i.if.end44.i_crit_edge, %if.end.i.if.end44.i_crit_edge
  %call.i = tail call i32 @power_supply_is_system_supplied() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp45.i = icmp sgt i32 %call.i, 0
  %spec.select.i = zext i1 %cmp45.i to i8
  %29 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 31
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %spec.select.i, ptr %29, align 1
  %31 = ptrtoint ptr %new_active_crtc_count.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %new_active_crtc_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %32)
  %cmp.i.i.i = icmp slt i32 %32, 2
  br i1 %cmp.i.i.i, label %land.lhs.true.i.i.i, label %if.end44.i.radeon_dpm_single_display.exit.i.i_crit_edge

if.end44.i.radeon_dpm_single_display.exit.i.i_crit_edge: ; preds = %if.end44.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %radeon_dpm_single_display.exit.i.i

land.lhs.true.i.i.i:                              ; preds = %if.end44.i
  %asic.i.i.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 56
  %33 = ptrtoint ptr %asic.i.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %asic.i.i.i, align 8
  %vblank_too_short.i.i.i = getelementptr inbounds %struct.radeon_asic, ptr %34, i32 0, i32 21, i32 15
  %35 = ptrtoint ptr %vblank_too_short.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %vblank_too_short.i.i.i, align 4
  %tobool3.not.i.i.i = icmp eq ptr %36, null
  br i1 %tobool3.not.i.i.i, label %land.lhs.true.i.i.i.land.lhs.true10.i.i.i_crit_edge, label %if.end8.i.i.i

land.lhs.true.i.i.i.land.lhs.true10.i.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true10.i.i.i

if.end8.i.i.i:                                    ; preds = %land.lhs.true.i.i.i
  %call.i.i.i = tail call zeroext i1 %36(ptr noundef %rdev) #10
  br i1 %call.i.i.i, label %if.end8.i.i.i.radeon_dpm_single_display.exit.i.i_crit_edge, label %if.end8.i.i.i.land.lhs.true10.i.i.i_crit_edge

if.end8.i.i.i.land.lhs.true10.i.i.i_crit_edge:    ; preds = %if.end8.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true10.i.i.i

if.end8.i.i.i.radeon_dpm_single_display.exit.i.i_crit_edge: ; preds = %if.end8.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %radeon_dpm_single_display.exit.i.i

land.lhs.true10.i.i.i:                            ; preds = %if.end8.i.i.i.land.lhs.true10.i.i.i_crit_edge, %land.lhs.true.i.i.i.land.lhs.true10.i.i.i_crit_edge
  %call11.i.i.i = tail call i32 @r600_dpm_get_vrefresh(ptr noundef %rdev) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 120, i32 %call11.i.i.i)
  %cmp12.i.i.i = icmp ult i32 %call11.i.i.i, 120
  br label %radeon_dpm_single_display.exit.i.i

radeon_dpm_single_display.exit.i.i:               ; preds = %land.lhs.true10.i.i.i, %if.end8.i.i.i.radeon_dpm_single_display.exit.i.i_crit_edge, %if.end44.i.radeon_dpm_single_display.exit.i.i_crit_edge
  %single_display.1.shrunk.i.i.i = phi i1 [ false, %if.end8.i.i.i.radeon_dpm_single_display.exit.i.i_crit_edge ], [ %cmp12.i.i.i, %land.lhs.true10.i.i.i ], [ false, %if.end44.i.radeon_dpm_single_display.exit.i.i_crit_edge ]
  %frombool.i.i = zext i1 %single_display.1.shrunk.i.i.i to i8
  %37 = ptrtoint ptr %dpm_enabled.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %dpm_enabled.i, align 8, !range !207
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %tobool.not.i.i = icmp eq i8 %38, 0
  br i1 %tobool.not.i.i, label %radeon_dpm_single_display.exit.i.i.if.end.sink.split_crit_edge, label %if.end.i.i

radeon_dpm_single_display.exit.i.i.if.end.sink.split_crit_edge: ; preds = %radeon_dpm_single_display.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.sink.split

if.end.i.i:                                       ; preds = %radeon_dpm_single_display.exit.i.i
  %user_state.i.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 9
  %39 = ptrtoint ptr %user_state.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %user_state.i.i, align 4
  %state.i.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 8
  %41 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %state.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %40, i32 %42)
  %cmp.not.i.i = icmp eq i32 %40, %42
  br i1 %cmp.not.i.i, label %if.end.i.i.if.end19.i.i_crit_edge, label %if.then4.i.i

if.end.i.i.if.end19.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end19.i.i

if.then4.i.i:                                     ; preds = %if.end.i.i
  %thermal_active.i.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 32
  %43 = ptrtoint ptr %thermal_active.i.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %thermal_active.i.i, align 4, !range !207
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %44)
  %tobool7.not.i.i = icmp eq i8 %44, 0
  br i1 %tobool7.not.i.i, label %land.lhs.true.i.i, label %if.then4.i.i.if.end19.i.i_crit_edge

if.then4.i.i.if.end19.i.i_crit_edge:              ; preds = %if.then4.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end19.i.i

land.lhs.true.i.i:                                ; preds = %if.then4.i.i
  %uvd_active.i.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 33
  %45 = ptrtoint ptr %uvd_active.i.i to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %uvd_active.i.i, align 1, !range !207
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %46)
  %tobool10.not.i.i = icmp eq i8 %46, 0
  br i1 %tobool10.not.i.i, label %if.then11.i.i, label %land.lhs.true.i.i.if.end19.i.i_crit_edge

land.lhs.true.i.i.if.end19.i.i_crit_edge:         ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end19.i.i

if.then11.i.i:                                    ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %47 = ptrtoint ptr %state.i.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %40, ptr %state.i.i, align 4
  br label %if.end19.i.i

if.end19.i.i:                                     ; preds = %if.then11.i.i, %land.lhs.true.i.i.if.end19.i.i_crit_edge, %if.then4.i.i.if.end19.i.i_crit_edge, %if.end.i.i.if.end19.i.i_crit_edge
  %48 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %state.i.i, align 4
  %50 = ptrtoint ptr %new_active_crtc_count.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %new_active_crtc_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %51)
  %cmp.i.i.i.i = icmp slt i32 %51, 2
  br i1 %cmp.i.i.i.i, label %land.lhs.true.i.i.i.i, label %if.end19.i.i.radeon_dpm_single_display.exit.i.i.i_crit_edge

if.end19.i.i.radeon_dpm_single_display.exit.i.i.i_crit_edge: ; preds = %if.end19.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %radeon_dpm_single_display.exit.i.i.i

land.lhs.true.i.i.i.i:                            ; preds = %if.end19.i.i
  %asic.i.i.i.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 56
  %52 = ptrtoint ptr %asic.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %asic.i.i.i.i, align 8
  %vblank_too_short.i.i.i.i = getelementptr inbounds %struct.radeon_asic, ptr %53, i32 0, i32 21, i32 15
  %54 = ptrtoint ptr %vblank_too_short.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %vblank_too_short.i.i.i.i, align 4
  %tobool3.not.i.i.i.i = icmp eq ptr %55, null
  br i1 %tobool3.not.i.i.i.i, label %land.lhs.true.i.i.i.i.land.lhs.true10.i.i.i.i_crit_edge, label %if.end8.i.i.i.i

land.lhs.true.i.i.i.i.land.lhs.true10.i.i.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true10.i.i.i.i

if.end8.i.i.i.i:                                  ; preds = %land.lhs.true.i.i.i.i
  %call.i.i.i.i = tail call zeroext i1 %55(ptr noundef %rdev) #10
  br i1 %call.i.i.i.i, label %if.end8.i.i.i.i.radeon_dpm_single_display.exit.i.i.i_crit_edge, label %if.end8.i.i.i.i.land.lhs.true10.i.i.i.i_crit_edge

if.end8.i.i.i.i.land.lhs.true10.i.i.i.i_crit_edge: ; preds = %if.end8.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true10.i.i.i.i

if.end8.i.i.i.i.radeon_dpm_single_display.exit.i.i.i_crit_edge: ; preds = %if.end8.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %radeon_dpm_single_display.exit.i.i.i

land.lhs.true10.i.i.i.i:                          ; preds = %if.end8.i.i.i.i.land.lhs.true10.i.i.i.i_crit_edge, %land.lhs.true.i.i.i.i.land.lhs.true10.i.i.i.i_crit_edge
  %call11.i.i.i.i = tail call i32 @r600_dpm_get_vrefresh(ptr noundef %rdev) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 120, i32 %call11.i.i.i.i)
  %cmp12.i.i.i.i = icmp ult i32 %call11.i.i.i.i, 120
  br label %radeon_dpm_single_display.exit.i.i.i

radeon_dpm_single_display.exit.i.i.i:             ; preds = %land.lhs.true10.i.i.i.i, %if.end8.i.i.i.i.radeon_dpm_single_display.exit.i.i.i_crit_edge, %if.end19.i.i.radeon_dpm_single_display.exit.i.i.i_crit_edge
  %single_display.1.shrunk.i.i.i.i = phi i1 [ false, %if.end8.i.i.i.i.radeon_dpm_single_display.exit.i.i.i_crit_edge ], [ %cmp12.i.i.i.i, %land.lhs.true10.i.i.i.i ], [ false, %if.end19.i.i.radeon_dpm_single_display.exit.i.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %49)
  %cmp.i321.i.i = icmp eq i32 %49, 4
  %spec.store.select.i.i.i = select i1 %cmp.i321.i.i, i32 14, i32 %49
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %spec.store.select.i.i.i)
  %cmp1.i.i.i = icmp eq i32 %spec.store.select.i.i.i, 3
  %spec.store.select121.i.i.i = select i1 %cmp1.i.i.i, i32 4, i32 %spec.store.select.i.i.i
  %num_ps.i.i.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 1
  %56 = ptrtoint ptr %num_ps.i.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %num_ps.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %cmp4168.i.i.i = icmp sgt i32 %57, 0
  %dpm.i.i.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52
  %uvd_ps.i.i.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 5
  br label %restart_search.i.i.i

restart_search.i.i.i:                             ; preds = %restart_search.i.i.i.backedge, %radeon_dpm_single_display.exit.i.i.i
  %dpm_state.addr.0.i.i.i = phi i32 [ %spec.store.select121.i.i.i, %radeon_dpm_single_display.exit.i.i.i ], [ %dpm_state.addr.0.i.i.i.be, %restart_search.i.i.i.backedge ]
  br i1 %cmp4168.i.i.i, label %for.body.lr.ph.i.i.i, label %restart_search.i.i.i.for.end.i.i.i_crit_edge

restart_search.i.i.i.for.end.i.i.i_crit_edge:     ; preds = %restart_search.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i.i.i

for.body.lr.ph.i.i.i:                             ; preds = %restart_search.i.i.i
  %58 = ptrtoint ptr %dpm.i.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %dpm.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %dpm_state.addr.0.i.i.i)
  %cond.i.i.i = icmp eq i32 %dpm_state.addr.0.i.i.i, 10
  br i1 %cond.i.i.i, label %sw.bb75.i.i.i, label %for.body.lr.ph.i.i.i.for.body.i.i.i_crit_edge

for.body.lr.ph.i.i.i.for.body.i.i.i_crit_edge:    ; preds = %for.body.lr.ph.i.i.i
  br label %for.body.i.i.i

for.body.i.i.i:                                   ; preds = %for.inc.i.i.i.for.body.i.i.i_crit_edge, %for.body.lr.ph.i.i.i.for.body.i.i.i_crit_edge
  %i.0169.i.i.i = phi i32 [ %inc.i.i.i, %for.inc.i.i.i.for.body.i.i.i_crit_edge ], [ 0, %for.body.lr.ph.i.i.i.for.body.i.i.i_crit_edge ]
  %arrayidx.i.i.i = getelementptr %struct.radeon_ps, ptr %59, i32 %i.0169.i.i.i
  %class.i.i.i = getelementptr %struct.radeon_ps, ptr %59, i32 %i.0169.i.i.i, i32 1
  %60 = ptrtoint ptr %class.i.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %class.i.i.i, align 4
  %and.i.i.i = and i32 %61, 7
  %62 = zext i32 %dpm_state.addr.0.i.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %62, ptr @__sancov_gen_cov_switch_values.88)
  switch i32 %dpm_state.addr.0.i.i.i, label %for.body.i.i.i.for.inc.i.i.i_crit_edge [
    i32 2, label %sw.bb.i.i.i
    i32 3, label %sw.bb17.i.i.i
    i32 4, label %sw.bb30.i.i.i
    i32 5, label %sw.bb43.i.i.i
    i32 6, label %sw.bb52.i.i.i
    i32 7, label %sw.bb58.i.i.i
    i32 8, label %sw.bb64.i.i.i
    i32 9, label %sw.bb70.i.i.i
    i32 14, label %sw.bb96.i.i.i
    i32 11, label %sw.bb78.i.i.i
    i32 12, label %sw.bb84.i.i.i
    i32 13, label %sw.bb90.i.i.i
  ]

for.body.i.i.i.for.inc.i.i.i_crit_edge:           ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i.i.i

sw.bb.i.i.i:                                      ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and.i.i.i)
  %cmp8.i.i.i = icmp eq i32 %and.i.i.i, 1
  br i1 %cmp8.i.i.i, label %if.then9.i.i.i, label %sw.bb.i.i.i.for.inc.i.i.i_crit_edge

sw.bb.i.i.i.for.inc.i.i.i_crit_edge:              ; preds = %sw.bb.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i.i.i

if.then9.i.i.i:                                   ; preds = %sw.bb.i.i.i
  %63 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %arrayidx.i.i.i, align 4
  %and10.i.i.i = and i32 %64, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and10.i.i.i, 0
  %brmerge.i.i.i = select i1 %tobool.not.i.i.i, i1 true, i1 %single_display.1.shrunk.i.i.i.i
  br i1 %brmerge.i.i.i, label %if.then9.i.i.i.radeon_dpm_pick_power_state.exit.i.i_crit_edge, label %if.then9.i.i.i.for.inc.i.i.i_crit_edge

if.then9.i.i.i.for.inc.i.i.i_crit_edge:           ; preds = %if.then9.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i.i.i

if.then9.i.i.i.radeon_dpm_pick_power_state.exit.i.i_crit_edge: ; preds = %if.then9.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %radeon_dpm_pick_power_state.exit.i.i

sw.bb17.i.i.i:                                    ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and.i.i.i)
  %cmp18.i.i.i = icmp eq i32 %and.i.i.i, 3
  br i1 %cmp18.i.i.i, label %if.then19.i.i.i, label %sw.bb17.i.i.i.for.inc.i.i.i_crit_edge

sw.bb17.i.i.i.for.inc.i.i.i_crit_edge:            ; preds = %sw.bb17.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i.i.i

if.then19.i.i.i:                                  ; preds = %sw.bb17.i.i.i
  %65 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %arrayidx.i.i.i, align 4
  %and21.i.i.i = and i32 %66, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21.i.i.i)
  %tobool22.not.i.i.i = icmp eq i32 %and21.i.i.i, 0
  %brmerge164.i.i.i = select i1 %tobool22.not.i.i.i, i1 true, i1 %single_display.1.shrunk.i.i.i.i
  br i1 %brmerge164.i.i.i, label %if.then19.i.i.i.radeon_dpm_pick_power_state.exit.i.i_crit_edge, label %if.then19.i.i.i.for.inc.i.i.i_crit_edge

if.then19.i.i.i.for.inc.i.i.i_crit_edge:          ; preds = %if.then19.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i.i.i

if.then19.i.i.i.radeon_dpm_pick_power_state.exit.i.i_crit_edge: ; preds = %if.then19.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %radeon_dpm_pick_power_state.exit.i.i

sw.bb30.i.i.i:                                    ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %and.i.i.i)
  %cmp31.i.i.i = icmp eq i32 %and.i.i.i, 5
  br i1 %cmp31.i.i.i, label %if.then32.i.i.i, label %sw.bb30.i.i.i.for.inc.i.i.i_crit_edge

sw.bb30.i.i.i.for.inc.i.i.i_crit_edge:            ; preds = %sw.bb30.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i.i.i

if.then32.i.i.i:                                  ; preds = %sw.bb30.i.i.i
  %67 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %arrayidx.i.i.i, align 4
  %and34.i.i.i = and i32 %68, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and34.i.i.i)
  %tobool35.not.i.i.i = icmp eq i32 %and34.i.i.i, 0
  %brmerge165.i.i.i = select i1 %tobool35.not.i.i.i, i1 true, i1 %single_display.1.shrunk.i.i.i.i
  br i1 %brmerge165.i.i.i, label %if.then32.i.i.i.radeon_dpm_pick_power_state.exit.i.i_crit_edge, label %if.then32.i.i.i.for.inc.i.i.i_crit_edge

if.then32.i.i.i.for.inc.i.i.i_crit_edge:          ; preds = %if.then32.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i.i.i

if.then32.i.i.i.radeon_dpm_pick_power_state.exit.i.i_crit_edge: ; preds = %if.then32.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %radeon_dpm_pick_power_state.exit.i.i

sw.bb43.i.i.i:                                    ; preds = %for.body.i.i.i
  %69 = ptrtoint ptr %uvd_ps.i.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %uvd_ps.i.i.i, align 4
  %tobool46.not.i.i.i = icmp eq ptr %70, null
  br i1 %tobool46.not.i.i.i, label %sw.bb43.i.i.i.for.inc.i.i.i_crit_edge, label %sw.bb43.i.i.i.if.then25.i.i_crit_edge

sw.bb43.i.i.i.if.then25.i.i_crit_edge:            ; preds = %sw.bb43.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then25.i.i

sw.bb43.i.i.i.for.inc.i.i.i_crit_edge:            ; preds = %sw.bb43.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i.i.i

sw.bb52.i.i.i:                                    ; preds = %for.body.i.i.i
  %and54.i.i.i = and i32 %61, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and54.i.i.i)
  %tobool55.not.i.i.i = icmp eq i32 %and54.i.i.i, 0
  br i1 %tobool55.not.i.i.i, label %sw.bb52.i.i.i.for.inc.i.i.i_crit_edge, label %sw.bb52.i.i.i.radeon_dpm_pick_power_state.exit.i.i_crit_edge

sw.bb52.i.i.i.radeon_dpm_pick_power_state.exit.i.i_crit_edge: ; preds = %sw.bb52.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %radeon_dpm_pick_power_state.exit.i.i

sw.bb52.i.i.i.for.inc.i.i.i_crit_edge:            ; preds = %sw.bb52.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i.i.i

sw.bb58.i.i.i:                                    ; preds = %for.body.i.i.i
  %and60.i.i.i = and i32 %61, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and60.i.i.i)
  %tobool61.not.i.i.i = icmp eq i32 %and60.i.i.i, 0
  br i1 %tobool61.not.i.i.i, label %sw.bb58.i.i.i.for.inc.i.i.i_crit_edge, label %sw.bb58.i.i.i.radeon_dpm_pick_power_state.exit.i.i_crit_edge

sw.bb58.i.i.i.radeon_dpm_pick_power_state.exit.i.i_crit_edge: ; preds = %sw.bb58.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %radeon_dpm_pick_power_state.exit.i.i

sw.bb58.i.i.i.for.inc.i.i.i_crit_edge:            ; preds = %sw.bb58.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i.i.i

sw.bb64.i.i.i:                                    ; preds = %for.body.i.i.i
  %and66.i.i.i = and i32 %61, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and66.i.i.i)
  %tobool67.not.i.i.i = icmp eq i32 %and66.i.i.i, 0
  br i1 %tobool67.not.i.i.i, label %sw.bb64.i.i.i.for.inc.i.i.i_crit_edge, label %sw.bb64.i.i.i.radeon_dpm_pick_power_state.exit.i.i_crit_edge

sw.bb64.i.i.i.radeon_dpm_pick_power_state.exit.i.i_crit_edge: ; preds = %sw.bb64.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %radeon_dpm_pick_power_state.exit.i.i

sw.bb64.i.i.i.for.inc.i.i.i_crit_edge:            ; preds = %sw.bb64.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i.i.i

sw.bb70.i.i.i:                                    ; preds = %for.body.i.i.i
  %class2.i.i.i = getelementptr %struct.radeon_ps, ptr %59, i32 %i.0169.i.i.i, i32 2
  %71 = ptrtoint ptr %class2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %class2.i.i.i, align 4
  %and71.i.i.i = and i32 %72, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and71.i.i.i)
  %tobool72.not.i.i.i = icmp eq i32 %and71.i.i.i, 0
  br i1 %tobool72.not.i.i.i, label %sw.bb70.i.i.i.for.inc.i.i.i_crit_edge, label %sw.bb70.i.i.i.radeon_dpm_pick_power_state.exit.i.i_crit_edge

sw.bb70.i.i.i.radeon_dpm_pick_power_state.exit.i.i_crit_edge: ; preds = %sw.bb70.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %radeon_dpm_pick_power_state.exit.i.i

sw.bb70.i.i.i.for.inc.i.i.i_crit_edge:            ; preds = %sw.bb70.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i.i.i

sw.bb75.i.i.i:                                    ; preds = %for.body.lr.ph.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %boot_ps.i.i.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 4
  %73 = ptrtoint ptr %boot_ps.i.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %boot_ps.i.i.i, align 4
  br label %radeon_dpm_pick_power_state.exit.i.i

sw.bb78.i.i.i:                                    ; preds = %for.body.i.i.i
  %and80.i.i.i = and i32 %61, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and80.i.i.i)
  %tobool81.not.i.i.i = icmp eq i32 %and80.i.i.i, 0
  br i1 %tobool81.not.i.i.i, label %sw.bb78.i.i.i.for.inc.i.i.i_crit_edge, label %sw.bb78.i.i.i.radeon_dpm_pick_power_state.exit.i.i_crit_edge

sw.bb78.i.i.i.radeon_dpm_pick_power_state.exit.i.i_crit_edge: ; preds = %sw.bb78.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %radeon_dpm_pick_power_state.exit.i.i

sw.bb78.i.i.i.for.inc.i.i.i_crit_edge:            ; preds = %sw.bb78.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i.i.i

sw.bb84.i.i.i:                                    ; preds = %for.body.i.i.i
  %and86.i.i.i = and i32 %61, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and86.i.i.i)
  %tobool87.not.i.i.i = icmp eq i32 %and86.i.i.i, 0
  br i1 %tobool87.not.i.i.i, label %sw.bb84.i.i.i.for.inc.i.i.i_crit_edge, label %sw.bb84.i.i.i.radeon_dpm_pick_power_state.exit.i.i_crit_edge

sw.bb84.i.i.i.radeon_dpm_pick_power_state.exit.i.i_crit_edge: ; preds = %sw.bb84.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %radeon_dpm_pick_power_state.exit.i.i

sw.bb84.i.i.i.for.inc.i.i.i_crit_edge:            ; preds = %sw.bb84.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i.i.i

sw.bb90.i.i.i:                                    ; preds = %for.body.i.i.i
  %class291.i.i.i = getelementptr %struct.radeon_ps, ptr %59, i32 %i.0169.i.i.i, i32 2
  %75 = ptrtoint ptr %class291.i.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %class291.i.i.i, align 4
  %and92.i.i.i = and i32 %76, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and92.i.i.i)
  %tobool93.not.i.i.i = icmp eq i32 %and92.i.i.i, 0
  br i1 %tobool93.not.i.i.i, label %sw.bb90.i.i.i.for.inc.i.i.i_crit_edge, label %sw.bb90.i.i.i.radeon_dpm_pick_power_state.exit.i.i_crit_edge

sw.bb90.i.i.i.radeon_dpm_pick_power_state.exit.i.i_crit_edge: ; preds = %sw.bb90.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %radeon_dpm_pick_power_state.exit.i.i

sw.bb90.i.i.i.for.inc.i.i.i_crit_edge:            ; preds = %sw.bb90.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i.i.i

sw.bb96.i.i.i:                                    ; preds = %for.body.i.i.i
  %and98.i.i.i = and i32 %61, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and98.i.i.i)
  %tobool99.not.i.i.i = icmp eq i32 %and98.i.i.i, 0
  br i1 %tobool99.not.i.i.i, label %sw.bb96.i.i.i.for.inc.i.i.i_crit_edge, label %sw.bb96.i.i.i.radeon_dpm_pick_power_state.exit.i.i_crit_edge

sw.bb96.i.i.i.radeon_dpm_pick_power_state.exit.i.i_crit_edge: ; preds = %sw.bb96.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %radeon_dpm_pick_power_state.exit.i.i

sw.bb96.i.i.i.for.inc.i.i.i_crit_edge:            ; preds = %sw.bb96.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i.i.i

for.inc.i.i.i:                                    ; preds = %sw.bb96.i.i.i.for.inc.i.i.i_crit_edge, %sw.bb90.i.i.i.for.inc.i.i.i_crit_edge, %sw.bb84.i.i.i.for.inc.i.i.i_crit_edge, %sw.bb78.i.i.i.for.inc.i.i.i_crit_edge, %sw.bb70.i.i.i.for.inc.i.i.i_crit_edge, %sw.bb64.i.i.i.for.inc.i.i.i_crit_edge, %sw.bb58.i.i.i.for.inc.i.i.i_crit_edge, %sw.bb52.i.i.i.for.inc.i.i.i_crit_edge, %sw.bb43.i.i.i.for.inc.i.i.i_crit_edge, %if.then32.i.i.i.for.inc.i.i.i_crit_edge, %sw.bb30.i.i.i.for.inc.i.i.i_crit_edge, %if.then19.i.i.i.for.inc.i.i.i_crit_edge, %sw.bb17.i.i.i.for.inc.i.i.i_crit_edge, %if.then9.i.i.i.for.inc.i.i.i_crit_edge, %sw.bb.i.i.i.for.inc.i.i.i_crit_edge, %for.body.i.i.i.for.inc.i.i.i_crit_edge
  %inc.i.i.i = add nuw nsw i32 %i.0169.i.i.i, 1
  %exitcond.not.i.i.i = icmp eq i32 %inc.i.i.i, %57
  br i1 %exitcond.not.i.i.i, label %for.inc.i.i.i.for.end.i.i.i_crit_edge, label %for.inc.i.i.i.for.body.i.i.i_crit_edge

for.inc.i.i.i.for.body.i.i.i_crit_edge:           ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i.i

for.inc.i.i.i.for.end.i.i.i_crit_edge:            ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i.i.i

for.end.i.i.i:                                    ; preds = %for.inc.i.i.i.for.end.i.i.i_crit_edge, %restart_search.i.i.i.for.end.i.i.i_crit_edge
  %77 = zext i32 %dpm_state.addr.0.i.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %77, ptr @__sancov_gen_cov_switch_values.89)
  switch i32 %dpm_state.addr.0.i.i.i, label %for.end.i.i.i.if.end.sink.split_crit_edge [
    i32 6, label %for.end.i.i.i.restart_search.i.i.i.backedge_crit_edge
    i32 7, label %for.end.i.i.i.sw.bb103.i.i.i_crit_edge
    i32 8, label %for.end.i.i.i.sw.bb103.i.i.i_crit_edge45
    i32 9, label %for.end.i.i.i.sw.bb103.i.i.i_crit_edge46
    i32 11, label %sw.bb113.i.i.i
    i32 12, label %sw.bb114.i.i.i
    i32 2, label %for.end.i.i.i.sw.bb115.i.i.i_crit_edge
    i32 3, label %for.end.i.i.i.sw.bb115.i.i.i_crit_edge47
    i32 14, label %for.end.i.i.i.sw.bb115.i.i.i_crit_edge48
  ]

for.end.i.i.i.sw.bb115.i.i.i_crit_edge48:         ; preds = %for.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb115.i.i.i

for.end.i.i.i.sw.bb115.i.i.i_crit_edge47:         ; preds = %for.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb115.i.i.i

for.end.i.i.i.sw.bb115.i.i.i_crit_edge:           ; preds = %for.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb115.i.i.i

for.end.i.i.i.sw.bb103.i.i.i_crit_edge46:         ; preds = %for.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb103.i.i.i

for.end.i.i.i.sw.bb103.i.i.i_crit_edge45:         ; preds = %for.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb103.i.i.i

for.end.i.i.i.sw.bb103.i.i.i_crit_edge:           ; preds = %for.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb103.i.i.i

for.end.i.i.i.restart_search.i.i.i.backedge_crit_edge: ; preds = %for.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %restart_search.i.i.i.backedge

for.end.i.i.i.if.end.sink.split_crit_edge:        ; preds = %for.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.sink.split

sw.bb103.i.i.i:                                   ; preds = %for.end.i.i.i.sw.bb103.i.i.i_crit_edge, %for.end.i.i.i.sw.bb103.i.i.i_crit_edge45, %for.end.i.i.i.sw.bb103.i.i.i_crit_edge46
  %78 = ptrtoint ptr %uvd_ps.i.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %uvd_ps.i.i.i, align 4
  %tobool107.not.i.i.i = icmp eq ptr %79, null
  br i1 %tobool107.not.i.i.i, label %sw.bb103.i.i.i.restart_search.i.i.i.backedge_crit_edge, label %sw.bb103.i.i.i.if.then25.i.i_crit_edge

sw.bb103.i.i.i.if.then25.i.i_crit_edge:           ; preds = %sw.bb103.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then25.i.i

sw.bb103.i.i.i.restart_search.i.i.i.backedge_crit_edge: ; preds = %sw.bb103.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %restart_search.i.i.i.backedge

sw.bb113.i.i.i:                                   ; preds = %for.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %restart_search.i.i.i.backedge

sw.bb114.i.i.i:                                   ; preds = %for.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %restart_search.i.i.i.backedge

sw.bb115.i.i.i:                                   ; preds = %for.end.i.i.i.sw.bb115.i.i.i_crit_edge, %for.end.i.i.i.sw.bb115.i.i.i_crit_edge47, %for.end.i.i.i.sw.bb115.i.i.i_crit_edge48
  br label %restart_search.i.i.i.backedge

restart_search.i.i.i.backedge:                    ; preds = %sw.bb115.i.i.i, %sw.bb114.i.i.i, %sw.bb113.i.i.i, %sw.bb103.i.i.i.restart_search.i.i.i.backedge_crit_edge, %for.end.i.i.i.restart_search.i.i.i.backedge_crit_edge
  %dpm_state.addr.0.i.i.i.be = phi i32 [ 4, %sw.bb115.i.i.i ], [ 2, %sw.bb114.i.i.i ], [ 12, %sw.bb113.i.i.i ], [ 7, %for.end.i.i.i.restart_search.i.i.i.backedge_crit_edge ], [ 4, %sw.bb103.i.i.i.restart_search.i.i.i.backedge_crit_edge ]
  br label %restart_search.i.i.i

radeon_dpm_pick_power_state.exit.i.i:             ; preds = %sw.bb96.i.i.i.radeon_dpm_pick_power_state.exit.i.i_crit_edge, %sw.bb90.i.i.i.radeon_dpm_pick_power_state.exit.i.i_crit_edge, %sw.bb84.i.i.i.radeon_dpm_pick_power_state.exit.i.i_crit_edge, %sw.bb78.i.i.i.radeon_dpm_pick_power_state.exit.i.i_crit_edge, %sw.bb75.i.i.i, %sw.bb70.i.i.i.radeon_dpm_pick_power_state.exit.i.i_crit_edge, %sw.bb64.i.i.i.radeon_dpm_pick_power_state.exit.i.i_crit_edge, %sw.bb58.i.i.i.radeon_dpm_pick_power_state.exit.i.i_crit_edge, %sw.bb52.i.i.i.radeon_dpm_pick_power_state.exit.i.i_crit_edge, %if.then32.i.i.i.radeon_dpm_pick_power_state.exit.i.i_crit_edge, %if.then19.i.i.i.radeon_dpm_pick_power_state.exit.i.i_crit_edge, %if.then9.i.i.i.radeon_dpm_pick_power_state.exit.i.i_crit_edge
  %retval.0.i.i.i = phi ptr [ %74, %sw.bb75.i.i.i ], [ %arrayidx.i.i.i, %if.then9.i.i.i.radeon_dpm_pick_power_state.exit.i.i_crit_edge ], [ %arrayidx.i.i.i, %if.then19.i.i.i.radeon_dpm_pick_power_state.exit.i.i_crit_edge ], [ %arrayidx.i.i.i, %if.then32.i.i.i.radeon_dpm_pick_power_state.exit.i.i_crit_edge ], [ %arrayidx.i.i.i, %sw.bb52.i.i.i.radeon_dpm_pick_power_state.exit.i.i_crit_edge ], [ %arrayidx.i.i.i, %sw.bb58.i.i.i.radeon_dpm_pick_power_state.exit.i.i_crit_edge ], [ %arrayidx.i.i.i, %sw.bb64.i.i.i.radeon_dpm_pick_power_state.exit.i.i_crit_edge ], [ %arrayidx.i.i.i, %sw.bb70.i.i.i.radeon_dpm_pick_power_state.exit.i.i_crit_edge ], [ %arrayidx.i.i.i, %sw.bb78.i.i.i.radeon_dpm_pick_power_state.exit.i.i_crit_edge ], [ %arrayidx.i.i.i, %sw.bb84.i.i.i.radeon_dpm_pick_power_state.exit.i.i_crit_edge ], [ %arrayidx.i.i.i, %sw.bb90.i.i.i.radeon_dpm_pick_power_state.exit.i.i_crit_edge ], [ %arrayidx.i.i.i, %sw.bb96.i.i.i.radeon_dpm_pick_power_state.exit.i.i_crit_edge ]
  %tobool24.not.i.i = icmp eq ptr %retval.0.i.i.i, null
  br i1 %tobool24.not.i.i, label %radeon_dpm_pick_power_state.exit.i.i.if.end.sink.split_crit_edge, label %radeon_dpm_pick_power_state.exit.i.i.if.then25.i.i_crit_edge

radeon_dpm_pick_power_state.exit.i.i.if.then25.i.i_crit_edge: ; preds = %radeon_dpm_pick_power_state.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then25.i.i

radeon_dpm_pick_power_state.exit.i.i.if.end.sink.split_crit_edge: ; preds = %radeon_dpm_pick_power_state.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.sink.split

if.then25.i.i:                                    ; preds = %radeon_dpm_pick_power_state.exit.i.i.if.then25.i.i_crit_edge, %sw.bb103.i.i.i.if.then25.i.i_crit_edge, %sw.bb43.i.i.i.if.then25.i.i_crit_edge
  %retval.0.i324.i.i = phi ptr [ %retval.0.i.i.i, %radeon_dpm_pick_power_state.exit.i.i.if.then25.i.i_crit_edge ], [ %70, %sw.bb43.i.i.i.if.then25.i.i_crit_edge ], [ %79, %sw.bb103.i.i.i.if.then25.i.i_crit_edge ]
  %requested_ps.i.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 3
  %80 = ptrtoint ptr %requested_ps.i.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr %retval.0.i324.i.i, ptr %requested_ps.i.i, align 4
  %current_ps.i.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 2
  %81 = ptrtoint ptr %current_ps.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %current_ps.i.i, align 4
  %cmp34.i.i = icmp eq ptr %82, %retval.0.i324.i.i
  br i1 %cmp34.i.i, label %if.then35.i.i, label %if.then25.i.i.force.i.i_crit_edge

if.then25.i.i.force.i.i_crit_edge:                ; preds = %if.then25.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %force.i.i

if.then35.i.i:                                    ; preds = %if.then25.i.i
  %vce_active.i.i = getelementptr inbounds %struct.radeon_ps, ptr %retval.0.i324.i.i, i32 0, i32 7
  %83 = ptrtoint ptr %vce_active.i.i to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %vce_active.i.i, align 4, !range !207
  %vce_active39.i.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 34
  %85 = ptrtoint ptr %vce_active39.i.i to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %vce_active39.i.i, align 2, !range !207
  call void @__sanitizer_cov_trace_cmp1(i8 %84, i8 %86)
  %cmp42.not.i.i = icmp eq i8 %84, %86
  br i1 %cmp42.not.i.i, label %if.end45.i.i, label %if.then35.i.i.force.i.i_crit_edge

if.then35.i.i.force.i.i_crit_edge:                ; preds = %if.then35.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %force.i.i

if.end45.i.i:                                     ; preds = %if.then35.i.i
  %single_display48.i.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 19
  %87 = ptrtoint ptr %single_display48.i.i to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %single_display48.i.i, align 4, !range !207
  call void @__sanitizer_cov_trace_cmp1(i8 %88, i8 %frombool.i.i)
  %cmp53.not.i.i = icmp eq i8 %88, %frombool.i.i
  br i1 %cmp53.not.i.i, label %if.end56.i.i, label %if.end45.i.i.force.i.i_crit_edge

if.end45.i.i.force.i.i_crit_edge:                 ; preds = %if.end45.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %force.i.i

if.end56.i.i:                                     ; preds = %if.end45.i.i
  %family.i.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 6
  %89 = ptrtoint ptr %family.i.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %family.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 47, i32 %90)
  %cmp57.i.i = icmp ult i32 %90, 47
  br i1 %cmp57.i.i, label %if.end56.i.i.if.then60.i.i_crit_edge, label %lor.lhs.false.i.i

if.end56.i.i.if.then60.i.i_crit_edge:             ; preds = %if.end56.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then60.i.i

lor.lhs.false.i.i:                                ; preds = %if.end56.i.i
  %flags.i.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 7
  %91 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %flags.i.i, align 8
  %and.i.i = and i32 %92, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool59.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool59.not.i.i, label %if.else81.i.i, label %lor.lhs.false.i.i.if.then60.i.i_crit_edge

lor.lhs.false.i.i.if.then60.i.i_crit_edge:        ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then60.i.i

if.then60.i.i:                                    ; preds = %lor.lhs.false.i.i.if.then60.i.i_crit_edge, %if.end56.i.i.if.then60.i.i_crit_edge
  %93 = ptrtoint ptr %new_active_crtcs.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %new_active_crtcs.i, align 4
  %current_active_crtcs.i.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 17
  %95 = ptrtoint ptr %current_active_crtcs.i.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %current_active_crtcs.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %94, i32 %96)
  %cmp65.not.i.i = icmp eq i32 %94, %96
  br i1 %cmp65.not.i.i, label %if.then60.i.i.if.end.sink.split_crit_edge, label %if.then67.i.i

if.then60.i.i.if.end.sink.split_crit_edge:        ; preds = %if.then60.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.sink.split

if.then67.i.i:                                    ; preds = %if.then60.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %asic.i.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 56
  %97 = ptrtoint ptr %asic.i.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %asic.i.i, align 8
  %display.i.i = getelementptr inbounds %struct.radeon_asic, ptr %98, i32 0, i32 16
  %99 = ptrtoint ptr %display.i.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %display.i.i, align 4
  tail call void %100(ptr noundef %rdev) #10
  %101 = ptrtoint ptr %asic.i.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %asic.i.i, align 8
  %display_configuration_changed.i.i = getelementptr inbounds %struct.radeon_asic, ptr %102, i32 0, i32 21, i32 8
  %103 = ptrtoint ptr %display_configuration_changed.i.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %display_configuration_changed.i.i, align 4
  tail call void %104(ptr noundef %rdev) #10
  %105 = ptrtoint ptr %new_active_crtcs.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %new_active_crtcs.i, align 4
  %107 = ptrtoint ptr %current_active_crtcs.i.i to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 %106, ptr %current_active_crtcs.i.i, align 4
  %108 = ptrtoint ptr %new_active_crtc_count.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %new_active_crtc_count.i, align 4
  %current_active_crtc_count.i.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 18
  %110 = ptrtoint ptr %current_active_crtc_count.i.i to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 %109, ptr %current_active_crtc_count.i.i, align 4
  br label %if.end.sink.split

if.else81.i.i:                                    ; preds = %lor.lhs.false.i.i
  %111 = ptrtoint ptr %new_active_crtcs.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %new_active_crtcs.i, align 4
  %current_active_crtcs87.i.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 17
  %113 = ptrtoint ptr %current_active_crtcs87.i.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %current_active_crtcs87.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %112, i32 %114)
  %cmp88.i.i = icmp eq i32 %112, %114
  br i1 %cmp88.i.i, label %if.else81.i.i.if.end.sink.split_crit_edge, label %if.else91.i.i

if.else81.i.i.if.end.sink.split_crit_edge:        ; preds = %if.else81.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.sink.split

if.else91.i.i:                                    ; preds = %if.else81.i.i
  %current_active_crtc_count94.i.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 18
  %115 = ptrtoint ptr %current_active_crtc_count94.i.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %current_active_crtc_count94.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %116)
  %cmp95.i.i = icmp sgt i32 %116, 1
  br i1 %cmp95.i.i, label %land.lhs.true97.i.i, label %if.else91.i.i.force.i.i_crit_edge

if.else91.i.i.force.i.i_crit_edge:                ; preds = %if.else91.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %force.i.i

land.lhs.true97.i.i:                              ; preds = %if.else91.i.i
  %117 = ptrtoint ptr %new_active_crtc_count.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %new_active_crtc_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %118)
  %cmp101.i.i = icmp sgt i32 %118, 1
  br i1 %cmp101.i.i, label %if.then103.i.i, label %land.lhs.true97.i.i.force.i.i_crit_edge

land.lhs.true97.i.i.force.i.i_crit_edge:          ; preds = %land.lhs.true97.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %force.i.i

if.then103.i.i:                                   ; preds = %land.lhs.true97.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %asic104.i.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 56
  %119 = ptrtoint ptr %asic104.i.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %asic104.i.i, align 8
  %display105.i.i = getelementptr inbounds %struct.radeon_asic, ptr %120, i32 0, i32 16
  %121 = ptrtoint ptr %display105.i.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %display105.i.i, align 4
  tail call void %122(ptr noundef %rdev) #10
  %123 = ptrtoint ptr %asic104.i.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %asic104.i.i, align 8
  %display_configuration_changed109.i.i = getelementptr inbounds %struct.radeon_asic, ptr %124, i32 0, i32 21, i32 8
  %125 = ptrtoint ptr %display_configuration_changed109.i.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %display_configuration_changed109.i.i, align 4
  tail call void %126(ptr noundef %rdev) #10
  %127 = ptrtoint ptr %new_active_crtcs.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %new_active_crtcs.i, align 4
  %129 = ptrtoint ptr %current_active_crtcs87.i.i to i32
  call void @__asan_store4_noabort(i32 %129)
  store i32 %128, ptr %current_active_crtcs87.i.i, align 4
  %130 = ptrtoint ptr %new_active_crtc_count.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %new_active_crtc_count.i, align 4
  %132 = ptrtoint ptr %current_active_crtc_count94.i.i to i32
  call void @__asan_store4_noabort(i32 %132)
  store i32 %131, ptr %current_active_crtc_count94.i.i, align 4
  br label %if.end.sink.split

force.i.i:                                        ; preds = %land.lhs.true97.i.i.force.i.i_crit_edge, %if.else91.i.i.force.i.i_crit_edge, %if.end45.i.i.force.i.i_crit_edge, %if.then35.i.i.force.i.i_crit_edge, %if.then25.i.i.force.i.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @radeon_dpm to i32))
  %133 = load i32, ptr @radeon_dpm, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %133)
  %cmp126.i.i = icmp eq i32 %133, 1
  br i1 %cmp126.i.i, label %do.end.i.i, label %force.i.i.if.end146.i.i_crit_edge

force.i.i.if.end146.i.i_crit_edge:                ; preds = %force.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end146.i.i

do.end.i.i:                                       ; preds = %force.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %call129.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.80) #13
  %asic130.i.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 56
  %134 = ptrtoint ptr %asic130.i.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %asic130.i.i, align 8
  %print_power_state.i.i = getelementptr inbounds %struct.radeon_asic, ptr %135, i32 0, i32 21, i32 12
  %136 = ptrtoint ptr %print_power_state.i.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %print_power_state.i.i, align 4
  %138 = ptrtoint ptr %current_ps.i.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %current_ps.i.i, align 4
  tail call void %137(ptr noundef %rdev, ptr noundef %139) #10
  %call139.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.83) #13
  %140 = ptrtoint ptr %asic130.i.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %asic130.i.i, align 8
  %print_power_state142.i.i = getelementptr inbounds %struct.radeon_asic, ptr %141, i32 0, i32 21, i32 12
  %142 = ptrtoint ptr %print_power_state142.i.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %print_power_state142.i.i, align 4
  %144 = ptrtoint ptr %requested_ps.i.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %requested_ps.i.i, align 4
  tail call void %143(ptr noundef %rdev, ptr noundef %145) #10
  br label %if.end146.i.i

if.end146.i.i:                                    ; preds = %do.end.i.i, %force.i.i.if.end146.i.i_crit_edge
  %mclk_lock.i.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 1
  tail call void @down_write(ptr noundef %mclk_lock.i.i) #10
  %ring_lock.i.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 51
  tail call void @mutex_lock_nested(ptr noundef %ring_lock.i.i, i32 noundef 0) #10
  %vce_active150.i.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 34
  %146 = ptrtoint ptr %vce_active150.i.i to i32
  call void @__asan_load1_noabort(i32 %146)
  %147 = load i8, ptr %vce_active150.i.i, align 2, !range !207
  %vce_active152.i.i = getelementptr inbounds %struct.radeon_ps, ptr %retval.0.i324.i.i, i32 0, i32 7
  %148 = ptrtoint ptr %vce_active152.i.i to i32
  call void @__asan_store1_noabort(i32 %148)
  store i8 %147, ptr %vce_active152.i.i, align 4
  %asic154.i.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 56
  %149 = ptrtoint ptr %asic154.i.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %asic154.i.i, align 8
  %pre_set_power_state.i.i = getelementptr inbounds %struct.radeon_asic, ptr %150, i32 0, i32 21, i32 5
  %151 = ptrtoint ptr %pre_set_power_state.i.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %pre_set_power_state.i.i, align 4
  %call156.i.i = tail call i32 %152(ptr noundef %rdev) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call156.i.i)
  %tobool157.not.i.i = icmp eq i32 %call156.i.i, 0
  br i1 %tobool157.not.i.i, label %if.end159.i.i, label %if.end146.i.i.done.i.i_crit_edge

if.end146.i.i.done.i.i_crit_edge:                 ; preds = %if.end146.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %done.i.i

if.end159.i.i:                                    ; preds = %if.end146.i.i
  %153 = ptrtoint ptr %asic154.i.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %asic154.i.i, align 8
  %display161.i.i = getelementptr inbounds %struct.radeon_asic, ptr %154, i32 0, i32 16
  %155 = ptrtoint ptr %display161.i.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %display161.i.i, align 4
  tail call void %156(ptr noundef %rdev) #10
  %157 = ptrtoint ptr %asic154.i.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %asic154.i.i, align 8
  %display_configuration_changed165.i.i = getelementptr inbounds %struct.radeon_asic, ptr %158, i32 0, i32 21, i32 8
  %159 = ptrtoint ptr %display_configuration_changed165.i.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %display_configuration_changed165.i.i, align 4
  tail call void %160(ptr noundef %rdev) #10
  %ready.i.i = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 52, i32 0, i32 17
  %161 = ptrtoint ptr %ready.i.i to i32
  call void @__asan_load1_noabort(i32 %161)
  %162 = load i8, ptr %ready.i.i, align 8, !range !207
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %162)
  %tobool169.not.i.i = icmp eq i8 %162, 0
  br i1 %tobool169.not.i.i, label %if.end159.i.i.if.end172.i.i_crit_edge, label %if.then170.i.i

if.end159.i.i.if.end172.i.i_crit_edge:            ; preds = %if.end159.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end172.i.i

if.then170.i.i:                                   ; preds = %if.end159.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %call171.i.i = tail call i32 @radeon_fence_wait_empty(ptr noundef %rdev, i32 noundef 0) #10
  br label %if.end172.i.i

if.end172.i.i:                                    ; preds = %if.then170.i.i, %if.end159.i.i.if.end172.i.i_crit_edge
  %ready.1.i.i = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 52, i32 1, i32 17
  %163 = ptrtoint ptr %ready.1.i.i to i32
  call void @__asan_load1_noabort(i32 %163)
  %164 = load i8, ptr %ready.1.i.i, align 8, !range !207
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %164)
  %tobool169.not.1.i.i = icmp eq i8 %164, 0
  br i1 %tobool169.not.1.i.i, label %if.end172.i.i.if.end172.1.i.i_crit_edge, label %if.then170.1.i.i

if.end172.i.i.if.end172.1.i.i_crit_edge:          ; preds = %if.end172.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end172.1.i.i

if.then170.1.i.i:                                 ; preds = %if.end172.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %call171.1.i.i = tail call i32 @radeon_fence_wait_empty(ptr noundef %rdev, i32 noundef 1) #10
  br label %if.end172.1.i.i

if.end172.1.i.i:                                  ; preds = %if.then170.1.i.i, %if.end172.i.i.if.end172.1.i.i_crit_edge
  %ready.2.i.i = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 52, i32 2, i32 17
  %165 = ptrtoint ptr %ready.2.i.i to i32
  call void @__asan_load1_noabort(i32 %165)
  %166 = load i8, ptr %ready.2.i.i, align 8, !range !207
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %166)
  %tobool169.not.2.i.i = icmp eq i8 %166, 0
  br i1 %tobool169.not.2.i.i, label %if.end172.1.i.i.if.end172.2.i.i_crit_edge, label %if.then170.2.i.i

if.end172.1.i.i.if.end172.2.i.i_crit_edge:        ; preds = %if.end172.1.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end172.2.i.i

if.then170.2.i.i:                                 ; preds = %if.end172.1.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %call171.2.i.i = tail call i32 @radeon_fence_wait_empty(ptr noundef %rdev, i32 noundef 2) #10
  br label %if.end172.2.i.i

if.end172.2.i.i:                                  ; preds = %if.then170.2.i.i, %if.end172.1.i.i.if.end172.2.i.i_crit_edge
  %ready.3.i.i = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 52, i32 3, i32 17
  %167 = ptrtoint ptr %ready.3.i.i to i32
  call void @__asan_load1_noabort(i32 %167)
  %168 = load i8, ptr %ready.3.i.i, align 8, !range !207
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %168)
  %tobool169.not.3.i.i = icmp eq i8 %168, 0
  br i1 %tobool169.not.3.i.i, label %if.end172.2.i.i.if.end172.3.i.i_crit_edge, label %if.then170.3.i.i

if.end172.2.i.i.if.end172.3.i.i_crit_edge:        ; preds = %if.end172.2.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end172.3.i.i

if.then170.3.i.i:                                 ; preds = %if.end172.2.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %call171.3.i.i = tail call i32 @radeon_fence_wait_empty(ptr noundef %rdev, i32 noundef 3) #10
  br label %if.end172.3.i.i

if.end172.3.i.i:                                  ; preds = %if.then170.3.i.i, %if.end172.2.i.i.if.end172.3.i.i_crit_edge
  %ready.4.i.i = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 52, i32 4, i32 17
  %169 = ptrtoint ptr %ready.4.i.i to i32
  call void @__asan_load1_noabort(i32 %169)
  %170 = load i8, ptr %ready.4.i.i, align 8, !range !207
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %170)
  %tobool169.not.4.i.i = icmp eq i8 %170, 0
  br i1 %tobool169.not.4.i.i, label %if.end172.3.i.i.if.end172.4.i.i_crit_edge, label %if.then170.4.i.i

if.end172.3.i.i.if.end172.4.i.i_crit_edge:        ; preds = %if.end172.3.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end172.4.i.i

if.then170.4.i.i:                                 ; preds = %if.end172.3.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %call171.4.i.i = tail call i32 @radeon_fence_wait_empty(ptr noundef %rdev, i32 noundef 4) #10
  br label %if.end172.4.i.i

if.end172.4.i.i:                                  ; preds = %if.then170.4.i.i, %if.end172.3.i.i.if.end172.4.i.i_crit_edge
  %ready.5.i.i = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 52, i32 5, i32 17
  %171 = ptrtoint ptr %ready.5.i.i to i32
  call void @__asan_load1_noabort(i32 %171)
  %172 = load i8, ptr %ready.5.i.i, align 8, !range !207
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %172)
  %tobool169.not.5.i.i = icmp eq i8 %172, 0
  br i1 %tobool169.not.5.i.i, label %if.end172.4.i.i.if.end172.5.i.i_crit_edge, label %if.then170.5.i.i

if.end172.4.i.i.if.end172.5.i.i_crit_edge:        ; preds = %if.end172.4.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end172.5.i.i

if.then170.5.i.i:                                 ; preds = %if.end172.4.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %call171.5.i.i = tail call i32 @radeon_fence_wait_empty(ptr noundef %rdev, i32 noundef 5) #10
  br label %if.end172.5.i.i

if.end172.5.i.i:                                  ; preds = %if.then170.5.i.i, %if.end172.4.i.i.if.end172.5.i.i_crit_edge
  %ready.6.i.i = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 52, i32 6, i32 17
  %173 = ptrtoint ptr %ready.6.i.i to i32
  call void @__asan_load1_noabort(i32 %173)
  %174 = load i8, ptr %ready.6.i.i, align 8, !range !207
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %174)
  %tobool169.not.6.i.i = icmp eq i8 %174, 0
  br i1 %tobool169.not.6.i.i, label %if.end172.5.i.i.if.end172.6.i.i_crit_edge, label %if.then170.6.i.i

if.end172.5.i.i.if.end172.6.i.i_crit_edge:        ; preds = %if.end172.5.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end172.6.i.i

if.then170.6.i.i:                                 ; preds = %if.end172.5.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %call171.6.i.i = tail call i32 @radeon_fence_wait_empty(ptr noundef %rdev, i32 noundef 6) #10
  br label %if.end172.6.i.i

if.end172.6.i.i:                                  ; preds = %if.then170.6.i.i, %if.end172.5.i.i.if.end172.6.i.i_crit_edge
  %ready.7.i.i = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 52, i32 7, i32 17
  %175 = ptrtoint ptr %ready.7.i.i to i32
  call void @__asan_load1_noabort(i32 %175)
  %176 = load i8, ptr %ready.7.i.i, align 8, !range !207
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %176)
  %tobool169.not.7.i.i = icmp eq i8 %176, 0
  br i1 %tobool169.not.7.i.i, label %if.end172.6.i.i.if.end172.7.i.i_crit_edge, label %if.then170.7.i.i

if.end172.6.i.i.if.end172.7.i.i_crit_edge:        ; preds = %if.end172.6.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end172.7.i.i

if.then170.7.i.i:                                 ; preds = %if.end172.6.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %call171.7.i.i = tail call i32 @radeon_fence_wait_empty(ptr noundef %rdev, i32 noundef 7) #10
  br label %if.end172.7.i.i

if.end172.7.i.i:                                  ; preds = %if.then170.7.i.i, %if.end172.6.i.i.if.end172.7.i.i_crit_edge
  %177 = ptrtoint ptr %asic154.i.i to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %asic154.i.i, align 8
  %set_power_state.i.i = getelementptr inbounds %struct.radeon_asic, ptr %178, i32 0, i32 21, i32 6
  %179 = ptrtoint ptr %set_power_state.i.i to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %set_power_state.i.i, align 4
  %call175.i.i = tail call i32 %180(ptr noundef %rdev) #10
  %181 = ptrtoint ptr %requested_ps.i.i to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %requested_ps.i.i, align 4
  %183 = ptrtoint ptr %current_ps.i.i to i32
  call void @__asan_store4_noabort(i32 %183)
  store ptr %182, ptr %current_ps.i.i, align 4
  %184 = ptrtoint ptr %asic154.i.i to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %asic154.i.i, align 8
  %post_set_power_state.i.i = getelementptr inbounds %struct.radeon_asic, ptr %185, i32 0, i32 21, i32 7
  %186 = ptrtoint ptr %post_set_power_state.i.i to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %post_set_power_state.i.i, align 4
  tail call void %187(ptr noundef %rdev) #10
  %188 = ptrtoint ptr %new_active_crtcs.i to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load i32, ptr %new_active_crtcs.i, align 4
  %current_active_crtcs189.i.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 17
  %190 = ptrtoint ptr %current_active_crtcs189.i.i to i32
  call void @__asan_store4_noabort(i32 %190)
  store i32 %189, ptr %current_active_crtcs189.i.i, align 4
  %191 = ptrtoint ptr %new_active_crtc_count.i to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load i32, ptr %new_active_crtc_count.i, align 4
  %current_active_crtc_count195.i.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 18
  %193 = ptrtoint ptr %current_active_crtc_count195.i.i to i32
  call void @__asan_store4_noabort(i32 %193)
  store i32 %192, ptr %current_active_crtc_count195.i.i, align 4
  %single_display199.i.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 19
  %194 = ptrtoint ptr %single_display199.i.i to i32
  call void @__asan_store1_noabort(i32 %194)
  store i8 %frombool.i.i, ptr %single_display199.i.i, align 4
  %195 = ptrtoint ptr %asic154.i.i to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %asic154.i.i, align 8
  %force_performance_level.i.i = getelementptr inbounds %struct.radeon_asic, ptr %196, i32 0, i32 21, i32 14
  %197 = ptrtoint ptr %force_performance_level.i.i to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load ptr, ptr %force_performance_level.i.i, align 4
  %tobool203.not.i.i = icmp eq ptr %198, null
  br i1 %tobool203.not.i.i, label %if.end172.7.i.i.done.i.i_crit_edge, label %if.then204.i.i

if.end172.7.i.i.done.i.i_crit_edge:               ; preds = %if.end172.7.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %done.i.i

if.then204.i.i:                                   ; preds = %if.end172.7.i.i
  %thermal_active207.i.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 32
  %199 = ptrtoint ptr %thermal_active207.i.i to i32
  call void @__asan_load1_noabort(i32 %199)
  %200 = load i8, ptr %thermal_active207.i.i, align 4, !range !207
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %200)
  %tobool208.not.i.i = icmp eq i8 %200, 0
  %forced_level225.i.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 36
  %201 = ptrtoint ptr %forced_level225.i.i to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load i32, ptr %forced_level225.i.i, align 4
  br i1 %tobool208.not.i.i, label %if.else219.i.i, label %if.then209.i.i

if.then209.i.i:                                   ; preds = %if.then204.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %call215.i.i = tail call i32 %198(ptr noundef %rdev, i32 noundef 1) #10
  %203 = ptrtoint ptr %forced_level225.i.i to i32
  call void @__asan_store4_noabort(i32 %203)
  store i32 %202, ptr %forced_level225.i.i, align 4
  br label %done.i.i

if.else219.i.i:                                   ; preds = %if.then204.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %call226.i.i = tail call i32 %198(ptr noundef %rdev, i32 noundef %202) #10
  br label %done.i.i

done.i.i:                                         ; preds = %if.else219.i.i, %if.then209.i.i, %if.end172.7.i.i.done.i.i_crit_edge, %if.end146.i.i.done.i.i_crit_edge
  tail call void @mutex_unlock(ptr noundef %ring_lock.i.i) #10
  tail call void @up_write(ptr noundef %mclk_lock.i.i) #10
  br label %if.end.sink.split

if.else:                                          ; preds = %entry
  %num_power_states.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 19
  %204 = ptrtoint ptr %num_power_states.i to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load i32, ptr %num_power_states.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %205)
  %cmp.i = icmp slt i32 %205, 2
  br i1 %cmp.i, label %if.else.if.end_crit_edge, label %if.end.i7

if.else.if.end_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.end.i7:                                        ; preds = %if.else
  tail call void @mutex_lock_nested(ptr noundef %pm.i, i32 noundef 0) #10
  %active_crtcs.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 2
  %206 = ptrtoint ptr %active_crtcs.i to i32
  call void @__asan_store4_noabort(i32 %206)
  store i32 0, ptr %active_crtcs.i, align 4
  %active_crtc_count.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 3
  %207 = ptrtoint ptr %active_crtc_count.i to i32
  call void @__asan_store4_noabort(i32 %207)
  store i32 0, ptr %active_crtc_count.i, align 8
  %num_crtc.i5 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 91
  %208 = ptrtoint ptr %num_crtc.i5 to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load i32, ptr %num_crtc.i5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %209)
  %tobool.not.i6 = icmp eq i32 %209, 0
  br i1 %tobool.not.i6, label %if.end.i7.if.end25.i_crit_edge, label %land.lhs.true.i9

if.end.i7.if.end25.i_crit_edge:                   ; preds = %if.end.i7
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end25.i

land.lhs.true.i9:                                 ; preds = %if.end.i7
  %mode_config_initialized.i8 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 44, i32 3
  %210 = ptrtoint ptr %mode_config_initialized.i8 to i32
  call void @__asan_load1_noabort(i32 %210)
  %211 = load i8, ptr %mode_config_initialized.i8, align 4, !range !207
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %211)
  %tobool5.not.i = icmp eq i8 %211, 0
  br i1 %tobool5.not.i, label %land.lhs.true.i9.if.end25.i_crit_edge, label %if.then6.i

land.lhs.true.i9.if.end25.i_crit_edge:            ; preds = %land.lhs.true.i9
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end25.i

if.then6.i:                                       ; preds = %land.lhs.true.i9
  %crtc_list.i10 = getelementptr inbounds %struct.drm_device, ptr %3, i32 0, i32 30, i32 20
  %212 = ptrtoint ptr %crtc_list.i10 to i32
  call void @__asan_load4_noabort(i32 %212)
  %.pn155.i = load ptr, ptr %crtc_list.i10, align 4
  %cmp9.not156.i = icmp eq ptr %.pn155.i, %crtc_list.i10
  br i1 %cmp9.not156.i, label %if.then6.i.if.end25.i_crit_edge, label %if.then6.i.for.body.i12_crit_edge

if.then6.i.for.body.i12_crit_edge:                ; preds = %if.then6.i
  br label %for.body.i12

if.then6.i.if.end25.i_crit_edge:                  ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end25.i

for.body.i12:                                     ; preds = %for.inc.i18.for.body.i12_crit_edge, %if.then6.i.for.body.i12_crit_edge
  %.pn157.i = phi ptr [ %.pn.i17, %for.inc.i18.for.body.i12_crit_edge ], [ %.pn155.i, %if.then6.i.for.body.i12_crit_edge ]
  %enabled.i11 = getelementptr i8, ptr %.pn157.i, i32 988
  %213 = ptrtoint ptr %enabled.i11 to i32
  call void @__asan_load1_noabort(i32 %213)
  %214 = load i8, ptr %enabled.i11, align 4, !range !207
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %214)
  %tobool13.not.i = icmp eq i8 %214, 0
  br i1 %tobool13.not.i, label %for.body.i12.for.inc.i18_crit_edge, label %if.then14.i

for.body.i12.for.inc.i18_crit_edge:               ; preds = %for.body.i12
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i18

if.then14.i:                                      ; preds = %for.body.i12
  call void @__sanitizer_cov_trace_pc() #12
  %crtc_id.i13 = getelementptr i8, ptr %.pn157.i, i32 984
  %215 = ptrtoint ptr %crtc_id.i13 to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load i32, ptr %crtc_id.i13, align 8
  %shl.i14 = shl nuw i32 1, %216
  %217 = ptrtoint ptr %active_crtcs.i to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load i32, ptr %active_crtcs.i, align 4
  %or.i15 = or i32 %218, %shl.i14
  store i32 %or.i15, ptr %active_crtcs.i, align 4
  %219 = ptrtoint ptr %active_crtc_count.i to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load i32, ptr %active_crtc_count.i, align 8
  %inc.i16 = add i32 %220, 1
  store i32 %inc.i16, ptr %active_crtc_count.i, align 8
  br label %for.inc.i18

for.inc.i18:                                      ; preds = %if.then14.i, %for.body.i12.for.inc.i18_crit_edge
  %221 = ptrtoint ptr %.pn157.i to i32
  call void @__asan_load4_noabort(i32 %221)
  %.pn.i17 = load ptr, ptr %.pn157.i, align 4
  %cmp9.not.i = icmp eq ptr %.pn.i17, %crtc_list.i10
  br i1 %cmp9.not.i, label %for.inc.i18.if.end25.i_crit_edge, label %for.inc.i18.for.body.i12_crit_edge

for.inc.i18.for.body.i12_crit_edge:               ; preds = %for.inc.i18
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i12

for.inc.i18.if.end25.i_crit_edge:                 ; preds = %for.inc.i18
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end25.i

if.end25.i:                                       ; preds = %for.inc.i18.if.end25.i_crit_edge, %if.then6.i.if.end25.i_crit_edge, %land.lhs.true.i9.if.end25.i_crit_edge, %if.end.i7.if.end25.i_crit_edge
  %222 = ptrtoint ptr %pm_method to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load i32, ptr %pm_method, align 4
  %224 = zext i32 %223 to i64
  call void @__sanitizer_cov_trace_switch(i64 %224, ptr @__sancov_gen_cov_switch_values.90)
  switch i32 %223, label %if.end25.i.if.end.sink.split_crit_edge [
    i32 0, label %if.then28.i
    i32 1, label %if.then32.i19
  ]

if.end25.i.if.end.sink.split_crit_edge:           ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.sink.split

if.then28.i:                                      ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @radeon_pm_update_profile(ptr noundef %rdev) #10
  tail call fastcc void @radeon_pm_set_clocks(ptr noundef %rdev) #10
  br label %if.end.sink.split

if.then32.i19:                                    ; preds = %if.end25.i
  %dynpm_state.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 36
  %225 = ptrtoint ptr %dynpm_state.i to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load i32, ptr %dynpm_state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %226)
  %cmp34.not.i = icmp eq i32 %226, 0
  br i1 %cmp34.not.i, label %if.then32.i19.if.end.sink.split_crit_edge, label %if.then35.i

if.then32.i19.if.end.sink.split_crit_edge:        ; preds = %if.then32.i19
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.sink.split

if.then35.i:                                      ; preds = %if.then32.i19
  %227 = ptrtoint ptr %active_crtc_count.i to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load i32, ptr %active_crtc_count.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %228)
  %cmp38.i = icmp sgt i32 %228, 1
  br i1 %cmp38.i, label %if.then39.i, label %if.else50.i

if.then39.i:                                      ; preds = %if.then35.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %226)
  %cmp42.i = icmp eq i32 %226, 3
  br i1 %cmp42.i, label %if.then43.i, label %if.then39.i.if.end.sink.split_crit_edge

if.then39.i.if.end.sink.split_crit_edge:          ; preds = %if.then39.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.sink.split

if.then43.i:                                      ; preds = %if.then39.i
  call void @__sanitizer_cov_trace_pc() #12
  %dynpm_idle_work.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 35
  %call.i20 = tail call zeroext i1 @cancel_delayed_work(ptr noundef %dynpm_idle_work.i) #10
  %229 = ptrtoint ptr %dynpm_state.i to i32
  call void @__asan_store4_noabort(i32 %229)
  store i32 2, ptr %dynpm_state.i, align 4
  %dynpm_planned_action.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 37
  %230 = ptrtoint ptr %dynpm_planned_action.i to i32
  call void @__asan_store4_noabort(i32 %230)
  store i32 4, ptr %dynpm_planned_action.i, align 8
  %asic.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 56
  %231 = ptrtoint ptr %asic.i to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load ptr, ptr %asic.i, align 8
  %get_dynpm_state.i = getelementptr inbounds %struct.radeon_asic, ptr %232, i32 0, i32 20, i32 4
  %233 = ptrtoint ptr %get_dynpm_state.i to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load ptr, ptr %get_dynpm_state.i, align 4
  tail call void %234(ptr noundef %rdev) #10
  tail call fastcc void @radeon_pm_set_clocks(ptr noundef %rdev) #10
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.85) #10
  br label %if.end.sink.split

if.else50.i:                                      ; preds = %if.then35.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %228)
  %cmp53.i = icmp eq i32 %228, 1
  br i1 %cmp53.i, label %if.then54.i, label %if.else83.i

if.then54.i:                                      ; preds = %if.else50.i
  %235 = zext i32 %226 to i64
  call void @__sanitizer_cov_trace_switch(i64 %235, ptr @__sancov_gen_cov_switch_values.91)
  switch i32 %226, label %if.then54.i.if.end.sink.split_crit_edge [
    i32 1, label %if.then58.i
    i32 2, label %if.then74.i
  ]

if.then54.i.if.end.sink.split_crit_edge:          ; preds = %if.then54.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.sink.split

if.then58.i:                                      ; preds = %if.then54.i
  call void @__sanitizer_cov_trace_pc() #12
  %236 = ptrtoint ptr %dynpm_state.i to i32
  call void @__asan_store4_noabort(i32 %236)
  store i32 3, ptr %dynpm_state.i, align 4
  %dynpm_planned_action62.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 37
  %237 = ptrtoint ptr %dynpm_planned_action62.i to i32
  call void @__asan_store4_noabort(i32 %237)
  store i32 3, ptr %dynpm_planned_action62.i, align 8
  %asic63.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 56
  %238 = ptrtoint ptr %asic63.i to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load ptr, ptr %asic63.i, align 8
  %get_dynpm_state65.i = getelementptr inbounds %struct.radeon_asic, ptr %239, i32 0, i32 20, i32 4
  %240 = ptrtoint ptr %get_dynpm_state65.i to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load ptr, ptr %get_dynpm_state65.i, align 4
  tail call void %241(ptr noundef %rdev) #10
  tail call fastcc void @radeon_pm_set_clocks(ptr noundef %rdev) #10
  %dynpm_idle_work67.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 35
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %242 = load ptr, ptr @system_wq, align 4
  %call.i.i.i21 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %242, ptr noundef %dynpm_idle_work67.i, i32 noundef 10) #10
  br label %if.end.sink.split

if.then74.i:                                      ; preds = %if.then54.i
  call void @__sanitizer_cov_trace_pc() #12
  %243 = ptrtoint ptr %dynpm_state.i to i32
  call void @__asan_store4_noabort(i32 %243)
  store i32 3, ptr %dynpm_state.i, align 4
  %dynpm_idle_work78.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 35
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %244 = load ptr, ptr @system_wq, align 4
  %call.i.i154.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %244, ptr noundef %dynpm_idle_work78.i, i32 noundef 10) #10
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.86) #10
  br label %if.end.sink.split

if.else83.i:                                      ; preds = %if.else50.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %226)
  %cmp86.not.i = icmp eq i32 %226, 1
  br i1 %cmp86.not.i, label %if.else83.i.if.end.sink.split_crit_edge, label %if.then87.i

if.else83.i.if.end.sink.split_crit_edge:          ; preds = %if.else83.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.sink.split

if.then87.i:                                      ; preds = %if.else83.i
  call void @__sanitizer_cov_trace_pc() #12
  %dynpm_idle_work89.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 35
  %call90.i = tail call zeroext i1 @cancel_delayed_work(ptr noundef %dynpm_idle_work89.i) #10
  %245 = ptrtoint ptr %dynpm_state.i to i32
  call void @__asan_store4_noabort(i32 %245)
  store i32 1, ptr %dynpm_state.i, align 4
  %dynpm_planned_action94.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 37
  %246 = ptrtoint ptr %dynpm_planned_action94.i to i32
  call void @__asan_store4_noabort(i32 %246)
  store i32 1, ptr %dynpm_planned_action94.i, align 8
  %asic95.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 56
  %247 = ptrtoint ptr %asic95.i to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load ptr, ptr %asic95.i, align 8
  %get_dynpm_state97.i = getelementptr inbounds %struct.radeon_asic, ptr %248, i32 0, i32 20, i32 4
  %249 = ptrtoint ptr %get_dynpm_state97.i to i32
  call void @__asan_load4_noabort(i32 %249)
  %250 = load ptr, ptr %get_dynpm_state97.i, align 4
  tail call void %250(ptr noundef %rdev) #10
  tail call fastcc void @radeon_pm_set_clocks(ptr noundef %rdev) #10
  br label %if.end.sink.split

if.end.sink.split:                                ; preds = %if.then87.i, %if.else83.i.if.end.sink.split_crit_edge, %if.then74.i, %if.then58.i, %if.then54.i.if.end.sink.split_crit_edge, %if.then43.i, %if.then39.i.if.end.sink.split_crit_edge, %if.then32.i19.if.end.sink.split_crit_edge, %if.then28.i, %if.end25.i.if.end.sink.split_crit_edge, %done.i.i, %if.then103.i.i, %if.else81.i.i.if.end.sink.split_crit_edge, %if.then67.i.i, %if.then60.i.i.if.end.sink.split_crit_edge, %radeon_dpm_pick_power_state.exit.i.i.if.end.sink.split_crit_edge, %for.end.i.i.i.if.end.sink.split_crit_edge, %radeon_dpm_single_display.exit.i.i.if.end.sink.split_crit_edge
  tail call void @mutex_unlock(ptr noundef %pm.i) #10
  br label %if.end

if.end:                                           ; preds = %if.end.sink.split, %if.else.if.end_crit_edge, %if.then.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @radeon_dpm_enable_vce(ptr noundef %rdev, i1 noundef zeroext %enable) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %pm = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58
  tail call void @mutex_lock_nested(ptr noundef %pm, i32 noundef 0) #10
  %vce_active = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 34
  br i1 %enable, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %0 = ptrtoint ptr %vce_active to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 1, ptr %vce_active, align 2
  %vce_level = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 7
  %1 = ptrtoint ptr %vce_level to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %vce_level, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %2 = ptrtoint ptr %vce_active to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %vce_active, align 2
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  tail call void @mutex_unlock(ptr noundef %pm) #10
  tail call void @radeon_pm_compute_clocks(ptr noundef %rdev)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @radeon_pm_suspend(ptr noundef %rdev) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %pm_method = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 34
  %0 = ptrtoint ptr %pm_method to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %pm_method, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp = icmp eq i32 %1, 2
  %pm.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58
  tail call void @mutex_lock_nested(ptr noundef %pm.i, i32 noundef 0) #10
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %asic.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 56
  %2 = ptrtoint ptr %asic.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %asic.i, align 8
  %disable.i = getelementptr inbounds %struct.radeon_asic, ptr %3, i32 0, i32 21, i32 4
  %4 = ptrtoint ptr %disable.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %disable.i, align 4
  tail call void %5(ptr noundef %rdev) #10
  %boot_ps.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 4
  %6 = ptrtoint ptr %boot_ps.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %boot_ps.i, align 4
  %requested_ps.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 3
  %8 = ptrtoint ptr %requested_ps.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %7, ptr %requested_ps.i, align 4
  %current_ps.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 2
  %9 = ptrtoint ptr %current_ps.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %7, ptr %current_ps.i, align 4
  %dpm_enabled.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 50
  %10 = ptrtoint ptr %dpm_enabled.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %dpm_enabled.i, align 8
  tail call void @mutex_unlock(ptr noundef %pm.i) #10
  br label %if.end

if.else:                                          ; preds = %entry
  %11 = ptrtoint ptr %pm_method to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %pm_method, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %12)
  %cmp.i = icmp eq i32 %12, 1
  br i1 %cmp.i, label %if.then.i, label %if.else.radeon_pm_suspend_old.exit_crit_edge

if.else.radeon_pm_suspend_old.exit_crit_edge:     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %radeon_pm_suspend_old.exit

if.then.i:                                        ; preds = %if.else
  %dynpm_state.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 36
  %13 = ptrtoint ptr %dynpm_state.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %dynpm_state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %14)
  %cmp3.i = icmp eq i32 %14, 3
  br i1 %cmp3.i, label %if.then4.i, label %if.then.i.radeon_pm_suspend_old.exit_crit_edge

if.then.i.radeon_pm_suspend_old.exit_crit_edge:   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %radeon_pm_suspend_old.exit

if.then4.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  %15 = ptrtoint ptr %dynpm_state.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 4, ptr %dynpm_state.i, align 4
  br label %radeon_pm_suspend_old.exit

radeon_pm_suspend_old.exit:                       ; preds = %if.then4.i, %if.then.i.radeon_pm_suspend_old.exit_crit_edge, %if.else.radeon_pm_suspend_old.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %pm.i) #10
  %dynpm_idle_work.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 35
  %call.i = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %dynpm_idle_work.i) #10
  br label %if.end

if.end:                                           ; preds = %radeon_pm_suspend_old.exit, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @radeon_pm_resume(ptr noundef %rdev) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %pm_method = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 34
  %0 = ptrtoint ptr %pm_method to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %pm_method, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp = icmp eq i32 %1, 2
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %pm.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58
  tail call void @mutex_lock_nested(ptr noundef %pm.i, i32 noundef 0) #10
  %boot_ps.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 4
  %2 = ptrtoint ptr %boot_ps.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %boot_ps.i, align 4
  %requested_ps.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 3
  %4 = ptrtoint ptr %requested_ps.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %3, ptr %requested_ps.i, align 4
  %current_ps.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 2
  %5 = ptrtoint ptr %current_ps.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %3, ptr %current_ps.i, align 4
  %asic.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 56
  %6 = ptrtoint ptr %asic.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %asic.i, align 8
  %setup_asic.i = getelementptr inbounds %struct.radeon_asic, ptr %7, i32 0, i32 21, i32 1
  %8 = ptrtoint ptr %setup_asic.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %setup_asic.i, align 4
  tail call void %9(ptr noundef %rdev) #10
  %10 = ptrtoint ptr %asic.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %asic.i, align 8
  %enable.i = getelementptr inbounds %struct.radeon_asic, ptr %11, i32 0, i32 21, i32 2
  %12 = ptrtoint ptr %enable.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %enable.i, align 4
  %call.i = tail call i32 %13(ptr noundef %rdev) #10
  tail call void @mutex_unlock(ptr noundef %pm.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %dpm_resume_fail.i

if.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %dpm_enabled.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 50
  %14 = ptrtoint ptr %dpm_enabled.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 1, ptr %dpm_enabled.i, align 8
  br label %if.end

dpm_resume_fail.i:                                ; preds = %if.then
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.12) #10
  %family.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 6
  %15 = ptrtoint ptr %family.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %family.i, align 4
  %17 = add i32 %16, -47
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %17)
  %18 = icmp ult i32 %17, 4
  br i1 %18, label %land.lhs.true14.i, label %dpm_resume_fail.i.if.end_crit_edge

dpm_resume_fail.i.if.end_crit_edge:               ; preds = %dpm_resume_fail.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true14.i:                                ; preds = %dpm_resume_fail.i
  %mc_fw.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 74
  %19 = ptrtoint ptr %mc_fw.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %mc_fw.i, align 4
  %tobool15.not.i = icmp eq ptr %20, null
  br i1 %tobool15.not.i, label %land.lhs.true14.i.if.end_crit_edge, label %if.then16.i

land.lhs.true14.i.if.end_crit_edge:               ; preds = %land.lhs.true14.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then16.i:                                      ; preds = %land.lhs.true14.i
  %default_vddc.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 31
  %21 = ptrtoint ptr %default_vddc.i to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %default_vddc.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %22)
  %tobool18.not.i = icmp eq i16 %22, 0
  br i1 %tobool18.not.i, label %if.then16.i.if.end22.i_crit_edge, label %if.then19.i

if.then16.i.if.end22.i_crit_edge:                 ; preds = %if.then16.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end22.i

if.then19.i:                                      ; preds = %if.then16.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @radeon_atom_set_voltage(ptr noundef %rdev, i16 noundef zeroext %22, i8 noundef zeroext 1) #10
  br label %if.end22.i

if.end22.i:                                       ; preds = %if.then19.i, %if.then16.i.if.end22.i_crit_edge
  %default_vddci.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 32
  %23 = ptrtoint ptr %default_vddci.i to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %default_vddci.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %24)
  %tobool24.not.i = icmp eq i16 %24, 0
  br i1 %tobool24.not.i, label %if.end22.i.if.end28.i_crit_edge, label %if.then25.i

if.end22.i.if.end28.i_crit_edge:                  ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end28.i

if.then25.i:                                      ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @radeon_atom_set_voltage(ptr noundef %rdev, i16 noundef zeroext %24, i8 noundef zeroext 4) #10
  br label %if.end28.i

if.end28.i:                                       ; preds = %if.then25.i, %if.end22.i.if.end28.i_crit_edge
  %default_sclk.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 29
  %25 = ptrtoint ptr %default_sclk.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %default_sclk.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool30.not.i = icmp eq i32 %26, 0
  br i1 %tobool30.not.i, label %if.end28.i.if.end36.i_crit_edge, label %if.then31.i

if.end28.i.if.end36.i_crit_edge:                  ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end36.i

if.then31.i:                                      ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #12
  %27 = ptrtoint ptr %asic.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %asic.i, align 8
  %set_engine_clock.i = getelementptr inbounds %struct.radeon_asic, ptr %28, i32 0, i32 20, i32 6
  %29 = ptrtoint ptr %set_engine_clock.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %set_engine_clock.i, align 4
  tail call void %30(ptr noundef %rdev, i32 noundef %26) #10
  br label %if.end36.i

if.end36.i:                                       ; preds = %if.then31.i, %if.end28.i.if.end36.i_crit_edge
  %default_mclk.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 30
  %31 = ptrtoint ptr %default_mclk.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %default_mclk.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool38.not.i = icmp eq i32 %32, 0
  br i1 %tobool38.not.i, label %if.end36.i.if.end_crit_edge, label %if.then39.i

if.end36.i.if.end_crit_edge:                      ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then39.i:                                      ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #12
  %33 = ptrtoint ptr %asic.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %asic.i, align 8
  %set_memory_clock.i = getelementptr inbounds %struct.radeon_asic, ptr %34, i32 0, i32 20, i32 8
  %35 = ptrtoint ptr %set_memory_clock.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %set_memory_clock.i, align 4
  tail call void %36(ptr noundef %rdev, i32 noundef %32) #10
  br label %if.end

if.else:                                          ; preds = %entry
  %family.i3 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 6
  %37 = ptrtoint ptr %family.i3 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %family.i3, align 4
  %39 = add i32 %38, -47
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %39)
  %40 = icmp ult i32 %39, 4
  br i1 %40, label %land.lhs.true3.i, label %if.else.if.end29.i_crit_edge

if.else.if.end29.i_crit_edge:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end29.i

land.lhs.true3.i:                                 ; preds = %if.else
  %mc_fw.i4 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 74
  %41 = ptrtoint ptr %mc_fw.i4 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %mc_fw.i4, align 4
  %tobool.not.i5 = icmp eq ptr %42, null
  br i1 %tobool.not.i5, label %land.lhs.true3.i.if.end29.i_crit_edge, label %if.then.i

land.lhs.true3.i.if.end29.i_crit_edge:            ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end29.i

if.then.i:                                        ; preds = %land.lhs.true3.i
  %default_vddc.i6 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 31
  %43 = ptrtoint ptr %default_vddc.i6 to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %default_vddc.i6, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %44)
  %tobool4.not.i = icmp eq i16 %44, 0
  br i1 %tobool4.not.i, label %if.then.i.if.end.i8_crit_edge, label %if.then5.i

if.then.i.if.end.i8_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i8

if.then5.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @radeon_atom_set_voltage(ptr noundef %rdev, i16 noundef zeroext %44, i8 noundef zeroext 1) #10
  br label %if.end.i8

if.end.i8:                                        ; preds = %if.then5.i, %if.then.i.if.end.i8_crit_edge
  %default_vddci.i7 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 32
  %45 = ptrtoint ptr %default_vddci.i7 to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %default_vddci.i7, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %46)
  %tobool9.not.i = icmp eq i16 %46, 0
  br i1 %tobool9.not.i, label %if.end.i8.if.end13.i_crit_edge, label %if.then10.i

if.end.i8.if.end13.i_crit_edge:                   ; preds = %if.end.i8
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end13.i

if.then10.i:                                      ; preds = %if.end.i8
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @radeon_atom_set_voltage(ptr noundef %rdev, i16 noundef zeroext %46, i8 noundef zeroext 4) #10
  br label %if.end13.i

if.end13.i:                                       ; preds = %if.then10.i, %if.end.i8.if.end13.i_crit_edge
  %default_sclk.i9 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 29
  %47 = ptrtoint ptr %default_sclk.i9 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %default_sclk.i9, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %tobool15.not.i10 = icmp eq i32 %48, 0
  br i1 %tobool15.not.i10, label %if.end13.i.if.end20.i_crit_edge, label %if.then16.i13

if.end13.i.if.end20.i_crit_edge:                  ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end20.i

if.then16.i13:                                    ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #12
  %asic.i11 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 56
  %49 = ptrtoint ptr %asic.i11 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %asic.i11, align 8
  %set_engine_clock.i12 = getelementptr inbounds %struct.radeon_asic, ptr %50, i32 0, i32 20, i32 6
  %51 = ptrtoint ptr %set_engine_clock.i12 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %set_engine_clock.i12, align 4
  tail call void %52(ptr noundef %rdev, i32 noundef %48) #10
  br label %if.end20.i

if.end20.i:                                       ; preds = %if.then16.i13, %if.end13.i.if.end20.i_crit_edge
  %default_mclk.i14 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 30
  %53 = ptrtoint ptr %default_mclk.i14 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %default_mclk.i14, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %tobool22.not.i = icmp eq i32 %54, 0
  br i1 %tobool22.not.i, label %if.end20.i.if.end29.i_crit_edge, label %if.then23.i

if.end20.i.if.end29.i_crit_edge:                  ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end29.i

if.then23.i:                                      ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #12
  %asic24.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 56
  %55 = ptrtoint ptr %asic24.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %asic24.i, align 8
  %set_memory_clock.i15 = getelementptr inbounds %struct.radeon_asic, ptr %56, i32 0, i32 20, i32 8
  %57 = ptrtoint ptr %set_memory_clock.i15 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %set_memory_clock.i15, align 4
  tail call void %58(ptr noundef %rdev, i32 noundef %54) #10
  br label %if.end29.i

if.end29.i:                                       ; preds = %if.then23.i, %if.end20.i.if.end29.i_crit_edge, %land.lhs.true3.i.if.end29.i_crit_edge, %if.else.if.end29.i_crit_edge
  %pm30.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58
  tail call void @mutex_lock_nested(ptr noundef %pm30.i, i32 noundef 0) #10
  %default_power_state_index.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 24
  %59 = ptrtoint ptr %default_power_state_index.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %default_power_state_index.i, align 4
  %current_power_state_index.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 20
  %61 = ptrtoint ptr %current_power_state_index.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %60, ptr %current_power_state_index.i, align 4
  %current_clock_mode_index.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 21
  %62 = ptrtoint ptr %current_clock_mode_index.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 0, ptr %current_clock_mode_index.i, align 8
  %default_sclk35.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 29
  %63 = ptrtoint ptr %default_sclk35.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %default_sclk35.i, align 4
  %current_sclk.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 25
  %65 = ptrtoint ptr %current_sclk.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %64, ptr %current_sclk.i, align 8
  %default_mclk38.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 30
  %66 = ptrtoint ptr %default_mclk38.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %default_mclk38.i, align 8
  %current_mclk.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 26
  %68 = ptrtoint ptr %current_mclk.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %67, ptr %current_mclk.i, align 4
  %power_state.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 18
  %69 = ptrtoint ptr %power_state.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %power_state.i, align 4
  %tobool41.not.i = icmp eq ptr %70, null
  br i1 %tobool41.not.i, label %if.end29.i.if.end59.i_crit_edge, label %if.then42.i

if.end29.i.if.end59.i_crit_edge:                  ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end59.i

if.then42.i:                                      ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #12
  %clock_info.i = getelementptr %struct.radeon_power_state, ptr %70, i32 %60, i32 1
  %71 = ptrtoint ptr %clock_info.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %clock_info.i, align 4
  %voltage48.i = getelementptr inbounds %struct.radeon_pm_clock_info, ptr %72, i32 0, i32 2, i32 7
  %73 = ptrtoint ptr %voltage48.i to i32
  call void @__asan_load2_noabort(i32 %73)
  %74 = load i16, ptr %voltage48.i, align 4
  %current_vddc.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 27
  %75 = ptrtoint ptr %current_vddc.i to i32
  call void @__asan_store2_noabort(i32 %75)
  store i16 %74, ptr %current_vddc.i, align 8
  %76 = load ptr, ptr %clock_info.i, align 4
  %vddci.i = getelementptr inbounds %struct.radeon_pm_clock_info, ptr %76, i32 0, i32 2, i32 8
  %77 = ptrtoint ptr %vddci.i to i32
  call void @__asan_load2_noabort(i32 %77)
  %78 = load i16, ptr %vddci.i, align 2
  %current_vddci.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 28
  %79 = ptrtoint ptr %current_vddci.i to i32
  call void @__asan_store2_noabort(i32 %79)
  store i16 %78, ptr %current_vddci.i, align 2
  br label %if.end59.i

if.end59.i:                                       ; preds = %if.then42.i, %if.end29.i.if.end59.i_crit_edge
  %80 = ptrtoint ptr %pm_method to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %pm_method, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %81)
  %cmp61.i = icmp eq i32 %81, 1
  br i1 %cmp61.i, label %land.lhs.true62.i, label %if.end59.i.radeon_pm_resume_old.exit_crit_edge

if.end59.i.radeon_pm_resume_old.exit_crit_edge:   ; preds = %if.end59.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %radeon_pm_resume_old.exit

land.lhs.true62.i:                                ; preds = %if.end59.i
  %dynpm_state.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 36
  %82 = ptrtoint ptr %dynpm_state.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %dynpm_state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %83)
  %cmp64.i = icmp eq i32 %83, 4
  br i1 %cmp64.i, label %if.then65.i, label %land.lhs.true62.i.radeon_pm_resume_old.exit_crit_edge

land.lhs.true62.i.radeon_pm_resume_old.exit_crit_edge: ; preds = %land.lhs.true62.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %radeon_pm_resume_old.exit

if.then65.i:                                      ; preds = %land.lhs.true62.i
  call void @__sanitizer_cov_trace_pc() #12
  %84 = ptrtoint ptr %dynpm_state.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 3, ptr %dynpm_state.i, align 4
  %dynpm_idle_work.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 35
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %85 = load ptr, ptr @system_wq, align 4
  %call.i.i.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %85, ptr noundef %dynpm_idle_work.i, i32 noundef 10) #10
  br label %radeon_pm_resume_old.exit

radeon_pm_resume_old.exit:                        ; preds = %if.then65.i, %land.lhs.true62.i.radeon_pm_resume_old.exit_crit_edge, %if.end59.i.radeon_pm_resume_old.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %pm30.i) #10
  tail call void @radeon_pm_compute_clocks(ptr noundef %rdev) #10
  br label %if.end

if.end:                                           ; preds = %radeon_pm_resume_old.exit, %if.then39.i, %if.end36.i.if.end_crit_edge, %land.lhs.true14.i.if.end_crit_edge, %dpm_resume_fail.i.if.end_crit_edge, %if.end.i
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @radeon_pm_init(ptr noundef %rdev) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %pdev = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 2
  %0 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev, align 8
  %vendor = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %vendor to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %vendor, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 4098, i16 %3)
  %cmp1 = icmp eq i16 %3, 4098
  br i1 %cmp1, label %land.lhs.true, label %entry.land.rhs.1_crit_edge

entry.land.rhs.1_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.rhs.1

land.lhs.true:                                    ; preds = %entry
  %device = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 8
  %4 = ptrtoint ptr %device to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %device, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 26457, i16 %5)
  %cmp6 = icmp eq i16 %5, 26457
  br i1 %cmp6, label %land.lhs.true8, label %land.lhs.true.land.rhs.1_crit_edge

land.lhs.true.land.rhs.1_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.rhs.1

land.lhs.true8:                                   ; preds = %land.lhs.true
  %subsystem_vendor = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 9
  %6 = ptrtoint ptr %subsystem_vendor to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %subsystem_vendor, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 5762, i16 %7)
  %cmp11 = icmp eq i16 %7, 5762
  br i1 %cmp11, label %land.lhs.true13, label %land.lhs.true8.land.rhs.1_crit_edge

land.lhs.true8.land.rhs.1_crit_edge:              ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.rhs.1

land.lhs.true13:                                  ; preds = %land.lhs.true8
  %subsystem_device = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 10
  %8 = ptrtoint ptr %subsystem_device to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %subsystem_device, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 12693, i16 %9)
  %cmp16 = icmp eq i16 %9, 12693
  br i1 %cmp16, label %land.lhs.true13.while.end_crit_edge, label %land.lhs.true13.land.rhs.1_crit_edge

land.lhs.true13.land.rhs.1_crit_edge:             ; preds = %land.lhs.true13
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.rhs.1

land.lhs.true13.while.end_crit_edge:              ; preds = %land.lhs.true13
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

land.rhs.1:                                       ; preds = %land.lhs.true13.land.rhs.1_crit_edge, %land.lhs.true8.land.rhs.1_crit_edge, %land.lhs.true.land.rhs.1_crit_edge, %entry.land.rhs.1_crit_edge
  %10 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pdev, align 8
  %vendor.1 = getelementptr inbounds %struct.pci_dev, ptr %11, i32 0, i32 7
  %12 = ptrtoint ptr %vendor.1 to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %vendor.1, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 4098, i16 %13)
  %cmp1.1 = icmp eq i16 %13, 4098
  br i1 %cmp1.1, label %land.lhs.true.1, label %land.rhs.1.land.rhs.2_crit_edge

land.rhs.1.land.rhs.2_crit_edge:                  ; preds = %land.rhs.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.rhs.2

land.lhs.true.1:                                  ; preds = %land.rhs.1
  %device.1 = getelementptr inbounds %struct.pci_dev, ptr %11, i32 0, i32 8
  %14 = ptrtoint ptr %device.1 to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %device.1, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 26688, i16 %15)
  %cmp6.1 = icmp eq i16 %15, 26688
  br i1 %cmp6.1, label %land.lhs.true8.1, label %land.lhs.true.1.land.rhs.2_crit_edge

land.lhs.true.1.land.rhs.2_crit_edge:             ; preds = %land.lhs.true.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.rhs.2

land.lhs.true8.1:                                 ; preds = %land.lhs.true.1
  %subsystem_vendor.1 = getelementptr inbounds %struct.pci_dev, ptr %11, i32 0, i32 9
  %16 = ptrtoint ptr %subsystem_vendor.1 to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %subsystem_vendor.1, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 4473, i16 %17)
  %cmp11.1 = icmp eq i16 %17, 4473
  br i1 %cmp11.1, label %land.lhs.true13.1, label %land.lhs.true8.1.land.rhs.2_crit_edge

land.lhs.true8.1.land.rhs.2_crit_edge:            ; preds = %land.lhs.true8.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.rhs.2

land.lhs.true13.1:                                ; preds = %land.lhs.true8.1
  %subsystem_device.1 = getelementptr inbounds %struct.pci_dev, ptr %11, i32 0, i32 10
  %18 = ptrtoint ptr %subsystem_device.1 to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %subsystem_device.1, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1151, i16 %19)
  %cmp16.1 = icmp eq i16 %19, -1151
  br i1 %cmp16.1, label %land.lhs.true13.1.while.end_crit_edge, label %land.lhs.true13.1.land.rhs.2_crit_edge

land.lhs.true13.1.land.rhs.2_crit_edge:           ; preds = %land.lhs.true13.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.rhs.2

land.lhs.true13.1.while.end_crit_edge:            ; preds = %land.lhs.true13.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

land.rhs.2:                                       ; preds = %land.lhs.true13.1.land.rhs.2_crit_edge, %land.lhs.true8.1.land.rhs.2_crit_edge, %land.lhs.true.1.land.rhs.2_crit_edge, %land.rhs.1.land.rhs.2_crit_edge
  br label %while.end

while.end:                                        ; preds = %land.rhs.2, %land.lhs.true13.1.while.end_crit_edge, %land.lhs.true13.while.end_crit_edge
  %disable_dpm.0.off0 = phi i1 [ true, %land.lhs.true13.while.end_crit_edge ], [ true, %land.lhs.true13.1.while.end_crit_edge ], [ false, %land.rhs.2 ]
  %family = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 6
  %20 = ptrtoint ptr %family to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %family, align 4
  %22 = zext i32 %21 to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values.92)
  switch i32 %21, label %sw.default [
    i32 28, label %while.end.sw.bb_crit_edge
    i32 29, label %while.end.sw.bb_crit_edge164
    i32 31, label %while.end.sw.bb_crit_edge165
    i32 32, label %while.end.sw.bb_crit_edge166
    i32 30, label %while.end.sw.bb_crit_edge167
    i32 33, label %while.end.sw.bb_crit_edge168
    i32 34, label %while.end.sw.bb_crit_edge169
    i32 35, label %while.end.sw.bb_crit_edge170
    i32 36, label %while.end.sw.bb42_crit_edge
    i32 37, label %while.end.sw.bb42_crit_edge171
    i32 38, label %while.end.sw.bb42_crit_edge172
    i32 39, label %while.end.sw.bb42_crit_edge173
    i32 40, label %while.end.sw.bb42_crit_edge174
    i32 41, label %while.end.sw.bb42_crit_edge175
    i32 42, label %while.end.sw.bb42_crit_edge176
    i32 43, label %while.end.sw.bb42_crit_edge177
    i32 44, label %while.end.sw.bb42_crit_edge178
    i32 45, label %while.end.sw.bb42_crit_edge179
    i32 46, label %while.end.sw.bb42_crit_edge180
    i32 47, label %while.end.sw.bb42_crit_edge181
    i32 48, label %while.end.sw.bb42_crit_edge182
    i32 49, label %while.end.sw.bb42_crit_edge183
    i32 50, label %while.end.sw.bb42_crit_edge184
    i32 51, label %while.end.sw.bb42_crit_edge185
    i32 52, label %while.end.sw.bb42_crit_edge186
    i32 53, label %while.end.sw.bb42_crit_edge187
    i32 54, label %while.end.sw.bb42_crit_edge188
    i32 55, label %while.end.sw.bb42_crit_edge189
    i32 56, label %while.end.sw.bb42_crit_edge190
    i32 57, label %while.end.sw.bb42_crit_edge191
    i32 59, label %while.end.sw.bb42_crit_edge192
    i32 58, label %while.end.sw.bb42_crit_edge193
    i32 60, label %while.end.sw.bb42_crit_edge194
    i32 61, label %while.end.sw.bb42_crit_edge195
  ]

while.end.sw.bb42_crit_edge195:                   ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb42

while.end.sw.bb42_crit_edge194:                   ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb42

while.end.sw.bb42_crit_edge193:                   ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb42

while.end.sw.bb42_crit_edge192:                   ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb42

while.end.sw.bb42_crit_edge191:                   ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb42

while.end.sw.bb42_crit_edge190:                   ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb42

while.end.sw.bb42_crit_edge189:                   ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb42

while.end.sw.bb42_crit_edge188:                   ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb42

while.end.sw.bb42_crit_edge187:                   ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb42

while.end.sw.bb42_crit_edge186:                   ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb42

while.end.sw.bb42_crit_edge185:                   ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb42

while.end.sw.bb42_crit_edge184:                   ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb42

while.end.sw.bb42_crit_edge183:                   ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb42

while.end.sw.bb42_crit_edge182:                   ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb42

while.end.sw.bb42_crit_edge181:                   ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb42

while.end.sw.bb42_crit_edge180:                   ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb42

while.end.sw.bb42_crit_edge179:                   ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb42

while.end.sw.bb42_crit_edge178:                   ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb42

while.end.sw.bb42_crit_edge177:                   ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb42

while.end.sw.bb42_crit_edge176:                   ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb42

while.end.sw.bb42_crit_edge175:                   ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb42

while.end.sw.bb42_crit_edge174:                   ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb42

while.end.sw.bb42_crit_edge173:                   ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb42

while.end.sw.bb42_crit_edge172:                   ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb42

while.end.sw.bb42_crit_edge171:                   ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb42

while.end.sw.bb42_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb42

while.end.sw.bb_crit_edge170:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

while.end.sw.bb_crit_edge169:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

while.end.sw.bb_crit_edge168:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

while.end.sw.bb_crit_edge167:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

while.end.sw.bb_crit_edge166:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

while.end.sw.bb_crit_edge165:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

while.end.sw.bb_crit_edge164:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

while.end.sw.bb_crit_edge:                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

sw.bb:                                            ; preds = %while.end.sw.bb_crit_edge, %while.end.sw.bb_crit_edge164, %while.end.sw.bb_crit_edge165, %while.end.sw.bb_crit_edge166, %while.end.sw.bb_crit_edge167, %while.end.sw.bb_crit_edge168, %while.end.sw.bb_crit_edge169, %while.end.sw.bb_crit_edge170
  %rlc_fw = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 73
  %23 = ptrtoint ptr %rlc_fw to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %rlc_fw, align 8
  %tobool18.not = icmp eq ptr %24, null
  br i1 %tobool18.not, label %if.then19, label %if.else

if.then19:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  %pm_method = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 34
  %25 = ptrtoint ptr %pm_method to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %pm_method, align 4
  br label %sw.epilog

if.else:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_const_cmp4(i32 34, i32 %21)
  %cmp21 = icmp ugt i32 %21, 34
  br i1 %cmp21, label %land.lhs.true23, label %if.else.if.else30_crit_edge

if.else.if.else30_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else30

land.lhs.true23:                                  ; preds = %if.else
  %flags = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 7
  %26 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %flags, align 8
  %and = and i32 %27, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool24.not = icmp eq i32 %and, 0
  br i1 %tobool24.not, label %land.lhs.true25, label %land.lhs.true23.if.else30_crit_edge

land.lhs.true23.if.else30_crit_edge:              ; preds = %land.lhs.true23
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else30

land.lhs.true25:                                  ; preds = %land.lhs.true23
  %smc_fw = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 79
  %28 = ptrtoint ptr %smc_fw to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %smc_fw, align 8
  %tobool26.not = icmp eq ptr %29, null
  br i1 %tobool26.not, label %if.then27, label %land.lhs.true25.if.else30_crit_edge

land.lhs.true25.if.else30_crit_edge:              ; preds = %land.lhs.true25
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else30

if.then27:                                        ; preds = %land.lhs.true25
  call void @__sanitizer_cov_trace_pc() #12
  %pm_method29 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 34
  %30 = ptrtoint ptr %pm_method29 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 0, ptr %pm_method29, align 4
  br label %sw.epilog

if.else30:                                        ; preds = %land.lhs.true25.if.else30_crit_edge, %land.lhs.true23.if.else30_crit_edge, %if.else.if.else30_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @radeon_dpm to i32))
  %31 = load i32, ptr @radeon_dpm, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %31)
  %cmp31 = icmp eq i32 %31, 1
  %pm_method35 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 34
  br i1 %cmp31, label %if.then33, label %if.else36

if.then33:                                        ; preds = %if.else30
  call void @__sanitizer_cov_trace_pc() #12
  %32 = ptrtoint ptr %pm_method35 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 2, ptr %pm_method35, align 4
  br label %sw.epilog

if.else36:                                        ; preds = %if.else30
  call void @__sanitizer_cov_trace_pc() #12
  %33 = ptrtoint ptr %pm_method35 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 0, ptr %pm_method35, align 4
  br label %sw.epilog

sw.bb42:                                          ; preds = %while.end.sw.bb42_crit_edge, %while.end.sw.bb42_crit_edge171, %while.end.sw.bb42_crit_edge172, %while.end.sw.bb42_crit_edge173, %while.end.sw.bb42_crit_edge174, %while.end.sw.bb42_crit_edge175, %while.end.sw.bb42_crit_edge176, %while.end.sw.bb42_crit_edge177, %while.end.sw.bb42_crit_edge178, %while.end.sw.bb42_crit_edge179, %while.end.sw.bb42_crit_edge180, %while.end.sw.bb42_crit_edge181, %while.end.sw.bb42_crit_edge182, %while.end.sw.bb42_crit_edge183, %while.end.sw.bb42_crit_edge184, %while.end.sw.bb42_crit_edge185, %while.end.sw.bb42_crit_edge186, %while.end.sw.bb42_crit_edge187, %while.end.sw.bb42_crit_edge188, %while.end.sw.bb42_crit_edge189, %while.end.sw.bb42_crit_edge190, %while.end.sw.bb42_crit_edge191, %while.end.sw.bb42_crit_edge192, %while.end.sw.bb42_crit_edge193, %while.end.sw.bb42_crit_edge194, %while.end.sw.bb42_crit_edge195
  %rlc_fw43 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 73
  %34 = ptrtoint ptr %rlc_fw43 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %rlc_fw43, align 8
  %tobool44.not = icmp eq ptr %35, null
  br i1 %tobool44.not, label %if.then45, label %land.lhs.true52

if.then45:                                        ; preds = %sw.bb42
  call void @__sanitizer_cov_trace_pc() #12
  %pm_method47 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 34
  %36 = ptrtoint ptr %pm_method47 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 0, ptr %pm_method47, align 4
  br label %sw.epilog

land.lhs.true52:                                  ; preds = %sw.bb42
  %flags53 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 7
  %37 = ptrtoint ptr %flags53 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %flags53, align 8
  %and54 = and i32 %38, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and54)
  %tobool55.not = icmp eq i32 %and54, 0
  br i1 %tobool55.not, label %land.lhs.true56, label %land.lhs.true52.if.else62_crit_edge

land.lhs.true52.if.else62_crit_edge:              ; preds = %land.lhs.true52
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else62

land.lhs.true56:                                  ; preds = %land.lhs.true52
  %smc_fw57 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 79
  %39 = ptrtoint ptr %smc_fw57 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %smc_fw57, align 8
  %tobool58.not = icmp eq ptr %40, null
  br i1 %tobool58.not, label %if.then59, label %land.lhs.true56.if.else62_crit_edge

land.lhs.true56.if.else62_crit_edge:              ; preds = %land.lhs.true56
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else62

if.then59:                                        ; preds = %land.lhs.true56
  call void @__sanitizer_cov_trace_pc() #12
  %pm_method61 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 34
  %41 = ptrtoint ptr %pm_method61 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 0, ptr %pm_method61, align 4
  br label %sw.epilog

if.else62:                                        ; preds = %land.lhs.true56.if.else62_crit_edge, %land.lhs.true52.if.else62_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @radeon_dpm to i32))
  %42 = load i32, ptr @radeon_dpm, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %42)
  %cmp66 = icmp eq i32 %42, -1
  %or.cond = select i1 %disable_dpm.0.off0, i1 %cmp66, i1 false
  br i1 %or.cond, label %if.then68, label %if.else71

if.then68:                                        ; preds = %if.else62
  call void @__sanitizer_cov_trace_pc() #12
  %pm_method70 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 34
  %43 = ptrtoint ptr %pm_method70 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 0, ptr %pm_method70, align 4
  br label %sw.epilog

if.else71:                                        ; preds = %if.else62
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %cmp72 = icmp eq i32 %42, 0
  %pm_method76 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 34
  br i1 %cmp72, label %if.then74, label %if.else77

if.then74:                                        ; preds = %if.else71
  call void @__sanitizer_cov_trace_pc() #12
  %44 = ptrtoint ptr %pm_method76 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 0, ptr %pm_method76, align 4
  br label %sw.epilog

if.else77:                                        ; preds = %if.else71
  call void @__sanitizer_cov_trace_pc() #12
  %45 = ptrtoint ptr %pm_method76 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 2, ptr %pm_method76, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  %pm_method85 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 34
  %46 = ptrtoint ptr %pm_method85 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 0, ptr %pm_method85, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.else77, %if.then74, %if.then68, %if.then59, %if.then45, %if.else36, %if.then33, %if.then27, %if.then19
  %pm_method87 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 34
  %47 = ptrtoint ptr %pm_method87 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %pm_method87, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %48)
  %cmp88 = icmp eq i32 %48, 2
  br i1 %cmp88, label %if.then90, label %if.else91

if.then90:                                        ; preds = %sw.epilog
  %pm.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58
  %state.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 8
  %49 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 3, ptr %state.i, align 4
  %user_state.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 9
  %50 = ptrtoint ptr %user_state.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 3, ptr %user_state.i, align 4
  %forced_level.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 36
  %51 = ptrtoint ptr %forced_level.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 0, ptr %forced_level.i, align 4
  %default_sclk.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 41, i32 6
  %52 = ptrtoint ptr %default_sclk.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %default_sclk.i, align 4
  %default_sclk6.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 29
  %54 = ptrtoint ptr %default_sclk6.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %53, ptr %default_sclk6.i, align 4
  %default_mclk.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 41, i32 5
  %55 = ptrtoint ptr %default_mclk.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %default_mclk.i, align 4
  %default_mclk9.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 30
  %57 = ptrtoint ptr %default_mclk9.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %56, ptr %default_mclk9.i, align 8
  %current_sclk.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 25
  %58 = ptrtoint ptr %current_sclk.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %53, ptr %current_sclk.i, align 8
  %current_mclk.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 26
  %59 = ptrtoint ptr %current_mclk.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %56, ptr %current_mclk.i, align 4
  %int_thermal_type.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 44
  %60 = ptrtoint ptr %int_thermal_type.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 0, ptr %int_thermal_type.i, align 4
  %bios.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 13
  %61 = ptrtoint ptr %bios.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %bios.i, align 8
  %tobool.not.i = icmp eq ptr %62, null
  br i1 %tobool.not.i, label %if.then90.cleanup_crit_edge, label %land.lhs.true.i

if.then90.cleanup_crit_edge:                      ; preds = %if.then90
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

land.lhs.true.i:                                  ; preds = %if.then90
  %is_atom_bios.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 14
  %63 = ptrtoint ptr %is_atom_bios.i to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %is_atom_bios.i, align 4, !range !207
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %64)
  %tobool17.not.i = icmp eq i8 %64, 0
  br i1 %tobool17.not.i, label %land.lhs.true.i.cleanup_crit_edge, label %if.then.i

land.lhs.true.i.cleanup_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then.i:                                        ; preds = %land.lhs.true.i
  tail call void @radeon_atombios_get_power_modes(ptr noundef %rdev) #10
  %65 = ptrtoint ptr %int_thermal_type.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %int_thermal_type.i, align 4
  %67 = zext i32 %66 to i64
  call void @__sanitizer_cov_trace_switch(i64 %67, ptr @__sancov_gen_cov_switch_values.93)
  switch i32 %66, label %if.then.i.do.body.i_crit_edge [
    i32 3, label %if.then.i.sw.bb.i.i_crit_edge
    i32 4, label %if.then.i.sw.bb.i.i_crit_edge196
    i32 6, label %if.then.i.sw.bb.i.i_crit_edge197
    i32 8, label %if.then.i.sw.bb.i.i_crit_edge198
    i32 7, label %if.then.i.sw.bb.i.i_crit_edge199
    i32 9, label %if.then.i.sw.bb.i.i_crit_edge200
    i32 11, label %if.then.i.sw.bb.i.i_crit_edge201
    i32 12, label %if.then.i.sw.bb.i.i_crit_edge202
  ]

if.then.i.sw.bb.i.i_crit_edge202:                 ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb.i.i

if.then.i.sw.bb.i.i_crit_edge201:                 ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb.i.i

if.then.i.sw.bb.i.i_crit_edge200:                 ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb.i.i

if.then.i.sw.bb.i.i_crit_edge199:                 ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb.i.i

if.then.i.sw.bb.i.i_crit_edge198:                 ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb.i.i

if.then.i.sw.bb.i.i_crit_edge197:                 ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb.i.i

if.then.i.sw.bb.i.i_crit_edge196:                 ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb.i.i

if.then.i.sw.bb.i.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb.i.i

if.then.i.do.body.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i

sw.bb.i.i:                                        ; preds = %if.then.i.sw.bb.i.i_crit_edge, %if.then.i.sw.bb.i.i_crit_edge196, %if.then.i.sw.bb.i.i_crit_edge197, %if.then.i.sw.bb.i.i_crit_edge198, %if.then.i.sw.bb.i.i_crit_edge199, %if.then.i.sw.bb.i.i_crit_edge200, %if.then.i.sw.bb.i.i_crit_edge201, %if.then.i.sw.bb.i.i_crit_edge202
  %asic.i.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 56
  %68 = ptrtoint ptr %asic.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %asic.i.i, align 8
  %get_temperature.i.i = getelementptr inbounds %struct.radeon_asic, ptr %69, i32 0, i32 20, i32 14
  %70 = ptrtoint ptr %get_temperature.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %get_temperature.i.i, align 4
  %cmp.i.i = icmp eq ptr %71, null
  br i1 %cmp.i.i, label %sw.bb.i.i.do.body.i_crit_edge, label %if.end.i.i

sw.bb.i.i.do.body.i_crit_edge:                    ; preds = %sw.bb.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i

if.end.i.i:                                       ; preds = %sw.bb.i.i
  %72 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %rdev, align 8
  %call.i.i = tail call ptr @hwmon_device_register_with_groups(ptr noundef %73, ptr noundef nonnull @.str.17, ptr noundef %rdev, ptr noundef nonnull @hwmon_groups) #10
  %int_hwmon_dev.i.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 45
  %74 = ptrtoint ptr %int_hwmon_dev.i.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr %call.i.i, ptr %int_hwmon_dev.i.i, align 8
  %cmp.i.i.i = icmp ugt ptr %call.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i.i, label %radeon_hwmon_init.exit.i, label %if.end.i.i.do.body.i_crit_edge

if.end.i.i.do.body.i_crit_edge:                   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i

radeon_hwmon_init.exit.i:                         ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %75 = ptrtoint ptr %call.i.i to i32
  %76 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %rdev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %77, ptr noundef nonnull @.str.18, i32 noundef %75) #13
  br label %cleanup

do.body.i:                                        ; preds = %if.end.i.i.do.body.i_crit_edge, %sw.bb.i.i.do.body.i_crit_edge, %if.then.i.do.body.i_crit_edge
  %thermal.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 35
  tail call void @__init_work(ptr noundef %thermal.i, i32 noundef 0) #10
  %78 = ptrtoint ptr %thermal.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 -64, ptr %thermal.i, align 4
  %lockdep_map.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 35, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map.i, ptr noundef nonnull @.str.13, ptr noundef nonnull @radeon_pm_init_dpm.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #10
  %entry35.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 35, i32 0, i32 1
  %79 = ptrtoint ptr %entry35.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store volatile ptr %entry35.i, ptr %entry35.i, align 4
  %prev.i.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 35, i32 0, i32 1, i32 1
  %80 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr %entry35.i, ptr %prev.i.i, align 4
  %func.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 35, i32 0, i32 2
  %81 = ptrtoint ptr %func.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr @radeon_dpm_thermal_work_handler, ptr %func.i, align 4
  tail call void @mutex_lock_nested(ptr noundef %pm.i, i32 noundef 0) #10
  %asic.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 56
  %82 = ptrtoint ptr %asic.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %asic.i, align 8
  %dpm41.i = getelementptr inbounds %struct.radeon_asic, ptr %83, i32 0, i32 21
  %84 = ptrtoint ptr %dpm41.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %dpm41.i, align 4
  %call42.i = tail call i32 %85(ptr noundef %rdev) #10
  %boot_ps.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 4
  %86 = ptrtoint ptr %boot_ps.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %boot_ps.i, align 4
  %requested_ps.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 3
  %88 = ptrtoint ptr %requested_ps.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr %87, ptr %requested_ps.i, align 4
  %current_ps.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 2
  %89 = ptrtoint ptr %current_ps.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr %87, ptr %current_ps.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @radeon_dpm to i32))
  %90 = load i32, ptr @radeon_dpm, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %90)
  %cmp.i = icmp eq i32 %90, 1
  br i1 %cmp.i, label %if.then49.i, label %do.body.i.if.end50.i_crit_edge

do.body.i.if.end50.i_crit_edge:                   ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end50.i

if.then49.i:                                      ; preds = %do.body.i
  %num_ps.i.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 1
  %91 = ptrtoint ptr %num_ps.i.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %num_ps.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %92)
  %cmp10.i.i = icmp sgt i32 %92, 0
  br i1 %cmp10.i.i, label %do.end.lr.ph.i.i, label %if.then49.i.if.end50.i_crit_edge

if.then49.i.if.end50.i_crit_edge:                 ; preds = %if.then49.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end50.i

do.end.lr.ph.i.i:                                 ; preds = %if.then49.i
  %dpm.i.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52
  br label %do.end.i.i

do.end.i.i:                                       ; preds = %do.end.i.i.do.end.i.i_crit_edge, %do.end.lr.ph.i.i
  %i.011.i.i = phi i32 [ 0, %do.end.lr.ph.i.i ], [ %inc.i.i, %do.end.i.i.do.end.i.i_crit_edge ]
  %call.i166.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.34, i32 noundef %i.011.i.i) #13
  %93 = ptrtoint ptr %asic.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %asic.i, align 8
  %print_power_state.i.i = getelementptr inbounds %struct.radeon_asic, ptr %94, i32 0, i32 21, i32 12
  %95 = ptrtoint ptr %print_power_state.i.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %print_power_state.i.i, align 4
  %97 = ptrtoint ptr %dpm.i.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %dpm.i.i, align 4
  %arrayidx.i.i = getelementptr %struct.radeon_ps, ptr %98, i32 %i.011.i.i
  tail call void %96(ptr noundef %rdev, ptr noundef %arrayidx.i.i) #10
  %inc.i.i = add nuw nsw i32 %i.011.i.i, 1
  %99 = ptrtoint ptr %num_ps.i.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %num_ps.i.i, align 4
  %cmp.i167.i = icmp slt i32 %inc.i.i, %100
  br i1 %cmp.i167.i, label %do.end.i.i.do.end.i.i_crit_edge, label %do.end.i.i.if.end50.i_crit_edge

do.end.i.i.if.end50.i_crit_edge:                  ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end50.i

do.end.i.i.do.end.i.i_crit_edge:                  ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i.i

if.end50.i:                                       ; preds = %do.end.i.i.if.end50.i_crit_edge, %if.then49.i.if.end50.i_crit_edge, %do.body.i.if.end50.i_crit_edge
  %101 = ptrtoint ptr %asic.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %asic.i, align 8
  %setup_asic.i = getelementptr inbounds %struct.radeon_asic, ptr %102, i32 0, i32 21, i32 1
  %103 = ptrtoint ptr %setup_asic.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %setup_asic.i, align 4
  tail call void %104(ptr noundef %rdev) #10
  %105 = ptrtoint ptr %asic.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %asic.i, align 8
  %enable.i = getelementptr inbounds %struct.radeon_asic, ptr %106, i32 0, i32 21, i32 2
  %107 = ptrtoint ptr %enable.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %enable.i, align 4
  %call55.i = tail call i32 %108(ptr noundef %rdev) #10
  tail call void @mutex_unlock(ptr noundef %pm.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call55.i)
  %tobool58.not.i = icmp eq i32 %call55.i, 0
  %dpm_enabled.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 50
  br i1 %tobool58.not.i, label %if.end60.i, label %dpm_failed.i

if.end60.i:                                       ; preds = %if.end50.i
  call void @__sanitizer_cov_trace_pc() #12
  %109 = ptrtoint ptr %dpm_enabled.i to i32
  call void @__asan_store1_noabort(i32 %109)
  store i8 1, ptr %dpm_enabled.i, align 8
  %ddev.i.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 1
  %110 = ptrtoint ptr %ddev.i.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %ddev.i.i, align 4
  %primary.i.i = getelementptr inbounds %struct.drm_device, ptr %111, i32 0, i32 6
  %112 = ptrtoint ptr %primary.i.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %primary.i.i, align 4
  %debugfs_root.i.i = getelementptr inbounds %struct.drm_minor, ptr %113, i32 0, i32 4
  %114 = ptrtoint ptr %debugfs_root.i.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %debugfs_root.i.i, align 4
  %call.i168.i = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.36, i16 noundef zeroext 292, ptr noundef %115, ptr noundef %rdev, ptr noundef nonnull @radeon_debugfs_pm_info_fops) #10
  %call65.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14) #13
  br label %cleanup

dpm_failed.i:                                     ; preds = %if.end50.i
  %116 = ptrtoint ptr %dpm_enabled.i to i32
  call void @__asan_store1_noabort(i32 %116)
  store i8 0, ptr %dpm_enabled.i, align 8
  %117 = ptrtoint ptr %family to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %family, align 4
  %119 = add i32 %118, -47
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %119)
  %120 = icmp ult i32 %119, 4
  br i1 %120, label %land.lhs.true72.i, label %dpm_failed.i.if.end105.i_crit_edge

dpm_failed.i.if.end105.i_crit_edge:               ; preds = %dpm_failed.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end105.i

land.lhs.true72.i:                                ; preds = %dpm_failed.i
  %mc_fw.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 74
  %121 = ptrtoint ptr %mc_fw.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %mc_fw.i, align 4
  %tobool73.not.i = icmp eq ptr %122, null
  br i1 %tobool73.not.i, label %land.lhs.true72.i.if.end105.i_crit_edge, label %if.then74.i

land.lhs.true72.i.if.end105.i_crit_edge:          ; preds = %land.lhs.true72.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end105.i

if.then74.i:                                      ; preds = %land.lhs.true72.i
  %default_vddc.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 31
  %123 = ptrtoint ptr %default_vddc.i to i32
  call void @__asan_load2_noabort(i32 %123)
  %124 = load i16, ptr %default_vddc.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %124)
  %tobool76.not.i = icmp eq i16 %124, 0
  br i1 %tobool76.not.i, label %if.then74.i.if.end80.i_crit_edge, label %if.then77.i

if.then74.i.if.end80.i_crit_edge:                 ; preds = %if.then74.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end80.i

if.then77.i:                                      ; preds = %if.then74.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @radeon_atom_set_voltage(ptr noundef %rdev, i16 noundef zeroext %124, i8 noundef zeroext 1) #10
  br label %if.end80.i

if.end80.i:                                       ; preds = %if.then77.i, %if.then74.i.if.end80.i_crit_edge
  %default_vddci.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 32
  %125 = ptrtoint ptr %default_vddci.i to i32
  call void @__asan_load2_noabort(i32 %125)
  %126 = load i16, ptr %default_vddci.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %126)
  %tobool82.not.i = icmp eq i16 %126, 0
  br i1 %tobool82.not.i, label %if.end80.i.if.end86.i_crit_edge, label %if.then83.i

if.end80.i.if.end86.i_crit_edge:                  ; preds = %if.end80.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end86.i

if.then83.i:                                      ; preds = %if.end80.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @radeon_atom_set_voltage(ptr noundef %rdev, i16 noundef zeroext %126, i8 noundef zeroext 4) #10
  br label %if.end86.i

if.end86.i:                                       ; preds = %if.then83.i, %if.end80.i.if.end86.i_crit_edge
  %127 = ptrtoint ptr %default_sclk6.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %default_sclk6.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %128)
  %tobool89.not.i = icmp eq i32 %128, 0
  br i1 %tobool89.not.i, label %if.end86.i.if.end95.i_crit_edge, label %if.then90.i

if.end86.i.if.end95.i_crit_edge:                  ; preds = %if.end86.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end95.i

if.then90.i:                                      ; preds = %if.end86.i
  call void @__sanitizer_cov_trace_pc() #12
  %129 = ptrtoint ptr %asic.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %asic.i, align 8
  %set_engine_clock.i = getelementptr inbounds %struct.radeon_asic, ptr %130, i32 0, i32 20, i32 6
  %131 = ptrtoint ptr %set_engine_clock.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %set_engine_clock.i, align 4
  tail call void %132(ptr noundef %rdev, i32 noundef %128) #10
  br label %if.end95.i

if.end95.i:                                       ; preds = %if.then90.i, %if.end86.i.if.end95.i_crit_edge
  %133 = ptrtoint ptr %default_mclk9.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %default_mclk9.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %134)
  %tobool98.not.i = icmp eq i32 %134, 0
  br i1 %tobool98.not.i, label %if.end95.i.if.end105.i_crit_edge, label %if.then99.i

if.end95.i.if.end105.i_crit_edge:                 ; preds = %if.end95.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end105.i

if.then99.i:                                      ; preds = %if.end95.i
  call void @__sanitizer_cov_trace_pc() #12
  %135 = ptrtoint ptr %asic.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %asic.i, align 8
  %set_memory_clock.i = getelementptr inbounds %struct.radeon_asic, ptr %136, i32 0, i32 20, i32 8
  %137 = ptrtoint ptr %set_memory_clock.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %set_memory_clock.i, align 4
  tail call void %138(ptr noundef %rdev, i32 noundef %134) #10
  br label %if.end105.i

if.end105.i:                                      ; preds = %if.then99.i, %if.end95.i.if.end105.i_crit_edge, %land.lhs.true72.i.if.end105.i_crit_edge, %dpm_failed.i.if.end105.i_crit_edge
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.16) #10
  br label %cleanup

if.else91:                                        ; preds = %sw.epilog
  %profile.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 41
  %139 = ptrtoint ptr %profile.i to i32
  call void @__asan_store4_noabort(i32 %139)
  store i32 0, ptr %profile.i, align 4
  %dynpm_state.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 36
  %140 = ptrtoint ptr %dynpm_state.i to i32
  call void @__asan_store4_noabort(i32 %140)
  store i32 0, ptr %dynpm_state.i, align 4
  %dynpm_planned_action.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 37
  %141 = ptrtoint ptr %dynpm_planned_action.i to i32
  call void @__asan_store4_noabort(i32 %141)
  store i32 0, ptr %dynpm_planned_action.i, align 8
  %dynpm_can_upclock.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 39
  %142 = ptrtoint ptr %dynpm_can_upclock.i to i32
  call void @__asan_store1_noabort(i32 %142)
  store i8 1, ptr %dynpm_can_upclock.i, align 8
  %dynpm_can_downclock.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 40
  %143 = ptrtoint ptr %dynpm_can_downclock.i to i32
  call void @__asan_store1_noabort(i32 %143)
  store i8 1, ptr %dynpm_can_downclock.i, align 1
  %default_sclk.i125 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 41, i32 6
  %144 = ptrtoint ptr %default_sclk.i125 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %default_sclk.i125, align 4
  %default_sclk6.i126 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 29
  %146 = ptrtoint ptr %default_sclk6.i126 to i32
  call void @__asan_store4_noabort(i32 %146)
  store i32 %145, ptr %default_sclk6.i126, align 4
  %default_mclk.i127 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 41, i32 5
  %147 = ptrtoint ptr %default_mclk.i127 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %default_mclk.i127, align 4
  %default_mclk9.i128 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 30
  %149 = ptrtoint ptr %default_mclk9.i128 to i32
  call void @__asan_store4_noabort(i32 %149)
  store i32 %148, ptr %default_mclk9.i128, align 8
  %current_sclk.i129 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 25
  %150 = ptrtoint ptr %current_sclk.i129 to i32
  call void @__asan_store4_noabort(i32 %150)
  store i32 %145, ptr %current_sclk.i129, align 8
  %current_mclk.i130 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 26
  %151 = ptrtoint ptr %current_mclk.i130 to i32
  call void @__asan_store4_noabort(i32 %151)
  store i32 %148, ptr %current_mclk.i130, align 4
  %int_thermal_type.i131 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 44
  %152 = ptrtoint ptr %int_thermal_type.i131 to i32
  call void @__asan_store4_noabort(i32 %152)
  store i32 0, ptr %int_thermal_type.i131, align 4
  %bios.i132 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 13
  %153 = ptrtoint ptr %bios.i132 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %bios.i132, align 8
  %tobool.not.i133 = icmp eq ptr %154, null
  br i1 %tobool.not.i133, label %if.else91.do.body60.i_crit_edge, label %if.then.i136

if.else91.do.body60.i_crit_edge:                  ; preds = %if.else91
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body60.i

if.then.i136:                                     ; preds = %if.else91
  %is_atom_bios.i134 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 14
  %155 = ptrtoint ptr %is_atom_bios.i134 to i32
  call void @__asan_load1_noabort(i32 %155)
  %156 = load i8, ptr %is_atom_bios.i134, align 4, !range !207
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %156)
  %tobool17.not.i135 = icmp eq i8 %156, 0
  br i1 %tobool17.not.i135, label %if.else.i, label %if.then18.i

if.then18.i:                                      ; preds = %if.then.i136
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @radeon_atombios_get_power_modes(ptr noundef %rdev) #10
  br label %if.end.i

if.else.i:                                        ; preds = %if.then.i136
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @radeon_combios_get_power_modes(ptr noundef %rdev) #10
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %if.then18.i
  %num_power_states.i.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 19
  %157 = ptrtoint ptr %num_power_states.i.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %num_power_states.i.i, align 8
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.50, i32 noundef %158) #10
  %159 = ptrtoint ptr %num_power_states.i.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %num_power_states.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %160)
  %cmp61.i.i = icmp sgt i32 %160, 0
  br i1 %cmp61.i.i, label %for.body.lr.ph.i.i, label %if.end.i.radeon_pm_print_states.exit.i_crit_edge

if.end.i.radeon_pm_print_states.exit.i_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %radeon_pm_print_states.exit.i

for.body.lr.ph.i.i:                               ; preds = %if.end.i
  %power_state4.i.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 18
  %default_power_state_index.i.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 24
  %flags.i.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 7
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc33.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %i.062.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc34.i.i, %for.inc33.i.i.for.body.i.i_crit_edge ]
  %161 = ptrtoint ptr %power_state4.i.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %power_state4.i.i, align 4
  %arrayidx.i.i137 = getelementptr %struct.radeon_power_state, ptr %162, i32 %i.062.i.i
  %163 = ptrtoint ptr %arrayidx.i.i137 to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %arrayidx.i.i137, align 4
  %arrayidx5.i.i = getelementptr [5 x ptr], ptr @radeon_pm_state_type_name, i32 0, i32 %164
  %165 = ptrtoint ptr %arrayidx5.i.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %arrayidx5.i.i, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.51, i32 noundef %i.062.i.i, ptr noundef %166) #10
  %167 = ptrtoint ptr %default_power_state_index.i.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load i32, ptr %default_power_state_index.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %i.062.i.i, i32 %168)
  %cmp7.i.i = icmp eq i32 %i.062.i.i, %168
  br i1 %cmp7.i.i, label %if.then.i.i, label %for.body.i.i.if.end.i.i138_crit_edge

for.body.i.i.if.end.i.i138_crit_edge:             ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i.i138

if.then.i.i:                                      ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.52) #10
  br label %if.end.i.i138

if.end.i.i138:                                    ; preds = %if.then.i.i, %for.body.i.i.if.end.i.i138_crit_edge
  %169 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load i32, ptr %flags.i.i, align 8
  %171 = and i32 %170, 2228224
  call void @__sanitizer_cov_trace_const_cmp4(i32 2097152, i32 %171)
  %172 = icmp eq i32 %171, 2097152
  br i1 %172, label %if.then11.i.i, label %if.end.i.i138.if.end12.i.i_crit_edge

if.end.i.i138.if.end12.i.i_crit_edge:             ; preds = %if.end.i.i138
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end12.i.i

if.then11.i.i:                                    ; preds = %if.end.i.i138
  call void @__sanitizer_cov_trace_pc() #12
  %pcie_lanes.i.i = getelementptr %struct.radeon_power_state, ptr %162, i32 %i.062.i.i, i32 7
  %173 = ptrtoint ptr %pcie_lanes.i.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load i32, ptr %pcie_lanes.i.i, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.53, i32 noundef %174) #10
  br label %if.end12.i.i

if.end12.i.i:                                     ; preds = %if.then11.i.i, %if.end.i.i138.if.end12.i.i_crit_edge
  %flags13.i.i = getelementptr %struct.radeon_power_state, ptr %162, i32 %i.062.i.i, i32 4
  %175 = ptrtoint ptr %flags13.i.i to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load i32, ptr %flags13.i.i, align 4
  %and14.i.i = and i32 %176, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14.i.i)
  %tobool15.not.i.i = icmp eq i32 %and14.i.i, 0
  br i1 %tobool15.not.i.i, label %if.end12.i.i.if.end17.i.i_crit_edge, label %if.then16.i.i

if.end12.i.i.if.end17.i.i_crit_edge:              ; preds = %if.end12.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end17.i.i

if.then16.i.i:                                    ; preds = %if.end12.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.54) #10
  br label %if.end17.i.i

if.end17.i.i:                                     ; preds = %if.then16.i.i, %if.end12.i.i.if.end17.i.i_crit_edge
  %num_clock_modes.i.i = getelementptr %struct.radeon_power_state, ptr %162, i32 %i.062.i.i, i32 2
  %177 = ptrtoint ptr %num_clock_modes.i.i to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load i32, ptr %num_clock_modes.i.i, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.55, i32 noundef %178) #10
  %179 = ptrtoint ptr %num_clock_modes.i.i to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load i32, ptr %num_clock_modes.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %180)
  %cmp2058.i.i = icmp sgt i32 %180, 0
  br i1 %cmp2058.i.i, label %for.body21.lr.ph.i.i, label %if.end17.i.i.for.inc33.i.i_crit_edge

if.end17.i.i.for.inc33.i.i_crit_edge:             ; preds = %if.end17.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc33.i.i

for.body21.lr.ph.i.i:                             ; preds = %if.end17.i.i
  %clock_info22.i.i = getelementptr %struct.radeon_power_state, ptr %162, i32 %i.062.i.i, i32 1
  br label %for.body21.i.i

for.body21.i.i:                                   ; preds = %for.inc.i.i.for.body21.i.i_crit_edge, %for.body21.lr.ph.i.i
  %j.059.i.i = phi i32 [ 0, %for.body21.lr.ph.i.i ], [ %inc.i.i139, %for.inc.i.i.for.body21.i.i_crit_edge ]
  %181 = ptrtoint ptr %clock_info22.i.i to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %clock_info22.i.i, align 4
  %183 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load i32, ptr %flags.i.i, align 8
  %and25.i.i = and i32 %184, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25.i.i)
  %tobool26.not.i.i = icmp eq i32 %and25.i.i, 0
  br i1 %tobool26.not.i.i, label %if.else.i.i, label %if.then27.i.i

if.then27.i.i:                                    ; preds = %for.body21.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %sclk.i.i = getelementptr %struct.radeon_pm_clock_info, ptr %182, i32 %j.059.i.i, i32 1
  %185 = ptrtoint ptr %sclk.i.i to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load i32, ptr %sclk.i.i, align 4
  %mul.i.i = mul i32 %186, 10
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.56, i32 noundef %j.059.i.i, i32 noundef %mul.i.i) #10
  br label %for.inc.i.i

if.else.i.i:                                      ; preds = %for.body21.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx23.i.i = getelementptr %struct.radeon_pm_clock_info, ptr %182, i32 %j.059.i.i
  %sclk28.i.i = getelementptr %struct.radeon_pm_clock_info, ptr %182, i32 %j.059.i.i, i32 1
  %187 = ptrtoint ptr %sclk28.i.i to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load i32, ptr %sclk28.i.i, align 4
  %mul29.i.i = mul i32 %188, 10
  %189 = ptrtoint ptr %arrayidx23.i.i to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load i32, ptr %arrayidx23.i.i, align 4
  %mul30.i.i = mul i32 %190, 10
  %voltage31.i.i = getelementptr %struct.radeon_pm_clock_info, ptr %182, i32 %j.059.i.i, i32 2, i32 7
  %191 = ptrtoint ptr %voltage31.i.i to i32
  call void @__asan_load2_noabort(i32 %191)
  %192 = load i16, ptr %voltage31.i.i, align 4
  %conv.i.i = zext i16 %192 to i32
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.57, i32 noundef %j.059.i.i, i32 noundef %mul29.i.i, i32 noundef %mul30.i.i, i32 noundef %conv.i.i) #10
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %if.else.i.i, %if.then27.i.i
  %inc.i.i139 = add nuw nsw i32 %j.059.i.i, 1
  %193 = ptrtoint ptr %num_clock_modes.i.i to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load i32, ptr %num_clock_modes.i.i, align 4
  %cmp20.i.i = icmp slt i32 %inc.i.i139, %194
  br i1 %cmp20.i.i, label %for.inc.i.i.for.body21.i.i_crit_edge, label %for.inc.i.i.for.inc33.i.i_crit_edge

for.inc.i.i.for.inc33.i.i_crit_edge:              ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc33.i.i

for.inc.i.i.for.body21.i.i_crit_edge:             ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body21.i.i

for.inc33.i.i:                                    ; preds = %for.inc.i.i.for.inc33.i.i_crit_edge, %if.end17.i.i.for.inc33.i.i_crit_edge
  %inc34.i.i = add nuw nsw i32 %i.062.i.i, 1
  %195 = ptrtoint ptr %num_power_states.i.i to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load i32, ptr %num_power_states.i.i, align 8
  %cmp.i.i140 = icmp slt i32 %inc34.i.i, %196
  br i1 %cmp.i.i140, label %for.inc33.i.i.for.body.i.i_crit_edge, label %for.inc33.i.i.radeon_pm_print_states.exit.i_crit_edge

for.inc33.i.i.radeon_pm_print_states.exit.i_crit_edge: ; preds = %for.inc33.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %radeon_pm_print_states.exit.i

for.inc33.i.i.for.body.i.i_crit_edge:             ; preds = %for.inc33.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i

radeon_pm_print_states.exit.i:                    ; preds = %for.inc33.i.i.radeon_pm_print_states.exit.i_crit_edge, %if.end.i.radeon_pm_print_states.exit.i_crit_edge
  %asic.i141 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 56
  %197 = ptrtoint ptr %asic.i141 to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load ptr, ptr %asic.i141, align 8
  %init_profile.i = getelementptr inbounds %struct.radeon_asic, ptr %198, i32 0, i32 20, i32 3
  %199 = ptrtoint ptr %init_profile.i to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load ptr, ptr %init_profile.i, align 4
  tail call void %200(ptr noundef %rdev) #10
  %201 = ptrtoint ptr %family to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load i32, ptr %family, align 4
  %203 = add i32 %202, -47
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %203)
  %204 = icmp ult i32 %203, 4
  br i1 %204, label %land.lhs.true22.i, label %radeon_pm_print_states.exit.i.if.end56.i_crit_edge

radeon_pm_print_states.exit.i.if.end56.i_crit_edge: ; preds = %radeon_pm_print_states.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end56.i

land.lhs.true22.i:                                ; preds = %radeon_pm_print_states.exit.i
  %mc_fw.i143 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 74
  %205 = ptrtoint ptr %mc_fw.i143 to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load ptr, ptr %mc_fw.i143, align 4
  %tobool23.not.i = icmp eq ptr %206, null
  br i1 %tobool23.not.i, label %land.lhs.true22.i.if.end56.i_crit_edge, label %if.then24.i

land.lhs.true22.i.if.end56.i_crit_edge:           ; preds = %land.lhs.true22.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end56.i

if.then24.i:                                      ; preds = %land.lhs.true22.i
  %default_vddc.i144 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 31
  %207 = ptrtoint ptr %default_vddc.i144 to i32
  call void @__asan_load2_noabort(i32 %207)
  %208 = load i16, ptr %default_vddc.i144, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %208)
  %tobool26.not.i = icmp eq i16 %208, 0
  br i1 %tobool26.not.i, label %if.then24.i.if.end30.i_crit_edge, label %if.then27.i

if.then24.i.if.end30.i_crit_edge:                 ; preds = %if.then24.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end30.i

if.then27.i:                                      ; preds = %if.then24.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @radeon_atom_set_voltage(ptr noundef %rdev, i16 noundef zeroext %208, i8 noundef zeroext 1) #10
  br label %if.end30.i

if.end30.i:                                       ; preds = %if.then27.i, %if.then24.i.if.end30.i_crit_edge
  %default_vddci.i145 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 32
  %209 = ptrtoint ptr %default_vddci.i145 to i32
  call void @__asan_load2_noabort(i32 %209)
  %210 = load i16, ptr %default_vddci.i145, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %210)
  %tobool32.not.i = icmp eq i16 %210, 0
  br i1 %tobool32.not.i, label %if.end30.i.if.end36.i_crit_edge, label %if.then33.i

if.end30.i.if.end36.i_crit_edge:                  ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end36.i

if.then33.i:                                      ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @radeon_atom_set_voltage(ptr noundef %rdev, i16 noundef zeroext %210, i8 noundef zeroext 4) #10
  br label %if.end36.i

if.end36.i:                                       ; preds = %if.then33.i, %if.end30.i.if.end36.i_crit_edge
  %211 = ptrtoint ptr %default_sclk6.i126 to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load i32, ptr %default_sclk6.i126, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %212)
  %tobool39.not.i = icmp eq i32 %212, 0
  br i1 %tobool39.not.i, label %if.end36.i.if.end45.i_crit_edge, label %if.then40.i

if.end36.i.if.end45.i_crit_edge:                  ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end45.i

if.then40.i:                                      ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #12
  %213 = ptrtoint ptr %asic.i141 to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load ptr, ptr %asic.i141, align 8
  %set_engine_clock.i146 = getelementptr inbounds %struct.radeon_asic, ptr %214, i32 0, i32 20, i32 6
  %215 = ptrtoint ptr %set_engine_clock.i146 to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load ptr, ptr %set_engine_clock.i146, align 4
  tail call void %216(ptr noundef %rdev, i32 noundef %212) #10
  br label %if.end45.i

if.end45.i:                                       ; preds = %if.then40.i, %if.end36.i.if.end45.i_crit_edge
  %217 = ptrtoint ptr %default_mclk9.i128 to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load i32, ptr %default_mclk9.i128, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %218)
  %tobool48.not.i = icmp eq i32 %218, 0
  br i1 %tobool48.not.i, label %if.end45.i.if.end56.i_crit_edge, label %if.then49.i148

if.end45.i.if.end56.i_crit_edge:                  ; preds = %if.end45.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end56.i

if.then49.i148:                                   ; preds = %if.end45.i
  call void @__sanitizer_cov_trace_pc() #12
  %219 = ptrtoint ptr %asic.i141 to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load ptr, ptr %asic.i141, align 8
  %set_memory_clock.i147 = getelementptr inbounds %struct.radeon_asic, ptr %220, i32 0, i32 20, i32 8
  %221 = ptrtoint ptr %set_memory_clock.i147 to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load ptr, ptr %set_memory_clock.i147, align 4
  tail call void %222(ptr noundef %rdev, i32 noundef %218) #10
  br label %if.end56.i

if.end56.i:                                       ; preds = %if.then49.i148, %if.end45.i.if.end56.i_crit_edge, %land.lhs.true22.i.if.end56.i_crit_edge, %radeon_pm_print_states.exit.i.if.end56.i_crit_edge
  %223 = ptrtoint ptr %int_thermal_type.i131 to i32
  call void @__asan_load4_noabort(i32 %223)
  %.pr.i = load i32, ptr %int_thermal_type.i131, align 4
  %224 = zext i32 %.pr.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %224, ptr @__sancov_gen_cov_switch_values.94)
  switch i32 %.pr.i, label %if.end56.i.do.body60.i_crit_edge [
    i32 3, label %if.end56.i.sw.bb.i.i150_crit_edge
    i32 4, label %if.end56.i.sw.bb.i.i150_crit_edge203
    i32 6, label %if.end56.i.sw.bb.i.i150_crit_edge204
    i32 8, label %if.end56.i.sw.bb.i.i150_crit_edge205
    i32 7, label %if.end56.i.sw.bb.i.i150_crit_edge206
    i32 9, label %if.end56.i.sw.bb.i.i150_crit_edge207
    i32 11, label %if.end56.i.sw.bb.i.i150_crit_edge208
    i32 12, label %if.end56.i.sw.bb.i.i150_crit_edge209
  ]

if.end56.i.sw.bb.i.i150_crit_edge209:             ; preds = %if.end56.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb.i.i150

if.end56.i.sw.bb.i.i150_crit_edge208:             ; preds = %if.end56.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb.i.i150

if.end56.i.sw.bb.i.i150_crit_edge207:             ; preds = %if.end56.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb.i.i150

if.end56.i.sw.bb.i.i150_crit_edge206:             ; preds = %if.end56.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb.i.i150

if.end56.i.sw.bb.i.i150_crit_edge205:             ; preds = %if.end56.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb.i.i150

if.end56.i.sw.bb.i.i150_crit_edge204:             ; preds = %if.end56.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb.i.i150

if.end56.i.sw.bb.i.i150_crit_edge203:             ; preds = %if.end56.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb.i.i150

if.end56.i.sw.bb.i.i150_crit_edge:                ; preds = %if.end56.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb.i.i150

if.end56.i.do.body60.i_crit_edge:                 ; preds = %if.end56.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body60.i

sw.bb.i.i150:                                     ; preds = %if.end56.i.sw.bb.i.i150_crit_edge, %if.end56.i.sw.bb.i.i150_crit_edge203, %if.end56.i.sw.bb.i.i150_crit_edge204, %if.end56.i.sw.bb.i.i150_crit_edge205, %if.end56.i.sw.bb.i.i150_crit_edge206, %if.end56.i.sw.bb.i.i150_crit_edge207, %if.end56.i.sw.bb.i.i150_crit_edge208, %if.end56.i.sw.bb.i.i150_crit_edge209
  %225 = ptrtoint ptr %asic.i141 to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load ptr, ptr %asic.i141, align 8
  %get_temperature.i.i149 = getelementptr inbounds %struct.radeon_asic, ptr %226, i32 0, i32 20, i32 14
  %227 = ptrtoint ptr %get_temperature.i.i149 to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load ptr, ptr %get_temperature.i.i149, align 4
  %cmp.i141.i = icmp eq ptr %228, null
  br i1 %cmp.i141.i, label %sw.bb.i.i150.do.body60.i_crit_edge, label %if.end.i142.i

sw.bb.i.i150.do.body60.i_crit_edge:               ; preds = %sw.bb.i.i150
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body60.i

if.end.i142.i:                                    ; preds = %sw.bb.i.i150
  %229 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load ptr, ptr %rdev, align 8
  %call.i.i151 = tail call ptr @hwmon_device_register_with_groups(ptr noundef %230, ptr noundef nonnull @.str.17, ptr noundef %rdev, ptr noundef nonnull @hwmon_groups) #10
  %int_hwmon_dev.i.i152 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 45
  %231 = ptrtoint ptr %int_hwmon_dev.i.i152 to i32
  call void @__asan_store4_noabort(i32 %231)
  store ptr %call.i.i151, ptr %int_hwmon_dev.i.i152, align 8
  %cmp.i.i.i153 = icmp ugt ptr %call.i.i151, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i.i153, label %radeon_hwmon_init.exit.i154, label %if.end.i142.i.do.body60.i_crit_edge

if.end.i142.i.do.body60.i_crit_edge:              ; preds = %if.end.i142.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body60.i

radeon_hwmon_init.exit.i154:                      ; preds = %if.end.i142.i
  call void @__sanitizer_cov_trace_pc() #12
  %232 = ptrtoint ptr %call.i.i151 to i32
  %233 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load ptr, ptr %rdev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %234, ptr noundef nonnull @.str.18, i32 noundef %232) #13
  br label %cleanup

do.body60.i:                                      ; preds = %if.end.i142.i.do.body60.i_crit_edge, %sw.bb.i.i150.do.body60.i_crit_edge, %if.end56.i.do.body60.i_crit_edge, %if.else91.do.body60.i_crit_edge
  %dynpm_idle_work.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 35
  tail call void @__init_work(ptr noundef %dynpm_idle_work.i, i32 noundef 0) #10
  %235 = ptrtoint ptr %dynpm_idle_work.i to i32
  call void @__asan_store4_noabort(i32 %235)
  store i32 -64, ptr %dynpm_idle_work.i, align 8
  %lockdep_map.i155 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 35, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map.i155, ptr noundef nonnull @.str.45, ptr noundef nonnull @radeon_pm_init_old.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #10
  %entry71.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 35, i32 0, i32 1
  %236 = ptrtoint ptr %entry71.i to i32
  call void @__asan_store4_noabort(i32 %236)
  store volatile ptr %entry71.i, ptr %entry71.i, align 4
  %prev.i.i156 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 35, i32 0, i32 1, i32 1
  %237 = ptrtoint ptr %prev.i.i156 to i32
  call void @__asan_store4_noabort(i32 %237)
  store ptr %entry71.i, ptr %prev.i.i156, align 4
  %func.i157 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 35, i32 0, i32 2
  %238 = ptrtoint ptr %func.i157 to i32
  call void @__asan_store4_noabort(i32 %238)
  store ptr @radeon_dynpm_idle_work_handler, ptr %func.i157, align 4
  %timer.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 35, i32 1
  tail call void @init_timer_key(ptr noundef %timer.i, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.47, ptr noundef nonnull @radeon_pm_init_old.__key.46) #10
  %num_power_states.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 19
  %239 = ptrtoint ptr %num_power_states.i to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load i32, ptr %num_power_states.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %240)
  %cmp83.i = icmp sgt i32 %240, 1
  br i1 %cmp83.i, label %if.then84.i, label %do.body60.i.cleanup_crit_edge

do.body60.i.cleanup_crit_edge:                    ; preds = %do.body60.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then84.i:                                      ; preds = %do.body60.i
  call void @__sanitizer_cov_trace_pc() #12
  %ddev.i.i158 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 1
  %241 = ptrtoint ptr %ddev.i.i158 to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load ptr, ptr %ddev.i.i158, align 4
  %primary.i.i159 = getelementptr inbounds %struct.drm_device, ptr %242, i32 0, i32 6
  %243 = ptrtoint ptr %primary.i.i159 to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load ptr, ptr %primary.i.i159, align 4
  %debugfs_root.i.i160 = getelementptr inbounds %struct.drm_minor, ptr %244, i32 0, i32 4
  %245 = ptrtoint ptr %debugfs_root.i.i160 to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load ptr, ptr %debugfs_root.i.i160, align 4
  %call.i143.i = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.36, i16 noundef zeroext 292, ptr noundef %246, ptr noundef %rdev, ptr noundef nonnull @radeon_debugfs_pm_info_fops) #10
  %call88.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.48) #13
  br label %cleanup

cleanup:                                          ; preds = %if.then84.i, %do.body60.i.cleanup_crit_edge, %radeon_hwmon_init.exit.i154, %if.end105.i, %if.end60.i, %radeon_hwmon_init.exit.i, %land.lhs.true.i.cleanup_crit_edge, %if.then90.cleanup_crit_edge
  %retval.0 = phi i32 [ %call55.i, %if.end105.i ], [ 0, %if.end60.i ], [ -22, %land.lhs.true.i.cleanup_crit_edge ], [ -22, %if.then90.cleanup_crit_edge ], [ %75, %radeon_hwmon_init.exit.i ], [ %232, %radeon_hwmon_init.exit.i154 ], [ 0, %if.then84.i ], [ 0, %do.body60.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @radeon_pm_late_init(ptr noundef %rdev) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %pm = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58
  %pm_method = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 34
  %0 = ptrtoint ptr %pm_method to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %pm_method, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp = icmp eq i32 %1, 2
  br i1 %cmp, label %if.then, label %if.else36

if.then:                                          ; preds = %entry
  %dpm_enabled = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 50
  %2 = ptrtoint ptr %dpm_enabled to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %dpm_enabled, align 8, !range !207
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.then.if.end59_crit_edge, label %if.then2

if.then.if.end59_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end59

if.then2:                                         ; preds = %if.then
  %sysfs_initialized = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 51
  %4 = ptrtoint ptr %sysfs_initialized to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %sysfs_initialized, align 1, !range !207
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool4.not = icmp eq i8 %5, 0
  br i1 %tobool4.not, label %if.then5, label %if.then2.if.end25_crit_edge

if.then2.if.end25_crit_edge:                      ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end25

if.then5:                                         ; preds = %if.then2
  %6 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rdev, align 8
  %call = tail call i32 @device_create_file(ptr noundef %7, ptr noundef nonnull @dev_attr_power_dpm_state) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool6.not = icmp eq i32 %call, 0
  br i1 %tobool6.not, label %if.then5.if.end_crit_edge, label %if.then7

if.then5.if.end_crit_edge:                        ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then7:                                         ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str) #10
  br label %if.end

if.end:                                           ; preds = %if.then7, %if.then5.if.end_crit_edge
  %8 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %rdev, align 8
  %call9 = tail call i32 @device_create_file(ptr noundef %9, ptr noundef nonnull @dev_attr_power_dpm_force_performance_level) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end.if.end12_crit_edge, label %if.then11

if.end.if.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end12

if.then11:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str) #10
  br label %if.end12

if.end12:                                         ; preds = %if.then11, %if.end.if.end12_crit_edge
  %10 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %rdev, align 8
  %call14 = tail call i32 @device_create_file(ptr noundef %11, ptr noundef nonnull @dev_attr_power_profile) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.end12.if.end17_crit_edge, label %if.then16

if.end12.if.end17_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end17

if.then16:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.1) #10
  br label %if.end17

if.end17:                                         ; preds = %if.then16, %if.end12.if.end17_crit_edge
  %12 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %rdev, align 8
  %call19 = tail call i32 @device_create_file(ptr noundef %13, ptr noundef nonnull @dev_attr_power_method) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.end17.if.end22_crit_edge, label %if.then21

if.end17.if.end22_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end22

if.then21:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.2) #10
  br label %if.end22

if.end22:                                         ; preds = %if.then21, %if.end17.if.end22_crit_edge
  %14 = ptrtoint ptr %sysfs_initialized to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 1, ptr %sysfs_initialized, align 1
  br label %if.end25

if.end25:                                         ; preds = %if.end22, %if.then2.if.end25_crit_edge
  tail call void @mutex_lock_nested(ptr noundef %pm, i32 noundef 0) #10
  %asic = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 56
  %15 = ptrtoint ptr %asic to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %asic, align 8
  %late_enable = getelementptr inbounds %struct.radeon_asic, ptr %16, i32 0, i32 21, i32 3
  %17 = ptrtoint ptr %late_enable to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %late_enable, align 4
  %call27 = tail call i32 %18(ptr noundef %rdev) #10
  tail call void @mutex_unlock(ptr noundef %pm) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool30.not = icmp eq i32 %call27, 0
  br i1 %tobool30.not, label %if.else, label %if.then31

if.then31:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #12
  %19 = ptrtoint ptr %dpm_enabled to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 0, ptr %dpm_enabled, align 8
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.3) #10
  br label %if.end59

if.else:                                          ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @radeon_pm_compute_clocks(ptr noundef %rdev)
  br label %if.end59

if.else36:                                        ; preds = %entry
  %num_power_states = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 19
  %20 = ptrtoint ptr %num_power_states to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %num_power_states, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %21)
  %cmp38 = icmp sgt i32 %21, 1
  br i1 %cmp38, label %land.lhs.true, label %if.else36.if.end59_crit_edge

if.else36.if.end59_crit_edge:                     ; preds = %if.else36
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end59

land.lhs.true:                                    ; preds = %if.else36
  %sysfs_initialized40 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 51
  %22 = ptrtoint ptr %sysfs_initialized40 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %sysfs_initialized40, align 1, !range !207
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool41.not = icmp eq i8 %23, 0
  br i1 %tobool41.not, label %if.then42, label %land.lhs.true.if.end59_crit_edge

land.lhs.true.if.end59_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end59

if.then42:                                        ; preds = %land.lhs.true
  %24 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %rdev, align 8
  %call44 = tail call i32 @device_create_file(ptr noundef %25, ptr noundef nonnull @dev_attr_power_profile) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44)
  %tobool45.not = icmp eq i32 %call44, 0
  br i1 %tobool45.not, label %if.then42.if.end47_crit_edge, label %if.then46

if.then42.if.end47_crit_edge:                     ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end47

if.then46:                                        ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.1) #10
  br label %if.end47

if.end47:                                         ; preds = %if.then46, %if.then42.if.end47_crit_edge
  %26 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %rdev, align 8
  %call49 = tail call i32 @device_create_file(ptr noundef %27, ptr noundef nonnull @dev_attr_power_method) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49)
  %tobool50.not = icmp eq i32 %call49, 0
  br i1 %tobool50.not, label %if.then54.critedge, label %if.then51

if.then51:                                        ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.2) #10
  br label %if.end59

if.then54.critedge:                               ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #12
  %28 = ptrtoint ptr %sysfs_initialized40 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 1, ptr %sysfs_initialized40, align 1
  br label %if.end59

if.end59:                                         ; preds = %if.then54.critedge, %if.then51, %land.lhs.true.if.end59_crit_edge, %if.else36.if.end59_crit_edge, %if.else, %if.then31, %if.then.if.end59_crit_edge
  %ret.0 = phi i32 [ %call27, %if.then31 ], [ 0, %if.else ], [ 0, %if.then.if.end59_crit_edge ], [ 0, %land.lhs.true.if.end59_crit_edge ], [ 0, %if.then54.critedge ], [ 0, %if.else36.if.end59_crit_edge ], [ %call49, %if.then51 ]
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_create_file(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_err(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @radeon_pm_fini(ptr noundef %rdev) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %pm_method = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 34
  %0 = ptrtoint ptr %pm_method to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %pm_method, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp = icmp eq i32 %1, 2
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %num_power_states.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 19
  %2 = ptrtoint ptr %num_power_states.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_power_states.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp.i = icmp sgt i32 %3, 1
  br i1 %cmp.i, label %if.then.i, label %if.then.if.end.i_crit_edge

if.then.if.end.i_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %pm.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58
  tail call void @mutex_lock_nested(ptr noundef %pm.i, i32 noundef 0) #10
  %asic.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 56
  %4 = ptrtoint ptr %asic.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %asic.i, align 8
  %disable.i = getelementptr inbounds %struct.radeon_asic, ptr %5, i32 0, i32 21, i32 4
  %6 = ptrtoint ptr %disable.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %disable.i, align 4
  tail call void %7(ptr noundef %rdev) #10
  tail call void @mutex_unlock(ptr noundef %pm.i) #10
  %8 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %rdev, align 8
  tail call void @device_remove_file(ptr noundef %9, ptr noundef nonnull @dev_attr_power_dpm_state) #10
  %10 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %rdev, align 8
  tail call void @device_remove_file(ptr noundef %11, ptr noundef nonnull @dev_attr_power_dpm_force_performance_level) #10
  %12 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %rdev, align 8
  tail call void @device_remove_file(ptr noundef %13, ptr noundef nonnull @dev_attr_power_profile) #10
  %14 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %rdev, align 8
  tail call void @device_remove_file(ptr noundef %15, ptr noundef nonnull @dev_attr_power_method) #10
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.then.if.end.i_crit_edge
  %asic7.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 56
  %16 = ptrtoint ptr %asic7.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %asic7.i, align 8
  %fini.i = getelementptr inbounds %struct.radeon_asic, ptr %17, i32 0, i32 21, i32 9
  %18 = ptrtoint ptr %fini.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %fini.i, align 4
  tail call void %19(ptr noundef %rdev) #10
  %int_hwmon_dev.i.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 45
  %20 = ptrtoint ptr %int_hwmon_dev.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %int_hwmon_dev.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %21, null
  br i1 %tobool.not.i.i, label %if.end.i.if.end_crit_edge, label %if.end.i.if.end.sink.split_crit_edge

if.end.i.if.end.sink.split_crit_edge:             ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.sink.split

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.else:                                          ; preds = %entry
  %pm.i3 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58
  %num_power_states.i4 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 19
  %22 = ptrtoint ptr %num_power_states.i4 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %num_power_states.i4, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %23)
  %cmp.i5 = icmp sgt i32 %23, 1
  br i1 %cmp.i5, label %if.then.i6, label %if.else.if.end17.i_crit_edge

if.else.if.end17.i_crit_edge:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end17.i

if.then.i6:                                       ; preds = %if.else
  tail call void @mutex_lock_nested(ptr noundef %pm.i3, i32 noundef 0) #10
  %24 = ptrtoint ptr %pm_method to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %pm_method, align 4
  %26 = zext i32 %25 to i64
  call void @__sanitizer_cov_trace_switch(i64 %26, ptr @__sancov_gen_cov_switch_values.95)
  switch i32 %25, label %if.then.i6.if.end12.i_crit_edge [
    i32 0, label %if.then4.i
    i32 1, label %if.then9.i
  ]

if.then.i6.if.end12.i_crit_edge:                  ; preds = %if.then.i6
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end12.i

if.then4.i:                                       ; preds = %if.then.i6
  call void @__sanitizer_cov_trace_pc() #12
  %profile.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 41
  %27 = ptrtoint ptr %profile.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %profile.i, align 4
  tail call fastcc void @radeon_pm_update_profile(ptr noundef %rdev) #10
  br label %if.end12.sink.split.i

if.then9.i:                                       ; preds = %if.then.i6
  call void @__sanitizer_cov_trace_pc() #12
  %dynpm_state.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 36
  %28 = ptrtoint ptr %dynpm_state.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 0, ptr %dynpm_state.i, align 4
  %dynpm_planned_action.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 37
  %29 = ptrtoint ptr %dynpm_planned_action.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 4, ptr %dynpm_planned_action.i, align 8
  br label %if.end12.sink.split.i

if.end12.sink.split.i:                            ; preds = %if.then9.i, %if.then4.i
  tail call fastcc void @radeon_pm_set_clocks(ptr noundef %rdev) #10
  br label %if.end12.i

if.end12.i:                                       ; preds = %if.end12.sink.split.i, %if.then.i6.if.end12.i_crit_edge
  tail call void @mutex_unlock(ptr noundef %pm.i3) #10
  %dynpm_idle_work.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 35
  %call.i = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %dynpm_idle_work.i) #10
  %30 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %rdev, align 8
  tail call void @device_remove_file(ptr noundef %31, ptr noundef nonnull @dev_attr_power_profile) #10
  %32 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %rdev, align 8
  tail call void @device_remove_file(ptr noundef %33, ptr noundef nonnull @dev_attr_power_method) #10
  br label %if.end17.i

if.end17.i:                                       ; preds = %if.end12.i, %if.else.if.end17.i_crit_edge
  %int_hwmon_dev.i.i7 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 45
  %34 = ptrtoint ptr %int_hwmon_dev.i.i7 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %int_hwmon_dev.i.i7, align 8
  %tobool.not.i.i8 = icmp eq ptr %35, null
  br i1 %tobool.not.i.i8, label %if.end17.i.if.end_crit_edge, label %if.end17.i.if.end.sink.split_crit_edge

if.end17.i.if.end.sink.split_crit_edge:           ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.sink.split

if.end17.i.if.end_crit_edge:                      ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.end.sink.split:                                ; preds = %if.end17.i.if.end.sink.split_crit_edge, %if.end.i.if.end.sink.split_crit_edge
  %.sink = phi ptr [ %21, %if.end.i.if.end.sink.split_crit_edge ], [ %35, %if.end17.i.if.end.sink.split_crit_edge ]
  tail call void @hwmon_device_unregister(ptr noundef nonnull %.sink) #10
  br label %if.end

if.end:                                           ; preds = %if.end.sink.split, %if.end17.i.if.end_crit_edge, %if.end.i.if.end_crit_edge
  %power_state.i10 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 18
  %36 = ptrtoint ptr %power_state.i10 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %power_state.i10, align 4
  tail call void @kfree(ptr noundef %37) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @radeon_fence_wait_empty(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_crtc_vblank_get(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_crtc_vblank_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @radeon_update_bandwidth_info(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ttm_bo_unmap_virtual(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @radeon_get_crtc_scanoutpos(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @radeon_atom_set_voltage(ptr noundef, i16 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @radeon_atombios_get_power_modes(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @radeon_dpm_thermal_work_handler(ptr noundef %work) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -9384
  %pm = getelementptr i8, ptr %work, i32 -976
  %dpm_enabled = getelementptr i8, ptr %work, i32 -416
  %0 = ptrtoint ptr %dpm_enabled to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %dpm_enabled, align 8, !range !207
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %asic = getelementptr i8, ptr %work, i32 -1080
  %2 = ptrtoint ptr %asic to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %asic, align 8
  %get_temperature = getelementptr inbounds %struct.radeon_asic, ptr %3, i32 0, i32 20, i32 14
  %4 = ptrtoint ptr %get_temperature to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %get_temperature, align 4
  %tobool2.not = icmp eq ptr %5, null
  br i1 %tobool2.not, label %if.else, label %if.then3

if.then3:                                         ; preds = %if.end
  %call = tail call i32 %5(ptr noundef %add.ptr) #10
  %min_temp = getelementptr inbounds %struct.radeon_dpm_thermal, ptr %work, i32 0, i32 1
  %6 = ptrtoint ptr %min_temp to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %min_temp, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call, i32 %7)
  %cmp = icmp slt i32 %call, %7
  br i1 %cmp, label %if.then3.if.end21_crit_edge, label %if.then3.if.end21.thread_crit_edge

if.then3.if.end21.thread_crit_edge:               ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end21.thread

if.then3.if.end21_crit_edge:                      ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end21

if.else:                                          ; preds = %if.end
  %high_to_low = getelementptr inbounds %struct.radeon_dpm_thermal, ptr %work, i32 0, i32 3
  %8 = ptrtoint ptr %high_to_low to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %high_to_low, align 4, !range !207
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool15.not = icmp eq i8 %9, 0
  br i1 %tobool15.not, label %if.else.if.end21.thread_crit_edge, label %if.else.if.end21_crit_edge

if.else.if.end21_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end21

if.else.if.end21.thread_crit_edge:                ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end21.thread

if.end21.thread:                                  ; preds = %if.else.if.end21.thread_crit_edge, %if.then3.if.end21.thread_crit_edge
  tail call void @mutex_lock_nested(ptr noundef %pm, i32 noundef 0) #10
  br label %if.end31

if.end21:                                         ; preds = %if.else.if.end21_crit_edge, %if.then3.if.end21_crit_edge
  %dpm_state.1.in = getelementptr i8, ptr %work, i32 -260
  %10 = ptrtoint ptr %dpm_state.1.in to i32
  call void @__asan_load4_noabort(i32 %10)
  %dpm_state.1 = load i32, ptr %dpm_state.1.in, align 4
  tail call void @mutex_lock_nested(ptr noundef %pm, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %dpm_state.1)
  %cmp23 = icmp eq i32 %dpm_state.1, 11
  %spec.select = zext i1 %cmp23 to i8
  br label %if.end31

if.end31:                                         ; preds = %if.end21, %if.end21.thread
  %.sink = phi i8 [ 1, %if.end21.thread ], [ %spec.select, %if.end21 ]
  %dpm_state.153 = phi i32 [ 11, %if.end21.thread ], [ %dpm_state.1, %if.end21 ]
  %thermal_active30 = getelementptr i8, ptr %work, i32 -4
  %11 = ptrtoint ptr %thermal_active30 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %.sink, ptr %thermal_active30, align 4
  %state = getelementptr i8, ptr %work, i32 -264
  %12 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %dpm_state.153, ptr %state, align 4
  tail call void @mutex_unlock(ptr noundef %pm) #10
  tail call void @radeon_pm_compute_clocks(ptr noundef %add.ptr)
  br label %cleanup

cleanup:                                          ; preds = %if.end31, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @hwmon_device_register_with_groups(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i16 @hwmon_attributes_visible(ptr nocapture noundef readonly %kobj, ptr noundef readonly %attr, i32 noundef %index) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %kobj, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %mode = getelementptr inbounds %struct.attribute, ptr %attr, i32 0, i32 1
  %2 = ptrtoint ptr %mode to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %mode, align 4
  %pm_method = getelementptr inbounds %struct.radeon_device, ptr %1, i32 0, i32 58, i32 34
  %4 = ptrtoint ptr %pm_method to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %pm_method, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %5)
  %cmp.not = icmp eq i32 %5, 2
  br i1 %cmp.not, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %cmp2 = icmp eq ptr %attr, @sensor_dev_attr_temp1_crit
  %cmp3 = icmp eq ptr %attr, @sensor_dev_attr_temp1_crit_hyst
  %or.cond = or i1 %cmp2, %cmp3
  %cmp5 = icmp eq ptr %attr, @sensor_dev_attr_pwm1
  %or.cond112 = or i1 %cmp5, %or.cond
  %cmp7 = icmp eq ptr %attr, @sensor_dev_attr_pwm1_enable
  %or.cond113 = or i1 %cmp7, %or.cond112
  %cmp9 = icmp eq ptr %attr, @sensor_dev_attr_pwm1_max
  %or.cond114 = or i1 %cmp9, %or.cond113
  %cmp11 = icmp eq ptr %attr, @sensor_dev_attr_pwm1_min
  %or.cond115 = or i1 %cmp11, %or.cond114
  %cmp13 = icmp eq ptr %attr, @sensor_dev_attr_freq1_input
  %or.cond116 = or i1 %cmp13, %or.cond115
  %cmp15 = icmp eq ptr %attr, @sensor_dev_attr_in0_input
  %or.cond117 = or i1 %cmp15, %or.cond116
  br i1 %or.cond117, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end19_crit_edge

land.lhs.true.if.end19_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end19

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %cmp16 = icmp eq ptr %attr, @sensor_dev_attr_in0_input
  br i1 %cmp16, label %land.lhs.true17, label %if.end.if.end19_crit_edge

if.end.if.end19_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end19

land.lhs.true17:                                  ; preds = %if.end
  %asic = getelementptr inbounds %struct.radeon_device, ptr %1, i32 0, i32 56
  %6 = ptrtoint ptr %asic to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %asic, align 8
  %get_current_vddc = getelementptr inbounds %struct.radeon_asic, ptr %7, i32 0, i32 21, i32 24
  %8 = ptrtoint ptr %get_current_vddc to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %get_current_vddc, align 4
  %tobool.not = icmp eq ptr %9, null
  br i1 %tobool.not, label %land.lhs.true17.cleanup_crit_edge, label %land.lhs.true17.if.end19_crit_edge

land.lhs.true17.if.end19_crit_edge:               ; preds = %land.lhs.true17
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end19

land.lhs.true17.cleanup_crit_edge:                ; preds = %land.lhs.true17
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end19:                                         ; preds = %land.lhs.true17.if.end19_crit_edge, %if.end.if.end19_crit_edge, %land.lhs.true.if.end19_crit_edge
  %no_fan = getelementptr inbounds %struct.radeon_device, ptr %1, i32 0, i32 58, i32 46
  %10 = ptrtoint ptr %no_fan to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %no_fan, align 4, !range !207
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool21.not = icmp eq i8 %11, 0
  br i1 %tobool21.not, label %if.end31, label %land.lhs.true22

land.lhs.true22:                                  ; preds = %if.end19
  %cmp23 = icmp eq ptr %attr, @sensor_dev_attr_pwm1
  %cmp25 = icmp eq ptr %attr, @sensor_dev_attr_pwm1_enable
  %or.cond118 = or i1 %cmp23, %cmp25
  %cmp27 = icmp eq ptr %attr, @sensor_dev_attr_pwm1_max
  %or.cond119 = or i1 %cmp27, %or.cond118
  %cmp29 = icmp eq ptr %attr, @sensor_dev_attr_pwm1_min
  %or.cond120 = or i1 %cmp29, %or.cond119
  br i1 %or.cond120, label %land.lhs.true22.cleanup_crit_edge, label %if.end31.thread

land.lhs.true22.cleanup_crit_edge:                ; preds = %land.lhs.true22
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end31.thread:                                  ; preds = %land.lhs.true22
  call void @__sanitizer_cov_trace_pc() #12
  %asic32126 = getelementptr inbounds %struct.radeon_device, ptr %1, i32 0, i32 56
  %12 = ptrtoint ptr %asic32126 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %asic32126, align 8
  %get_fan_speed_percent127 = getelementptr inbounds %struct.radeon_asic, ptr %13, i32 0, i32 21, i32 21
  %14 = ptrtoint ptr %get_fan_speed_percent127 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %get_fan_speed_percent127, align 4
  %tobool34.not128 = icmp eq ptr %15, null
  br label %lor.lhs.false37

if.end31:                                         ; preds = %if.end19
  %asic32 = getelementptr inbounds %struct.radeon_device, ptr %1, i32 0, i32 56
  %16 = ptrtoint ptr %asic32 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %asic32, align 8
  %get_fan_speed_percent = getelementptr inbounds %struct.radeon_asic, ptr %17, i32 0, i32 21, i32 21
  %18 = ptrtoint ptr %get_fan_speed_percent to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %get_fan_speed_percent, align 4
  %tobool34.not = icmp eq ptr %19, null
  %cmp36 = icmp eq ptr %attr, @sensor_dev_attr_pwm1
  %or.cond121 = and i1 %cmp36, %tobool34.not
  br i1 %or.cond121, label %if.end31.if.then43_crit_edge, label %if.end31.lor.lhs.false37_crit_edge

if.end31.lor.lhs.false37_crit_edge:               ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.lhs.false37

if.end31.if.then43_crit_edge:                     ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then43

lor.lhs.false37:                                  ; preds = %if.end31.lor.lhs.false37_crit_edge, %if.end31.thread
  %cmp36135 = phi i1 [ false, %if.end31.thread ], [ %cmp36, %if.end31.lor.lhs.false37_crit_edge ]
  %tobool34.not132 = phi i1 [ %tobool34.not128, %if.end31.thread ], [ %tobool34.not, %if.end31.lor.lhs.false37_crit_edge ]
  %20 = phi ptr [ %13, %if.end31.thread ], [ %17, %if.end31.lor.lhs.false37_crit_edge ]
  %fan_ctrl_get_mode = getelementptr inbounds %struct.radeon_asic, ptr %20, i32 0, i32 21, i32 19
  %21 = ptrtoint ptr %fan_ctrl_get_mode to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %fan_ctrl_get_mode, align 4
  %tobool40.not = icmp eq ptr %22, null
  %cmp42 = icmp eq ptr %attr, @sensor_dev_attr_pwm1_enable
  %or.cond122 = and i1 %cmp42, %tobool40.not
  br i1 %or.cond122, label %lor.lhs.false37.if.then43_crit_edge, label %lor.lhs.false37.if.end45_crit_edge

lor.lhs.false37.if.end45_crit_edge:               ; preds = %lor.lhs.false37
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end45

lor.lhs.false37.if.then43_crit_edge:              ; preds = %lor.lhs.false37
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then43

if.then43:                                        ; preds = %lor.lhs.false37.if.then43_crit_edge, %if.end31.if.then43_crit_edge
  %cmp36136 = phi i1 [ %cmp36135, %lor.lhs.false37.if.then43_crit_edge ], [ true, %if.end31.if.then43_crit_edge ]
  %tobool34.not133 = phi i1 [ %tobool34.not132, %lor.lhs.false37.if.then43_crit_edge ], [ true, %if.end31.if.then43_crit_edge ]
  %23 = phi ptr [ %20, %lor.lhs.false37.if.then43_crit_edge ], [ %17, %if.end31.if.then43_crit_edge ]
  %24 = and i16 %3, -293
  br label %if.end45

if.end45:                                         ; preds = %if.then43, %lor.lhs.false37.if.end45_crit_edge
  %cmp36134 = phi i1 [ %cmp36135, %lor.lhs.false37.if.end45_crit_edge ], [ %cmp36136, %if.then43 ]
  %tobool34.not131 = phi i1 [ %tobool34.not132, %lor.lhs.false37.if.end45_crit_edge ], [ %tobool34.not133, %if.then43 ]
  %25 = phi ptr [ %20, %lor.lhs.false37.if.end45_crit_edge ], [ %23, %if.then43 ]
  %effective_mode.0 = phi i16 [ %3, %lor.lhs.false37.if.end45_crit_edge ], [ %24, %if.then43 ]
  %set_fan_speed_percent = getelementptr inbounds %struct.radeon_asic, ptr %25, i32 0, i32 21, i32 20
  %26 = ptrtoint ptr %set_fan_speed_percent to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %set_fan_speed_percent, align 4
  %tobool48.not = icmp eq ptr %27, null
  %or.cond123 = and i1 %cmp36134, %tobool48.not
  br i1 %or.cond123, label %if.end45.if.then59_crit_edge, label %lor.lhs.false52

if.end45.if.then59_crit_edge:                     ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then59

lor.lhs.false52:                                  ; preds = %if.end45
  %fan_ctrl_set_mode = getelementptr inbounds %struct.radeon_asic, ptr %25, i32 0, i32 21, i32 18
  %28 = ptrtoint ptr %fan_ctrl_set_mode to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %fan_ctrl_set_mode, align 4
  %tobool55.not = icmp eq ptr %29, null
  %cmp57 = icmp eq ptr %attr, @sensor_dev_attr_pwm1_enable
  %or.cond124 = and i1 %cmp57, %tobool55.not
  br i1 %or.cond124, label %lor.lhs.false52.if.then59_crit_edge, label %lor.lhs.false52.if.end63_crit_edge

lor.lhs.false52.if.end63_crit_edge:               ; preds = %lor.lhs.false52
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end63

lor.lhs.false52.if.then59_crit_edge:              ; preds = %lor.lhs.false52
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then59

if.then59:                                        ; preds = %lor.lhs.false52.if.then59_crit_edge, %if.end45.if.then59_crit_edge
  %30 = and i16 %effective_mode.0, -129
  br label %if.end63

if.end63:                                         ; preds = %if.then59, %lor.lhs.false52.if.end63_crit_edge
  %effective_mode.1 = phi i16 [ %effective_mode.0, %lor.lhs.false52.if.end63_crit_edge ], [ %30, %if.then59 ]
  %31 = select i1 %tobool48.not, i1 %tobool34.not131, i1 false
  br i1 %31, label %land.lhs.true73, label %if.end63.if.end80_crit_edge

if.end63.if.end80_crit_edge:                      ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end80

land.lhs.true73:                                  ; preds = %if.end63
  %cmp74 = icmp eq ptr %attr, @sensor_dev_attr_pwm1_max
  %cmp77 = icmp eq ptr %attr, @sensor_dev_attr_pwm1_min
  %or.cond125 = or i1 %cmp74, %cmp77
  br i1 %or.cond125, label %land.lhs.true73.cleanup_crit_edge, label %land.lhs.true73.if.end80_crit_edge

land.lhs.true73.if.end80_crit_edge:               ; preds = %land.lhs.true73
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end80

land.lhs.true73.cleanup_crit_edge:                ; preds = %land.lhs.true73
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end80:                                         ; preds = %land.lhs.true73.if.end80_crit_edge, %if.end63.if.end80_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end80, %land.lhs.true73.cleanup_crit_edge, %land.lhs.true22.cleanup_crit_edge, %land.lhs.true17.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i16 [ %effective_mode.1, %if.end80 ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ 0, %land.lhs.true17.cleanup_crit_edge ], [ 0, %land.lhs.true22.cleanup_crit_edge ], [ 0, %land.lhs.true73.cleanup_crit_edge ]
  ret i16 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @radeon_hwmon_show_temp_thresh(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %attr, ptr noundef %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %attr, i32 0, i32 1
  %2 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %index, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  %min_temp = getelementptr inbounds %struct.radeon_device, ptr %1, i32 0, i32 58, i32 52, i32 35, i32 1
  %max_temp = getelementptr inbounds %struct.radeon_device, ptr %1, i32 0, i32 58, i32 52, i32 35, i32 2
  %temp.0.in = select i1 %tobool.not, ptr %max_temp, ptr %min_temp
  %4 = ptrtoint ptr %temp.0.in to i32
  call void @__asan_load4_noabort(i32 %4)
  %temp.0 = load i32, ptr %temp.0.in, align 4
  %call4 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.23, i32 noundef %temp.0) #10
  ret i32 %call4
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_emit(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @radeon_hwmon_get_pwm1(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  %speed = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %speed) #10
  %2 = ptrtoint ptr %speed to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %speed, align 4, !annotation !208
  %asic = getelementptr inbounds %struct.radeon_device, ptr %1, i32 0, i32 56
  %3 = ptrtoint ptr %asic to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %asic, align 8
  %get_fan_speed_percent = getelementptr inbounds %struct.radeon_asic, ptr %4, i32 0, i32 21, i32 21
  %5 = ptrtoint ptr %get_fan_speed_percent to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %get_fan_speed_percent, align 4
  %call1 = call i32 %6(ptr noundef %1, ptr noundef nonnull %speed) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %7 = ptrtoint ptr %speed to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %speed, align 4
  %mul = mul i32 %8, 255
  %div = udiv i32 %mul, 100
  store i32 %div, ptr %speed, align 4
  %call2 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.26, i32 noundef %div)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.end ], [ %call1, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %speed) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @radeon_hwmon_set_pwm1(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %value = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value) #10
  %2 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %value, align 4, !annotation !208
  %call.i = call i32 @kstrtouint(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %value) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %3 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %value, align 4
  %mul = mul i32 %4, 100
  %div = udiv i32 %mul, 255
  store i32 %div, ptr %value, align 4
  %asic = getelementptr inbounds %struct.radeon_device, ptr %1, i32 0, i32 56
  %5 = ptrtoint ptr %asic to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %asic, align 8
  %set_fan_speed_percent = getelementptr inbounds %struct.radeon_asic, ptr %6, i32 0, i32 21, i32 20
  %7 = ptrtoint ptr %set_fan_speed_percent to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %set_fan_speed_percent, align 4
  %call2 = call i32 %8(ptr noundef %1, i32 noundef %div) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  %count.call2 = select i1 %tobool3.not, i32 %count, i32 %call2
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %entry.cleanup_crit_edge ], [ %count.call2, %if.end ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value) #10
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtouint(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @radeon_hwmon_get_pwm1_enable(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %asic = getelementptr inbounds %struct.radeon_device, ptr %1, i32 0, i32 56
  %2 = ptrtoint ptr %asic to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %asic, align 8
  %fan_ctrl_get_mode = getelementptr inbounds %struct.radeon_asic, ptr %3, i32 0, i32 21, i32 19
  %4 = ptrtoint ptr %fan_ctrl_get_mode to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %fan_ctrl_get_mode, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call4 = tail call i32 %5(ptr noundef %1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call4)
  %phi.cmp = icmp eq i32 %call4, 1
  %phi.sel = select i1 %phi.cmp, i32 1, i32 2
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %pwm_mode.0 = phi i32 [ %phi.sel, %if.then ], [ 2, %entry.if.end_crit_edge ]
  %call5 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.26, i32 noundef %pwm_mode.0)
  ret i32 %call5
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @radeon_hwmon_set_pwm1_enable(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %value = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value) #10
  %2 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %value, align 4, !annotation !208
  %asic = getelementptr inbounds %struct.radeon_device, ptr %1, i32 0, i32 56
  %3 = ptrtoint ptr %asic to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %asic, align 8
  %fan_ctrl_set_mode = getelementptr inbounds %struct.radeon_asic, ptr %4, i32 0, i32 21, i32 18
  %5 = ptrtoint ptr %fan_ctrl_set_mode to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %fan_ctrl_set_mode, align 4
  %tobool.not = icmp eq ptr %6, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = call i32 @kstrtoint(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %value) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %7 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %value, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %8)
  %cond = icmp eq i32 %8, 1
  %9 = ptrtoint ptr %asic to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %asic, align 8
  %fan_ctrl_set_mode7 = getelementptr inbounds %struct.radeon_asic, ptr %10, i32 0, i32 21, i32 18
  %11 = ptrtoint ptr %fan_ctrl_set_mode7 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %fan_ctrl_set_mode7, align 4
  %. = zext i1 %cond to i32
  call void %12(ptr noundef %1, i32 noundef %.) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %call1, %if.end.cleanup_crit_edge ], [ %count, %if.end4 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtoint(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @radeon_hwmon_get_pwm1_max(ptr nocapture noundef readnone %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.26, i32 noundef 255)
  ret i32 %call
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @radeon_hwmon_get_pwm1_min(ptr nocapture noundef readnone %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.26, i32 noundef 0)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @radeon_hwmon_show_sclk(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %flags = getelementptr inbounds %struct.radeon_device, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags, align 8
  %and = and i32 %3, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %ddev1 = getelementptr inbounds %struct.radeon_device, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %ddev1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ddev1, align 4
  %switch_power_state = getelementptr inbounds %struct.drm_device, ptr %5, i32 0, i32 35
  %6 = ptrtoint ptr %switch_power_state to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %switch_power_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp.not = icmp eq i32 %7, 0
  br i1 %cmp.not, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %asic = getelementptr inbounds %struct.radeon_device, ptr %1, i32 0, i32 56
  %8 = ptrtoint ptr %asic to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %asic, align 8
  %get_current_sclk = getelementptr inbounds %struct.radeon_asic, ptr %9, i32 0, i32 21, i32 22
  %10 = ptrtoint ptr %get_current_sclk to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %get_current_sclk, align 4
  %tobool2.not = icmp eq ptr %11, null
  br i1 %tobool2.not, label %if.end.if.end8_crit_edge, label %if.then3

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %call7 = tail call i32 %11(ptr noundef %1) #10
  %phi.bo = mul i32 %call7, 10000
  br label %if.end8

if.end8:                                          ; preds = %if.then3, %if.end.if.end8_crit_edge
  %sclk.0 = phi i32 [ %phi.bo, %if.then3 ], [ 0, %if.end.if.end8_crit_edge ]
  %call9 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.31, i32 noundef %sclk.0) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i32 [ %call9, %if.end8 ], [ -22, %land.lhs.true.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @radeon_hwmon_show_vddc(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %flags = getelementptr inbounds %struct.radeon_device, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags, align 8
  %and = and i32 %3, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %ddev1 = getelementptr inbounds %struct.radeon_device, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %ddev1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ddev1, align 4
  %switch_power_state = getelementptr inbounds %struct.drm_device, ptr %5, i32 0, i32 35
  %6 = ptrtoint ptr %switch_power_state to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %switch_power_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp.not = icmp eq i32 %7, 0
  br i1 %cmp.not, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %asic = getelementptr inbounds %struct.radeon_device, ptr %1, i32 0, i32 56
  %8 = ptrtoint ptr %asic to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %asic, align 8
  %get_current_vddc = getelementptr inbounds %struct.radeon_asic, ptr %9, i32 0, i32 21, i32 24
  %10 = ptrtoint ptr %get_current_vddc to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %get_current_vddc, align 4
  %tobool2.not = icmp eq ptr %11, null
  br i1 %tobool2.not, label %if.end.if.end8_crit_edge, label %if.then3

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %call7 = tail call zeroext i16 %11(ptr noundef %1) #10
  %phi.cast = zext i16 %call7 to i32
  br label %if.end8

if.end8:                                          ; preds = %if.then3, %if.end.if.end8_crit_edge
  %vddc.0 = phi i32 [ %phi.cast, %if.then3 ], [ 0, %if.end.if.end8_crit_edge ]
  %call9 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.31, i32 noundef %vddc.0) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i32 [ %call9, %if.end8 ], [ -22, %land.lhs.true.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @radeon_hwmon_show_temp(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %flags = getelementptr inbounds %struct.radeon_device, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags, align 8
  %and = and i32 %3, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %ddev1 = getelementptr inbounds %struct.radeon_device, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %ddev1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ddev1, align 4
  %switch_power_state = getelementptr inbounds %struct.drm_device, ptr %5, i32 0, i32 35
  %6 = ptrtoint ptr %switch_power_state to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %switch_power_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp.not = icmp eq i32 %7, 0
  br i1 %cmp.not, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %asic = getelementptr inbounds %struct.radeon_device, ptr %1, i32 0, i32 56
  %8 = ptrtoint ptr %asic to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %asic, align 8
  %get_temperature = getelementptr inbounds %struct.radeon_asic, ptr %9, i32 0, i32 20, i32 14
  %10 = ptrtoint ptr %get_temperature to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %get_temperature, align 4
  %tobool2.not = icmp eq ptr %11, null
  br i1 %tobool2.not, label %if.end.if.end8_crit_edge, label %if.then3

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %call7 = tail call i32 %11(ptr noundef %1) #10
  br label %if.end8

if.end8:                                          ; preds = %if.then3, %if.end.if.end8_crit_edge
  %temp.0 = phi i32 [ %call7, %if.then3 ], [ 0, %if.end.if.end8_crit_edge ]
  %call9 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.23, i32 noundef %temp.0) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i32 [ %call9, %if.end8 ], [ -22, %land.lhs.true.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_file(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @seq_lseek(ptr noundef, i64 noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @radeon_debugfs_pm_info_open(ptr nocapture noundef readonly %inode, ptr noundef %file) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  %call = tail call i32 @single_open(ptr noundef %file, ptr noundef nonnull @radeon_debugfs_pm_info_show, ptr noundef %1) #10
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_release(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_open(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @radeon_debugfs_pm_info_show(ptr noundef %m, ptr nocapture noundef readnone %unused) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %m, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %flags = getelementptr inbounds %struct.radeon_device, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags, align 8
  %and = and i32 %3, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.else_crit_edge, label %land.lhs.true

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

land.lhs.true:                                    ; preds = %entry
  %ddev1 = getelementptr inbounds %struct.radeon_device, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %ddev1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ddev1, align 4
  %switch_power_state = getelementptr inbounds %struct.drm_device, ptr %5, i32 0, i32 35
  %6 = ptrtoint ptr %switch_power_state to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %switch_power_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp.not = icmp eq i32 %7, 0
  br i1 %cmp.not, label %land.lhs.true.if.else_crit_edge, label %if.then

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.37) #10
  br label %if.end52

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %entry.if.else_crit_edge
  %pm = getelementptr inbounds %struct.radeon_device, ptr %1, i32 0, i32 58
  %dpm_enabled = getelementptr inbounds %struct.radeon_device, ptr %1, i32 0, i32 58, i32 50
  %8 = ptrtoint ptr %dpm_enabled to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %dpm_enabled, align 8, !range !207
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool2.not = icmp eq i8 %9, 0
  br i1 %tobool2.not, label %if.else13, label %if.then3

if.then3:                                         ; preds = %if.else
  tail call void @mutex_lock_nested(ptr noundef %pm, i32 noundef 0) #10
  %asic = getelementptr inbounds %struct.radeon_device, ptr %1, i32 0, i32 56
  %10 = ptrtoint ptr %asic to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %asic, align 8
  %debugfs_print_current_performance_level = getelementptr inbounds %struct.radeon_asic, ptr %11, i32 0, i32 21, i32 13
  %12 = ptrtoint ptr %debugfs_print_current_performance_level to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %debugfs_print_current_performance_level, align 4
  %tobool5.not = icmp eq ptr %13, null
  br i1 %tobool5.not, label %if.else10, label %if.then6

if.then6:                                         ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #12
  tail call void %13(ptr noundef %1, ptr noundef %m) #10
  br label %if.end

if.else10:                                        ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.38) #10
  br label %if.end

if.end:                                           ; preds = %if.else10, %if.then6
  tail call void @mutex_unlock(ptr noundef %pm) #10
  br label %if.end52

if.else13:                                        ; preds = %if.else
  %default_sclk = getelementptr inbounds %struct.radeon_device, ptr %1, i32 0, i32 58, i32 29
  %14 = ptrtoint ptr %default_sclk to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %default_sclk, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.39, i32 noundef %15) #10
  %family = getelementptr inbounds %struct.radeon_device, ptr %1, i32 0, i32 6
  %16 = ptrtoint ptr %family to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %family, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 43, i32 %17)
  %cmp15 = icmp ugt i32 %17, 43
  br i1 %cmp15, label %land.lhs.true16, label %if.else13.if.else22_crit_edge

if.else13.if.else22_crit_edge:                    ; preds = %if.else13
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else22

land.lhs.true16:                                  ; preds = %if.else13
  %18 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %flags, align 8
  %and18 = and i32 %19, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18)
  %tobool19.not = icmp eq i32 %and18, 0
  br i1 %tobool19.not, label %land.lhs.true16.if.else22_crit_edge, label %if.then20

land.lhs.true16.if.else22_crit_edge:              ; preds = %land.lhs.true16
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else22

if.then20:                                        ; preds = %land.lhs.true16
  call void @__sanitizer_cov_trace_pc() #12
  %current_sclk = getelementptr inbounds %struct.radeon_device, ptr %1, i32 0, i32 58, i32 25
  %20 = ptrtoint ptr %current_sclk to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %current_sclk, align 8
  br label %if.end25

if.else22:                                        ; preds = %land.lhs.true16.if.else22_crit_edge, %if.else13.if.else22_crit_edge
  %asic23 = getelementptr inbounds %struct.radeon_device, ptr %1, i32 0, i32 56
  %22 = ptrtoint ptr %asic23 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %asic23, align 8
  %get_engine_clock = getelementptr inbounds %struct.radeon_asic, ptr %23, i32 0, i32 20, i32 5
  %24 = ptrtoint ptr %get_engine_clock to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %get_engine_clock, align 4
  %call = tail call i32 %25(ptr noundef %1) #10
  br label %if.end25

if.end25:                                         ; preds = %if.else22, %if.then20
  %call.sink = phi i32 [ %call, %if.else22 ], [ %21, %if.then20 ]
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.40, i32 noundef %call.sink) #10
  %default_mclk = getelementptr inbounds %struct.radeon_device, ptr %1, i32 0, i32 58, i32 30
  %26 = ptrtoint ptr %default_mclk to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %default_mclk, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.41, i32 noundef %27) #10
  %asic27 = getelementptr inbounds %struct.radeon_device, ptr %1, i32 0, i32 56
  %28 = ptrtoint ptr %asic27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %asic27, align 8
  %get_memory_clock = getelementptr inbounds %struct.radeon_asic, ptr %29, i32 0, i32 20, i32 7
  %30 = ptrtoint ptr %get_memory_clock to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %get_memory_clock, align 4
  %tobool29.not = icmp eq ptr %31, null
  br i1 %tobool29.not, label %if.end25.if.end35_crit_edge, label %if.then30

if.end25.if.end35_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end35

if.then30:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #12
  %call34 = tail call i32 %31(ptr noundef %1) #10
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.42, i32 noundef %call34) #10
  br label %if.end35

if.end35:                                         ; preds = %if.then30, %if.end25.if.end35_crit_edge
  %current_vddc = getelementptr inbounds %struct.radeon_device, ptr %1, i32 0, i32 58, i32 27
  %32 = ptrtoint ptr %current_vddc to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %current_vddc, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %33)
  %tobool37.not = icmp eq i16 %33, 0
  br i1 %tobool37.not, label %if.end35.if.end41_crit_edge, label %if.then38

if.end35.if.end41_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end41

if.then38:                                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #12
  %conv = zext i16 %33 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.43, i32 noundef %conv) #10
  br label %if.end41

if.end41:                                         ; preds = %if.then38, %if.end35.if.end41_crit_edge
  %34 = ptrtoint ptr %asic27 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %asic27, align 8
  %get_pcie_lanes = getelementptr inbounds %struct.radeon_asic, ptr %35, i32 0, i32 20, i32 9
  %36 = ptrtoint ptr %get_pcie_lanes to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %get_pcie_lanes, align 4
  %tobool44.not = icmp eq ptr %37, null
  br i1 %tobool44.not, label %if.end41.if.end52_crit_edge, label %if.then45

if.end41.if.end52_crit_edge:                      ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end52

if.then45:                                        ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #12
  %call49 = tail call i32 %37(ptr noundef %1) #10
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.44, i32 noundef %call49) #10
  br label %if.end52

if.end52:                                         ; preds = %if.then45, %if.end41.if.end52_crit_edge, %if.end, %if.then
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @radeon_combios_get_power_modes(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @radeon_dynpm_idle_work_handler(ptr noundef %work) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -8720
  %mman = getelementptr i8, ptr %work, i32 -6680
  %call = tail call i32 @ttm_bo_lock_delayed_workqueue(ptr noundef %mman) #10
  %pm = getelementptr i8, ptr %work, i32 -312
  tail call void @mutex_lock_nested(ptr noundef %pm, i32 noundef 0) #10
  %dynpm_state = getelementptr i8, ptr %work, i32 100
  %0 = ptrtoint ptr %dynpm_state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %dynpm_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %1)
  %cmp = icmp eq i32 %1, 3
  br i1 %cmp, label %for.cond.preheader, label %entry.if.end69_crit_edge

entry.if.end69_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

for.cond.preheader:                               ; preds = %entry
  %ready = getelementptr i8, ptr %work, i32 -1904
  %2 = ptrtoint ptr %ready to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %ready, align 8, !range !207
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %for.cond.preheader.for.inc_crit_edge, label %if.then4

for.cond.preheader.for.inc_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.then4:                                         ; preds = %for.cond.preheader
  %call5 = tail call i32 @radeon_fence_count_emitted(ptr noundef %add.ptr, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call5)
  %cmp6 = icmp sgt i32 %call5, 2
  br i1 %cmp6, label %if.then4.if.then10_crit_edge, label %if.then4.for.inc_crit_edge

if.then4.for.inc_crit_edge:                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.then4.if.then10_crit_edge:                     ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then10

for.inc:                                          ; preds = %if.then4.for.inc_crit_edge, %for.cond.preheader.for.inc_crit_edge
  %not_processed.1 = phi i32 [ %call5, %if.then4.for.inc_crit_edge ], [ 0, %for.cond.preheader.for.inc_crit_edge ]
  %ready.1 = getelementptr i8, ptr %work, i32 -1760
  %4 = ptrtoint ptr %ready.1 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %ready.1, align 8, !range !207
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not.1 = icmp eq i8 %5, 0
  br i1 %tobool.not.1, label %for.inc.for.inc.1_crit_edge, label %if.then4.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.1

if.then4.1:                                       ; preds = %for.inc
  %call5.1 = tail call i32 @radeon_fence_count_emitted(ptr noundef %add.ptr, i32 noundef 1) #10
  %add.1 = add i32 %call5.1, %not_processed.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %add.1)
  %cmp6.1 = icmp sgt i32 %add.1, 2
  br i1 %cmp6.1, label %if.then4.1.if.then10_crit_edge, label %if.then4.1.for.inc.1_crit_edge

if.then4.1.for.inc.1_crit_edge:                   ; preds = %if.then4.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.1

if.then4.1.if.then10_crit_edge:                   ; preds = %if.then4.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then10

for.inc.1:                                        ; preds = %if.then4.1.for.inc.1_crit_edge, %for.inc.for.inc.1_crit_edge
  %not_processed.1.1 = phi i32 [ %add.1, %if.then4.1.for.inc.1_crit_edge ], [ %not_processed.1, %for.inc.for.inc.1_crit_edge ]
  %ready.2 = getelementptr i8, ptr %work, i32 -1616
  %6 = ptrtoint ptr %ready.2 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %ready.2, align 8, !range !207
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not.2 = icmp eq i8 %7, 0
  br i1 %tobool.not.2, label %for.inc.1.for.inc.2_crit_edge, label %if.then4.2

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.2

if.then4.2:                                       ; preds = %for.inc.1
  %call5.2 = tail call i32 @radeon_fence_count_emitted(ptr noundef %add.ptr, i32 noundef 2) #10
  %add.2 = add i32 %call5.2, %not_processed.1.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %add.2)
  %cmp6.2 = icmp sgt i32 %add.2, 2
  br i1 %cmp6.2, label %if.then4.2.if.then10_crit_edge, label %if.then4.2.for.inc.2_crit_edge

if.then4.2.for.inc.2_crit_edge:                   ; preds = %if.then4.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.2

if.then4.2.if.then10_crit_edge:                   ; preds = %if.then4.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then10

for.inc.2:                                        ; preds = %if.then4.2.for.inc.2_crit_edge, %for.inc.1.for.inc.2_crit_edge
  %not_processed.1.2 = phi i32 [ %add.2, %if.then4.2.for.inc.2_crit_edge ], [ %not_processed.1.1, %for.inc.1.for.inc.2_crit_edge ]
  %ready.3 = getelementptr i8, ptr %work, i32 -1472
  %8 = ptrtoint ptr %ready.3 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %ready.3, align 8, !range !207
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not.3 = icmp eq i8 %9, 0
  br i1 %tobool.not.3, label %for.inc.2.for.inc.3_crit_edge, label %if.then4.3

for.inc.2.for.inc.3_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.3

if.then4.3:                                       ; preds = %for.inc.2
  %call5.3 = tail call i32 @radeon_fence_count_emitted(ptr noundef %add.ptr, i32 noundef 3) #10
  %add.3 = add i32 %call5.3, %not_processed.1.2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %add.3)
  %cmp6.3 = icmp sgt i32 %add.3, 2
  br i1 %cmp6.3, label %if.then4.3.if.then10_crit_edge, label %if.then4.3.for.inc.3_crit_edge

if.then4.3.for.inc.3_crit_edge:                   ; preds = %if.then4.3
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.3

if.then4.3.if.then10_crit_edge:                   ; preds = %if.then4.3
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then10

for.inc.3:                                        ; preds = %if.then4.3.for.inc.3_crit_edge, %for.inc.2.for.inc.3_crit_edge
  %not_processed.1.3 = phi i32 [ %add.3, %if.then4.3.for.inc.3_crit_edge ], [ %not_processed.1.2, %for.inc.2.for.inc.3_crit_edge ]
  %ready.4 = getelementptr i8, ptr %work, i32 -1328
  %10 = ptrtoint ptr %ready.4 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %ready.4, align 8, !range !207
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.not.4 = icmp eq i8 %11, 0
  br i1 %tobool.not.4, label %for.inc.3.for.inc.4_crit_edge, label %if.then4.4

for.inc.3.for.inc.4_crit_edge:                    ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.4

if.then4.4:                                       ; preds = %for.inc.3
  %call5.4 = tail call i32 @radeon_fence_count_emitted(ptr noundef %add.ptr, i32 noundef 4) #10
  %add.4 = add i32 %call5.4, %not_processed.1.3
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %add.4)
  %cmp6.4 = icmp sgt i32 %add.4, 2
  br i1 %cmp6.4, label %if.then4.4.if.then10_crit_edge, label %if.then4.4.for.inc.4_crit_edge

if.then4.4.for.inc.4_crit_edge:                   ; preds = %if.then4.4
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.4

if.then4.4.if.then10_crit_edge:                   ; preds = %if.then4.4
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then10

for.inc.4:                                        ; preds = %if.then4.4.for.inc.4_crit_edge, %for.inc.3.for.inc.4_crit_edge
  %not_processed.1.4 = phi i32 [ %add.4, %if.then4.4.for.inc.4_crit_edge ], [ %not_processed.1.3, %for.inc.3.for.inc.4_crit_edge ]
  %ready.5 = getelementptr i8, ptr %work, i32 -1184
  %12 = ptrtoint ptr %ready.5 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %ready.5, align 8, !range !207
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool.not.5 = icmp eq i8 %13, 0
  br i1 %tobool.not.5, label %for.inc.4.for.inc.5_crit_edge, label %if.then4.5

for.inc.4.for.inc.5_crit_edge:                    ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.5

if.then4.5:                                       ; preds = %for.inc.4
  %call5.5 = tail call i32 @radeon_fence_count_emitted(ptr noundef %add.ptr, i32 noundef 5) #10
  %add.5 = add i32 %call5.5, %not_processed.1.4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %add.5)
  %cmp6.5 = icmp sgt i32 %add.5, 2
  br i1 %cmp6.5, label %if.then4.5.if.then10_crit_edge, label %if.then4.5.for.inc.5_crit_edge

if.then4.5.for.inc.5_crit_edge:                   ; preds = %if.then4.5
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.5

if.then4.5.if.then10_crit_edge:                   ; preds = %if.then4.5
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then10

for.inc.5:                                        ; preds = %if.then4.5.for.inc.5_crit_edge, %for.inc.4.for.inc.5_crit_edge
  %not_processed.1.5 = phi i32 [ %add.5, %if.then4.5.for.inc.5_crit_edge ], [ %not_processed.1.4, %for.inc.4.for.inc.5_crit_edge ]
  %ready.6 = getelementptr i8, ptr %work, i32 -1040
  %14 = ptrtoint ptr %ready.6 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %ready.6, align 8, !range !207
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool.not.6 = icmp eq i8 %15, 0
  br i1 %tobool.not.6, label %for.inc.5.for.inc.6_crit_edge, label %if.then4.6

for.inc.5.for.inc.6_crit_edge:                    ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.6

if.then4.6:                                       ; preds = %for.inc.5
  %call5.6 = tail call i32 @radeon_fence_count_emitted(ptr noundef %add.ptr, i32 noundef 6) #10
  %add.6 = add i32 %call5.6, %not_processed.1.5
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %add.6)
  %cmp6.6 = icmp sgt i32 %add.6, 2
  br i1 %cmp6.6, label %if.then4.6.if.then10_crit_edge, label %if.then4.6.for.inc.6_crit_edge

if.then4.6.for.inc.6_crit_edge:                   ; preds = %if.then4.6
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.6

if.then4.6.if.then10_crit_edge:                   ; preds = %if.then4.6
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then10

for.inc.6:                                        ; preds = %if.then4.6.for.inc.6_crit_edge, %for.inc.5.for.inc.6_crit_edge
  %not_processed.1.6 = phi i32 [ %add.6, %if.then4.6.for.inc.6_crit_edge ], [ %not_processed.1.5, %for.inc.5.for.inc.6_crit_edge ]
  %ready.7 = getelementptr i8, ptr %work, i32 -896
  %16 = ptrtoint ptr %ready.7 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %ready.7, align 8, !range !207
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool.not.7 = icmp eq i8 %17, 0
  br i1 %tobool.not.7, label %for.inc.6.if.else29_crit_edge, label %if.then4.7

for.inc.6.if.else29_crit_edge:                    ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else29

if.then4.7:                                       ; preds = %for.inc.6
  %call5.7 = tail call i32 @radeon_fence_count_emitted(ptr noundef %add.ptr, i32 noundef 7) #10
  %add.7 = add i32 %call5.7, %not_processed.1.6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %add.7)
  %cmp6.7 = icmp sgt i32 %add.7, 2
  br i1 %cmp6.7, label %if.then4.7.if.then10_crit_edge, label %if.then4.7.if.else29_crit_edge

if.then4.7.if.else29_crit_edge:                   ; preds = %if.then4.7
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else29

if.then4.7.if.then10_crit_edge:                   ; preds = %if.then4.7
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then10

if.then10:                                        ; preds = %if.then4.7.if.then10_crit_edge, %if.then4.6.if.then10_crit_edge, %if.then4.5.if.then10_crit_edge, %if.then4.4.if.then10_crit_edge, %if.then4.3.if.then10_crit_edge, %if.then4.2.if.then10_crit_edge, %if.then4.1.if.then10_crit_edge, %if.then4.if.then10_crit_edge
  %dynpm_planned_action = getelementptr i8, ptr %work, i32 104
  %18 = ptrtoint ptr %dynpm_planned_action to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %dynpm_planned_action, align 8
  %20 = zext i32 %19 to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values.96)
  switch i32 %19, label %if.then10.if.end55_crit_edge [
    i32 2, label %if.then13
    i32 0, label %land.lhs.true
  ]

if.then10.if.end55_crit_edge:                     ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end55

if.then13:                                        ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #12
  %21 = ptrtoint ptr %dynpm_planned_action to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %dynpm_planned_action, align 8
  br label %if.end55

land.lhs.true:                                    ; preds = %if.then10
  %dynpm_can_upclock = getelementptr i8, ptr %work, i32 112
  %22 = ptrtoint ptr %dynpm_can_upclock to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %dynpm_can_upclock, align 8, !range !207
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool20.not = icmp eq i8 %23, 0
  br i1 %tobool20.not, label %land.lhs.true.if.end55_crit_edge, label %if.then21

land.lhs.true.if.end55_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end55

if.then21:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  %24 = ptrtoint ptr %dynpm_planned_action to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 3, ptr %dynpm_planned_action, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %25 = load volatile i32, ptr @jiffies, align 128
  %add25 = add i32 %25, 20
  %dynpm_action_timeout = getelementptr i8, ptr %work, i32 108
  %26 = ptrtoint ptr %dynpm_action_timeout to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %add25, ptr %dynpm_action_timeout, align 4
  br label %if.end55

if.else29:                                        ; preds = %if.then4.7.if.else29_crit_edge, %for.inc.6.if.else29_crit_edge
  %not_processed.1.7 = phi i32 [ %add.7, %if.then4.7.if.else29_crit_edge ], [ %not_processed.1.6, %for.inc.6.if.else29_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %not_processed.1.7)
  %cmp30 = icmp eq i32 %not_processed.1.7, 0
  br i1 %cmp30, label %if.then31, label %if.else29.if.end55_crit_edge

if.else29.if.end55_crit_edge:                     ; preds = %if.else29
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end55

if.then31:                                        ; preds = %if.else29
  %dynpm_planned_action33 = getelementptr i8, ptr %work, i32 104
  %27 = ptrtoint ptr %dynpm_planned_action33 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %dynpm_planned_action33, align 8
  %29 = zext i32 %28 to i64
  call void @__sanitizer_cov_trace_switch(i64 %29, ptr @__sancov_gen_cov_switch_values.97)
  switch i32 %28, label %if.then31.if.end55_crit_edge [
    i32 3, label %if.then35
    i32 0, label %land.lhs.true42
  ]

if.then31.if.end55_crit_edge:                     ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end55

if.then35:                                        ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #12
  %30 = ptrtoint ptr %dynpm_planned_action33 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 0, ptr %dynpm_planned_action33, align 8
  br label %if.end55

land.lhs.true42:                                  ; preds = %if.then31
  %dynpm_can_downclock = getelementptr i8, ptr %work, i32 113
  %31 = ptrtoint ptr %dynpm_can_downclock to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %dynpm_can_downclock, align 1, !range !207
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %tobool44.not = icmp eq i8 %32, 0
  br i1 %tobool44.not, label %land.lhs.true42.if.end55_crit_edge, label %if.then45

land.lhs.true42.if.end55_crit_edge:               ; preds = %land.lhs.true42
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end55

if.then45:                                        ; preds = %land.lhs.true42
  call void @__sanitizer_cov_trace_pc() #12
  %33 = ptrtoint ptr %dynpm_planned_action33 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 2, ptr %dynpm_planned_action33, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %34 = load volatile i32, ptr @jiffies, align 128
  %add49 = add i32 %34, 20
  %dynpm_action_timeout51 = getelementptr i8, ptr %work, i32 108
  %35 = ptrtoint ptr %dynpm_action_timeout51 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %add49, ptr %dynpm_action_timeout51, align 4
  br label %if.end55

if.end55:                                         ; preds = %if.then45, %land.lhs.true42.if.end55_crit_edge, %if.then35, %if.then31.if.end55_crit_edge, %if.else29.if.end55_crit_edge, %if.then21, %land.lhs.true.if.end55_crit_edge, %if.then13, %if.then10.if.end55_crit_edge
  %dynpm_planned_action57 = getelementptr i8, ptr %work, i32 104
  %36 = ptrtoint ptr %dynpm_planned_action57 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %dynpm_planned_action57, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %cmp58.not = icmp eq i32 %37, 0
  br i1 %cmp58.not, label %if.end55.if.end65_crit_edge, label %land.lhs.true59

if.end55.if.end65_crit_edge:                      ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end65

land.lhs.true59:                                  ; preds = %if.end55
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %38 = load volatile i32, ptr @jiffies, align 128
  %dynpm_action_timeout61 = getelementptr i8, ptr %work, i32 108
  %39 = ptrtoint ptr %dynpm_action_timeout61 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %dynpm_action_timeout61, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %38, i32 %40)
  %cmp62 = icmp ugt i32 %38, %40
  br i1 %cmp62, label %if.then63, label %land.lhs.true59.if.end65_crit_edge

land.lhs.true59.if.end65_crit_edge:               ; preds = %land.lhs.true59
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end65

if.then63:                                        ; preds = %land.lhs.true59
  call void @__sanitizer_cov_trace_pc() #12
  %asic = getelementptr i8, ptr %work, i32 -416
  %41 = ptrtoint ptr %asic to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %asic, align 8
  %get_dynpm_state = getelementptr inbounds %struct.radeon_asic, ptr %42, i32 0, i32 20, i32 4
  %43 = ptrtoint ptr %get_dynpm_state to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %get_dynpm_state, align 4
  tail call void %44(ptr noundef %add.ptr) #10
  tail call fastcc void @radeon_pm_set_clocks(ptr noundef %add.ptr)
  br label %if.end65

if.end65:                                         ; preds = %if.then63, %land.lhs.true59.if.end65_crit_edge, %if.end55.if.end65_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %45 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %45, ptr noundef %work, i32 noundef 10) #10
  br label %if.end69

if.end69:                                         ; preds = %if.end65, %entry.if.end69_crit_edge
  tail call void @mutex_unlock(ptr noundef %pm) #10
  tail call void @ttm_bo_unlock_delayed_workqueue(ptr noundef %mman, i32 noundef %call) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ttm_bo_lock_delayed_workqueue(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @radeon_fence_count_emitted(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ttm_bo_unlock_delayed_workqueue(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @radeon_get_dpm_state(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_private, align 4
  %user_state = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 58, i32 52, i32 9
  %4 = ptrtoint ptr %user_state to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %user_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %5)
  %cmp = icmp eq i32 %5, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %5)
  %cmp2 = icmp eq i32 %5, 3
  %cond = select i1 %cmp2, ptr @.str.66, ptr @.str.67
  %cond3 = select i1 %cmp, ptr @.str.65, ptr %cond
  %call4 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.64, ptr noundef nonnull %cond3) #10
  ret i32 %call4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @radeon_set_dpm_state(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef readonly %buf, i32 noundef %count) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_private, align 4
  %pm = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 58
  tail call void @mutex_lock_nested(ptr noundef %pm, i32 noundef 0) #10
  %call1 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(8) @.str.65, ptr noundef %buf, i32 noundef 7)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp eq i32 %call1, 0
  br i1 %cmp, label %entry.if.end20_crit_edge, label %if.else

entry.if.end20_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end20

if.else:                                          ; preds = %entry
  %call3 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(9) @.str.66, ptr noundef %buf, i32 noundef 8)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp4 = icmp eq i32 %call3, 0
  br i1 %cmp4, label %if.else.if.end20_crit_edge, label %if.else9

if.else.if.end20_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end20

if.else9:                                         ; preds = %if.else
  %call10 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(12) @.str.67, ptr noundef %buf, i32 noundef 11)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %cmp11 = icmp eq i32 %call10, 0
  br i1 %cmp11, label %if.else9.if.end20_crit_edge, label %if.else16

if.else9.if.end20_crit_edge:                      ; preds = %if.else9
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end20

if.else16:                                        ; preds = %if.else9
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @mutex_unlock(ptr noundef %pm) #10
  br label %fail

if.end20:                                         ; preds = %if.else9.if.end20_crit_edge, %if.else.if.end20_crit_edge, %entry.if.end20_crit_edge
  %.sink = phi i32 [ 2, %entry.if.end20_crit_edge ], [ 3, %if.else.if.end20_crit_edge ], [ 4, %if.else9.if.end20_crit_edge ]
  %user_state8 = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 58, i32 52, i32 9
  %4 = ptrtoint ptr %user_state8 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %.sink, ptr %user_state8, align 4
  tail call void @mutex_unlock(ptr noundef %pm) #10
  %flags = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 7
  %5 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %flags, align 8
  %and = and i32 %6, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end20.if.then24_crit_edge, label %lor.lhs.false

if.end20.if.then24_crit_edge:                     ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then24

lor.lhs.false:                                    ; preds = %if.end20
  %switch_power_state = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 35
  %7 = ptrtoint ptr %switch_power_state to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %switch_power_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp23 = icmp eq i32 %8, 0
  br i1 %cmp23, label %lor.lhs.false.if.then24_crit_edge, label %lor.lhs.false.fail_crit_edge

lor.lhs.false.fail_crit_edge:                     ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %fail

lor.lhs.false.if.then24_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then24

if.then24:                                        ; preds = %lor.lhs.false.if.then24_crit_edge, %if.end20.if.then24_crit_edge
  tail call void @radeon_pm_compute_clocks(ptr noundef %3)
  br label %fail

fail:                                             ; preds = %if.then24, %lor.lhs.false.fail_crit_edge, %if.else16
  %count.addr.0 = phi i32 [ %count, %if.then24 ], [ %count, %lor.lhs.false.fail_crit_edge ], [ -22, %if.else16 ]
  ret i32 %count.addr.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @radeon_get_dpm_forced_performance_level(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_private, align 4
  %forced_level = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 58, i32 52, i32 36
  %4 = ptrtoint ptr %forced_level to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %forced_level, align 4
  %flags = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 7
  %6 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %flags, align 8
  %and = and i32 %7, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %switch_power_state = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 35
  %8 = ptrtoint ptr %switch_power_state to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %switch_power_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp.not = icmp eq i32 %9, 0
  br i1 %cmp.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  %call1 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.69) #10
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp2 = icmp eq i32 %5, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp3 = icmp eq i32 %5, 1
  %cond = select i1 %cmp3, ptr @.str.71, ptr @.str.72
  %cond4 = select i1 %cmp2, ptr @.str.70, ptr %cond
  %call5 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.64, ptr noundef nonnull %cond4) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %call1, %if.then ], [ %call5, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @radeon_set_dpm_forced_performance_level(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef readonly %buf, i32 noundef %count) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_private, align 4
  %flags = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 7
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags, align 8
  %and = and i32 %5, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %switch_power_state = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 35
  %6 = ptrtoint ptr %switch_power_state to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %switch_power_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp.not = icmp eq i32 %7, 0
  br i1 %cmp.not, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %pm = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 58
  tail call void @mutex_lock_nested(ptr noundef %pm, i32 noundef 0) #10
  %call1 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(4) @.str.71, ptr noundef %buf, i32 noundef 3)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp2 = icmp eq i32 %call1, 0
  br i1 %cmp2, label %if.end.if.end14_crit_edge, label %if.else

if.end.if.end14_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end14

if.else:                                          ; preds = %if.end
  %call4 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(5) @.str.72, ptr noundef %buf, i32 noundef 4)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp5 = icmp eq i32 %call4, 0
  br i1 %cmp5, label %if.else.if.end14_crit_edge, label %if.else7

if.else.if.end14_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end14

if.else7:                                         ; preds = %if.else
  %call8 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(5) @.str.70, ptr noundef %buf, i32 noundef 4)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %cmp9 = icmp eq i32 %call8, 0
  br i1 %cmp9, label %if.else7.if.end14_crit_edge, label %if.else7.fail_crit_edge

if.else7.fail_crit_edge:                          ; preds = %if.else7
  call void @__sanitizer_cov_trace_pc() #12
  br label %fail

if.else7.if.end14_crit_edge:                      ; preds = %if.else7
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end14

if.end14:                                         ; preds = %if.else7.if.end14_crit_edge, %if.else.if.end14_crit_edge, %if.end.if.end14_crit_edge
  %level.0 = phi i32 [ 1, %if.end.if.end14_crit_edge ], [ 2, %if.else.if.end14_crit_edge ], [ 0, %if.else7.if.end14_crit_edge ]
  %asic = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 56
  %8 = ptrtoint ptr %asic to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %asic, align 8
  %force_performance_level = getelementptr inbounds %struct.radeon_asic, ptr %9, i32 0, i32 21, i32 14
  %10 = ptrtoint ptr %force_performance_level to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %force_performance_level, align 4
  %tobool15.not = icmp eq ptr %11, null
  br i1 %tobool15.not, label %if.end14.fail_crit_edge, label %if.then16

if.end14.fail_crit_edge:                          ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  br label %fail

if.then16:                                        ; preds = %if.end14
  %thermal_active = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 58, i32 52, i32 32
  %12 = ptrtoint ptr %thermal_active to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %thermal_active, align 4, !range !207
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool19.not = icmp eq i8 %13, 0
  br i1 %tobool19.not, label %if.end21, label %if.then16.fail_crit_edge

if.then16.fail_crit_edge:                         ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #12
  br label %fail

if.end21:                                         ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #12
  %call25 = tail call i32 %11(ptr noundef %3, i32 noundef %level.0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool26.not = icmp eq i32 %call25, 0
  %spec.select = select i1 %tobool26.not, i32 %count, i32 -22
  br label %fail

fail:                                             ; preds = %if.end21, %if.then16.fail_crit_edge, %if.end14.fail_crit_edge, %if.else7.fail_crit_edge
  %count.addr.0 = phi i32 [ %count, %if.end14.fail_crit_edge ], [ -22, %if.else7.fail_crit_edge ], [ -22, %if.then16.fail_crit_edge ], [ %spec.select, %if.end21 ]
  tail call void @mutex_unlock(ptr noundef %pm) #10
  br label %cleanup

cleanup:                                          ; preds = %fail, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i32 [ %count.addr.0, %fail ], [ -22, %land.lhs.true.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @radeon_get_pm_profile(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_private, align 4
  %profile = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 58, i32 41
  %4 = ptrtoint ptr %profile to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %profile, align 4
  %switch.tableidx = add i32 %5, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %switch.tableidx)
  %6 = icmp ult i32 %switch.tableidx, 3
  br i1 %6, label %switch.lookup, label %cond.false6

cond.false6:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %5)
  %cmp7 = icmp eq i32 %5, 4
  %cond = select i1 %cmp7, ptr @.str.72, ptr @.str.75
  br label %cond.end11

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %switch.gep = getelementptr inbounds [3 x ptr], ptr @switch.table.radeon_get_pm_profile, i32 0, i32 %switch.tableidx
  %7 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %7)
  %switch.load = load ptr, ptr %switch.gep, align 4
  br label %cond.end11

cond.end11:                                       ; preds = %switch.lookup, %cond.false6
  %cond12 = phi ptr [ %cond, %cond.false6 ], [ %switch.load, %switch.lookup ]
  %call13 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.64, ptr noundef nonnull %cond12) #10
  ret i32 %call13
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @radeon_set_pm_profile(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef readonly %buf, i32 noundef %count) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_private, align 4
  %flags = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 7
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags, align 8
  %and = and i32 %5, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %switch_power_state = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 35
  %6 = ptrtoint ptr %switch_power_state to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %switch_power_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp.not = icmp eq i32 %7, 0
  br i1 %cmp.not, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %pm = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 58
  tail call void @mutex_lock_nested(ptr noundef %pm, i32 noundef 0) #10
  %pm_method = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 58, i32 34
  %8 = ptrtoint ptr %pm_method to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %pm_method, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp2 = icmp eq i32 %9, 0
  br i1 %cmp2, label %if.then3, label %if.end.fail_crit_edge

if.end.fail_crit_edge:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %fail

if.then3:                                         ; preds = %if.end
  %call4 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(8) @.str.75, ptr noundef %buf, i32 noundef 7)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp5 = icmp eq i32 %call4, 0
  br i1 %cmp5, label %if.then3.if.end36_crit_edge, label %if.else

if.then3.if.end36_crit_edge:                      ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end36

if.else:                                          ; preds = %if.then3
  %call8 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(5) @.str.70, ptr noundef %buf, i32 noundef 4)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %cmp9 = icmp eq i32 %call8, 0
  br i1 %cmp9, label %if.else.if.end36_crit_edge, label %if.else13

if.else.if.end36_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end36

if.else13:                                        ; preds = %if.else
  %call14 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(4) @.str.71, ptr noundef %buf, i32 noundef 3)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %cmp15 = icmp eq i32 %call14, 0
  br i1 %cmp15, label %if.else13.if.end36_crit_edge, label %if.else19

if.else13.if.end36_crit_edge:                     ; preds = %if.else13
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end36

if.else19:                                        ; preds = %if.else13
  %call20 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(4) @.str.74, ptr noundef %buf, i32 noundef 3)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %cmp21 = icmp eq i32 %call20, 0
  br i1 %cmp21, label %if.else19.if.end36_crit_edge, label %if.else25

if.else19.if.end36_crit_edge:                     ; preds = %if.else19
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end36

if.else25:                                        ; preds = %if.else19
  %call26 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(5) @.str.72, ptr noundef %buf, i32 noundef 4)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %cmp27 = icmp eq i32 %call26, 0
  br i1 %cmp27, label %if.else25.if.end36_crit_edge, label %if.else25.fail_crit_edge

if.else25.fail_crit_edge:                         ; preds = %if.else25
  call void @__sanitizer_cov_trace_pc() #12
  br label %fail

if.else25.if.end36_crit_edge:                     ; preds = %if.else25
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end36

if.end36:                                         ; preds = %if.else25.if.end36_crit_edge, %if.else19.if.end36_crit_edge, %if.else13.if.end36_crit_edge, %if.else.if.end36_crit_edge, %if.then3.if.end36_crit_edge
  %.sink = phi i32 [ 0, %if.then3.if.end36_crit_edge ], [ 1, %if.else.if.end36_crit_edge ], [ 2, %if.else13.if.end36_crit_edge ], [ 3, %if.else19.if.end36_crit_edge ], [ 4, %if.else25.if.end36_crit_edge ]
  %profile12 = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 58, i32 41
  %10 = ptrtoint ptr %profile12 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %.sink, ptr %profile12, align 4
  tail call fastcc void @radeon_pm_update_profile(ptr noundef %3)
  tail call fastcc void @radeon_pm_set_clocks(ptr noundef %3)
  br label %fail

fail:                                             ; preds = %if.end36, %if.else25.fail_crit_edge, %if.end.fail_crit_edge
  %count.addr.0 = phi i32 [ %count, %if.end36 ], [ -22, %if.else25.fail_crit_edge ], [ -22, %if.end.fail_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %pm) #10
  br label %cleanup

cleanup:                                          ; preds = %fail, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i32 [ %count.addr.0, %fail ], [ -22, %land.lhs.true.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @radeon_get_pm_method(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_private, align 4
  %pm_method = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 58, i32 34
  %4 = ptrtoint ptr %pm_method to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %pm_method, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp = icmp eq i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp2 = icmp eq i32 %5, 0
  %cond = select i1 %cmp2, ptr @.str.78, ptr @.str.79
  %cond3 = select i1 %cmp, ptr @.str.77, ptr %cond
  %call4 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.64, ptr noundef nonnull %cond3) #10
  ret i32 %call4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @radeon_set_pm_method(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef readonly %buf, i32 noundef %count) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_private, align 4
  %flags = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 7
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags, align 8
  %and = and i32 %5, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %switch_power_state = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 35
  %6 = ptrtoint ptr %switch_power_state to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %switch_power_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp.not = icmp eq i32 %7, 0
  br i1 %cmp.not, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true.fail_crit_edge

land.lhs.true.fail_crit_edge:                     ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %fail

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %pm = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 58
  %pm_method = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 58, i32 34
  %8 = ptrtoint ptr %pm_method to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %pm_method, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %9)
  %cmp1 = icmp eq i32 %9, 2
  br i1 %cmp1, label %if.end.fail_crit_edge, label %if.end3

if.end.fail_crit_edge:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %fail

if.end3:                                          ; preds = %if.end
  %call4 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(6) @.str.77, ptr noundef %buf, i32 noundef 5)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp5 = icmp eq i32 %call4, 0
  br i1 %cmp5, label %if.then6, label %if.else

if.then6:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @mutex_lock_nested(ptr noundef %pm, i32 noundef 0) #10
  %10 = ptrtoint ptr %pm_method to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 1, ptr %pm_method, align 4
  %dynpm_state = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 58, i32 36
  %11 = ptrtoint ptr %dynpm_state to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 2, ptr %dynpm_state, align 4
  %dynpm_planned_action = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 58, i32 37
  %12 = ptrtoint ptr %dynpm_planned_action to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 4, ptr %dynpm_planned_action, align 8
  tail call void @mutex_unlock(ptr noundef %pm) #10
  br label %if.end31

if.else:                                          ; preds = %if.end3
  %call14 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(8) @.str.78, ptr noundef %buf, i32 noundef 7)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %cmp15 = icmp eq i32 %call14, 0
  br i1 %cmp15, label %if.then16, label %if.else.fail_crit_edge

if.else.fail_crit_edge:                           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %fail

if.then16:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @mutex_lock_nested(ptr noundef %pm, i32 noundef 0) #10
  %dynpm_state20 = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 58, i32 36
  %13 = ptrtoint ptr %dynpm_state20 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %dynpm_state20, align 4
  %dynpm_planned_action22 = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 58, i32 37
  %14 = ptrtoint ptr %dynpm_planned_action22 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %dynpm_planned_action22, align 8
  %15 = ptrtoint ptr %pm_method to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %pm_method, align 4
  tail call void @mutex_unlock(ptr noundef %pm) #10
  %dynpm_idle_work = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 58, i32 35
  %call28 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %dynpm_idle_work) #10
  br label %if.end31

if.end31:                                         ; preds = %if.then16, %if.then6
  tail call void @radeon_pm_compute_clocks(ptr noundef %3)
  br label %fail

fail:                                             ; preds = %if.end31, %if.else.fail_crit_edge, %if.end.fail_crit_edge, %land.lhs.true.fail_crit_edge
  %count.addr.0 = phi i32 [ %count, %if.end31 ], [ -22, %land.lhs.true.fail_crit_edge ], [ -22, %if.end.fail_crit_edge ], [ -22, %if.else.fail_crit_edge ]
  ret i32 %count.addr.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_remove_file(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @hwmon_device_unregister(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @r600_dpm_get_vrefresh(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #9

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

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

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 112)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 112)
  ret void
}

attributes #0 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !21, !22, !24, !26, !28, !29, !31, !32, !33, !34, !36, !38, !40, !41, !42, !43, !44, !45, !47, !49, !51, !52, !54, !56, !57, !59, !60, !62, !64, !65, !67, !68, !70, !71, !73, !74, !76, !78, !79, !81, !83, !84, !86, !87, !88, !89, !91, !93, !95, !97, !99, !101, !103, !105, !107, !109, !111, !112, !113, !114, !116, !117, !118, !119, !121, !123, !125, !127, !129, !131, !133, !135, !137, !139, !141, !143, !145, !147, !149, !150, !152, !154, !156, !158, !160, !161, !163, !165, !167, !169, !171, !172, !174, !176, !178, !179, !181, !183, !185, !187, !188, !189, !190, !192, !193, !194, !196}
!llvm.module.flags = !{!198, !199, !200, !201, !202, !203, !204, !205}
!llvm.ident = !{!206}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/radeon/radeon_pm.c", i32 1595, i32 6}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/radeon/radeon_pm.c", i32 1602, i32 6}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/radeon/radeon_pm.c", i32 1605, i32 6}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/radeon/radeon_pm.c", i32 1614, i32 5}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/radeon/radeon_pm.c", i32 290, i32 6}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/radeon/radeon_pm.c", i32 228, i32 4}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/radeon/radeon_pm.c", i32 237, i32 4}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/radeon/radeon_pm.c", i32 249, i32 3}
!16 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/radeon/radeon_pm.c", i32 166, i32 3}
!18 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/gpu/drm/radeon/radeon_pm.c", i32 1848, i32 3}
!20 = !{ptr @.str.10, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.11, !19, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.12, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/gpu/drm/radeon/radeon_pm.c", i32 1327, i32 2}
!24 = distinct !{null, !25, !"radeon_dpm_quirk_list", i1 false, i1 false}
!25 = !{!"../drivers/gpu/drm/radeon/radeon_pm.c", i32 1487, i32 32}
!26 = !{ptr @radeon_pm_init_dpm.__key, !27, !"__key", i1 false, i1 false}
!27 = !{!"../drivers/gpu/drm/radeon/radeon_pm.c", i32 1440, i32 2}
!28 = !{ptr @.str.13, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.14, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/gpu/drm/radeon/radeon_pm.c", i32 1455, i32 2}
!31 = !{ptr @.str.15, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @radeon_pm_init_dpm._entry, !30, !"_entry", i1 false, i1 false}
!33 = !{ptr @radeon_pm_init_dpm._entry_ptr, !30, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.16, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/gpu/drm/radeon/radeon_pm.c", i32 1475, i32 2}
!36 = !{ptr @.str.17, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/gpu/drm/radeon/radeon_pm.c", i32 853, i32 13}
!38 = !{ptr @.str.18, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/gpu/drm/radeon/radeon_pm.c", i32 857, i32 4}
!40 = !{ptr @.str.19, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @.str.20, !39, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @.str.21, !39, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @radeon_hwmon_init._entry, !39, !"_entry", i1 false, i1 false}
!44 = !{ptr @radeon_hwmon_init._entry_ptr, !39, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @hwmon_groups, !46, !"hwmon_groups", i1 false, i1 false}
!46 = !{!"../drivers/gpu/drm/radeon/radeon_pm.c", i32 832, i32 38}
!47 = !{ptr @hwmon_attrgroup, !48, !"hwmon_attrgroup", i1 false, i1 false}
!48 = !{!"../drivers/gpu/drm/radeon/radeon_pm.c", i32 827, i32 37}
!49 = !{ptr @.str.22, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/gpu/drm/radeon/radeon_pm.c", i32 706, i32 8}
!51 = !{ptr @sensor_dev_attr_temp1_crit, !50, !"sensor_dev_attr_temp1_crit", i1 false, i1 false}
!52 = !{ptr @.str.23, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/gpu/drm/radeon/radeon_pm.c", i32 702, i32 25}
!54 = !{ptr @.str.24, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/gpu/drm/radeon/radeon_pm.c", i32 707, i32 8}
!56 = !{ptr @sensor_dev_attr_temp1_crit_hyst, !55, !"sensor_dev_attr_temp1_crit_hyst", i1 false, i1 false}
!57 = !{ptr @.str.25, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/gpu/drm/radeon/radeon_pm.c", i32 708, i32 8}
!59 = !{ptr @sensor_dev_attr_pwm1, !58, !"sensor_dev_attr_pwm1", i1 false, i1 false}
!60 = !{ptr @.str.26, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/gpu/drm/radeon/radeon_pm.c", i32 658, i32 22}
!62 = !{ptr @.str.27, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/gpu/drm/radeon/radeon_pm.c", i32 709, i32 8}
!64 = !{ptr @sensor_dev_attr_pwm1_enable, !63, !"sensor_dev_attr_pwm1_enable", i1 false, i1 false}
!65 = !{ptr @.str.28, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/gpu/drm/radeon/radeon_pm.c", i32 711, i32 8}
!67 = !{ptr @sensor_dev_attr_pwm1_max, !66, !"sensor_dev_attr_pwm1_max", i1 false, i1 false}
!68 = !{ptr @.str.29, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/gpu/drm/radeon/radeon_pm.c", i32 710, i32 8}
!70 = !{ptr @sensor_dev_attr_pwm1_min, !69, !"sensor_dev_attr_pwm1_min", i1 false, i1 false}
!71 = !{ptr @.str.30, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/gpu/drm/radeon/radeon_pm.c", i32 735, i32 8}
!73 = !{ptr @sensor_dev_attr_freq1_input, !72, !"sensor_dev_attr_freq1_input", i1 false, i1 false}
!74 = !{ptr @.str.31, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/gpu/drm/radeon/radeon_pm.c", i32 732, i32 25}
!76 = !{ptr @.str.32, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/gpu/drm/radeon/radeon_pm.c", i32 756, i32 8}
!78 = !{ptr @sensor_dev_attr_in0_input, !77, !"sensor_dev_attr_in0_input", i1 false, i1 false}
!79 = !{ptr @hwmon_attributes, !80, !"hwmon_attributes", i1 false, i1 false}
!80 = !{!"../drivers/gpu/drm/radeon/radeon_pm.c", i32 759, i32 26}
!81 = !{ptr @.str.33, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/gpu/drm/radeon/radeon_pm.c", i32 705, i32 8}
!83 = !{ptr @sensor_dev_attr_temp1_input, !82, !"sensor_dev_attr_temp1_input", i1 false, i1 false}
!84 = !{ptr @.str.34, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/gpu/drm/radeon/radeon_pm.c", i32 1411, i32 3}
!86 = !{ptr @.str.35, !85, !"<string literal>", i1 false, i1 false}
!87 = !{ptr @radeon_dpm_print_power_states._entry, !85, !"_entry", i1 false, i1 false}
!88 = !{ptr @radeon_dpm_print_power_states._entry_ptr, !85, !"_entry_ptr", i1 false, i1 false}
!89 = !{ptr @.str.36, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/gpu/drm/radeon/radeon_pm.c", i32 1961, i32 22}
!91 = !{ptr @radeon_debugfs_pm_info_fops, !92, !"radeon_debugfs_pm_info_fops", i1 false, i1 false}
!92 = !{!"../drivers/gpu/drm/radeon/radeon_pm.c", i32 1953, i32 1}
!93 = !{ptr @.str.37, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/gpu/drm/radeon/radeon_pm.c", i32 1926, i32 17}
!95 = !{ptr @.str.38, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/gpu/drm/radeon/radeon_pm.c", i32 1932, i32 18}
!97 = !{ptr @.str.39, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/gpu/drm/radeon/radeon_pm.c", i32 1935, i32 17}
!99 = !{ptr @.str.40, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/gpu/drm/radeon/radeon_pm.c", i32 1938, i32 18}
!101 = !{ptr @.str.41, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/gpu/drm/radeon/radeon_pm.c", i32 1941, i32 17}
!103 = !{ptr @.str.42, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/gpu/drm/radeon/radeon_pm.c", i32 1943, i32 18}
!105 = !{ptr @.str.43, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/gpu/drm/radeon/radeon_pm.c", i32 1945, i32 18}
!107 = !{ptr @.str.44, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/gpu/drm/radeon/radeon_pm.c", i32 1947, i32 18}
!109 = !{ptr @radeon_pm_init_old.__key, !110, !"__key", i1 false, i1 false}
!110 = !{!"../drivers/gpu/drm/radeon/radeon_pm.c", i32 1396, i32 2}
!111 = !{ptr @.str.45, !110, !"<string literal>", i1 false, i1 false}
!112 = !{ptr @radeon_pm_init_old.__key.46, !110, !"__key", i1 false, i1 false}
!113 = !{ptr @.str.47, !110, !"<string literal>", i1 false, i1 false}
!114 = !{ptr @.str.48, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/gpu/drm/radeon/radeon_pm.c", i32 1400, i32 3}
!116 = !{ptr @.str.49, !115, !"<string literal>", i1 false, i1 false}
!117 = !{ptr @radeon_pm_init_old._entry, !115, !"_entry", i1 false, i1 false}
!118 = !{ptr @radeon_pm_init_old._entry_ptr, !115, !"_entry_ptr", i1 false, i1 false}
!119 = !{ptr @.str.50, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/gpu/drm/radeon/radeon_pm.c", i32 327, i32 2}
!121 = !{ptr @.str.51, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/gpu/drm/radeon/radeon_pm.c", i32 330, i32 3}
!123 = !{ptr @.str.52, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/gpu/drm/radeon/radeon_pm.c", i32 333, i32 4}
!125 = !{ptr @.str.53, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/gpu/drm/radeon/radeon_pm.c", i32 335, i32 4}
!127 = !{ptr @.str.54, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/gpu/drm/radeon/radeon_pm.c", i32 337, i32 4}
!129 = !{ptr @.str.55, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/gpu/drm/radeon/radeon_pm.c", i32 338, i32 3}
!131 = !{ptr @.str.56, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/gpu/drm/radeon/radeon_pm.c", i32 342, i32 5}
!133 = !{ptr @.str.57, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/gpu/drm/radeon/radeon_pm.c", i32 346, i32 5}
!135 = !{ptr @.str.58, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/gpu/drm/radeon/radeon_pm.c", i32 42, i32 2}
!137 = !{ptr @.str.59, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/gpu/drm/radeon/radeon_pm.c", i32 43, i32 2}
!139 = !{ptr @.str.60, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/gpu/drm/radeon/radeon_pm.c", i32 44, i32 2}
!141 = !{ptr @.str.61, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/gpu/drm/radeon/radeon_pm.c", i32 45, i32 2}
!143 = !{ptr @.str.62, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/gpu/drm/radeon/radeon_pm.c", i32 46, i32 2}
!145 = !{ptr @radeon_pm_state_type_name, !146, !"radeon_pm_state_type_name", i1 false, i1 false}
!146 = !{!"../drivers/gpu/drm/radeon/radeon_pm.c", i32 41, i32 20}
!147 = !{ptr @.str.63, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/gpu/drm/radeon/radeon_pm.c", i32 663, i32 8}
!149 = !{ptr @dev_attr_power_dpm_state, !148, !"dev_attr_power_dpm_state", i1 false, i1 false}
!150 = !{ptr @.str.64, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/gpu/drm/radeon/radeon_pm.c", i32 473, i32 25}
!152 = !{ptr @.str.65, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/gpu/drm/radeon/radeon_pm.c", i32 474, i32 41}
!154 = !{ptr @.str.66, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/gpu/drm/radeon/radeon_pm.c", i32 475, i32 42}
!156 = !{ptr @.str.67, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/gpu/drm/radeon/radeon_pm.c", i32 475, i32 55}
!158 = !{ptr @.str.68, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/gpu/drm/radeon/radeon_pm.c", i32 664, i32 8}
!160 = !{ptr @dev_attr_power_dpm_force_performance_level, !159, !"dev_attr_power_dpm_force_performance_level", i1 false, i1 false}
!161 = !{ptr @.str.69, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/gpu/drm/radeon/radeon_pm.c", i32 519, i32 26}
!163 = !{ptr @.str.70, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/gpu/drm/radeon/radeon_pm.c", i32 522, i32 48}
!165 = !{ptr @.str.71, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/gpu/drm/radeon/radeon_pm.c", i32 523, i32 47}
!167 = !{ptr @.str.72, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../drivers/gpu/drm/radeon/radeon_pm.c", i32 523, i32 55}
!169 = !{ptr @.str.73, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../drivers/gpu/drm/radeon/radeon_pm.c", i32 661, i32 8}
!171 = !{ptr @dev_attr_power_profile, !170, !"dev_attr_power_profile", i1 false, i1 false}
!172 = !{ptr @.str.74, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/gpu/drm/radeon/radeon_pm.c", i32 365, i32 31}
!174 = !{ptr @.str.75, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../drivers/gpu/drm/radeon/radeon_pm.c", i32 366, i32 41}
!176 = !{ptr @.str.76, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../drivers/gpu/drm/radeon/radeon_pm.c", i32 662, i32 8}
!178 = !{ptr @dev_attr_power_method, !177, !"dev_attr_power_method", i1 false, i1 false}
!179 = !{ptr @.str.77, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../drivers/gpu/drm/radeon/radeon_pm.c", i32 417, i32 59}
!181 = !{ptr @.str.78, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../drivers/gpu/drm/radeon/radeon_pm.c", i32 418, i32 34}
!183 = !{ptr @.str.79, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../drivers/gpu/drm/radeon/radeon_pm.c", i32 418, i32 46}
!185 = !{ptr @.str.80, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../drivers/gpu/drm/radeon/radeon_pm.c", i32 1126, i32 3}
!187 = !{ptr @.str.81, !186, !"<string literal>", i1 false, i1 false}
!188 = !{ptr @radeon_dpm_change_power_state_locked._entry, !186, !"_entry", i1 false, i1 false}
!189 = !{ptr @radeon_dpm_change_power_state_locked._entry_ptr, !186, !"_entry_ptr", i1 false, i1 false}
!190 = !{ptr @.str.83, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../drivers/gpu/drm/radeon/radeon_pm.c", i32 1128, i32 3}
!192 = !{ptr @radeon_dpm_change_power_state_locked._entry.82, !191, !"_entry", i1 false, i1 false}
!193 = !{ptr @radeon_dpm_change_power_state_locked._entry_ptr.84, !191, !"_entry_ptr", i1 false, i1 false}
!194 = !{ptr @.str.85, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../drivers/gpu/drm/radeon/radeon_pm.c", i32 1730, i32 6}
!196 = !{ptr @.str.86, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../drivers/gpu/drm/radeon/radeon_pm.c", i32 1747, i32 6}
!198 = !{i32 1, !"wchar_size", i32 2}
!199 = !{i32 1, !"min_enum_size", i32 4}
!200 = !{i32 8, !"branch-target-enforcement", i32 0}
!201 = !{i32 8, !"sign-return-address", i32 0}
!202 = !{i32 8, !"sign-return-address-all", i32 0}
!203 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!204 = !{i32 7, !"uwtable", i32 1}
!205 = !{i32 7, !"frame-pointer", i32 2}
!206 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!207 = !{i8 0, i8 2}
!208 = !{!"auto-init"}
