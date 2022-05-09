; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/radeon/radeon_encoders.c_pt.bc'
source_filename = "../drivers/gpu/drm/radeon/radeon_encoders.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

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
%struct.radeon_encoder = type { %struct.drm_encoder, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.drm_display_mode, ptr, i32, i8, i16, ptr, i32, i8, i32, i8 }
%struct.drm_encoder = type { ptr, %struct.list_head, %struct.drm_mode_object, ptr, i32, i32, i32, i32, ptr, %struct.list_head, ptr, ptr }
%struct.drm_mode_object = type { i32, i32, ptr, %struct.kref, ptr }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }
%struct.radeon_encoder_mst = type { i32, ptr, ptr, ptr, i32, i32, i8, i8 }
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

@.str = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"setting active device to %08x from %08x %08x for encoder %d\0A\00", [35 x i8] zeroinitializer }, align 32
@radeon_backlight = external dso_local local_unnamed_addr global i32, align 4
@__sancov_gen_cov_switch_values = internal global [12 x i64] [i64 10, i64 32, i64 1, i64 2, i64 4, i64 8, i64 16, i64 32, i64 64, i64 128, i64 256, i64 512]
@__sancov_gen_cov_switch_values.1 = internal global [5 x i64] [i64 3, i64 8, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.2 = internal global [5 x i64] [i64 3, i64 32, i64 7, i64 16, i64 17]
@__sancov_gen_cov_switch_values.3 = internal global [5 x i64] [i64 3, i64 32, i64 7, i64 16, i64 17]
@__sancov_gen_cov_switch_values.4 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 4294967295]
@__sancov_gen_cov_switch_values.5 = internal global [7 x i64] [i64 5, i64 32, i64 2, i64 3, i64 10, i64 11, i64 12]
@__sancov_gen_cov_switch_values.6 = internal global [14 x i64] [i64 12, i64 32, i64 1, i64 2, i64 11, i64 15, i64 19, i64 20, i64 25, i64 30, i64 31, i64 32, i64 33, i64 37]
@___asan_gen_.7 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.8 = private constant [44 x i8] c"../drivers/gpu/drm/radeon/radeon_encoders.c\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.8, i32 230, i32 4 }
@llvm.compiler.used = appending global [1 x ptr] [ptr @.str], section "llvm.metadata"
@0 = internal global [1 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @radeon_setup_encoder_clones(ptr noundef readonly %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %encoder_list = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 30, i32 16
  %0 = ptrtoint ptr %encoder_list to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn12 = load ptr, ptr %encoder_list, align 4
  %cmp.not13 = icmp eq ptr %.pn12, %encoder_list
  br i1 %cmp.not13, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body:                                         ; preds = %radeon_encoder_clones.exit.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn14 = phi ptr [ %.pn, %radeon_encoder_clones.exit.for.body_crit_edge ], [ %.pn12, %entry.for.body_crit_edge ]
  %encoder.0 = getelementptr i8, ptr %.pn14, i32 -4
  %1 = ptrtoint ptr %encoder.0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %encoder.0, align 4
  %dev_private.i = getelementptr inbounds %struct.drm_device, ptr %2, i32 0, i32 5
  %3 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev_private.i, align 4
  %family.i = getelementptr inbounds %struct.radeon_device, ptr %4, i32 0, i32 6
  %5 = ptrtoint ptr %family.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %family.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 26, i32 %6)
  %cmp.i = icmp ugt i32 %6, 26
  br i1 %cmp.i, label %for.body.radeon_encoder_clones.exit_crit_edge, label %if.end.i

for.body.radeon_encoder_clones.exit_crit_edge:    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %radeon_encoder_clones.exit

if.end.i:                                         ; preds = %for.body
  %devices.i = getelementptr i8, ptr %.pn14, i32 76
  %7 = ptrtoint ptr %devices.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %devices.i, align 4
  %9 = and i32 %8, 162
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %if.end8.i, label %if.end.i.radeon_encoder_clones.exit_crit_edge

if.end.i.radeon_encoder_clones.exit_crit_edge:    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %radeon_encoder_clones.exit

if.end8.i:                                        ; preds = %if.end.i
  %encoder_list.i = getelementptr inbounds %struct.drm_device, ptr %2, i32 0, i32 30, i32 16
  %11 = ptrtoint ptr %encoder_list.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %.pn57.i = load ptr, ptr %encoder_list.i, align 4
  %cmp14.not58.i = icmp eq ptr %.pn57.i, %encoder_list.i
  br i1 %cmp14.not58.i, label %if.end8.i.radeon_encoder_clones.exit_crit_edge, label %if.end8.i.for.body.i_crit_edge

if.end8.i.for.body.i_crit_edge:                   ; preds = %if.end8.i
  br label %for.body.i

if.end8.i.radeon_encoder_clones.exit_crit_edge:   ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %radeon_encoder_clones.exit

for.body.i:                                       ; preds = %cleanup.i.for.body.i_crit_edge, %if.end8.i.for.body.i_crit_edge
  %.pn61.i = phi ptr [ %.pn.i, %cleanup.i.for.body.i_crit_edge ], [ %.pn57.i, %if.end8.i.for.body.i_crit_edge ]
  %index_mask.060.i = phi i32 [ %index_mask.1.i, %cleanup.i.for.body.i_crit_edge ], [ 0, %if.end8.i.for.body.i_crit_edge ]
  %count.059.i = phi i32 [ %inc.i, %cleanup.i.for.body.i_crit_edge ], [ -1, %if.end8.i.for.body.i_crit_edge ]
  %inc.i = add i32 %count.059.i, 1
  %cmp18.i = icmp eq ptr %.pn61.i, %.pn14
  br i1 %cmp18.i, label %for.body.i.cleanup.i_crit_edge, label %if.end20.i

for.body.i.cleanup.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.i

if.end20.i:                                       ; preds = %for.body.i
  %devices21.i = getelementptr i8, ptr %.pn61.i, i32 76
  %12 = ptrtoint ptr %devices21.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %devices21.i, align 4
  %14 = and i32 %13, 162
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %if.else.i, label %if.end20.i.cleanup.i_crit_edge

if.end20.i.cleanup.i_crit_edge:                   ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.i

if.else.i:                                        ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #8
  %shl.i = shl nuw i32 1, %inc.i
  %or.i = or i32 %shl.i, %index_mask.060.i
  br label %cleanup.i

cleanup.i:                                        ; preds = %if.else.i, %if.end20.i.cleanup.i_crit_edge, %for.body.i.cleanup.i_crit_edge
  %index_mask.1.i = phi i32 [ %or.i, %if.else.i ], [ %index_mask.060.i, %for.body.i.cleanup.i_crit_edge ], [ %index_mask.060.i, %if.end20.i.cleanup.i_crit_edge ]
  %16 = ptrtoint ptr %.pn61.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %.pn.i = load ptr, ptr %.pn61.i, align 4
  %cmp14.not.i = icmp eq ptr %.pn.i, %encoder_list.i
  br i1 %cmp14.not.i, label %cleanup.i.radeon_encoder_clones.exit_crit_edge, label %cleanup.i.for.body.i_crit_edge

cleanup.i.for.body.i_crit_edge:                   ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

cleanup.i.radeon_encoder_clones.exit_crit_edge:   ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %radeon_encoder_clones.exit

radeon_encoder_clones.exit:                       ; preds = %cleanup.i.radeon_encoder_clones.exit_crit_edge, %if.end8.i.radeon_encoder_clones.exit_crit_edge, %if.end.i.radeon_encoder_clones.exit_crit_edge, %for.body.radeon_encoder_clones.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %for.body.radeon_encoder_clones.exit_crit_edge ], [ 0, %if.end.i.radeon_encoder_clones.exit_crit_edge ], [ 0, %if.end8.i.radeon_encoder_clones.exit_crit_edge ], [ %index_mask.1.i, %cleanup.i.radeon_encoder_clones.exit_crit_edge ]
  %possible_clones = getelementptr i8, ptr %.pn14, i32 44
  %17 = ptrtoint ptr %possible_clones to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %retval.0.i, ptr %possible_clones, align 4
  %18 = ptrtoint ptr %.pn14 to i32
  call void @__asan_load4_noabort(i32 %18)
  %.pn = load ptr, ptr %.pn14, align 4
  %cmp.not = icmp eq ptr %.pn, %encoder_list
  br i1 %cmp.not, label %radeon_encoder_clones.exit.for.end_crit_edge, label %radeon_encoder_clones.exit.for.body_crit_edge

radeon_encoder_clones.exit.for.body_crit_edge:    ; preds = %radeon_encoder_clones.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

radeon_encoder_clones.exit.for.end_crit_edge:     ; preds = %radeon_encoder_clones.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.end:                                          ; preds = %radeon_encoder_clones.exit.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @radeon_get_encoder_enum(ptr nocapture noundef readonly %dev, i32 noundef %supported_device, i8 noundef zeroext %dac) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_private, align 4
  %2 = zext i32 %supported_device to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %supported_device, label %entry.sw.epilog80_crit_edge [
    i32 1, label %entry.sw.bb_crit_edge
    i32 4, label %entry.sw.bb_crit_edge102
    i32 64, label %entry.sw.bb_crit_edge103
    i32 16, label %entry.sw.bb_crit_edge104
    i32 256, label %entry.sw.bb_crit_edge105
    i32 2, label %sw.bb30
    i32 8, label %sw.bb37
    i32 32, label %entry.sw.bb58_crit_edge
    i32 128, label %entry.sw.bb58_crit_edge106
    i32 512, label %sw.bb79
  ]

entry.sw.bb58_crit_edge106:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb58

entry.sw.bb58_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb58

entry.sw.bb_crit_edge105:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

entry.sw.bb_crit_edge104:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

entry.sw.bb_crit_edge103:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

entry.sw.bb_crit_edge102:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

entry.sw.epilog80_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog80

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge102, %entry.sw.bb_crit_edge103, %entry.sw.bb_crit_edge104, %entry.sw.bb_crit_edge105
  %3 = zext i8 %dac to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.1)
  switch i8 %dac, label %sw.bb.sw.epilog80_crit_edge [
    i8 1, label %sw.bb1
    i8 2, label %sw.bb16
    i8 3, label %sw.bb23
  ]

sw.bb.sw.epilog80_crit_edge:                      ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog80

sw.bb1:                                           ; preds = %sw.bb
  %family = getelementptr inbounds %struct.radeon_device, ptr %1, i32 0, i32 6
  %4 = ptrtoint ptr %family to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %family, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.2)
  switch i32 %5, label %if.else [
    i32 7, label %sw.bb1.sw.epilog80_crit_edge
    i32 16, label %sw.bb1.sw.epilog80_crit_edge107
    i32 17, label %sw.bb1.sw.epilog80_crit_edge108
  ]

sw.bb1.sw.epilog80_crit_edge108:                  ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog80

sw.bb1.sw.epilog80_crit_edge107:                  ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog80

sw.bb1.sw.epilog80_crit_edge:                     ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog80

if.else:                                          ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %5)
  %cmp11 = icmp ugt i32 %5, 17
  %. = select i1 %cmp11, i32 8469, i32 8452
  br label %sw.epilog80

sw.bb16:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  %family17 = getelementptr inbounds %struct.radeon_device, ptr %1, i32 0, i32 6
  %7 = ptrtoint ptr %family17 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %family17, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %8)
  %cmp18 = icmp ugt i32 %8, 17
  %.97 = select i1 %cmp18, i32 8470, i32 8453
  br label %sw.epilog80

sw.bb23:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  %family24 = getelementptr inbounds %struct.radeon_device, ptr %1, i32 0, i32 6
  %9 = ptrtoint ptr %family24 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %family24, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %10)
  %cmp25 = icmp ugt i32 %10, 17
  %.98 = select i1 %cmp25, i32 8468, i32 8459
  br label %sw.epilog80

sw.bb30:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %family31 = getelementptr inbounds %struct.radeon_device, ptr %1, i32 0, i32 6
  %11 = ptrtoint ptr %family31 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %family31, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %12)
  %cmp32 = icmp ugt i32 %12, 17
  %.99 = select i1 %cmp32, i32 8463, i32 8449
  br label %sw.epilog80

sw.bb37:                                          ; preds = %entry
  %family38 = getelementptr inbounds %struct.radeon_device, ptr %1, i32 0, i32 6
  %13 = ptrtoint ptr %family38 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %family38, align 4
  %15 = zext i32 %14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.3)
  switch i32 %14, label %if.else50 [
    i32 7, label %sw.bb37.sw.epilog80_crit_edge
    i32 16, label %sw.bb37.sw.epilog80_crit_edge109
    i32 17, label %sw.bb37.sw.epilog80_crit_edge110
  ]

sw.bb37.sw.epilog80_crit_edge110:                 ; preds = %sw.bb37
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog80

sw.bb37.sw.epilog80_crit_edge109:                 ; preds = %sw.bb37
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog80

sw.bb37.sw.epilog80_crit_edge:                    ; preds = %sw.bb37
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog80

if.else50:                                        ; preds = %sw.bb37
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %14)
  %cmp52 = icmp ugt i32 %14, 17
  %.100 = select i1 %cmp52, i32 8467, i32 8450
  br label %sw.epilog80

sw.bb58:                                          ; preds = %entry.sw.bb58_crit_edge, %entry.sw.bb58_crit_edge106
  %family59 = getelementptr inbounds %struct.radeon_device, ptr %1, i32 0, i32 6
  %16 = ptrtoint ptr %family59 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %family59, align 4
  %.off = add i32 %17, -18
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.off)
  %switch = icmp ult i32 %.off, 3
  br i1 %switch, label %sw.bb58.sw.epilog80_crit_edge, label %if.else71

sw.bb58.sw.epilog80_crit_edge:                    ; preds = %sw.bb58
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog80

if.else71:                                        ; preds = %sw.bb58
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %17)
  %cmp73 = icmp ugt i32 %17, 17
  %.101 = select i1 %cmp73, i32 8468, i32 8459
  br label %sw.epilog80

sw.bb79:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog80

sw.epilog80:                                      ; preds = %sw.bb79, %if.else71, %sw.bb58.sw.epilog80_crit_edge, %if.else50, %sw.bb37.sw.epilog80_crit_edge, %sw.bb37.sw.epilog80_crit_edge109, %sw.bb37.sw.epilog80_crit_edge110, %sw.bb30, %sw.bb23, %sw.bb16, %if.else, %sw.bb1.sw.epilog80_crit_edge, %sw.bb1.sw.epilog80_crit_edge107, %sw.bb1.sw.epilog80_crit_edge108, %sw.bb.sw.epilog80_crit_edge, %entry.sw.epilog80_crit_edge
  %ret.0 = phi i32 [ 0, %entry.sw.epilog80_crit_edge ], [ 8463, %sw.bb79 ], [ 0, %sw.bb.sw.epilog80_crit_edge ], [ 8453, %sw.bb1.sw.epilog80_crit_edge ], [ 8453, %sw.bb1.sw.epilog80_crit_edge107 ], [ 8453, %sw.bb1.sw.epilog80_crit_edge108 ], [ %., %if.else ], [ %.97, %sw.bb16 ], [ %.98, %sw.bb23 ], [ %.99, %sw.bb30 ], [ 8459, %sw.bb37.sw.epilog80_crit_edge ], [ 8459, %sw.bb37.sw.epilog80_crit_edge109 ], [ 8459, %sw.bb37.sw.epilog80_crit_edge110 ], [ %.100, %if.else50 ], [ 8473, %sw.bb58.sw.epilog80_crit_edge ], [ %.101, %if.else71 ]
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @radeon_link_encoder_connector(ptr noundef readonly %dev) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %connector_list = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 30, i32 12
  %0 = ptrtoint ptr %connector_list to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn57 = load ptr, ptr %connector_list, align 4
  %cmp.not59 = icmp eq ptr %.pn57, %connector_list
  br i1 %cmp.not59, label %entry.for.end38_crit_edge, label %for.body.lr.ph

entry.for.end38_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end38

for.body.lr.ph:                                   ; preds = %entry
  %encoder_list = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 30, i32 16
  br label %for.body

for.cond.loopexit:                                ; preds = %for.inc.for.cond.loopexit_crit_edge, %for.body.for.cond.loopexit_crit_edge
  %1 = ptrtoint ptr %.pn60 to i32
  call void @__asan_load4_noabort(i32 %1)
  %.pn = load ptr, ptr %.pn60, align 4
  %cmp.not = icmp eq ptr %.pn, %connector_list
  br i1 %cmp.not, label %for.cond.loopexit.for.end38_crit_edge, label %for.cond.loopexit.for.body_crit_edge

for.cond.loopexit.for.body_crit_edge:             ; preds = %for.cond.loopexit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.cond.loopexit.for.end38_crit_edge:            ; preds = %for.cond.loopexit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end38

for.body:                                         ; preds = %for.cond.loopexit.for.body_crit_edge, %for.body.lr.ph
  %.pn60 = phi ptr [ %.pn57, %for.body.lr.ph ], [ %.pn, %for.cond.loopexit.for.body_crit_edge ]
  %connector.061 = getelementptr i8, ptr %.pn60, i32 -16
  %2 = ptrtoint ptr %encoder_list to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn5152 = load ptr, ptr %encoder_list, align 4
  %cmp15.not54 = icmp eq ptr %.pn5152, %encoder_list
  br i1 %cmp15.not54, label %for.body.for.cond.loopexit_crit_edge, label %for.body17.lr.ph

for.body.for.cond.loopexit_crit_edge:             ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond.loopexit

for.body17.lr.ph:                                 ; preds = %for.body
  %devices21 = getelementptr i8, ptr %.pn60, i32 1028
  br label %for.body17

for.body17:                                       ; preds = %for.inc.for.body17_crit_edge, %for.body17.lr.ph
  %.pn5155 = phi ptr [ %.pn5152, %for.body17.lr.ph ], [ %.pn51, %for.inc.for.body17_crit_edge ]
  %encoder.056 = getelementptr i8, ptr %.pn5155, i32 -4
  %devices = getelementptr i8, ptr %.pn5155, i32 76
  %3 = ptrtoint ptr %devices to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %devices, align 4
  %5 = ptrtoint ptr %devices21 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %devices21, align 4
  %and = and i32 %6, %4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %for.body17.for.inc_crit_edge, label %if.then

for.body17.for.inc_crit_edge:                     ; preds = %for.body17
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.then:                                          ; preds = %for.body17
  %call = tail call i32 @drm_connector_attach_encoder(ptr noundef %connector.061, ptr noundef %encoder.056) #6
  %7 = ptrtoint ptr %devices to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %devices, align 4
  %and23 = and i32 %8, 34
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23)
  %tobool24.not = icmp eq i32 %and23, 0
  br i1 %tobool24.not, label %if.then.for.inc_crit_edge, label %if.then25

if.then.for.inc_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.then25:                                        ; preds = %if.then
  %9 = ptrtoint ptr %encoder.056 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %encoder.056, align 4
  %dev_private.i = getelementptr inbounds %struct.drm_device, ptr %10, i32 0, i32 5
  %11 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev_private.i, align 4
  %13 = ptrtoint ptr %devices to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %devices, align 4
  %and.i = and i32 %14, 34
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.then25.for.inc_crit_edge, label %if.end.i

if.then25.for.inc_crit_edge:                      ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.end.i:                                         ; preds = %if.then25
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @radeon_backlight to i32))
  %15 = load i32, ptr @radeon_backlight, align 4
  %16 = zext i32 %15 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.4)
  switch i32 %15, label %if.end.i.for.inc_crit_edge [
    i32 -1, label %if.then7.i
    i32 1, label %if.end.i.if.then31.i_crit_edge
  ]

if.end.i.if.then31.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then31.i

if.end.i.for.inc_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.then7.i:                                       ; preds = %if.end.i
  %pdev.i = getelementptr inbounds %struct.radeon_device, ptr %12, i32 0, i32 2
  %17 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %pdev.i, align 8
  %device.i = getelementptr inbounds %struct.pci_dev, ptr %18, i32 0, i32 8
  %19 = ptrtoint ptr %device.i to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %device.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -27261, i16 %20)
  %cmp8.i = icmp eq i16 %20, -27261
  br i1 %cmp8.i, label %land.lhs.true.i, label %if.then7.i.if.else20.i_crit_edge

if.then7.i.if.else20.i_crit_edge:                 ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else20.i

land.lhs.true.i:                                  ; preds = %if.then7.i
  %subsystem_vendor.i = getelementptr inbounds %struct.pci_dev, ptr %18, i32 0, i32 9
  %21 = ptrtoint ptr %subsystem_vendor.i to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %subsystem_vendor.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 5940, i16 %22)
  %cmp12.i = icmp eq i16 %22, 5940
  br i1 %cmp12.i, label %land.lhs.true14.i, label %land.lhs.true.i.if.else20.i_crit_edge

land.lhs.true.i.if.else20.i_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else20.i

land.lhs.true14.i:                                ; preds = %land.lhs.true.i
  %subsystem_device.i = getelementptr inbounds %struct.pci_dev, ptr %18, i32 0, i32 10
  %23 = ptrtoint ptr %subsystem_device.i to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %subsystem_device.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 4359, i16 %24)
  %cmp17.i = icmp eq i16 %24, 4359
  br i1 %cmp17.i, label %land.lhs.true14.i.for.inc_crit_edge, label %land.lhs.true14.i.if.else20.i_crit_edge

land.lhs.true14.i.if.else20.i_crit_edge:          ; preds = %land.lhs.true14.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else20.i

land.lhs.true14.i.for.inc_crit_edge:              ; preds = %land.lhs.true14.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.else20.i:                                      ; preds = %land.lhs.true14.i.if.else20.i_crit_edge, %land.lhs.true.i.if.else20.i_crit_edge, %if.then7.i.if.else20.i_crit_edge
  %family.i = getelementptr inbounds %struct.radeon_device, ptr %12, i32 0, i32 6
  %25 = ptrtoint ptr %family.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %family.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 26, i32 %26)
  %cmp21.i = icmp ugt i32 %26, 26
  br i1 %cmp21.i, label %if.else20.i.if.then31.i_crit_edge, label %if.else20.i.for.inc_crit_edge

if.else20.i.for.inc_crit_edge:                    ; preds = %if.else20.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.else20.i.if.then31.i_crit_edge:                ; preds = %if.else20.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then31.i

if.then31.i:                                      ; preds = %if.else20.i.if.then31.i_crit_edge, %if.end.i.if.then31.i_crit_edge
  %is_atom_bios.i = getelementptr inbounds %struct.radeon_device, ptr %12, i32 0, i32 14
  %27 = ptrtoint ptr %is_atom_bios.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %is_atom_bios.i, align 4, !range !11
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool32.not.i = icmp eq i8 %28, 0
  br i1 %tobool32.not.i, label %if.else34.i, label %if.then33.i

if.then33.i:                                      ; preds = %if.then31.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @radeon_atom_backlight_init(ptr noundef %encoder.056, ptr noundef %connector.061) #6
  br label %for.inc

if.else34.i:                                      ; preds = %if.then31.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @radeon_legacy_backlight_init(ptr noundef %encoder.056, ptr noundef %connector.061) #6
  br label %for.inc

for.inc:                                          ; preds = %if.else34.i, %if.then33.i, %if.else20.i.for.inc_crit_edge, %land.lhs.true14.i.for.inc_crit_edge, %if.end.i.for.inc_crit_edge, %if.then25.for.inc_crit_edge, %if.then.for.inc_crit_edge, %for.body17.for.inc_crit_edge
  %29 = ptrtoint ptr %.pn5155 to i32
  call void @__asan_load4_noabort(i32 %29)
  %.pn51 = load ptr, ptr %.pn5155, align 4
  %cmp15.not = icmp eq ptr %.pn51, %encoder_list
  br i1 %cmp15.not, label %for.inc.for.cond.loopexit_crit_edge, label %for.inc.for.body17_crit_edge

for.inc.for.body17_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body17

for.inc.for.cond.loopexit_crit_edge:              ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond.loopexit

for.end38:                                        ; preds = %for.cond.loopexit.for.end38_crit_edge, %entry.for.end38_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_connector_attach_encoder(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @radeon_encoder_set_active_device(ptr noundef %encoder) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %encoder to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %encoder, align 4
  %connector_list = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 30, i32 12
  %2 = ptrtoint ptr %connector_list to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn32 = load ptr, ptr %connector_list, align 4
  %cmp.not33 = icmp eq ptr %.pn32, %connector_list
  br i1 %cmp.not33, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %devices = getelementptr inbounds %struct.radeon_encoder, ptr %encoder, i32 0, i32 3
  %active_device = getelementptr inbounds %struct.radeon_encoder, ptr %encoder, i32 0, i32 4
  %encoder_type = getelementptr inbounds %struct.drm_encoder, ptr %encoder, i32 0, i32 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %.pn34 = phi ptr [ %.pn32, %for.body.lr.ph ], [ %.pn, %for.inc.for.body_crit_edge ]
  %encoder7 = getelementptr i8, ptr %.pn34, i32 804
  %3 = ptrtoint ptr %encoder7 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %encoder7, align 4
  %cmp8 = icmp eq ptr %4, %encoder
  br i1 %cmp8, label %if.then, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %5 = ptrtoint ptr %devices to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %devices, align 4
  %devices12 = getelementptr i8, ptr %.pn34, i32 1028
  %7 = ptrtoint ptr %devices12 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %devices12, align 4
  %and = and i32 %8, %6
  %9 = ptrtoint ptr %active_device to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %and, ptr %active_device, align 4
  %10 = load i32, ptr %devices12, align 4
  %11 = ptrtoint ptr %encoder_type to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %encoder_type, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str, i32 noundef %and, i32 noundef %6, i32 noundef %10, i32 noundef %12) #6
  br label %for.inc

for.inc:                                          ; preds = %if.then, %for.body.for.inc_crit_edge
  %13 = ptrtoint ptr %.pn34 to i32
  call void @__asan_load4_noabort(i32 %13)
  %.pn = load ptr, ptr %.pn34, align 4
  %cmp.not = icmp eq ptr %.pn, %connector_list
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local ptr @radeon_get_connector_for_encoder(ptr nocapture noundef readonly %encoder) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %encoder to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %encoder, align 4
  %connector_list = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 30, i32 12
  %enc_priv = getelementptr inbounds %struct.radeon_encoder, ptr %encoder, i32 0, i32 12
  %active_device = getelementptr inbounds %struct.radeon_encoder, ptr %encoder, i32 0, i32 4
  %2 = ptrtoint ptr %connector_list to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn47 = load ptr, ptr %connector_list, align 4
  %cmp.not48 = icmp eq ptr %.pn47, %connector_list
  br i1 %cmp.not48, label %entry.cleanup25_crit_edge, label %for.body.lr.ph

entry.cleanup25_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup25

for.body.lr.ph:                                   ; preds = %entry
  %is_mst_encoder = getelementptr inbounds %struct.radeon_encoder, ptr %encoder, i32 0, i32 20
  %3 = ptrtoint ptr %is_mst_encoder to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %is_mst_encoder, align 4, !range !11
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %.pn49 = phi ptr [ %.pn47, %for.body.lr.ph ], [ %.pn, %for.inc.for.body_crit_edge ]
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %for.body
  %is_mst_connector = getelementptr i8, ptr %.pn49, i32 1188
  %5 = ptrtoint ptr %is_mst_connector to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %is_mst_connector, align 4, !range !11
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool10.not = icmp eq i8 %6, 0
  br i1 %tobool10.not, label %if.then.for.inc_crit_edge, label %if.end

if.then.for.inc_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.end:                                           ; preds = %if.then
  %7 = ptrtoint ptr %enc_priv to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %enc_priv, align 4
  %connector12 = getelementptr inbounds %struct.radeon_encoder_mst, ptr %8, i32 0, i32 2
  %9 = ptrtoint ptr %connector12 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %connector12, align 4
  %mst_port = getelementptr i8, ptr %.pn49, i32 1192
  %11 = ptrtoint ptr %mst_port to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %mst_port, align 8
  %cmp13 = icmp eq ptr %10, %12
  br i1 %cmp13, label %cleanup25.split.loop.exit, label %if.end.for.inc_crit_edge

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.else:                                          ; preds = %for.body
  %13 = ptrtoint ptr %active_device to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %active_device, align 4
  %devices = getelementptr i8, ptr %.pn49, i32 1028
  %15 = ptrtoint ptr %devices to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %devices, align 4
  %and = and i32 %16, %14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool16.not = icmp eq i32 %and, 0
  br i1 %tobool16.not, label %if.else.for.inc_crit_edge, label %cleanup25.split.loop.exit43

if.else.for.inc_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

for.inc:                                          ; preds = %if.else.for.inc_crit_edge, %if.end.for.inc_crit_edge, %if.then.for.inc_crit_edge
  %17 = ptrtoint ptr %.pn49 to i32
  call void @__asan_load4_noabort(i32 %17)
  %.pn = load ptr, ptr %.pn49, align 4
  %cmp.not = icmp eq ptr %.pn, %connector_list
  br i1 %cmp.not, label %for.inc.cleanup25_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.inc.cleanup25_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup25

cleanup25.split.loop.exit:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %connector.0.le45 = getelementptr i8, ptr %.pn49, i32 -16
  br label %cleanup25

cleanup25.split.loop.exit43:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %connector.0.le = getelementptr i8, ptr %.pn49, i32 -16
  br label %cleanup25

cleanup25:                                        ; preds = %cleanup25.split.loop.exit43, %cleanup25.split.loop.exit, %for.inc.cleanup25_crit_edge, %entry.cleanup25_crit_edge
  %retval.3 = phi ptr [ %connector.0.le45, %cleanup25.split.loop.exit ], [ %connector.0.le, %cleanup25.split.loop.exit43 ], [ null, %entry.cleanup25_crit_edge ], [ null, %for.inc.cleanup25_crit_edge ]
  ret ptr %retval.3
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local ptr @radeon_get_connector_for_encoder_init(ptr nocapture noundef readonly %encoder) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %encoder to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %encoder, align 4
  %connector_list = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 30, i32 12
  %devices = getelementptr inbounds %struct.radeon_encoder, ptr %encoder, i32 0, i32 3
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry
  %.pn.in = phi ptr [ %connector_list, %entry ], [ %.pn, %for.body.for.cond_crit_edge ]
  %2 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn = load ptr, ptr %.pn.in, align 4
  %cmp.not = icmp eq ptr %.pn, %connector_list
  br i1 %cmp.not, label %for.cond.cleanup_crit_edge, label %for.body

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body:                                         ; preds = %for.cond
  %3 = ptrtoint ptr %devices to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %devices, align 4
  %devices10 = getelementptr i8, ptr %.pn, i32 1028
  %5 = ptrtoint ptr %devices10 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %devices10, align 4
  %and = and i32 %6, %4
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %for.body.for.cond_crit_edge, label %cleanup.split.loop.exit24

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond

cleanup.split.loop.exit24:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %connector.0.le = getelementptr i8, ptr %.pn, i32 -16
  br label %cleanup

cleanup:                                          ; preds = %cleanup.split.loop.exit24, %for.cond.cleanup_crit_edge
  %retval.0 = phi ptr [ %connector.0.le, %cleanup.split.loop.exit24 ], [ null, %for.cond.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local ptr @radeon_get_external_encoder(ptr noundef readonly %encoder) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %is_ext_encoder = getelementptr inbounds %struct.radeon_encoder, ptr %encoder, i32 0, i32 14
  %0 = ptrtoint ptr %is_ext_encoder to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %is_ext_encoder, align 4, !range !11
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %encoder to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %encoder, align 4
  %encoder_list = getelementptr inbounds %struct.drm_device, ptr %3, i32 0, i32 30, i32 16
  %devices = getelementptr inbounds %struct.radeon_encoder, ptr %encoder, i32 0, i32 3
  %4 = ptrtoint ptr %encoder_list to i32
  call void @__asan_load4_noabort(i32 %4)
  %.pn36 = load ptr, ptr %encoder_list, align 4
  %cmp.not38 = icmp eq ptr %.pn36, %encoder_list
  br i1 %cmp.not38, label %if.end.cleanup_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end.for.body_crit_edge
  %.pn39 = phi ptr [ %.pn, %for.inc.for.body_crit_edge ], [ %.pn36, %if.end.for.body_crit_edge ]
  %other_encoder.040 = getelementptr i8, ptr %.pn39, i32 -4
  %cmp7 = icmp eq ptr %other_encoder.040, %encoder
  br i1 %cmp7, label %for.body.for.inc_crit_edge, label %if.end9

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.end9:                                          ; preds = %for.body
  %is_ext_encoder13 = getelementptr i8, ptr %.pn39, i32 228
  %5 = ptrtoint ptr %is_ext_encoder13 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %is_ext_encoder13, align 4, !range !11
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool14.not = icmp eq i8 %6, 0
  br i1 %tobool14.not, label %if.end9.for.inc_crit_edge, label %land.lhs.true

if.end9.for.inc_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

land.lhs.true:                                    ; preds = %if.end9
  %7 = ptrtoint ptr %devices to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %devices, align 4
  %devices15 = getelementptr i8, ptr %.pn39, i32 76
  %9 = ptrtoint ptr %devices15 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %devices15, align 4
  %and = and i32 %10, %8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool16.not = icmp eq i32 %and, 0
  br i1 %tobool16.not, label %land.lhs.true.for.inc_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

for.inc:                                          ; preds = %land.lhs.true.for.inc_crit_edge, %if.end9.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %11 = ptrtoint ptr %.pn39 to i32
  call void @__asan_load4_noabort(i32 %11)
  %.pn = load ptr, ptr %.pn39, align 4
  %cmp.not = icmp eq ptr %.pn, %encoder_list
  br i1 %cmp.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %entry.cleanup_crit_edge ], [ null, %if.end.cleanup_crit_edge ], [ %other_encoder.040, %land.lhs.true.cleanup_crit_edge ], [ null, %for.inc.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i16 @radeon_encoder_get_dp_bridge_encoder_id(ptr noundef readonly %encoder) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %is_ext_encoder.i = getelementptr inbounds %struct.radeon_encoder, ptr %encoder, i32 0, i32 14
  %0 = ptrtoint ptr %is_ext_encoder.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %is_ext_encoder.i, align 4, !range !11
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not.i = icmp eq i8 %1, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.cleanup2_crit_edge

entry.cleanup2_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup2

if.end.i:                                         ; preds = %entry
  %2 = ptrtoint ptr %encoder to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %encoder, align 4
  %encoder_list.i = getelementptr inbounds %struct.drm_device, ptr %3, i32 0, i32 30, i32 16
  %devices.i = getelementptr inbounds %struct.radeon_encoder, ptr %encoder, i32 0, i32 3
  %4 = ptrtoint ptr %encoder_list.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %.pn36.i = load ptr, ptr %encoder_list.i, align 4
  %cmp.not38.i = icmp eq ptr %.pn36.i, %encoder_list.i
  br i1 %cmp.not38.i, label %if.end.i.cleanup2_crit_edge, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  br label %for.body.i

if.end.i.cleanup2_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup2

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end.i.for.body.i_crit_edge
  %.pn39.i = phi ptr [ %.pn.i, %for.inc.i.for.body.i_crit_edge ], [ %.pn36.i, %if.end.i.for.body.i_crit_edge ]
  %other_encoder.040.i = getelementptr i8, ptr %.pn39.i, i32 -4
  %cmp7.i = icmp eq ptr %other_encoder.040.i, %encoder
  br i1 %cmp7.i, label %for.body.i.for.inc.i_crit_edge, label %if.end9.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

if.end9.i:                                        ; preds = %for.body.i
  %is_ext_encoder13.i = getelementptr i8, ptr %.pn39.i, i32 228
  %5 = ptrtoint ptr %is_ext_encoder13.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %is_ext_encoder13.i, align 4, !range !11
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool14.not.i = icmp eq i8 %6, 0
  br i1 %tobool14.not.i, label %if.end9.i.for.inc.i_crit_edge, label %land.lhs.true.i

if.end9.i.for.inc.i_crit_edge:                    ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %if.end9.i
  %7 = ptrtoint ptr %devices.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %devices.i, align 4
  %devices15.i = getelementptr i8, ptr %.pn39.i, i32 76
  %9 = ptrtoint ptr %devices15.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %devices15.i, align 4
  %and.i = and i32 %10, %8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool16.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool16.not.i, label %land.lhs.true.i.for.inc.i_crit_edge, label %radeon_get_external_encoder.exit

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

for.inc.i:                                        ; preds = %land.lhs.true.i.for.inc.i_crit_edge, %if.end9.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %11 = ptrtoint ptr %.pn39.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %.pn.i = load ptr, ptr %.pn39.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %encoder_list.i
  br i1 %cmp.not.i, label %for.inc.i.cleanup2_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.inc.i.cleanup2_crit_edge:                     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup2

radeon_get_external_encoder.exit:                 ; preds = %land.lhs.true.i
  %tobool.not = icmp eq ptr %other_encoder.040.i, null
  br i1 %tobool.not, label %radeon_get_external_encoder.exit.cleanup2_crit_edge, label %if.then

radeon_get_external_encoder.exit.cleanup2_crit_edge: ; preds = %radeon_get_external_encoder.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup2

if.then:                                          ; preds = %radeon_get_external_encoder.exit
  call void @__sanitizer_cov_trace_pc() #8
  %encoder_id = getelementptr i8, ptr %.pn39.i, i32 72
  %12 = ptrtoint ptr %encoder_id to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %encoder_id, align 4
  %14 = and i32 %13, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 34, i32 %14)
  %switch = icmp eq i32 %14, 34
  %conv = trunc i32 %13 to i16
  %spec.select = select i1 %switch, i16 %conv, i16 0
  br label %cleanup2

cleanup2:                                         ; preds = %if.then, %radeon_get_external_encoder.exit.cleanup2_crit_edge, %for.inc.i.cleanup2_crit_edge, %if.end.i.cleanup2_crit_edge, %entry.cleanup2_crit_edge
  %retval.1 = phi i16 [ 0, %radeon_get_external_encoder.exit.cleanup2_crit_edge ], [ 0, %entry.cleanup2_crit_edge ], [ 0, %if.end.i.cleanup2_crit_edge ], [ %spec.select, %if.then ], [ 0, %for.inc.i.cleanup2_crit_edge ]
  ret i16 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @radeon_panel_mode_fixup(ptr nocapture noundef readonly %encoder, ptr noundef %adjusted_mode) local_unnamed_addr #2 align 64 {
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
  %native_mode2 = getelementptr inbounds %struct.radeon_encoder, ptr %encoder, i32 0, i32 11
  %htotal = getelementptr inbounds %struct.radeon_encoder, ptr %encoder, i32 0, i32 11, i32 4
  %4 = ptrtoint ptr %htotal to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %htotal, align 2
  %hdisplay = getelementptr inbounds %struct.radeon_encoder, ptr %encoder, i32 0, i32 11, i32 1
  %6 = ptrtoint ptr %hdisplay to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %hdisplay, align 4
  %sub = sub i16 %5, %7
  %vtotal = getelementptr inbounds %struct.radeon_encoder, ptr %encoder, i32 0, i32 11, i32 9
  %8 = ptrtoint ptr %vtotal to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %vtotal, align 4
  %vdisplay = getelementptr inbounds %struct.radeon_encoder, ptr %encoder, i32 0, i32 11, i32 6
  %10 = ptrtoint ptr %vdisplay to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %vdisplay, align 2
  %sub6 = sub i16 %9, %11
  %hsync_start = getelementptr inbounds %struct.radeon_encoder, ptr %encoder, i32 0, i32 11, i32 2
  %12 = ptrtoint ptr %hsync_start to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %hsync_start, align 2
  %sub10 = sub i16 %13, %7
  %vsync_start = getelementptr inbounds %struct.radeon_encoder, ptr %encoder, i32 0, i32 11, i32 7
  %14 = ptrtoint ptr %vsync_start to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %vsync_start, align 4
  %sub14 = sub i16 %15, %11
  %hsync_end = getelementptr inbounds %struct.radeon_encoder, ptr %encoder, i32 0, i32 11, i32 3
  %16 = ptrtoint ptr %hsync_end to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %hsync_end, align 4
  %sub18 = sub i16 %17, %13
  %vsync_end = getelementptr inbounds %struct.radeon_encoder, ptr %encoder, i32 0, i32 11, i32 8
  %18 = ptrtoint ptr %vsync_end to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %vsync_end, align 2
  %sub22 = sub i16 %19, %15
  %20 = ptrtoint ptr %native_mode2 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %native_mode2, align 4
  %22 = ptrtoint ptr %adjusted_mode to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %adjusted_mode, align 4
  %flags = getelementptr inbounds %struct.radeon_encoder, ptr %encoder, i32 0, i32 11, i32 11
  %23 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %flags, align 4
  %flags24 = getelementptr inbounds %struct.drm_display_mode, ptr %adjusted_mode, i32 0, i32 11
  %25 = ptrtoint ptr %flags24 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %flags24, align 4
  %family = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 6
  %26 = ptrtoint ptr %family to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %family, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %27)
  %cmp = icmp ugt i32 %27, 17
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %28 = ptrtoint ptr %hdisplay to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %hdisplay, align 4
  %hdisplay27 = getelementptr inbounds %struct.drm_display_mode, ptr %adjusted_mode, i32 0, i32 1
  %30 = ptrtoint ptr %hdisplay27 to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 %29, ptr %hdisplay27, align 4
  %31 = ptrtoint ptr %vdisplay to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %vdisplay, align 2
  %vdisplay29 = getelementptr inbounds %struct.drm_display_mode, ptr %adjusted_mode, i32 0, i32 6
  %33 = ptrtoint ptr %vdisplay29 to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 %32, ptr %vdisplay29, align 2
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %34 = ptrtoint ptr %hdisplay to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %hdisplay, align 4
  %conv32 = add i16 %35, %sub
  %htotal33 = getelementptr inbounds %struct.drm_display_mode, ptr %adjusted_mode, i32 0, i32 4
  %36 = ptrtoint ptr %htotal33 to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 %conv32, ptr %htotal33, align 2
  %37 = load i16, ptr %hdisplay, align 4
  %conv37 = add i16 %37, %sub10
  %hsync_start38 = getelementptr inbounds %struct.drm_display_mode, ptr %adjusted_mode, i32 0, i32 2
  %38 = ptrtoint ptr %hsync_start38 to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 %conv37, ptr %hsync_start38, align 2
  %conv42 = add i16 %conv37, %sub18
  %hsync_end43 = getelementptr inbounds %struct.drm_display_mode, ptr %adjusted_mode, i32 0, i32 3
  %39 = ptrtoint ptr %hsync_end43 to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 %conv42, ptr %hsync_end43, align 4
  %40 = ptrtoint ptr %vdisplay to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %vdisplay, align 2
  %conv47 = add i16 %41, %sub6
  %vtotal48 = getelementptr inbounds %struct.drm_display_mode, ptr %adjusted_mode, i32 0, i32 9
  %42 = ptrtoint ptr %vtotal48 to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 %conv47, ptr %vtotal48, align 4
  %43 = load i16, ptr %vdisplay, align 2
  %conv52 = add i16 %43, %sub14
  %vsync_start53 = getelementptr inbounds %struct.drm_display_mode, ptr %adjusted_mode, i32 0, i32 7
  %44 = ptrtoint ptr %vsync_start53 to i32
  call void @__asan_store2_noabort(i32 %44)
  store i16 %conv52, ptr %vsync_start53, align 4
  %conv57 = add i16 %conv52, %sub22
  %vsync_end58 = getelementptr inbounds %struct.drm_display_mode, ptr %adjusted_mode, i32 0, i32 8
  %45 = ptrtoint ptr %vsync_end58 to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 %conv57, ptr %vsync_end58, align 2
  tail call void @drm_mode_set_crtcinfo(ptr noundef %adjusted_mode, i32 noundef 1) #6
  %46 = ptrtoint ptr %family to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %family, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %47)
  %cmp60 = icmp ugt i32 %47, 17
  br i1 %cmp60, label %if.then62, label %if.end.if.end65_crit_edge

if.end.if.end65_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end65

if.then62:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %48 = ptrtoint ptr %hdisplay to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %hdisplay, align 4
  %crtc_hdisplay = getelementptr inbounds %struct.drm_display_mode, ptr %adjusted_mode, i32 0, i32 13
  %50 = ptrtoint ptr %crtc_hdisplay to i32
  call void @__asan_store2_noabort(i32 %50)
  store i16 %49, ptr %crtc_hdisplay, align 4
  %51 = ptrtoint ptr %vdisplay to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %vdisplay, align 2
  %crtc_vdisplay = getelementptr inbounds %struct.drm_display_mode, ptr %adjusted_mode, i32 0, i32 20
  %53 = ptrtoint ptr %crtc_vdisplay to i32
  call void @__asan_store2_noabort(i32 %53)
  store i16 %52, ptr %crtc_vdisplay, align 2
  br label %if.end65

if.end65:                                         ; preds = %if.then62, %if.end.if.end65_crit_edge
  %crtc_hdisplay66 = getelementptr inbounds %struct.drm_display_mode, ptr %adjusted_mode, i32 0, i32 13
  %54 = ptrtoint ptr %crtc_hdisplay66 to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %crtc_hdisplay66, align 4
  %conv69 = add i16 %55, %sub
  %crtc_htotal = getelementptr inbounds %struct.drm_display_mode, ptr %adjusted_mode, i32 0, i32 18
  %56 = ptrtoint ptr %crtc_htotal to i32
  call void @__asan_store2_noabort(i32 %56)
  store i16 %conv69, ptr %crtc_htotal, align 2
  %conv73 = add i16 %55, %sub10
  %crtc_hsync_start = getelementptr inbounds %struct.drm_display_mode, ptr %adjusted_mode, i32 0, i32 16
  %57 = ptrtoint ptr %crtc_hsync_start to i32
  call void @__asan_store2_noabort(i32 %57)
  store i16 %conv73, ptr %crtc_hsync_start, align 2
  %conv77 = add i16 %conv73, %sub18
  %crtc_hsync_end = getelementptr inbounds %struct.drm_display_mode, ptr %adjusted_mode, i32 0, i32 17
  %58 = ptrtoint ptr %crtc_hsync_end to i32
  call void @__asan_store2_noabort(i32 %58)
  store i16 %conv77, ptr %crtc_hsync_end, align 4
  %crtc_vdisplay78 = getelementptr inbounds %struct.drm_display_mode, ptr %adjusted_mode, i32 0, i32 20
  %59 = ptrtoint ptr %crtc_vdisplay78 to i32
  call void @__asan_load2_noabort(i32 %59)
  %60 = load i16, ptr %crtc_vdisplay78, align 2
  %conv81 = add i16 %60, %sub6
  %crtc_vtotal = getelementptr inbounds %struct.drm_display_mode, ptr %adjusted_mode, i32 0, i32 25
  %61 = ptrtoint ptr %crtc_vtotal to i32
  call void @__asan_store2_noabort(i32 %61)
  store i16 %conv81, ptr %crtc_vtotal, align 4
  %conv85 = add i16 %60, %sub14
  %crtc_vsync_start = getelementptr inbounds %struct.drm_display_mode, ptr %adjusted_mode, i32 0, i32 23
  %62 = ptrtoint ptr %crtc_vsync_start to i32
  call void @__asan_store2_noabort(i32 %62)
  store i16 %conv85, ptr %crtc_vsync_start, align 4
  %conv89 = add i16 %conv85, %sub22
  %crtc_vsync_end = getelementptr inbounds %struct.drm_display_mode, ptr %adjusted_mode, i32 0, i32 24
  %63 = ptrtoint ptr %crtc_vsync_end to i32
  call void @__asan_store2_noabort(i32 %63)
  store i16 %conv89, ptr %crtc_vsync_end, align 2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_mode_set_crtcinfo(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @radeon_dig_monitor_is_duallink(ptr nocapture noundef readonly %encoder, i32 noundef %pixel_clock) local_unnamed_addr #2 align 64 {
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
  %connector_list.i = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 30, i32 12
  %enc_priv.i = getelementptr inbounds %struct.radeon_encoder, ptr %encoder, i32 0, i32 12
  %active_device.i = getelementptr inbounds %struct.radeon_encoder, ptr %encoder, i32 0, i32 4
  %4 = ptrtoint ptr %connector_list.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %.pn47.i = load ptr, ptr %connector_list.i, align 4
  %cmp.not48.i = icmp eq ptr %.pn47.i, %connector_list.i
  br i1 %cmp.not48.i, label %entry.if.then_crit_edge, label %for.body.lr.ph.i

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

for.body.lr.ph.i:                                 ; preds = %entry
  %is_mst_encoder.i = getelementptr inbounds %struct.radeon_encoder, ptr %encoder, i32 0, i32 20
  %5 = ptrtoint ptr %is_mst_encoder.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %is_mst_encoder.i, align 4, !range !11
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not.i = icmp eq i8 %6, 0
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %.pn49.i = phi ptr [ %.pn47.i, %for.body.lr.ph.i ], [ %.pn.i, %for.inc.i.for.body.i_crit_edge ]
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %for.body.i
  %is_mst_connector.i = getelementptr i8, ptr %.pn49.i, i32 1188
  %7 = ptrtoint ptr %is_mst_connector.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %is_mst_connector.i, align 4, !range !11
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool10.not.i = icmp eq i8 %8, 0
  br i1 %tobool10.not.i, label %if.then.i.for.inc.i_crit_edge, label %if.end.i

if.then.i.for.inc.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

if.end.i:                                         ; preds = %if.then.i
  %9 = ptrtoint ptr %enc_priv.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %enc_priv.i, align 4
  %connector12.i = getelementptr inbounds %struct.radeon_encoder_mst, ptr %10, i32 0, i32 2
  %11 = ptrtoint ptr %connector12.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %connector12.i, align 4
  %mst_port.i = getelementptr i8, ptr %.pn49.i, i32 1192
  %13 = ptrtoint ptr %mst_port.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %mst_port.i, align 8
  %cmp13.i = icmp eq ptr %12, %14
  br i1 %cmp13.i, label %if.end.i.radeon_get_connector_for_encoder.exit_crit_edge, label %if.end.i.for.inc.i_crit_edge

if.end.i.for.inc.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

if.end.i.radeon_get_connector_for_encoder.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %radeon_get_connector_for_encoder.exit

if.else.i:                                        ; preds = %for.body.i
  %15 = ptrtoint ptr %active_device.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %active_device.i, align 4
  %devices.i = getelementptr i8, ptr %.pn49.i, i32 1028
  %17 = ptrtoint ptr %devices.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %devices.i, align 4
  %and.i = and i32 %18, %16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool16.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool16.not.i, label %if.else.i.for.inc.i_crit_edge, label %if.else.i.radeon_get_connector_for_encoder.exit_crit_edge

if.else.i.radeon_get_connector_for_encoder.exit_crit_edge: ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %radeon_get_connector_for_encoder.exit

if.else.i.for.inc.i_crit_edge:                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.else.i.for.inc.i_crit_edge, %if.end.i.for.inc.i_crit_edge, %if.then.i.for.inc.i_crit_edge
  %19 = ptrtoint ptr %.pn49.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %.pn.i = load ptr, ptr %.pn49.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %connector_list.i
  br i1 %cmp.not.i, label %for.inc.i.if.then_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.inc.i.if.then_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

radeon_get_connector_for_encoder.exit:            ; preds = %if.else.i.radeon_get_connector_for_encoder.exit_crit_edge, %if.end.i.radeon_get_connector_for_encoder.exit_crit_edge
  %retval.3.i = getelementptr i8, ptr %.pn49.i, i32 -16
  %tobool.not = icmp eq ptr %retval.3.i, null
  br i1 %tobool.not, label %radeon_get_connector_for_encoder.exit.if.then_crit_edge, label %radeon_get_connector_for_encoder.exit.if.end_crit_edge

radeon_get_connector_for_encoder.exit.if.end_crit_edge: ; preds = %radeon_get_connector_for_encoder.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

radeon_get_connector_for_encoder.exit.if.then_crit_edge: ; preds = %radeon_get_connector_for_encoder.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

if.then:                                          ; preds = %radeon_get_connector_for_encoder.exit.if.then_crit_edge, %for.inc.i.if.then_crit_edge, %entry.if.then_crit_edge
  %devices.i65 = getelementptr inbounds %struct.radeon_encoder, ptr %encoder, i32 0, i32 3
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i70.for.cond.i_crit_edge, %if.then
  %.pn.in.i = phi ptr [ %connector_list.i, %if.then ], [ %.pn.i66, %for.body.i70.for.cond.i_crit_edge ]
  %20 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %.pn.i66 = load ptr, ptr %.pn.in.i, align 4
  %cmp.not.i67 = icmp eq ptr %.pn.i66, %connector_list.i
  br i1 %cmp.not.i67, label %for.cond.i.if.end_crit_edge, label %for.body.i70

for.cond.i.if.end_crit_edge:                      ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

for.body.i70:                                     ; preds = %for.cond.i
  %21 = ptrtoint ptr %devices.i65 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %devices.i65, align 4
  %devices10.i = getelementptr i8, ptr %.pn.i66, i32 1028
  %23 = ptrtoint ptr %devices10.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %devices10.i, align 4
  %and.i68 = and i32 %24, %22
  %tobool.not.i69 = icmp eq i32 %and.i68, 0
  br i1 %tobool.not.i69, label %for.body.i70.for.cond.i_crit_edge, label %cleanup.split.loop.exit24.i

for.body.i70.for.cond.i_crit_edge:                ; preds = %for.body.i70
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond.i

cleanup.split.loop.exit24.i:                      ; preds = %for.body.i70
  call void @__sanitizer_cov_trace_pc() #8
  %connector.0.le.i71 = getelementptr i8, ptr %.pn.i66, i32 -16
  br label %if.end

if.end:                                           ; preds = %cleanup.split.loop.exit24.i, %for.cond.i.if.end_crit_edge, %radeon_get_connector_for_encoder.exit.if.end_crit_edge
  %connector.0 = phi ptr [ %retval.3.i, %radeon_get_connector_for_encoder.exit.if.end_crit_edge ], [ %connector.0.le.i71, %cleanup.split.loop.exit24.i ], [ null, %for.cond.i.if.end_crit_edge ]
  %connector_type = getelementptr inbounds %struct.drm_connector, ptr %connector.0, i32 0, i32 10
  %25 = ptrtoint ptr %connector_type to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %connector_type, align 8
  %27 = zext i32 %26 to i64
  call void @__sanitizer_cov_trace_switch(i64 %27, ptr @__sancov_gen_cov_switch_values.5)
  switch i32 %26, label %if.end.cleanup_crit_edge [
    i32 2, label %if.end.sw.bb_crit_edge
    i32 12, label %if.end.sw.bb_crit_edge86
    i32 3, label %if.end.sw.bb15_crit_edge
    i32 11, label %if.end.sw.bb15_crit_edge87
    i32 10, label %if.end.sw.bb15_crit_edge88
  ]

if.end.sw.bb15_crit_edge88:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb15

if.end.sw.bb15_crit_edge87:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb15

if.end.sw.bb15_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb15

if.end.sw.bb_crit_edge86:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

if.end.sw.bb_crit_edge:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb:                                            ; preds = %if.end.sw.bb_crit_edge, %if.end.sw.bb_crit_edge86
  %use_digital = getelementptr inbounds %struct.radeon_connector, ptr %connector.0, i32 0, i32 5
  %28 = ptrtoint ptr %use_digital to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %use_digital, align 1, !range !11
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool3.not = icmp eq i8 %29, 0
  br i1 %tobool3.not, label %sw.bb.cleanup_crit_edge, label %if.then4

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then4:                                         ; preds = %sw.bb
  %family = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 6
  %30 = ptrtoint ptr %family to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %family, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 50, i32 %31)
  %cmp = icmp ugt i32 %31, 50
  br i1 %cmp, label %land.lhs.true, label %if.then4.if.else10_crit_edge

if.then4.if.else10_crit_edge:                     ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else10

land.lhs.true:                                    ; preds = %if.then4
  %call5 = tail call ptr @radeon_connector_edid(ptr noundef %connector.0) #6
  %call6 = tail call zeroext i1 @drm_detect_hdmi_monitor(ptr noundef %call5) #6
  br i1 %call6, label %if.then7, label %land.lhs.true.if.else10_crit_edge

land.lhs.true.if.else10_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else10

if.then7:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 340000, i32 %pixel_clock)
  %cmp8 = icmp ugt i32 %pixel_clock, 340000
  br label %cleanup

if.else10:                                        ; preds = %land.lhs.true.if.else10_crit_edge, %if.then4.if.else10_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 165000, i32 %pixel_clock)
  %cmp11 = icmp ugt i32 %pixel_clock, 165000
  br label %cleanup

sw.bb15:                                          ; preds = %if.end.sw.bb15_crit_edge, %if.end.sw.bb15_crit_edge87, %if.end.sw.bb15_crit_edge88
  %is_mst_connector = getelementptr inbounds %struct.radeon_connector, ptr %connector.0, i32 0, i32 18
  %32 = ptrtoint ptr %is_mst_connector to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %is_mst_connector, align 4, !range !11
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %tobool16.not = icmp eq i8 %33, 0
  br i1 %tobool16.not, label %if.end18, label %sw.bb15.cleanup_crit_edge

sw.bb15.cleanup_crit_edge:                        ; preds = %sw.bb15
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end18:                                         ; preds = %sw.bb15
  %con_priv = getelementptr inbounds %struct.radeon_connector, ptr %connector.0, i32 0, i32 7
  %34 = ptrtoint ptr %con_priv to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %con_priv, align 4
  %dp_sink_type = getelementptr inbounds %struct.radeon_connector_atom_dig, ptr %35, i32 0, i32 2
  %36 = ptrtoint ptr %dp_sink_type to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %dp_sink_type, align 1
  %.off = add i8 %37, -19
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %.off)
  %switch = icmp ult i8 %.off, 2
  br i1 %switch, label %if.end18.cleanup_crit_edge, label %if.else26

if.end18.cleanup_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.else26:                                        ; preds = %if.end18
  %family27 = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 6
  %38 = ptrtoint ptr %family27 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %family27, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 50, i32 %39)
  %cmp28 = icmp ugt i32 %39, 50
  br i1 %cmp28, label %land.lhs.true30, label %if.else26.if.else39_crit_edge

if.else26.if.else39_crit_edge:                    ; preds = %if.else26
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else39

land.lhs.true30:                                  ; preds = %if.else26
  %call31 = tail call ptr @radeon_connector_edid(ptr noundef %connector.0) #6
  %call32 = tail call zeroext i1 @drm_detect_hdmi_monitor(ptr noundef %call31) #6
  br i1 %call32, label %if.then34, label %land.lhs.true30.if.else39_crit_edge

land.lhs.true30.if.else39_crit_edge:              ; preds = %land.lhs.true30
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else39

if.then34:                                        ; preds = %land.lhs.true30
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 340000, i32 %pixel_clock)
  %cmp35 = icmp ugt i32 %pixel_clock, 340000
  br label %cleanup

if.else39:                                        ; preds = %land.lhs.true30.if.else39_crit_edge, %if.else26.if.else39_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 165000, i32 %pixel_clock)
  %cmp40 = icmp ugt i32 %pixel_clock, 165000
  br label %cleanup

cleanup:                                          ; preds = %if.else39, %if.then34, %if.end18.cleanup_crit_edge, %sw.bb15.cleanup_crit_edge, %if.else10, %if.then7, %sw.bb.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi i1 [ %cmp8, %if.then7 ], [ %cmp11, %if.else10 ], [ false, %sw.bb.cleanup_crit_edge ], [ false, %sw.bb15.cleanup_crit_edge ], [ false, %if.end18.cleanup_crit_edge ], [ %cmp35, %if.then34 ], [ %cmp40, %if.else39 ], [ false, %if.end.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @drm_detect_hdmi_monitor(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @radeon_connector_edid(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @radeon_encoder_is_digital(ptr nocapture noundef readonly %encoder) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %encoder_id = getelementptr inbounds %struct.radeon_encoder, ptr %encoder, i32 0, i32 2
  %0 = ptrtoint ptr %encoder_id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %encoder_id, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.6)
  switch i32 %1, label %sw.default [
    i32 1, label %entry.cleanup_crit_edge
    i32 2, label %entry.cleanup_crit_edge1
    i32 19, label %entry.cleanup_crit_edge2
    i32 15, label %entry.cleanup_crit_edge3
    i32 11, label %entry.cleanup_crit_edge4
    i32 20, label %entry.cleanup_crit_edge5
    i32 25, label %entry.cleanup_crit_edge6
    i32 30, label %entry.cleanup_crit_edge7
    i32 31, label %entry.cleanup_crit_edge8
    i32 32, label %entry.cleanup_crit_edge9
    i32 33, label %entry.cleanup_crit_edge10
    i32 37, label %entry.cleanup_crit_edge11
  ]

entry.cleanup_crit_edge11:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

entry.cleanup_crit_edge10:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

entry.cleanup_crit_edge9:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

entry.cleanup_crit_edge8:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

entry.cleanup_crit_edge7:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

entry.cleanup_crit_edge6:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

entry.cleanup_crit_edge5:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

entry.cleanup_crit_edge4:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

entry.cleanup_crit_edge3:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

entry.cleanup_crit_edge2:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

entry.cleanup_crit_edge1:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cleanup:                                          ; preds = %sw.default, %entry.cleanup_crit_edge, %entry.cleanup_crit_edge1, %entry.cleanup_crit_edge2, %entry.cleanup_crit_edge3, %entry.cleanup_crit_edge4, %entry.cleanup_crit_edge5, %entry.cleanup_crit_edge6, %entry.cleanup_crit_edge7, %entry.cleanup_crit_edge8, %entry.cleanup_crit_edge9, %entry.cleanup_crit_edge10, %entry.cleanup_crit_edge11
  %retval.0 = phi i1 [ false, %sw.default ], [ true, %entry.cleanup_crit_edge ], [ true, %entry.cleanup_crit_edge1 ], [ true, %entry.cleanup_crit_edge2 ], [ true, %entry.cleanup_crit_edge3 ], [ true, %entry.cleanup_crit_edge4 ], [ true, %entry.cleanup_crit_edge5 ], [ true, %entry.cleanup_crit_edge6 ], [ true, %entry.cleanup_crit_edge7 ], [ true, %entry.cleanup_crit_edge8 ], [ true, %entry.cleanup_crit_edge9 ], [ true, %entry.cleanup_crit_edge10 ], [ true, %entry.cleanup_crit_edge11 ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @radeon_atom_backlight_init(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @radeon_legacy_backlight_init(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

attributes #0 = { nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }

!llvm.asan.globals = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6, !7, !8, !9}
!llvm.ident = !{!10}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/radeon/radeon_encoders.c", i32 230, i32 4}
!2 = !{i32 1, !"wchar_size", i32 2}
!3 = !{i32 1, !"min_enum_size", i32 4}
!4 = !{i32 8, !"branch-target-enforcement", i32 0}
!5 = !{i32 8, !"sign-return-address", i32 0}
!6 = !{i32 8, !"sign-return-address-all", i32 0}
!7 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!8 = !{i32 7, !"uwtable", i32 1}
!9 = !{i32 7, !"frame-pointer", i32 2}
!10 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!11 = !{i8 0, i8 2}
