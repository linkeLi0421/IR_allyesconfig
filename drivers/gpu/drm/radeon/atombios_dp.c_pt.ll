; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/radeon/atombios_dp.c_pt.bc'
source_filename = "../drivers/gpu/drm/radeon/atombios_dp.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.78, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.86, ptr, i32, ptr, i8, i32 }
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
%struct.anon.86 = type { i32, ptr }
%struct.radeon_connector = type { %struct.drm_connector, i32, i32, ptr, i8, i8, ptr, ptr, i8, i8, i8, i16, %struct.radeon_hpd, %struct.radeon_router, ptr, i32, i32, i32, i8, ptr, ptr, %struct.drm_dp_mst_topology_mgr, ptr, [6 x %struct.stream_attribs], i32 }
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
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.stream_attribs = type { i16, i16 }
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
%struct.ttm_pool = type { ptr, i8, i8, [3 x %struct.anon.95] }
%struct.anon.95 = type { [12 x %struct.ttm_pool_type] }
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
%struct.drm_dp_aux_msg = type { i32, i8, i8, ptr, i32 }
%struct._DP_ENCODER_SERVICE_PARAMETERS = type { i16, %union.anon.111, i8, i8, i8, [2 x i8] }
%union.anon.111 = type { i8 }
%struct.radeon_connector_atom_dig = type { i32, [15 x i8], i8, i32, i32, i8, i8 }
%struct.radeon_dp_link_train_info = type { ptr, ptr, ptr, i32, i32, i32, i8, [15 x i8], [4 x i8], [6 x i8], i8, i8, ptr }
%struct.radeon_encoder = type { %struct.drm_encoder, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.drm_display_mode, ptr, i32, i8, i16, ptr, i32, i8, i32, i8 }
%struct.drm_encoder = type { ptr, %struct.list_head, %struct.drm_mode_object, ptr, i32, i32, i32, i32, ptr, %struct.list_head, ptr, ptr }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }
%struct.radeon_encoder_atom_dig = type { i8, i8, i32, i32, i16, i32, %struct.drm_display_mode, ptr, i32, i8, i32, ptr, ptr, i32 }
%union.aux_channel_transaction = type { %struct._PROCESS_AUX_CHANNEL_TRANSACTION_PARAMETERS }
%struct._PROCESS_AUX_CHANNEL_TRANSACTION_PARAMETERS = type { i16, i16, i8, %union.anon.109, i8, i8 }
%union.anon.109 = type { i8 }
%struct.atom_context = type { ptr, %struct.mutex, %struct.mutex, ptr, i32, i32, ptr, i16, i32, [2 x i32], i16, i16, i8, i32, i32, i32, ptr, i32 }

@radeon_auxch = external dso_local local_unnamed_addr global i32, align 4
@.str = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"drivers/gpu/drm/radeon/atombios_dp.c\00", [59 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"drm_dp_aux_register() failed with error %d\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"DPCD: %*ph\0A\00", [20 x i8] zeroinitializer }, align 32
@radeon_dp_aux_transfer_atom.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.3 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"dp_aux_ch timeout\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"dp_aux_ch flags not zero\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"dp_aux_ch error\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Sink OUI: %02hx%02hx%02hx\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Branch OUI: %02hx%02hx%02hx\0A\00", [35 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.8 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"displayport link status failed\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"clock recovery reached max voltage\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"clock recovery tried 5 times\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"clock recovery failed\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"clock recovery at voltage %d pre-emphasis %d\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"requested signal parameters: lane %d voltage %s pre_emph %s\0A\00", [35 x i8] zeroinitializer }, align 32
@voltage_names = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18], [16 x i8] zeroinitializer }, align 32
@pre_emph_names = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22], [16 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"using signal parameters: voltage %s pre_emph %s\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"0.4V\00", [27 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"0.6V\00", [27 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"0.8V\00", [27 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"1.2V\00", [27 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"0dB\00", [28 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"3.5dB\00", [26 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"6dB\00", [28 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"9.5dB\00", [26 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"channel eq failed: 5 tries\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"channel eq failed\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"channel eq at voltage %d pre-emphasis %d\0A\00", [54 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 8, i64 0, i64 1, i64 2, i64 8, i64 9]
@__sancov_gen_cov_switch_values.26 = internal global [5 x i64] [i64 3, i64 8, i64 1, i64 2, i64 3]
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 249, i32 2 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 398, i32 3 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 121, i32 3 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 128, i32 3 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 135, i32 3 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 379, i32 3 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 383, i32 3 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 687, i32 4 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 701, i32 4 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 708, i32 5 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 722, i32 3 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 725, i32 3 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 269, i32 3 }
@___asan_gen_.69 = private unnamed_addr constant [14 x i8] c"voltage_names\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 39, i32 14 }
@___asan_gen_.72 = private unnamed_addr constant [15 x i8] c"pre_emph_names\00", align 1
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 42, i32 14 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 286, i32 2 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 40, i32 2 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 40, i32 10 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 40, i32 18 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 40, i32 26 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 43, i32 2 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 43, i32 9 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 43, i32 18 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 43, i32 25 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 761, i32 4 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 773, i32 3 }
@___asan_gen_.108 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.109 = private constant [40 x i8] c"../drivers/gpu/drm/radeon/atombios_dp.c\00", align 1
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 776, i32 3 }
@llvm.compiler.used = appending global [28 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @voltage_names, ptr @pre_emph_names, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25], section "llvm.metadata"
@0 = internal global [28 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @voltage_names to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pre_emph_names to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @radeon_atom_copy_swap(ptr nocapture noundef writeonly %dst, ptr nocapture noundef readonly %src, i8 noundef zeroext %num_bytes, i1 noundef zeroext %to_le) local_unnamed_addr #0 align 64 {
entry:
  %src_tmp = alloca [5 x i32], align 4
  %dst_tmp = alloca [5 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %src_tmp) #5
  %0 = call ptr @memset(ptr %src_tmp, i32 255, i32 20)
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %dst_tmp) #5
  %conv = zext i8 %num_bytes to i32
  %add = add i8 %num_bytes, 3
  %and = and i8 %add, -4
  %1 = call ptr @memset(ptr %dst_tmp, i32 255, i32 20)
  br i1 %to_le, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = call ptr @memcpy(ptr %src_tmp, ptr %src, i32 %conv)
  %conv3 = zext i8 %and to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %and)
  %cmp41.not = icmp eq i8 %and, 0
  br i1 %cmp41.not, label %if.then.if.end_crit_edge, label %for.body.preheader

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

for.body.preheader:                               ; preds = %if.then
  %div38 = lshr exact i32 %conv3, 2
  %umax43 = call i32 @llvm.umax.i32(i32 %div38, i32 1)
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.preheader
  %i.042 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %arrayidx = getelementptr [5 x i32], ptr %src_tmp, i32 0, i32 %i.042
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %arrayidx, align 4
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  %arrayidx5 = getelementptr [5 x i32], ptr %dst_tmp, i32 0, i32 %i.042
  %6 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %arrayidx5, align 4
  %inc = add nuw nsw i32 %i.042, 1
  %exitcond44.not = icmp eq i32 %inc, %umax43
  br i1 %exitcond44.not, label %for.body.if.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.else:                                          ; preds = %entry
  %conv9 = zext i8 %and to i32
  %7 = call ptr @memcpy(ptr %src_tmp, ptr %src, i32 %conv9)
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %and)
  %cmp1339.not = icmp eq i8 %and, 0
  br i1 %cmp1339.not, label %if.else.if.end_crit_edge, label %for.body15.preheader

if.else.if.end_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

for.body15.preheader:                             ; preds = %if.else
  %div1237 = lshr exact i32 %conv9, 2
  %umax = call i32 @llvm.umax.i32(i32 %div1237, i32 1)
  br label %for.body15

for.body15:                                       ; preds = %for.body15.for.body15_crit_edge, %for.body15.preheader
  %i.140 = phi i32 [ %inc19, %for.body15.for.body15_crit_edge ], [ 0, %for.body15.preheader ]
  %arrayidx16 = getelementptr [5 x i32], ptr %src_tmp, i32 0, i32 %i.140
  %8 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx16, align 4
  %10 = tail call i32 @llvm.bswap.i32(i32 %9)
  %arrayidx17 = getelementptr [5 x i32], ptr %dst_tmp, i32 0, i32 %i.140
  %11 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %arrayidx17, align 4
  %inc19 = add nuw nsw i32 %i.140, 1
  %exitcond.not = icmp eq i32 %inc19, %umax
  br i1 %exitcond.not, label %for.body15.if.end_crit_edge, label %for.body15.for.body15_crit_edge

for.body15.for.body15_crit_edge:                  ; preds = %for.body15
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body15

for.body15.if.end_crit_edge:                      ; preds = %for.body15
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.end:                                           ; preds = %for.body15.if.end_crit_edge, %if.else.if.end_crit_edge, %for.body.if.end_crit_edge, %if.then.if.end_crit_edge
  %conv.sink = phi i32 [ %conv3, %if.then.if.end_crit_edge ], [ %conv, %if.else.if.end_crit_edge ], [ %conv3, %for.body.if.end_crit_edge ], [ %conv, %for.body15.if.end_crit_edge ]
  %12 = call ptr @memcpy(ptr %dst, ptr %dst_tmp, i32 %conv.sink)
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %dst_tmp) #5
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %src_tmp) #5
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @radeon_dp_aux_init(ptr nocapture noundef readonly %radeon_connector) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %radeon_connector to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %radeon_connector, align 8
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_private, align 4
  %hpd = getelementptr inbounds %struct.radeon_connector, ptr %radeon_connector, i32 0, i32 12
  %4 = ptrtoint ptr %hpd to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %hpd, align 8
  %ddc_bus = getelementptr inbounds %struct.radeon_connector, ptr %radeon_connector, i32 0, i32 3
  %6 = ptrtoint ptr %ddc_bus to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ddc_bus, align 8
  %hpd3 = getelementptr inbounds %struct.radeon_i2c_chan, ptr %7, i32 0, i32 3, i32 2
  %8 = ptrtoint ptr %hpd3 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %5, ptr %hpd3, align 4
  %kdev = getelementptr inbounds %struct.drm_connector, ptr %radeon_connector, i32 0, i32 1
  %9 = ptrtoint ptr %kdev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %kdev, align 4
  %11 = load ptr, ptr %ddc_bus, align 8
  %dev6 = getelementptr inbounds %struct.radeon_i2c_chan, ptr %11, i32 0, i32 4, i32 2
  %12 = ptrtoint ptr %dev6 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %10, ptr %dev6, align 8
  %13 = load ptr, ptr %radeon_connector, align 8
  %14 = load ptr, ptr %ddc_bus, align 8
  %drm_dev = getelementptr inbounds %struct.radeon_i2c_chan, ptr %14, i32 0, i32 4, i32 3
  %15 = ptrtoint ptr %drm_dev to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %13, ptr %drm_dev, align 4
  %family = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 6
  %16 = ptrtoint ptr %family to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %family, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 46, i32 %17)
  %cmp = icmp ugt i32 %17, 46
  br i1 %cmp, label %if.then, label %if.else17

if.then:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @radeon_auxch to i32))
  %18 = load i32, ptr @radeon_auxch, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool.not = icmp eq i32 %18, 0
  %19 = ptrtoint ptr %ddc_bus to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ddc_bus, align 8
  %transfer16 = getelementptr inbounds %struct.radeon_i2c_chan, ptr %20, i32 0, i32 4, i32 8
  br i1 %tobool.not, label %if.else, label %if.then11

if.then11:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %21 = ptrtoint ptr %transfer16 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @radeon_dp_aux_transfer_native, ptr %transfer16, align 8
  br label %if.end21

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %22 = ptrtoint ptr %transfer16 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @radeon_dp_aux_transfer_atom, ptr %transfer16, align 8
  br label %if.end21

if.else17:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %23 = ptrtoint ptr %ddc_bus to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ddc_bus, align 8
  %transfer20 = getelementptr inbounds %struct.radeon_i2c_chan, ptr %24, i32 0, i32 4, i32 8
  %25 = ptrtoint ptr %transfer20 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @radeon_dp_aux_transfer_atom, ptr %transfer20, align 8
  br label %if.end21

if.end21:                                         ; preds = %if.else17, %if.else, %if.then11
  %26 = ptrtoint ptr %ddc_bus to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %ddc_bus, align 8
  %aux23 = getelementptr inbounds %struct.radeon_i2c_chan, ptr %27, i32 0, i32 4
  %call = tail call i32 @drm_dp_aux_register(ptr noundef %aux23) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool24.not = icmp eq i32 %call, 0
  br i1 %tobool24.not, label %if.then25, label %do.end.critedge

if.then25:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #7
  %28 = ptrtoint ptr %ddc_bus to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %ddc_bus, align 8
  %has_aux = getelementptr inbounds %struct.radeon_i2c_chan, ptr %29, i32 0, i32 5
  %30 = ptrtoint ptr %has_aux to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 1, ptr %has_aux, align 8
  br label %if.end43

do.end.critedge:                                  ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 249, i32 noundef 9, ptr noundef nonnull @.str.1, i32 noundef %call) #5
  br label %if.end43

if.end43:                                         ; preds = %do.end.critedge, %if.then25
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @radeon_dp_aux_transfer_native(ptr noundef, ptr noundef) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @radeon_dp_aux_transfer_atom(ptr noundef %aux, ptr nocapture noundef %msg) #3 align 64 {
entry:
  %tx_buf = alloca [20 x i8], align 1
  %ack = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %aux, i32 -1480
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %tx_buf) #5
  %0 = getelementptr inbounds [20 x i8], ptr %tx_buf, i32 0, i32 3
  %1 = getelementptr inbounds [20 x i8], ptr %tx_buf, i32 0, i32 4
  %2 = getelementptr inbounds i8, ptr %tx_buf, i32 3
  %3 = call ptr @memset(ptr %2, i32 255, i32 17)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %ack) #5
  %4 = ptrtoint ptr %ack to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -1, ptr %ack, align 1, !annotation !68
  %size = getelementptr inbounds %struct.drm_dp_aux_msg, ptr %msg, i32 0, i32 4
  %5 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %6)
  %cmp = icmp ugt i32 %6, 16
  br i1 %cmp, label %do.end, label %if.end22, !prof !69

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 168, i32 noundef 9, ptr noundef null) #5
  br label %cleanup

if.end22:                                         ; preds = %entry
  %7 = getelementptr inbounds [20 x i8], ptr %tx_buf, i32 0, i32 2
  %8 = getelementptr inbounds [20 x i8], ptr %tx_buf, i32 0, i32 1
  %9 = ptrtoint ptr %msg to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %msg, align 4
  %conv = trunc i32 %10 to i8
  %11 = ptrtoint ptr %tx_buf to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv, ptr %tx_buf, align 1
  %shr = lshr i32 %10, 8
  %conv25 = trunc i32 %shr to i8
  %12 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %conv25, ptr %8, align 1
  %request = getelementptr inbounds %struct.drm_dp_aux_msg, ptr %msg, i32 0, i32 1
  %13 = ptrtoint ptr %request to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %request, align 4
  %conv27 = zext i8 %14 to i32
  %shl = shl nuw nsw i32 %conv27, 4
  %shr29 = lshr i32 %10, 16
  %and30 = and i32 %shr29, 15
  %or = or i32 %shl, %and30
  %conv31 = trunc i32 %or to i8
  %15 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %conv31, ptr %7, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool34.not = icmp eq i32 %6, 0
  %16 = trunc i32 %6 to i8
  %phi.cast = add nsw i8 %16, -1
  %cond = select i1 %tobool34.not, i8 0, i8 %phi.cast
  %17 = and i8 %14, -5
  %18 = zext i8 %17 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values)
  switch i8 %17, label %if.end22.cleanup_crit_edge [
    i8 8, label %if.end22.sw.bb_crit_edge
    i8 0, label %if.end22.sw.bb_crit_edge184
    i8 2, label %if.end22.sw.bb_crit_edge185
    i8 9, label %if.end22.sw.bb120_crit_edge
    i8 1, label %if.end22.sw.bb120_crit_edge186
  ]

if.end22.sw.bb120_crit_edge186:                   ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb120

if.end22.sw.bb120_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb120

if.end22.sw.bb_crit_edge185:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb

if.end22.sw.bb_crit_edge184:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb

if.end22.sw.bb_crit_edge:                         ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb

if.end22.cleanup_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb:                                            ; preds = %if.end22.sw.bb_crit_edge, %if.end22.sw.bb_crit_edge184, %if.end22.sw.bb_crit_edge185
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %6)
  %cmp42 = icmp ugt i32 %6, 12
  br i1 %cmp42, label %land.rhs, label %if.end96

land.rhs:                                         ; preds = %sw.bb
  %.b180 = load i1, ptr @radeon_dp_aux_transfer_atom.__already_done, align 1
  br i1 %.b180, label %land.rhs.cleanup_crit_edge, label %if.then59, !prof !70

land.rhs.cleanup_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then59:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @radeon_dp_aux_transfer_atom.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 186, i32 noundef 9, ptr noundef null) #5
  br label %cleanup

if.end96:                                         ; preds = %sw.bb
  %add = add nuw nsw i32 %6, 4
  %add.tr = trunc i32 %add to i8
  %19 = shl i8 %add.tr, 4
  %storemerge179.v = select i1 %tobool34.not, i8 48, i8 %19
  %storemerge179 = or i8 %storemerge179.v, %cond
  %20 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %storemerge179, ptr %0, align 1
  %buffer = getelementptr inbounds %struct.drm_dp_aux_msg, ptr %msg, i32 0, i32 3
  %21 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %buffer, align 4
  %23 = call ptr @memcpy(ptr %1, ptr %22, i32 %6)
  %call = call fastcc i32 @radeon_process_aux_ch(ptr noundef %add.ptr, ptr noundef nonnull %tx_buf, i32 noundef %add, ptr noundef null, i32 noundef 0, ptr noundef nonnull %ack)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call)
  %cmp115 = icmp sgt i32 %call, -1
  br i1 %cmp115, label %if.then117, label %if.end96.cleanup_crit_edge

if.end96.cleanup_crit_edge:                       ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then117:                                       ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #7
  %24 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %size, align 4
  br label %sw.epilog

sw.bb120:                                         ; preds = %if.end22.sw.bb120_crit_edge, %if.end22.sw.bb120_crit_edge186
  %storemerge.v = select i1 %tobool34.not, i8 48, i8 64
  %storemerge = or i8 %cond, %storemerge.v
  %26 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %storemerge, ptr %0, align 1
  %buffer137 = getelementptr inbounds %struct.drm_dp_aux_msg, ptr %msg, i32 0, i32 3
  %27 = ptrtoint ptr %buffer137 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %buffer137, align 4
  %call139 = call fastcc i32 @radeon_process_aux_ch(ptr noundef %add.ptr, ptr noundef nonnull %tx_buf, i32 noundef 4, ptr noundef %28, i32 noundef %6, ptr noundef nonnull %ack)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb120, %if.then117
  %ret.0 = phi i32 [ %call139, %sw.bb120 ], [ %25, %if.then117 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %ret.0)
  %cmp140 = icmp sgt i32 %ret.0, -1
  br i1 %cmp140, label %if.then142, label %sw.epilog.cleanup_crit_edge

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then142:                                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  %29 = ptrtoint ptr %ack to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %ack, align 1
  %31 = lshr i8 %30, 4
  %reply = getelementptr inbounds %struct.drm_dp_aux_msg, ptr %msg, i32 0, i32 2
  %32 = ptrtoint ptr %reply to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %31, ptr %reply, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.then142, %sw.epilog.cleanup_crit_edge, %if.end96.cleanup_crit_edge, %if.then59, %land.rhs.cleanup_crit_edge, %if.end22.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -7, %do.end ], [ -7, %if.then59 ], [ %ret.0, %if.then142 ], [ %ret.0, %sw.epilog.cleanup_crit_edge ], [ -7, %land.rhs.cleanup_crit_edge ], [ -22, %if.end22.cleanup_crit_edge ], [ %call, %if.end96.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %ack) #5
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %tx_buf) #5
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_dp_aux_register(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i8 @radeon_dp_getsinktype(ptr nocapture noundef readonly %radeon_connector) local_unnamed_addr #3 align 64 {
entry:
  %args.i = alloca %struct._DP_ENCODER_SERVICE_PARAMETERS, align 8
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %radeon_connector to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %radeon_connector, align 8
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_private, align 4
  %ddc_bus = getelementptr inbounds %struct.radeon_connector, ptr %radeon_connector, i32 0, i32 3
  %4 = ptrtoint ptr %ddc_bus to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ddc_bus, align 8
  %i2c_id = getelementptr inbounds %struct.radeon_i2c_chan, ptr %5, i32 0, i32 3, i32 1
  %6 = ptrtoint ptr %i2c_id to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %i2c_id, align 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %args.i) #5
  %8 = getelementptr inbounds %struct._DP_ENCODER_SERVICE_PARAMETERS, ptr %args.i, i32 0, i32 1
  %9 = getelementptr inbounds %struct._DP_ENCODER_SERVICE_PARAMETERS, ptr %args.i, i32 0, i32 3
  %10 = ptrtoint ptr %args.i to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 4294967296, ptr %args.i, align 8
  %11 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %7, ptr %8, align 2
  %mode_info.i = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 44
  %12 = ptrtoint ptr %mode_info.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %mode_info.i, align 4
  %call.i = call i32 @atom_execute_table(ptr noundef %13, i32 noundef 79, ptr noundef nonnull %args.i) #5
  %14 = ptrtoint ptr %9 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %9, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %args.i) #5
  ret i8 %15
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @radeon_dp_getdpcd(ptr nocapture noundef readonly %radeon_connector) local_unnamed_addr #3 align 64 {
entry:
  %buf.i = alloca [3 x i8], align 1
  %msg = alloca [15 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %con_priv = getelementptr inbounds %struct.radeon_connector, ptr %radeon_connector, i32 0, i32 7
  %0 = ptrtoint ptr %con_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %con_priv, align 4
  call void @llvm.lifetime.start.p0(i64 15, ptr nonnull %msg) #5
  %ddc_bus = getelementptr inbounds %struct.radeon_connector, ptr %radeon_connector, i32 0, i32 3
  %2 = call ptr @memset(ptr %msg, i32 255, i32 15)
  %3 = ptrtoint ptr %ddc_bus to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ddc_bus, align 8
  %aux = getelementptr inbounds %struct.radeon_i2c_chan, ptr %4, i32 0, i32 4
  %call = call i32 @drm_dp_dpcd_read(ptr noundef %aux, i32 noundef 0, ptr noundef nonnull %msg, i32 noundef 15) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %call)
  %cmp = icmp eq i32 %call, 15
  %dpcd = getelementptr inbounds %struct.radeon_connector_atom_dig, ptr %1, i32 0, i32 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = call ptr @memcpy(ptr %dpcd, ptr %msg, i32 15)
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.2, i32 noundef 15, ptr noundef %dpcd) #5
  %6 = ptrtoint ptr %con_priv to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %con_priv, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buf.i) #5
  %8 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 -1, ptr %buf.i, align 1, !annotation !68
  %9 = getelementptr inbounds [3 x i8], ptr %buf.i, i32 0, i32 1
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 -1, ptr %9, align 1, !annotation !68
  %11 = getelementptr inbounds [3 x i8], ptr %buf.i, i32 0, i32 2
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 -1, ptr %11, align 1, !annotation !68
  %arrayidx.i = getelementptr %struct.radeon_connector_atom_dig, ptr %7, i32 0, i32 1, i32 7
  %13 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %14)
  %tobool.not.i = icmp sgt i8 %14, -1
  br i1 %tobool.not.i, label %if.then.radeon_dp_probe_oui.exit_crit_edge, label %if.end.i

if.then.radeon_dp_probe_oui.exit_crit_edge:       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %radeon_dp_probe_oui.exit

if.end.i:                                         ; preds = %if.then
  %15 = ptrtoint ptr %ddc_bus to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ddc_bus, align 8
  %aux.i = getelementptr inbounds %struct.radeon_i2c_chan, ptr %16, i32 0, i32 4
  %call.i = call i32 @drm_dp_dpcd_read(ptr noundef %aux.i, i32 noundef 1024, ptr noundef nonnull %buf.i, i32 noundef 3) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call.i)
  %cmp.i = icmp eq i32 %call.i, 3
  br i1 %cmp.i, label %if.then2.i, label %if.end.i.if.end9.i_crit_edge

if.end.i.if.end9.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end9.i

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %17 = ptrtoint ptr %buf.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %buf.i, align 1
  %conv4.i = zext i8 %18 to i32
  %19 = ptrtoint ptr %9 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %9, align 1
  %conv6.i = zext i8 %20 to i32
  %21 = ptrtoint ptr %11 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %11, align 1
  %conv8.i = zext i8 %22 to i32
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.6, i32 noundef %conv4.i, i32 noundef %conv6.i, i32 noundef %conv8.i) #5
  br label %if.end9.i

if.end9.i:                                        ; preds = %if.then2.i, %if.end.i.if.end9.i_crit_edge
  %23 = ptrtoint ptr %ddc_bus to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ddc_bus, align 8
  %aux11.i = getelementptr inbounds %struct.radeon_i2c_chan, ptr %24, i32 0, i32 4
  %call13.i = call i32 @drm_dp_dpcd_read(ptr noundef %aux11.i, i32 noundef 1280, ptr noundef nonnull %buf.i, i32 noundef 3) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call13.i)
  %cmp14.i = icmp eq i32 %call13.i, 3
  br i1 %cmp14.i, label %if.then16.i, label %if.end9.i.radeon_dp_probe_oui.exit_crit_edge

if.end9.i.radeon_dp_probe_oui.exit_crit_edge:     ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %radeon_dp_probe_oui.exit

if.then16.i:                                      ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #7
  %25 = ptrtoint ptr %buf.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %buf.i, align 1
  %conv18.i = zext i8 %26 to i32
  %27 = ptrtoint ptr %9 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %9, align 1
  %conv20.i = zext i8 %28 to i32
  %29 = ptrtoint ptr %11 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %11, align 1
  %conv22.i = zext i8 %30 to i32
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.7, i32 noundef %conv18.i, i32 noundef %conv20.i, i32 noundef %conv22.i) #5
  br label %radeon_dp_probe_oui.exit

radeon_dp_probe_oui.exit:                         ; preds = %if.then16.i, %if.end9.i.radeon_dp_probe_oui.exit_crit_edge, %if.then.radeon_dp_probe_oui.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i) #5
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %31 = ptrtoint ptr %dpcd to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 0, ptr %dpcd, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %radeon_dp_probe_oui.exit
  call void @llvm.lifetime.end.p0(i64 15, ptr nonnull %msg) #5
  ret i1 %cmp
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_dp_dpcd_read(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @radeon_dp_get_panel_mode(ptr nocapture noundef readonly %encoder, ptr noundef %connector) local_unnamed_addr #3 align 64 {
entry:
  %tmp2 = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %encoder to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %encoder, align 4
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_private, align 4
  %call = tail call zeroext i16 @radeon_connector_encoder_get_dp_bridge_encoder_id(ptr noundef %connector) #5
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp2) #5
  %4 = ptrtoint ptr %tmp2 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -1, ptr %tmp2, align 1, !annotation !68
  %family = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 6
  %5 = ptrtoint ptr %family to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %family, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 38, i32 %6)
  %cmp = icmp ugt i32 %6, 38
  br i1 %cmp, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %con_priv = getelementptr inbounds %struct.radeon_connector, ptr %connector, i32 0, i32 7
  %7 = ptrtoint ptr %con_priv to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %con_priv, align 4
  %tobool.not = icmp eq ptr %8, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %call)
  %cmp5.not = icmp eq i16 %call, 0
  br i1 %cmp5.not, label %if.else26, label %if.then7

if.then7:                                         ; preds = %if.end4
  %ddc_bus = getelementptr inbounds %struct.radeon_connector, ptr %connector, i32 0, i32 3
  %9 = ptrtoint ptr %ddc_bus to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ddc_bus, align 8
  %aux = getelementptr inbounds %struct.radeon_i2c_chan, ptr %10, i32 0, i32 4
  %call.i = call i32 @drm_dp_dpcd_read(ptr noundef %aux, i32 noundef 13, ptr noundef nonnull %tmp2, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i)
  %cmp9 = icmp eq i32 %call.i, 1
  br i1 %cmp9, label %if.then11, label %if.then7.cleanup_crit_edge

if.then7.cleanup_crit_edge:                       ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then11:                                        ; preds = %if.then7
  %11 = ptrtoint ptr %tmp2 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %tmp2, align 1
  %13 = and i8 %12, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool13.not = icmp eq i8 %13, 0
  br i1 %tobool13.not, label %if.else, label %if.then11.cleanup_crit_edge

if.then11.cleanup_crit_edge:                      ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.else:                                          ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #7
  %14 = and i16 %call, -2
  call void @__sanitizer_cov_trace_const_cmp2(i16 34, i16 %14)
  %switch = icmp eq i16 %14, 34
  %spec.select57 = select i1 %switch, i32 17, i32 0
  br label %cleanup

if.else26:                                        ; preds = %if.end4
  %connector_type = getelementptr inbounds %struct.drm_connector, ptr %connector, i32 0, i32 10
  %15 = ptrtoint ptr %connector_type to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %connector_type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %16)
  %cmp27 = icmp eq i32 %16, 14
  br i1 %cmp27, label %if.then29, label %if.else26.cleanup_crit_edge

if.else26.cleanup_crit_edge:                      ; preds = %if.else26
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then29:                                        ; preds = %if.else26
  %ddc_bus30 = getelementptr inbounds %struct.radeon_connector, ptr %connector, i32 0, i32 3
  %17 = ptrtoint ptr %ddc_bus30 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ddc_bus30, align 8
  %aux31 = getelementptr inbounds %struct.radeon_i2c_chan, ptr %18, i32 0, i32 4
  %call.i58 = call i32 @drm_dp_dpcd_read(ptr noundef %aux31, i32 noundef 13, ptr noundef nonnull %tmp2, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i58)
  %cmp33 = icmp eq i32 %call.i58, 1
  br i1 %cmp33, label %if.then35, label %if.then29.cleanup_crit_edge

if.then29.cleanup_crit_edge:                      ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then35:                                        ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #7
  %19 = ptrtoint ptr %tmp2 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %tmp2, align 1
  %21 = and i8 %20, 1
  %22 = zext i8 %21 to i32
  br label %cleanup

cleanup:                                          ; preds = %if.then35, %if.then29.cleanup_crit_edge, %if.else26.cleanup_crit_edge, %if.else, %if.then11.cleanup_crit_edge, %if.then7.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %if.then7.cleanup_crit_edge ], [ 0, %if.then29.cleanup_crit_edge ], [ 0, %if.else26.cleanup_crit_edge ], [ 1, %if.then11.cleanup_crit_edge ], [ %22, %if.then35 ], [ %spec.select57, %if.else ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp2) #5
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @radeon_connector_encoder_get_dp_bridge_encoder_id(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @radeon_dp_set_link_config(ptr noundef %connector, ptr nocapture noundef readonly %mode) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %con_priv = getelementptr inbounds %struct.radeon_connector, ptr %connector, i32 0, i32 7
  %0 = ptrtoint ptr %con_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %con_priv, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %dp_sink_type = getelementptr inbounds %struct.radeon_connector_atom_dig, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %dp_sink_type to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %dp_sink_type, align 1
  %.off = add i8 %3, -19
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %.off)
  %switch = icmp ult i8 %.off, 2
  br i1 %switch, label %if.then7, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then7:                                         ; preds = %if.end
  %dpcd = getelementptr inbounds %struct.radeon_connector_atom_dig, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mode, align 4
  %dp_lane_count = getelementptr inbounds %struct.radeon_connector_atom_dig, ptr %1, i32 0, i32 4
  %dp_clock = getelementptr inbounds %struct.radeon_connector_atom_dig, ptr %1, i32 0, i32 3
  %call = tail call fastcc i32 @radeon_dp_get_dp_link_config(ptr noundef %connector, ptr noundef %dpcd, i32 noundef %5, ptr noundef %dp_lane_count, ptr noundef %dp_clock)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool8.not = icmp eq i32 %call, 0
  br i1 %tobool8.not, label %if.then7.cleanup_crit_edge, label %if.then9

if.then7.cleanup_crit_edge:                       ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then9:                                         ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #7
  %6 = ptrtoint ptr %dp_clock to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %dp_clock, align 4
  %7 = ptrtoint ptr %dp_lane_count to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %dp_lane_count, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then9, %if.then7.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @radeon_dp_get_dp_link_config(ptr noundef %connector, ptr nocapture noundef readonly %dpcd, i32 noundef %pix_clock, ptr nocapture noundef writeonly %dp_lanes, ptr nocapture noundef writeonly %dp_rate) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @radeon_get_monitor_bpc(ptr noundef %connector) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp.i = icmp eq i32 %call, 0
  %mul.i = mul i32 %call, 3
  %retval.0.i = select i1 %cmp.i, i32 24, i32 %mul.i
  %arrayidx.i = getelementptr i8, ptr %dpcd, i32 1
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %arrayidx.i, align 1
  %call.i = tail call i32 @drm_dp_bw_code_to_link_rate(i8 noundef zeroext %1) #5
  %arrayidx.i62 = getelementptr i8, ptr %dpcd, i32 2
  %2 = ptrtoint ptr %arrayidx.i62 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx.i62, align 1
  %4 = and i8 %3, 31
  %conv = zext i8 %4 to i32
  %call4 = tail call zeroext i16 @radeon_connector_encoder_get_dp_bridge_encoder_id(ptr noundef %connector) #5
  call void @__sanitizer_cov_trace_const_cmp2(i16 34, i16 %call4)
  %cmp = icmp eq i16 %call4, 34
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %cmp7.not69 = icmp eq i8 %4, 0
  br i1 %cmp, label %for.cond.preheader, label %for.cond13.preheader

for.cond13.preheader:                             ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 162000, i32 %call.i)
  %cmp16.not = icmp ult i32 %call.i, 162000
  %brmerge90 = select i1 %cmp16.not, i1 true, i1 %cmp7.not69
  br i1 %brmerge90, label %for.cond13.preheader.cleanup_crit_edge, label %for.cond13.preheader.for.body22_crit_edge

for.cond13.preheader.for.body22_crit_edge:        ; preds = %for.cond13.preheader
  br label %for.body22

for.cond13.preheader.cleanup_crit_edge:           ; preds = %for.cond13.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  br i1 %cmp7.not69, label %for.cond.preheader.cleanup_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %lane_num.070 = phi i32 [ %shl, %for.inc.for.body_crit_edge ], [ 1, %for.cond.preheader.for.body_crit_edge ]
  %mul9 = mul i32 %lane_num.070, 2160000
  %div = udiv i32 %mul9, %retval.0.i
  call void @__sanitizer_cov_trace_cmp4(i32 %div, i32 %pix_clock)
  %cmp10.not = icmp ult i32 %div, %pix_clock
  br i1 %cmp10.not, label %for.inc, label %for.body.cleanup.sink.split_crit_edge

for.body.cleanup.sink.split_crit_edge:            ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split

for.inc:                                          ; preds = %for.body
  %shl = shl i32 %lane_num.070, 1
  %cmp7.not = icmp ugt i32 %shl, %conv
  br i1 %cmp7.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.body22:                                       ; preds = %for.inc32.for.body22_crit_edge, %for.cond13.preheader.for.body22_crit_edge
  %lane_num.167 = phi i32 [ %shl33, %for.inc32.for.body22_crit_edge ], [ 1, %for.cond13.preheader.for.body22_crit_edge ]
  %mul25 = mul i32 %lane_num.167, 1296000
  %div26 = udiv i32 %mul25, %retval.0.i
  call void @__sanitizer_cov_trace_cmp4(i32 %div26, i32 %pix_clock)
  %cmp27.not = icmp ult i32 %div26, %pix_clock
  br i1 %cmp27.not, label %for.inc32, label %for.body22.cleanup.sink.split_crit_edge

for.body22.cleanup.sink.split_crit_edge:          ; preds = %for.body22
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split

for.inc32:                                        ; preds = %for.body22
  %shl33 = shl i32 %lane_num.167, 1
  %cmp20.not = icmp ugt i32 %shl33, %conv
  br i1 %cmp20.not, label %for.inc35, label %for.inc32.for.body22_crit_edge

for.inc32.for.body22_crit_edge:                   ; preds = %for.inc32
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body22

for.inc35:                                        ; preds = %for.inc32
  call void @__sanitizer_cov_trace_const_cmp4(i32 270000, i32 %call.i)
  %cmp16.not.1 = icmp ult i32 %call.i, 270000
  br i1 %cmp16.not.1, label %for.inc35.cleanup_crit_edge, label %for.cond19.preheader.1

for.inc35.cleanup_crit_edge:                      ; preds = %for.inc35
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.cond19.preheader.1:                           ; preds = %for.inc35
  br i1 %cmp7.not69, label %for.cond19.preheader.1.for.inc35.1_crit_edge, label %for.cond19.preheader.1.for.body22.1_crit_edge

for.cond19.preheader.1.for.body22.1_crit_edge:    ; preds = %for.cond19.preheader.1
  br label %for.body22.1

for.cond19.preheader.1.for.inc35.1_crit_edge:     ; preds = %for.cond19.preheader.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc35.1

for.body22.1:                                     ; preds = %for.inc32.1.for.body22.1_crit_edge, %for.cond19.preheader.1.for.body22.1_crit_edge
  %lane_num.167.1 = phi i32 [ %shl33.1, %for.inc32.1.for.body22.1_crit_edge ], [ 1, %for.cond19.preheader.1.for.body22.1_crit_edge ]
  %mul25.1 = mul i32 %lane_num.167.1, 2160000
  %div26.1 = udiv i32 %mul25.1, %retval.0.i
  call void @__sanitizer_cov_trace_cmp4(i32 %div26.1, i32 %pix_clock)
  %cmp27.not.1 = icmp ult i32 %div26.1, %pix_clock
  br i1 %cmp27.not.1, label %for.inc32.1, label %for.body22.1.cleanup.sink.split_crit_edge

for.body22.1.cleanup.sink.split_crit_edge:        ; preds = %for.body22.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split

for.inc32.1:                                      ; preds = %for.body22.1
  %shl33.1 = shl i32 %lane_num.167.1, 1
  %cmp20.not.1 = icmp ugt i32 %shl33.1, %conv
  br i1 %cmp20.not.1, label %for.inc32.1.for.inc35.1_crit_edge, label %for.inc32.1.for.body22.1_crit_edge

for.inc32.1.for.body22.1_crit_edge:               ; preds = %for.inc32.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body22.1

for.inc32.1.for.inc35.1_crit_edge:                ; preds = %for.inc32.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc35.1

for.inc35.1:                                      ; preds = %for.inc32.1.for.inc35.1_crit_edge, %for.cond19.preheader.1.for.inc35.1_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 540000, i32 %call.i)
  %cmp16.not.2.old = icmp ult i32 %call.i, 540000
  %brmerge = select i1 %cmp16.not.2.old, i1 true, i1 %cmp7.not69
  br i1 %brmerge, label %for.inc35.1.cleanup_crit_edge, label %for.inc35.1.for.body22.2_crit_edge

for.inc35.1.for.body22.2_crit_edge:               ; preds = %for.inc35.1
  br label %for.body22.2

for.inc35.1.cleanup_crit_edge:                    ; preds = %for.inc35.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.body22.2:                                     ; preds = %for.inc32.2.for.body22.2_crit_edge, %for.inc35.1.for.body22.2_crit_edge
  %lane_num.167.2 = phi i32 [ %shl33.2, %for.inc32.2.for.body22.2_crit_edge ], [ 1, %for.inc35.1.for.body22.2_crit_edge ]
  %mul25.2 = mul i32 %lane_num.167.2, 4320000
  %div26.2 = udiv i32 %mul25.2, %retval.0.i
  call void @__sanitizer_cov_trace_cmp4(i32 %div26.2, i32 %pix_clock)
  %cmp27.not.2 = icmp ult i32 %div26.2, %pix_clock
  br i1 %cmp27.not.2, label %for.inc32.2, label %for.body22.2.cleanup.sink.split_crit_edge

for.body22.2.cleanup.sink.split_crit_edge:        ; preds = %for.body22.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split

for.inc32.2:                                      ; preds = %for.body22.2
  %shl33.2 = shl i32 %lane_num.167.2, 1
  %cmp20.not.2 = icmp ugt i32 %shl33.2, %conv
  br i1 %cmp20.not.2, label %for.inc32.2.cleanup_crit_edge, label %for.inc32.2.for.body22.2_crit_edge

for.inc32.2.for.body22.2_crit_edge:               ; preds = %for.inc32.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body22.2

for.inc32.2.cleanup_crit_edge:                    ; preds = %for.inc32.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

cleanup.sink.split:                               ; preds = %for.body22.2.cleanup.sink.split_crit_edge, %for.body22.1.cleanup.sink.split_crit_edge, %for.body22.cleanup.sink.split_crit_edge, %for.body.cleanup.sink.split_crit_edge
  %lane_num.167.lcssa.sink = phi i32 [ %lane_num.070, %for.body.cleanup.sink.split_crit_edge ], [ %lane_num.167.2, %for.body22.2.cleanup.sink.split_crit_edge ], [ %lane_num.167.1, %for.body22.1.cleanup.sink.split_crit_edge ], [ %lane_num.167, %for.body22.cleanup.sink.split_crit_edge ]
  %.lcssa74.sink = phi i32 [ 270000, %for.body.cleanup.sink.split_crit_edge ], [ 540000, %for.body22.2.cleanup.sink.split_crit_edge ], [ 270000, %for.body22.1.cleanup.sink.split_crit_edge ], [ 162000, %for.body22.cleanup.sink.split_crit_edge ]
  %5 = ptrtoint ptr %dp_lanes to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %lane_num.167.lcssa.sink, ptr %dp_lanes, align 4
  %6 = ptrtoint ptr %dp_rate to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %.lcssa74.sink, ptr %dp_rate, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %for.inc32.2.cleanup_crit_edge, %for.inc35.1.cleanup_crit_edge, %for.inc35.cleanup_crit_edge, %for.inc.cleanup_crit_edge, %for.cond.preheader.cleanup_crit_edge, %for.cond13.preheader.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %for.cond.preheader.cleanup_crit_edge ], [ -22, %for.inc35.1.cleanup_crit_edge ], [ -22, %for.inc35.cleanup_crit_edge ], [ -22, %for.cond13.preheader.cleanup_crit_edge ], [ 0, %cleanup.sink.split ], [ -22, %for.inc.cleanup_crit_edge ], [ -22, %for.inc32.2.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @radeon_dp_mode_valid_helper(ptr noundef %connector, ptr nocapture noundef readonly %mode) local_unnamed_addr #3 align 64 {
entry:
  %dp_clock = alloca i32, align 4
  %dp_lanes = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dp_clock) #5
  %0 = ptrtoint ptr %dp_clock to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %dp_clock, align 4, !annotation !68
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dp_lanes) #5
  %1 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 340000, i32 %2)
  %cmp = icmp sgt i32 %2, 340000
  br i1 %cmp, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %call = tail call zeroext i1 @radeon_connector_is_dp12_capable(ptr noundef %connector) #5
  br i1 %call, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %con_priv = getelementptr inbounds %struct.radeon_connector, ptr %connector, i32 0, i32 7
  %3 = ptrtoint ptr %con_priv to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %con_priv, align 4
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end2

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end2:                                          ; preds = %if.end
  %dpcd = getelementptr inbounds %struct.radeon_connector_atom_dig, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %mode, align 4
  %call5 = call fastcc i32 @radeon_dp_get_dp_link_config(ptr noundef %connector, ptr noundef %dpcd, i32 noundef %6, ptr noundef nonnull %dp_lanes, ptr noundef nonnull %dp_clock)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end8, label %if.end2.cleanup_crit_edge

if.end2.cleanup_crit_edge:                        ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end8:                                          ; preds = %if.end2
  %7 = ptrtoint ptr %dp_clock to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %dp_clock, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 540000, i32 %8)
  %cmp9 = icmp eq i32 %8, 540000
  br i1 %cmp9, label %land.lhs.true10, label %if.end8.if.end13_crit_edge

if.end8.if.end13_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end13

land.lhs.true10:                                  ; preds = %if.end8
  %call11 = tail call zeroext i1 @radeon_connector_is_dp12_capable(ptr noundef %connector) #5
  br i1 %call11, label %land.lhs.true10.if.end13_crit_edge, label %land.lhs.true10.cleanup_crit_edge

land.lhs.true10.cleanup_crit_edge:                ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

land.lhs.true10.if.end13_crit_edge:               ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end13

if.end13:                                         ; preds = %land.lhs.true10.if.end13_crit_edge, %if.end8.if.end13_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end13, %land.lhs.true10.cleanup_crit_edge, %if.end2.cleanup_crit_edge, %if.end.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end13 ], [ 15, %land.lhs.true.cleanup_crit_edge ], [ 15, %if.end.cleanup_crit_edge ], [ 15, %if.end2.cleanup_crit_edge ], [ 15, %land.lhs.true10.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dp_lanes) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dp_clock) #5
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @radeon_connector_is_dp12_capable(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @radeon_dp_needs_link_train(ptr nocapture noundef readonly %radeon_connector) local_unnamed_addr #3 align 64 {
entry:
  %link_status = alloca [6 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %link_status) #5
  %con_priv = getelementptr inbounds %struct.radeon_connector, ptr %radeon_connector, i32 0, i32 7
  %0 = call ptr @memset(ptr %link_status, i32 255, i32 6)
  %1 = ptrtoint ptr %con_priv to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %con_priv, align 4
  %ddc_bus = getelementptr inbounds %struct.radeon_connector, ptr %radeon_connector, i32 0, i32 3
  %3 = ptrtoint ptr %ddc_bus to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ddc_bus, align 8
  %aux = getelementptr inbounds %struct.radeon_i2c_chan, ptr %4, i32 0, i32 4
  %call = call i32 @drm_dp_dpcd_read_link_status(ptr noundef %aux, ptr noundef nonnull %link_status) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp = icmp slt i32 %call, 1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %dp_lane_count = getelementptr inbounds %struct.radeon_connector_atom_dig, ptr %2, i32 0, i32 4
  %5 = ptrtoint ptr %dp_lane_count to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %dp_lane_count, align 4
  %call2 = call zeroext i1 @drm_dp_channel_eq_ok(ptr noundef nonnull %link_status, i32 noundef %6) #5
  %not.call2 = xor i1 %call2, true
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ false, %entry.cleanup_crit_edge ], [ %not.call2, %if.end ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %link_status) #5
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_dp_dpcd_read_link_status(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @drm_dp_channel_eq_ok(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @radeon_dp_set_rx_power_state(ptr nocapture noundef readonly %connector, i8 noundef zeroext %power_state) local_unnamed_addr #3 align 64 {
entry:
  %value.addr.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %con_priv = getelementptr inbounds %struct.radeon_connector, ptr %connector, i32 0, i32 7
  %0 = ptrtoint ptr %con_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %con_priv, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %dpcd = getelementptr inbounds %struct.radeon_connector_atom_dig, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %dpcd to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %dpcd, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %3)
  %cmp = icmp ugt i8 %3, 16
  br i1 %cmp, label %if.then3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %ddc_bus = getelementptr inbounds %struct.radeon_connector, ptr %connector, i32 0, i32 3
  %4 = ptrtoint ptr %ddc_bus to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ddc_bus, align 8
  %aux = getelementptr inbounds %struct.radeon_i2c_chan, ptr %5, i32 0, i32 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %value.addr.i)
  %6 = ptrtoint ptr %value.addr.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %power_state, ptr %value.addr.i, align 1
  %call.i = call i32 @drm_dp_dpcd_write(ptr noundef %aux, i32 noundef 1536, ptr noundef nonnull %value.addr.i, i32 noundef 1) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %value.addr.i)
  call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @radeon_dp_link_train(ptr noundef %encoder, ptr noundef %connector) local_unnamed_addr #3 align 64 {
entry:
  %args.i.i152 = alloca %struct._DP_ENCODER_SERVICE_PARAMETERS, align 8
  %value.addr.i.i153 = alloca i8, align 1
  %value.addr.i.i2.i = alloca i8, align 1
  %args.i.i3.i = alloca %struct._DP_ENCODER_SERVICE_PARAMETERS, align 8
  %value.addr.i.i.i120 = alloca i8, align 1
  %args.i.i.i121 = alloca %struct._DP_ENCODER_SERVICE_PARAMETERS, align 8
  %value.addr.i.i.i107 = alloca i8, align 1
  %args.i.i.i = alloca %struct._DP_ENCODER_SERVICE_PARAMETERS, align 8
  %value.addr.i11.i = alloca i8, align 1
  %args.i.i = alloca %struct._DP_ENCODER_SERVICE_PARAMETERS, align 8
  %value.addr.i8.i = alloca i8, align 1
  %value.addr.i6.i = alloca i8, align 1
  %value.addr.i3.i = alloca i8, align 1
  %value.addr.i1.i = alloca i8, align 1
  %value.addr.i.i = alloca i8, align 1
  %value.addr.i.i.i = alloca i8, align 1
  %dp_info = alloca %struct.radeon_dp_link_train_info, align 4
  %tmp2 = alloca i8, align 1
  %frev = alloca i8, align 1
  %crev = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %encoder to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %encoder, align 4
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_private, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %dp_info) #5
  %4 = call ptr @memset(ptr %dp_info, i32 255, i32 56)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp2) #5
  %5 = ptrtoint ptr %tmp2 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 -1, ptr %tmp2, align 1, !annotation !68
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %frev) #5
  %6 = ptrtoint ptr %frev to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 -1, ptr %frev, align 1, !annotation !68
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %crev) #5
  %7 = ptrtoint ptr %crev to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 -1, ptr %crev, align 1, !annotation !68
  %enc_priv = getelementptr inbounds %struct.radeon_encoder, ptr %encoder, i32 0, i32 12
  %8 = ptrtoint ptr %enc_priv to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %enc_priv, align 4
  %tobool.not = icmp eq ptr %9, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %con_priv = getelementptr inbounds %struct.radeon_connector, ptr %connector, i32 0, i32 7
  %10 = ptrtoint ptr %con_priv to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %con_priv, align 4
  %tobool7.not = icmp eq ptr %11, null
  br i1 %tobool7.not, label %if.end.cleanup_crit_edge, label %if.end9

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %dp_sink_type = getelementptr inbounds %struct.radeon_connector_atom_dig, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %dp_sink_type to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %dp_sink_type, align 1
  %.off = add i8 %13, -19
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %.off)
  %switch = icmp ult i8 %.off, 2
  br i1 %switch, label %if.end17, label %if.end9.cleanup_crit_edge

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end17:                                         ; preds = %if.end9
  %use_dpencoder = getelementptr inbounds %struct.radeon_dp_link_train_info, ptr %dp_info, i32 0, i32 11
  %14 = ptrtoint ptr %use_dpencoder to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 1, ptr %use_dpencoder, align 1
  %mode_info = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 44
  %15 = ptrtoint ptr %mode_info to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %mode_info, align 4
  %call = call zeroext i1 @atom_parse_cmd_header(ptr noundef %16, i32 noundef 79, ptr noundef nonnull %frev, ptr noundef nonnull %crev) #5
  br i1 %call, label %if.then18, label %if.end17.if.end25_crit_edge

if.end17.if.end25_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end25

if.then18:                                        ; preds = %if.end17
  %17 = ptrtoint ptr %crev to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %crev, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %18)
  %cmp20 = icmp ugt i8 %18, 1
  br i1 %cmp20, label %if.then22, label %if.then18.if.end25_crit_edge

if.then18.if.end25_crit_edge:                     ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end25

if.then22:                                        ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #7
  %19 = ptrtoint ptr %use_dpencoder to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 0, ptr %use_dpencoder, align 1
  br label %if.end25

if.end25:                                         ; preds = %if.then22, %if.then18.if.end25_crit_edge, %if.end17.if.end25_crit_edge
  %enc_id = getelementptr inbounds %struct.radeon_dp_link_train_info, ptr %dp_info, i32 0, i32 3
  %20 = ptrtoint ptr %enc_id to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %enc_id, align 4
  %dig_encoder = getelementptr inbounds %struct.radeon_encoder_atom_dig, ptr %9, i32 0, i32 2
  %21 = ptrtoint ptr %dig_encoder to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %dig_encoder, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool26.not = icmp ne i32 %22, 0
  %. = zext i1 %tobool26.not to i32
  %23 = ptrtoint ptr %enc_id to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %., ptr %enc_id, align 4
  %24 = ptrtoint ptr %9 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %9, align 4, !range !71
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool32.not = icmp eq i8 %25, 0
  br i1 %tobool32.not, label %if.end25.if.end39_crit_edge, label %if.then33

if.end25.if.end39_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end39

if.then33:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #7
  %or35 = or i32 %., 4
  %26 = ptrtoint ptr %enc_id to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %or35, ptr %enc_id, align 4
  br label %if.end39

if.end39:                                         ; preds = %if.then33, %if.end25.if.end39_crit_edge
  %ddc_bus = getelementptr inbounds %struct.radeon_connector, ptr %connector, i32 0, i32 3
  %27 = ptrtoint ptr %ddc_bus to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %ddc_bus, align 8
  %aux = getelementptr inbounds %struct.radeon_i2c_chan, ptr %28, i32 0, i32 4
  %call.i = call i32 @drm_dp_dpcd_read(ptr noundef %aux, i32 noundef 2, ptr noundef nonnull %tmp2, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i)
  %cmp41 = icmp eq i32 %call.i, 1
  br i1 %cmp41, label %if.then43, label %if.end39.if.end55_crit_edge

if.end39.if.end55_crit_edge:                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end55

if.then43:                                        ; preds = %if.end39
  %family = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 6
  %29 = ptrtoint ptr %family to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %family, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 46, i32 %30)
  %cmp44 = icmp ugt i32 %30, 46
  br i1 %cmp44, label %land.lhs.true46, label %if.then43.if.else50_crit_edge

if.then43.if.else50_crit_edge:                    ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else50

land.lhs.true46:                                  ; preds = %if.then43
  %31 = ptrtoint ptr %tmp2 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %tmp2, align 1
  %33 = and i8 %32, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %tobool48.not = icmp eq i8 %33, 0
  br i1 %tobool48.not, label %land.lhs.true46.if.else50_crit_edge, label %land.lhs.true46.if.end55_crit_edge

land.lhs.true46.if.end55_crit_edge:               ; preds = %land.lhs.true46
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end55

land.lhs.true46.if.else50_crit_edge:              ; preds = %land.lhs.true46
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else50

if.else50:                                        ; preds = %land.lhs.true46.if.else50_crit_edge, %if.then43.if.else50_crit_edge
  br label %if.end55

if.end55:                                         ; preds = %if.else50, %land.lhs.true46.if.end55_crit_edge, %if.end39.if.end55_crit_edge
  %.sink = phi i8 [ 0, %if.else50 ], [ 1, %land.lhs.true46.if.end55_crit_edge ], [ 0, %if.end39.if.end55_crit_edge ]
  %tp3_supported = getelementptr inbounds %struct.radeon_dp_link_train_info, ptr %dp_info, i32 0, i32 6
  %34 = ptrtoint ptr %tp3_supported to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %.sink, ptr %tp3_supported, align 4
  %dpcd = getelementptr inbounds %struct.radeon_dp_link_train_info, ptr %dp_info, i32 0, i32 7
  %dpcd56 = getelementptr inbounds %struct.radeon_connector_atom_dig, ptr %11, i32 0, i32 1
  %35 = call ptr @memcpy(ptr %dpcd, ptr %dpcd56, i32 15)
  %36 = ptrtoint ptr %dp_info to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %3, ptr %dp_info, align 4
  %encoder59 = getelementptr inbounds %struct.radeon_dp_link_train_info, ptr %dp_info, i32 0, i32 1
  %37 = ptrtoint ptr %encoder59 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %encoder, ptr %encoder59, align 4
  %connector60 = getelementptr inbounds %struct.radeon_dp_link_train_info, ptr %dp_info, i32 0, i32 2
  %38 = ptrtoint ptr %connector60 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %connector, ptr %connector60, align 4
  %dp_lane_count = getelementptr inbounds %struct.radeon_connector_atom_dig, ptr %11, i32 0, i32 4
  %39 = ptrtoint ptr %dp_lane_count to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %dp_lane_count, align 4
  %dp_lane_count61 = getelementptr inbounds %struct.radeon_dp_link_train_info, ptr %dp_info, i32 0, i32 5
  %41 = ptrtoint ptr %dp_lane_count61 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %40, ptr %dp_lane_count61, align 4
  %dp_clock = getelementptr inbounds %struct.radeon_connector_atom_dig, ptr %11, i32 0, i32 3
  %42 = ptrtoint ptr %dp_clock to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %dp_clock, align 4
  %dp_clock62 = getelementptr inbounds %struct.radeon_dp_link_train_info, ptr %dp_info, i32 0, i32 4
  %44 = ptrtoint ptr %dp_clock62 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %43, ptr %dp_clock62, align 4
  %45 = ptrtoint ptr %ddc_bus to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %ddc_bus, align 8
  %aux64 = getelementptr inbounds %struct.radeon_i2c_chan, ptr %46, i32 0, i32 4
  %aux65 = getelementptr inbounds %struct.radeon_dp_link_train_info, ptr %dp_info, i32 0, i32 12
  %47 = ptrtoint ptr %aux65 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %aux64, ptr %aux65, align 4
  %48 = ptrtoint ptr %enc_priv to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %enc_priv, align 4
  %50 = ptrtoint ptr %con_priv to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %con_priv, align 4
  %tobool.not.i.i = icmp eq ptr %51, null
  br i1 %tobool.not.i.i, label %if.end55.radeon_dp_set_rx_power_state.exit.i_crit_edge, label %if.end.i.i

if.end55.radeon_dp_set_rx_power_state.exit.i_crit_edge: ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #7
  br label %radeon_dp_set_rx_power_state.exit.i

if.end.i.i:                                       ; preds = %if.end55
  %dpcd.i.i = getelementptr inbounds %struct.radeon_connector_atom_dig, ptr %51, i32 0, i32 1
  %52 = ptrtoint ptr %dpcd.i.i to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %dpcd.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %53)
  %cmp.i.i = icmp ugt i8 %53, 16
  br i1 %cmp.i.i, label %if.then3.i.i, label %if.end.i.i.radeon_dp_set_rx_power_state.exit.i_crit_edge

if.end.i.i.radeon_dp_set_rx_power_state.exit.i_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %radeon_dp_set_rx_power_state.exit.i

if.then3.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %value.addr.i.i.i) #5
  %54 = ptrtoint ptr %value.addr.i.i.i to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 1, ptr %value.addr.i.i.i, align 1
  %call.i.i.i = call i32 @drm_dp_dpcd_write(ptr noundef %aux64, i32 noundef 1536, ptr noundef nonnull %value.addr.i.i.i, i32 noundef 1) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %value.addr.i.i.i) #5
  call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #5
  br label %radeon_dp_set_rx_power_state.exit.i

radeon_dp_set_rx_power_state.exit.i:              ; preds = %if.then3.i.i, %if.end.i.i.radeon_dp_set_rx_power_state.exit.i_crit_edge, %if.end55.radeon_dp_set_rx_power_state.exit.i_crit_edge
  %arrayidx.i = getelementptr inbounds %struct.radeon_dp_link_train_info, ptr %dp_info, i32 0, i32 7, i32 3
  %55 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %arrayidx.i, align 4
  %57 = and i8 %56, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %57)
  %tobool.not.i = icmp eq i8 %57, 0
  %58 = ptrtoint ptr %aux65 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %aux65, align 4
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %radeon_dp_set_rx_power_state.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %value.addr.i.i) #5
  %60 = ptrtoint ptr %value.addr.i.i to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 16, ptr %value.addr.i.i, align 1
  %call.i.i = call i32 @drm_dp_dpcd_write(ptr noundef %59, i32 noundef 263, ptr noundef nonnull %value.addr.i.i, i32 noundef 1) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %value.addr.i.i) #5
  br label %if.end.i

if.else.i:                                        ; preds = %radeon_dp_set_rx_power_state.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %value.addr.i1.i) #5
  %61 = ptrtoint ptr %value.addr.i1.i to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 0, ptr %value.addr.i1.i, align 1
  %call.i2.i = call i32 @drm_dp_dpcd_write(ptr noundef %59, i32 noundef 263, ptr noundef nonnull %value.addr.i1.i, i32 noundef 1) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %value.addr.i1.i) #5
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %if.then.i
  %panel_mode.i = getelementptr inbounds %struct.radeon_encoder_atom_dig, ptr %49, i32 0, i32 10
  %62 = ptrtoint ptr %panel_mode.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %panel_mode.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %63)
  %cmp.i = icmp eq i32 %63, 1
  br i1 %cmp.i, label %if.then5.i, label %if.end.i.if.end8.i_crit_edge

if.end.i.if.end8.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end8.i

if.then5.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %64 = ptrtoint ptr %aux65 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %aux65, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %value.addr.i3.i) #5
  %66 = ptrtoint ptr %value.addr.i3.i to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 1, ptr %value.addr.i3.i, align 1
  %call.i4.i = call i32 @drm_dp_dpcd_write(ptr noundef %65, i32 noundef 266, ptr noundef nonnull %value.addr.i3.i, i32 noundef 1) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %value.addr.i3.i) #5
  br label %if.end8.i

if.end8.i:                                        ; preds = %if.then5.i, %if.end.i.if.end8.i_crit_edge
  %67 = ptrtoint ptr %dp_lane_count61 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %dp_lane_count61, align 4
  %conv9.i = trunc i32 %68 to i8
  %69 = ptrtoint ptr %dpcd to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %dpcd, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %70)
  %cmp.i5.i = icmp ugt i8 %70, 16
  br i1 %cmp.i5.i, label %drm_dp_enhanced_frame_cap.exit.i, label %if.end8.i.drm_dp_enhanced_frame_cap.exit.thread.i_crit_edge

if.end8.i.drm_dp_enhanced_frame_cap.exit.thread.i_crit_edge: ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %drm_dp_enhanced_frame_cap.exit.thread.i

drm_dp_enhanced_frame_cap.exit.i:                 ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx2.i.i = getelementptr inbounds %struct.radeon_dp_link_train_info, ptr %dp_info, i32 0, i32 7, i32 2
  %71 = ptrtoint ptr %arrayidx2.i.i to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %arrayidx2.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %72)
  %tobool.i.i = icmp slt i8 %72, 0
  %conv14.i = or i8 %conv9.i, -128
  %spec.select.i = select i1 %tobool.i.i, i8 %conv14.i, i8 %conv9.i
  br label %drm_dp_enhanced_frame_cap.exit.thread.i

drm_dp_enhanced_frame_cap.exit.thread.i:          ; preds = %drm_dp_enhanced_frame_cap.exit.i, %if.end8.i.drm_dp_enhanced_frame_cap.exit.thread.i_crit_edge
  %73 = phi i8 [ %conv9.i, %if.end8.i.drm_dp_enhanced_frame_cap.exit.thread.i_crit_edge ], [ %spec.select.i, %drm_dp_enhanced_frame_cap.exit.i ]
  %74 = ptrtoint ptr %aux65 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %aux65, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %value.addr.i6.i) #5
  %76 = ptrtoint ptr %value.addr.i6.i to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 %73, ptr %value.addr.i6.i, align 1
  %call.i7.i = call i32 @drm_dp_dpcd_write(ptr noundef %75, i32 noundef 257, ptr noundef nonnull %value.addr.i6.i, i32 noundef 1) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %value.addr.i6.i) #5
  %77 = ptrtoint ptr %dp_clock62 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %dp_clock62, align 4
  %call18.i = call zeroext i8 @drm_dp_link_rate_to_bw_code(i32 noundef %78) #5
  %79 = ptrtoint ptr %aux65 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %aux65, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %value.addr.i8.i) #5
  %81 = ptrtoint ptr %value.addr.i8.i to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 %call18.i, ptr %value.addr.i8.i, align 1
  %call.i9.i = call i32 @drm_dp_dpcd_write(ptr noundef %80, i32 noundef 256, ptr noundef nonnull %value.addr.i8.i, i32 noundef 1) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %value.addr.i8.i) #5
  %82 = ptrtoint ptr %dp_info to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %dp_info, align 4
  %family.i = getelementptr inbounds %struct.radeon_device, ptr %83, i32 0, i32 6
  %84 = ptrtoint ptr %family.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %family.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 38, i32 %85)
  %cmp21.i = icmp ugt i32 %85, 38
  br i1 %cmp21.i, label %drm_dp_enhanced_frame_cap.exit.thread.i.if.then24.i_crit_edge, label %lor.lhs.false.i

drm_dp_enhanced_frame_cap.exit.thread.i.if.then24.i_crit_edge: ; preds = %drm_dp_enhanced_frame_cap.exit.thread.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then24.i

lor.lhs.false.i:                                  ; preds = %drm_dp_enhanced_frame_cap.exit.thread.i
  %86 = ptrtoint ptr %use_dpencoder to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %use_dpencoder, align 1, !range !71
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %87)
  %tobool23.not.i = icmp eq i8 %87, 0
  br i1 %tobool23.not.i, label %lor.lhs.false.i.if.then24.i_crit_edge, label %if.else26.i

lor.lhs.false.i.if.then24.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then24.i

if.then24.i:                                      ; preds = %lor.lhs.false.i.if.then24.i_crit_edge, %drm_dp_enhanced_frame_cap.exit.thread.i.if.then24.i_crit_edge
  %88 = ptrtoint ptr %encoder59 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %encoder59, align 4
  call void @atombios_dig_encoder_setup(ptr noundef %89, i32 noundef 8, i32 noundef 0) #5
  br label %radeon_dp_link_train_init.exit

if.else26.i:                                      ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #7
  %90 = ptrtoint ptr %dp_clock62 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %dp_clock62, align 4
  %92 = ptrtoint ptr %enc_id to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %enc_id, align 4
  %conv29.i = trunc i32 %93 to i8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %args.i.i) #5
  %94 = getelementptr inbounds %struct._DP_ENCODER_SERVICE_PARAMETERS, ptr %args.i.i, i32 0, i32 1
  %95 = ptrtoint ptr %args.i.i to i32
  call void @__asan_store8_noabort(i32 %95)
  store i64 8589934592, ptr %args.i.i, align 8
  %div.i.i = sdiv i32 %91, 10
  %conv.i.i = trunc i32 %div.i.i to i16
  store i16 %conv.i.i, ptr %args.i.i, align 8
  %96 = ptrtoint ptr %94 to i32
  call void @__asan_store1_noabort(i32 %96)
  store i8 %conv29.i, ptr %94, align 2
  %mode_info.i.i = getelementptr inbounds %struct.radeon_device, ptr %83, i32 0, i32 44
  %97 = ptrtoint ptr %mode_info.i.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %mode_info.i.i, align 4
  %call.i10.i = call i32 @atom_execute_table(ptr noundef %98, i32 noundef 79, ptr noundef nonnull %args.i.i) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %args.i.i) #5
  br label %radeon_dp_link_train_init.exit

radeon_dp_link_train_init.exit:                   ; preds = %if.else26.i, %if.then24.i
  %99 = ptrtoint ptr %aux65 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %aux65, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %value.addr.i11.i) #5
  %101 = ptrtoint ptr %value.addr.i11.i to i32
  call void @__asan_store1_noabort(i32 %101)
  store i8 0, ptr %value.addr.i11.i, align 1
  %call.i12.i = call i32 @drm_dp_dpcd_write(ptr noundef %100, i32 noundef 258, ptr noundef nonnull %value.addr.i11.i, i32 noundef 1) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %value.addr.i11.i) #5
  %102 = ptrtoint ptr %dp_info to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %dp_info, align 4
  %family.i.i = getelementptr inbounds %struct.radeon_device, ptr %103, i32 0, i32 6
  %104 = ptrtoint ptr %family.i.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %family.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 38, i32 %105)
  %cmp.i.i108 = icmp ugt i32 %105, 38
  br i1 %cmp.i.i108, label %radeon_dp_link_train_init.exit.if.then.i.i_crit_edge, label %lor.lhs.false.i.i

radeon_dp_link_train_init.exit.if.then.i.i_crit_edge: ; preds = %radeon_dp_link_train_init.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then.i.i

lor.lhs.false.i.i:                                ; preds = %radeon_dp_link_train_init.exit
  %106 = ptrtoint ptr %use_dpencoder to i32
  call void @__asan_load1_noabort(i32 %106)
  %107 = load i8, ptr %use_dpencoder, align 1, !range !71
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %107)
  %tobool.not.i.i109 = icmp eq i8 %107, 0
  br i1 %tobool.not.i.i109, label %lor.lhs.false.i.i.if.then.i.i_crit_edge, label %if.else.i.i

lor.lhs.false.i.i.if.then.i.i_crit_edge:          ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then.i.i

if.then.i.i:                                      ; preds = %lor.lhs.false.i.i.if.then.i.i_crit_edge, %radeon_dp_link_train_init.exit.if.then.i.i_crit_edge
  %108 = ptrtoint ptr %encoder59 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %encoder59, align 4
  call void @atombios_dig_encoder_setup(ptr noundef %109, i32 noundef 9, i32 noundef 0) #5
  br label %radeon_dp_set_tp.exit.i

if.else.i.i:                                      ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %110 = ptrtoint ptr %dp_clock62 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %dp_clock62, align 4
  %112 = ptrtoint ptr %enc_id to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %enc_id, align 4
  %conv.i.i110 = trunc i32 %113 to i8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %args.i.i.i) #5
  %114 = getelementptr inbounds %struct._DP_ENCODER_SERVICE_PARAMETERS, ptr %args.i.i.i, i32 0, i32 1
  %115 = ptrtoint ptr %args.i.i.i to i32
  call void @__asan_store8_noabort(i32 %115)
  store i64 17179869184, ptr %args.i.i.i, align 8
  %div.i.i.i = sdiv i32 %111, 10
  %conv.i.i.i = trunc i32 %div.i.i.i to i16
  store i16 %conv.i.i.i, ptr %args.i.i.i, align 8
  %116 = ptrtoint ptr %114 to i32
  call void @__asan_store1_noabort(i32 %116)
  store i8 %conv.i.i110, ptr %114, align 2
  %mode_info.i.i.i = getelementptr inbounds %struct.radeon_device, ptr %103, i32 0, i32 44
  %117 = ptrtoint ptr %mode_info.i.i.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %mode_info.i.i.i, align 4
  %call.i.i.i111 = call i32 @atom_execute_table(ptr noundef %118, i32 noundef 79, ptr noundef nonnull %args.i.i.i) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %args.i.i.i) #5
  br label %radeon_dp_set_tp.exit.i

radeon_dp_set_tp.exit.i:                          ; preds = %if.else.i.i, %if.then.i.i
  %119 = ptrtoint ptr %aux65 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %aux65, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %value.addr.i.i.i107) #5
  %121 = ptrtoint ptr %value.addr.i.i.i107 to i32
  call void @__asan_store1_noabort(i32 %121)
  store i8 1, ptr %value.addr.i.i.i107, align 1
  %call.i21.i.i = call i32 @drm_dp_dpcd_write(ptr noundef %120, i32 noundef 258, ptr noundef nonnull %value.addr.i.i.i107, i32 noundef 1) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %value.addr.i.i.i107) #5
  %train_set.i = getelementptr inbounds %struct.radeon_dp_link_train_info, ptr %dp_info, i32 0, i32 8
  %122 = ptrtoint ptr %train_set.i to i32
  call void @__asan_store4_noabort(i32 %122)
  store i32 0, ptr %train_set.i, align 4
  %123 = ptrtoint ptr %encoder59 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %encoder59, align 4
  call void @atombios_dig_transmitter_setup(ptr noundef %124, i32 noundef 11, i8 noundef zeroext 0, i8 noundef zeroext 0) #5
  %125 = ptrtoint ptr %aux65 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %aux65, align 4
  %127 = ptrtoint ptr %dp_lane_count61 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %dp_lane_count61, align 4
  %call.i.i113 = call i32 @drm_dp_dpcd_write(ptr noundef %126, i32 noundef 259, ptr noundef %train_set.i, i32 noundef %128) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %129 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %129(i32 noundef 85899200) #5
  %tries.i = getelementptr inbounds %struct.radeon_dp_link_train_info, ptr %dp_info, i32 0, i32 10
  %130 = ptrtoint ptr %tries.i to i32
  call void @__asan_store1_noabort(i32 %130)
  store i8 0, ptr %tries.i, align 2
  %131 = ptrtoint ptr %aux65 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %aux65, align 4
  call void @drm_dp_link_train_clock_recovery_delay(ptr noundef %132, ptr noundef %dpcd) #5
  %133 = ptrtoint ptr %aux65 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %aux65, align 4
  %link_status.i = getelementptr inbounds %struct.radeon_dp_link_train_info, ptr %dp_info, i32 0, i32 9
  %call101.i = call i32 @drm_dp_dpcd_read_link_status(ptr noundef %134, ptr noundef %link_status.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call101.i)
  %cmp102.i = icmp slt i32 %call101.i, 1
  br i1 %cmp102.i, label %radeon_dp_set_tp.exit.i.radeon_dp_link_train_cr.exit_crit_edge, label %radeon_dp_set_tp.exit.i.if.end.i115_crit_edge

radeon_dp_set_tp.exit.i.if.end.i115_crit_edge:    ; preds = %radeon_dp_set_tp.exit.i
  br label %if.end.i115

radeon_dp_set_tp.exit.i.radeon_dp_link_train_cr.exit_crit_edge: ; preds = %radeon_dp_set_tp.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %radeon_dp_link_train_cr.exit

if.end.i115:                                      ; preds = %if.end38.i.if.end.i115_crit_edge, %radeon_dp_set_tp.exit.i.if.end.i115_crit_edge
  %voltage.0103.i = phi i32 [ %and24.i, %if.end38.i.if.end.i115_crit_edge ], [ 255, %radeon_dp_set_tp.exit.i.if.end.i115_crit_edge ]
  %135 = ptrtoint ptr %dp_lane_count61 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %dp_lane_count61, align 4
  %call6.i = call zeroext i1 @drm_dp_clock_recovery_ok(ptr noundef %link_status.i, i32 noundef %136) #5
  br i1 %call6.i, label %if.end73, label %for.cond.preheader.i

for.cond.preheader.i:                             ; preds = %if.end.i115
  %137 = ptrtoint ptr %dp_lane_count61 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %dp_lane_count61, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %138)
  %cmp1096.i = icmp sgt i32 %138, 0
  br i1 %cmp1096.i, label %for.cond.preheader.i.for.body.i_crit_edge, label %for.cond.preheader.i.for.end.i_crit_edge

for.cond.preheader.i.for.end.i_crit_edge:         ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.i

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %i.097.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %arrayidx.i116 = getelementptr %struct.radeon_dp_link_train_info, ptr %dp_info, i32 0, i32 8, i32 %i.097.i
  %139 = ptrtoint ptr %arrayidx.i116 to i32
  call void @__asan_load1_noabort(i32 %139)
  %140 = load i8, ptr %arrayidx.i116, align 1
  %141 = and i8 %140, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %141)
  %cmp12.i = icmp eq i8 %141, 0
  br i1 %cmp12.i, label %for.body.i.for.end.i_crit_edge, label %for.inc.i

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.i

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %i.097.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %138
  br i1 %exitcond.not.i, label %for.inc.i.radeon_dp_link_train_cr.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

for.inc.i.radeon_dp_link_train_cr.exit_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %radeon_dp_link_train_cr.exit

for.end.i:                                        ; preds = %for.body.i.for.end.i_crit_edge, %for.cond.preheader.i.for.end.i_crit_edge
  %i.0.lcssa.i = phi i32 [ 0, %for.cond.preheader.i.for.end.i_crit_edge ], [ %i.097.i, %for.body.i.for.end.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0.lcssa.i, i32 %138)
  %cmp17.i = icmp eq i32 %i.0.lcssa.i, %138
  br i1 %cmp17.i, label %for.end.i.radeon_dp_link_train_cr.exit_crit_edge, label %if.end20.i

for.end.i.radeon_dp_link_train_cr.exit_crit_edge: ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %radeon_dp_link_train_cr.exit

if.end20.i:                                       ; preds = %for.end.i
  %142 = ptrtoint ptr %train_set.i to i32
  call void @__asan_load1_noabort(i32 %142)
  %143 = load i8, ptr %train_set.i, align 4
  %144 = and i8 %143, 3
  %and24.i = zext i8 %144 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %voltage.0103.i, i32 %and24.i)
  %cmp26.i = icmp eq i32 %voltage.0103.i, %and24.i
  br i1 %cmp26.i, label %if.then28.i, label %if.else.i117

if.then28.i:                                      ; preds = %if.end20.i
  %145 = ptrtoint ptr %tries.i to i32
  call void @__asan_load1_noabort(i32 %145)
  %146 = load i8, ptr %tries.i, align 2
  %inc30.i = add i8 %146, 1
  store i8 %inc30.i, ptr %tries.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %inc30.i)
  %cmp33.i = icmp eq i8 %inc30.i, 5
  br i1 %cmp33.i, label %if.then28.i.radeon_dp_link_train_cr.exit_crit_edge, label %if.then28.i.if.end38.i_crit_edge

if.then28.i.if.end38.i_crit_edge:                 ; preds = %if.then28.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end38.i

if.then28.i.radeon_dp_link_train_cr.exit_crit_edge: ; preds = %if.then28.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %radeon_dp_link_train_cr.exit

if.else.i117:                                     ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #7
  %147 = ptrtoint ptr %tries.i to i32
  call void @__asan_store1_noabort(i32 %147)
  store i8 0, ptr %tries.i, align 2
  br label %if.end38.i

if.end38.i:                                       ; preds = %if.else.i117, %if.then28.i.if.end38.i_crit_edge
  call fastcc void @dp_get_adjust_train(ptr noundef %link_status.i, i32 noundef %138, ptr noundef %train_set.i) #5
  %148 = ptrtoint ptr %encoder59 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %encoder59, align 4
  %150 = ptrtoint ptr %train_set.i to i32
  call void @__asan_load1_noabort(i32 %150)
  %151 = load i8, ptr %train_set.i, align 4
  call void @atombios_dig_transmitter_setup(ptr noundef %149, i32 noundef 11, i8 noundef zeroext 0, i8 noundef zeroext %151) #5
  %152 = ptrtoint ptr %aux65 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %aux65, align 4
  %154 = ptrtoint ptr %dp_lane_count61 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %dp_lane_count61, align 4
  %call.i95.i = call i32 @drm_dp_dpcd_write(ptr noundef %153, i32 noundef 259, ptr noundef %train_set.i, i32 noundef %155) #5
  %156 = ptrtoint ptr %aux65 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %aux65, align 4
  call void @drm_dp_link_train_clock_recovery_delay(ptr noundef %157, ptr noundef %dpcd) #5
  %158 = ptrtoint ptr %aux65 to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %aux65, align 4
  %call.i118 = call i32 @drm_dp_dpcd_read_link_status(ptr noundef %159, ptr noundef %link_status.i) #5
  %cmp.i119 = icmp slt i32 %call.i118, 1
  br i1 %cmp.i119, label %if.end38.i.radeon_dp_link_train_cr.exit_crit_edge, label %if.end38.i.if.end.i115_crit_edge

if.end38.i.if.end.i115_crit_edge:                 ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i115

if.end38.i.radeon_dp_link_train_cr.exit_crit_edge: ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %radeon_dp_link_train_cr.exit

radeon_dp_link_train_cr.exit:                     ; preds = %if.end38.i.radeon_dp_link_train_cr.exit_crit_edge, %if.then28.i.radeon_dp_link_train_cr.exit_crit_edge, %for.end.i.radeon_dp_link_train_cr.exit_crit_edge, %for.inc.i.radeon_dp_link_train_cr.exit_crit_edge, %radeon_dp_set_tp.exit.i.radeon_dp_link_train_cr.exit_crit_edge
  %.str.10.sink.i = phi ptr [ @.str.8, %radeon_dp_set_tp.exit.i.radeon_dp_link_train_cr.exit_crit_edge ], [ @.str.9, %for.inc.i.radeon_dp_link_train_cr.exit_crit_edge ], [ @.str.10, %if.then28.i.radeon_dp_link_train_cr.exit_crit_edge ], [ @.str.9, %for.end.i.radeon_dp_link_train_cr.exit_crit_edge ], [ @.str.8, %if.end38.i.radeon_dp_link_train_cr.exit_crit_edge ]
  call void (ptr, ...) @__drm_err(ptr noundef nonnull %.str.10.sink.i) #5
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.11) #5
  br label %done

if.end73:                                         ; preds = %if.end.i115
  %160 = ptrtoint ptr %train_set.i to i32
  call void @__asan_load1_noabort(i32 %160)
  %161 = load i8, ptr %train_set.i, align 4
  %conv53.i = zext i8 %161 to i32
  %and54.i = and i32 %conv53.i, 3
  %and58.i = lshr i32 %conv53.i, 3
  %162 = and i32 %and58.i, 3
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.12, i32 noundef %and54.i, i32 noundef %162) #5
  %tp3_supported.i = getelementptr inbounds %struct.radeon_dp_link_train_info, ptr %dp_info, i32 0, i32 6
  %163 = ptrtoint ptr %tp3_supported.i to i32
  call void @__asan_load1_noabort(i32 %163)
  %164 = load i8, ptr %tp3_supported.i, align 4, !range !71
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %164)
  %tobool.not.i122 = icmp eq i8 %164, 0
  %165 = ptrtoint ptr %dp_info to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %dp_info, align 4
  %family.i4.i = getelementptr inbounds %struct.radeon_device, ptr %166, i32 0, i32 6
  %167 = ptrtoint ptr %family.i4.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load i32, ptr %family.i4.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 38, i32 %168)
  %cmp.i5.i123 = icmp ugt i32 %168, 38
  br i1 %tobool.not.i122, label %if.else.i141, label %if.then.i124

if.then.i124:                                     ; preds = %if.end73
  br i1 %cmp.i5.i123, label %if.then.i124.if.then.i.i129_crit_edge, label %lor.lhs.false.i.i127

if.then.i124.if.then.i.i129_crit_edge:            ; preds = %if.then.i124
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then.i.i129

lor.lhs.false.i.i127:                             ; preds = %if.then.i124
  %169 = ptrtoint ptr %use_dpencoder to i32
  call void @__asan_load1_noabort(i32 %169)
  %170 = load i8, ptr %use_dpencoder, align 1, !range !71
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %170)
  %tobool.not.i.i126 = icmp eq i8 %170, 0
  br i1 %tobool.not.i.i126, label %lor.lhs.false.i.i127.if.then.i.i129_crit_edge, label %if.else.i.i137

lor.lhs.false.i.i127.if.then.i.i129_crit_edge:    ; preds = %lor.lhs.false.i.i127
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then.i.i129

if.then.i.i129:                                   ; preds = %lor.lhs.false.i.i127.if.then.i.i129_crit_edge, %if.then.i124.if.then.i.i129_crit_edge
  %171 = ptrtoint ptr %encoder59 to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %encoder59, align 4
  call void @atombios_dig_encoder_setup(ptr noundef %172, i32 noundef 19, i32 noundef 0) #5
  br label %radeon_dp_set_tp.exit.i140

if.else.i.i137:                                   ; preds = %lor.lhs.false.i.i127
  call void @__sanitizer_cov_trace_pc() #7
  %173 = ptrtoint ptr %dp_clock62 to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load i32, ptr %dp_clock62, align 4
  %175 = ptrtoint ptr %enc_id to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load i32, ptr %enc_id, align 4
  %conv.i.i132 = trunc i32 %176 to i8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %args.i.i.i121) #5
  %177 = getelementptr inbounds %struct._DP_ENCODER_SERVICE_PARAMETERS, ptr %args.i.i.i121, i32 0, i32 1
  %178 = ptrtoint ptr %args.i.i.i121 to i32
  call void @__asan_store8_noabort(i32 %178)
  store i64 17179869184, ptr %args.i.i.i121, align 8
  %div.i.i.i133 = sdiv i32 %174, 10
  %conv.i.i.i134 = trunc i32 %div.i.i.i133 to i16
  store i16 %conv.i.i.i134, ptr %args.i.i.i121, align 8
  %179 = ptrtoint ptr %177 to i32
  call void @__asan_store1_noabort(i32 %179)
  store i8 %conv.i.i132, ptr %177, align 2
  %mode_info.i.i.i135 = getelementptr inbounds %struct.radeon_device, ptr %166, i32 0, i32 44
  %180 = ptrtoint ptr %mode_info.i.i.i135 to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %mode_info.i.i.i135, align 4
  %call.i.i.i136 = call i32 @atom_execute_table(ptr noundef %181, i32 noundef 79, ptr noundef nonnull %args.i.i.i121) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %args.i.i.i121) #5
  br label %radeon_dp_set_tp.exit.i140

radeon_dp_set_tp.exit.i140:                       ; preds = %if.else.i.i137, %if.then.i.i129
  %182 = ptrtoint ptr %aux65 to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %aux65, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %value.addr.i.i.i120) #5
  %184 = ptrtoint ptr %value.addr.i.i.i120 to i32
  call void @__asan_store1_noabort(i32 %184)
  store i8 3, ptr %value.addr.i.i.i120, align 1
  %call.i21.i.i139 = call i32 @drm_dp_dpcd_write(ptr noundef %183, i32 noundef 258, ptr noundef nonnull %value.addr.i.i.i120, i32 noundef 1) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %value.addr.i.i.i120) #5
  br label %if.end.i145

if.else.i141:                                     ; preds = %if.end73
  br i1 %cmp.i5.i123, label %if.else.i141.if.then.i9.i_crit_edge, label %lor.lhs.false.i8.i

if.else.i141.if.then.i9.i_crit_edge:              ; preds = %if.else.i141
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then.i9.i

lor.lhs.false.i8.i:                               ; preds = %if.else.i141
  %185 = ptrtoint ptr %use_dpencoder to i32
  call void @__asan_load1_noabort(i32 %185)
  %186 = load i8, ptr %use_dpencoder, align 1, !range !71
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %186)
  %tobool.not.i7.i = icmp eq i8 %186, 0
  br i1 %tobool.not.i7.i, label %lor.lhs.false.i8.i.if.then.i9.i_crit_edge, label %if.else.i18.i

lor.lhs.false.i8.i.if.then.i9.i_crit_edge:        ; preds = %lor.lhs.false.i8.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then.i9.i

if.then.i9.i:                                     ; preds = %lor.lhs.false.i8.i.if.then.i9.i_crit_edge, %if.else.i141.if.then.i9.i_crit_edge
  %187 = ptrtoint ptr %encoder59 to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %encoder59, align 4
  call void @atombios_dig_encoder_setup(ptr noundef %188, i32 noundef 10, i32 noundef 0) #5
  br label %radeon_dp_set_tp.exit21.i

if.else.i18.i:                                    ; preds = %lor.lhs.false.i8.i
  call void @__sanitizer_cov_trace_pc() #7
  %189 = ptrtoint ptr %dp_clock62 to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load i32, ptr %dp_clock62, align 4
  %191 = ptrtoint ptr %enc_id to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load i32, ptr %enc_id, align 4
  %conv.i13.i = trunc i32 %192 to i8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %args.i.i3.i) #5
  %193 = getelementptr inbounds %struct._DP_ENCODER_SERVICE_PARAMETERS, ptr %args.i.i3.i, i32 0, i32 1
  %194 = ptrtoint ptr %args.i.i3.i to i32
  call void @__asan_store8_noabort(i32 %194)
  store i64 17179934720, ptr %args.i.i3.i, align 8
  %div.i.i14.i = sdiv i32 %190, 10
  %conv.i.i15.i = trunc i32 %div.i.i14.i to i16
  store i16 %conv.i.i15.i, ptr %args.i.i3.i, align 8
  %195 = ptrtoint ptr %193 to i32
  call void @__asan_store1_noabort(i32 %195)
  store i8 %conv.i13.i, ptr %193, align 2
  %mode_info.i.i16.i = getelementptr inbounds %struct.radeon_device, ptr %166, i32 0, i32 44
  %196 = ptrtoint ptr %mode_info.i.i16.i to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %mode_info.i.i16.i, align 4
  %call.i.i17.i = call i32 @atom_execute_table(ptr noundef %197, i32 noundef 79, ptr noundef nonnull %args.i.i3.i) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %args.i.i3.i) #5
  br label %radeon_dp_set_tp.exit21.i

radeon_dp_set_tp.exit21.i:                        ; preds = %if.else.i18.i, %if.then.i9.i
  %198 = ptrtoint ptr %aux65 to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %aux65, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %value.addr.i.i2.i) #5
  %200 = ptrtoint ptr %value.addr.i.i2.i to i32
  call void @__asan_store1_noabort(i32 %200)
  store i8 2, ptr %value.addr.i.i2.i, align 1
  %call.i21.i20.i = call i32 @drm_dp_dpcd_write(ptr noundef %199, i32 noundef 258, ptr noundef nonnull %value.addr.i.i2.i, i32 noundef 1) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %value.addr.i.i2.i) #5
  br label %if.end.i145

if.end.i145:                                      ; preds = %radeon_dp_set_tp.exit21.i, %radeon_dp_set_tp.exit.i140
  %201 = ptrtoint ptr %tries.i to i32
  call void @__asan_store1_noabort(i32 %201)
  store i8 0, ptr %tries.i, align 2
  %202 = ptrtoint ptr %aux65 to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %aux65, align 4
  call void @drm_dp_link_train_channel_eq_delay(ptr noundef %203, ptr noundef %dpcd) #5
  %204 = ptrtoint ptr %aux65 to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load ptr, ptr %aux65, align 4
  %call24.i = call i32 @drm_dp_dpcd_read_link_status(ptr noundef %205, ptr noundef %link_status.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call24.i)
  %cmp25.i = icmp slt i32 %call24.i, 1
  br i1 %cmp25.i, label %if.end.i145.if.then21.i_crit_edge, label %if.end.i145.if.end4.i_crit_edge

if.end.i145.if.end4.i_crit_edge:                  ; preds = %if.end.i145
  br label %if.end4.i

if.end.i145.if.then21.i_crit_edge:                ; preds = %if.end.i145
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then21.i

if.end4.i:                                        ; preds = %if.end14.i.if.end4.i_crit_edge, %if.end.i145.if.end4.i_crit_edge
  %206 = ptrtoint ptr %dp_lane_count61 to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load i32, ptr %dp_lane_count61, align 4
  %call7.i = call zeroext i1 @drm_dp_channel_eq_ok(ptr noundef %link_status.i, i32 noundef %207) #5
  br i1 %call7.i, label %if.else22.i, label %if.end9.i

if.end9.i:                                        ; preds = %if.end4.i
  %208 = ptrtoint ptr %tries.i to i32
  call void @__asan_load1_noabort(i32 %208)
  %209 = load i8, ptr %tries.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %209)
  %cmp11.i = icmp ugt i8 %209, 5
  br i1 %cmp11.i, label %if.end9.i.if.then21.i_crit_edge, label %if.end14.i

if.end9.i.if.then21.i_crit_edge:                  ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then21.i

if.end14.i:                                       ; preds = %if.end9.i
  %210 = ptrtoint ptr %dp_lane_count61 to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load i32, ptr %dp_lane_count61, align 4
  call fastcc void @dp_get_adjust_train(ptr noundef %link_status.i, i32 noundef %211, ptr noundef %train_set.i) #5
  %212 = ptrtoint ptr %encoder59 to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load ptr, ptr %encoder59, align 4
  %214 = ptrtoint ptr %train_set.i to i32
  call void @__asan_load1_noabort(i32 %214)
  %215 = load i8, ptr %train_set.i, align 4
  call void @atombios_dig_transmitter_setup(ptr noundef %213, i32 noundef 11, i8 noundef zeroext 0, i8 noundef zeroext %215) #5
  %216 = ptrtoint ptr %aux65 to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load ptr, ptr %aux65, align 4
  %218 = ptrtoint ptr %dp_lane_count61 to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load i32, ptr %dp_lane_count61, align 4
  %call.i.i148 = call i32 @drm_dp_dpcd_write(ptr noundef %217, i32 noundef 259, ptr noundef %train_set.i, i32 noundef %219) #5
  %220 = ptrtoint ptr %tries.i to i32
  call void @__asan_load1_noabort(i32 %220)
  %221 = load i8, ptr %tries.i, align 2
  %inc.i149 = add i8 %221, 1
  store i8 %inc.i149, ptr %tries.i, align 2
  %222 = ptrtoint ptr %aux65 to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load ptr, ptr %aux65, align 4
  call void @drm_dp_link_train_channel_eq_delay(ptr noundef %223, ptr noundef %dpcd) #5
  %224 = ptrtoint ptr %aux65 to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load ptr, ptr %aux65, align 4
  %call.i150 = call i32 @drm_dp_dpcd_read_link_status(ptr noundef %225, ptr noundef %link_status.i) #5
  %cmp.i151 = icmp slt i32 %call.i150, 1
  br i1 %cmp.i151, label %if.end14.i.if.then21.i_crit_edge, label %if.end14.i.if.end4.i_crit_edge

if.end14.i.if.end4.i_crit_edge:                   ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end4.i

if.end14.i.if.then21.i_crit_edge:                 ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then21.i

if.then21.i:                                      ; preds = %if.end14.i.if.then21.i_crit_edge, %if.end9.i.if.then21.i_crit_edge, %if.end.i145.if.then21.i_crit_edge
  %.str.23.sink.i = phi ptr [ @.str.8, %if.end.i145.if.then21.i_crit_edge ], [ @.str.23, %if.end9.i.if.then21.i_crit_edge ], [ @.str.8, %if.end14.i.if.then21.i_crit_edge ]
  call void (ptr, ...) @__drm_err(ptr noundef nonnull %.str.23.sink.i) #5
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.24) #5
  br label %done

if.else22.i:                                      ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #7
  %226 = ptrtoint ptr %train_set.i to i32
  call void @__asan_load1_noabort(i32 %226)
  %227 = load i8, ptr %train_set.i, align 4
  %conv24.i = zext i8 %227 to i32
  %and.i = and i32 %conv24.i, 3
  %and28.i = lshr i32 %conv24.i, 3
  %228 = and i32 %and28.i, 3
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.25, i32 noundef %and.i, i32 noundef %228) #5
  br label %done

done:                                             ; preds = %if.else22.i, %if.then21.i, %radeon_dp_link_train_cr.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %229 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %229(i32 noundef 85899200) #5
  %230 = ptrtoint ptr %aux65 to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load ptr, ptr %aux65, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %value.addr.i.i153) #5
  %232 = ptrtoint ptr %value.addr.i.i153 to i32
  call void @__asan_store1_noabort(i32 %232)
  store i8 0, ptr %value.addr.i.i153, align 1
  %call.i.i155 = call i32 @drm_dp_dpcd_write(ptr noundef %231, i32 noundef 258, ptr noundef nonnull %value.addr.i.i153, i32 noundef 1) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %value.addr.i.i153) #5
  %233 = ptrtoint ptr %dp_info to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load ptr, ptr %dp_info, align 4
  %family.i156 = getelementptr inbounds %struct.radeon_device, ptr %234, i32 0, i32 6
  %235 = ptrtoint ptr %family.i156 to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load i32, ptr %family.i156, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 38, i32 %236)
  %cmp.i157 = icmp ugt i32 %236, 38
  br i1 %cmp.i157, label %done.if.then.i162_crit_edge, label %lor.lhs.false.i160

done.if.then.i162_crit_edge:                      ; preds = %done
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then.i162

lor.lhs.false.i160:                               ; preds = %done
  %237 = ptrtoint ptr %use_dpencoder to i32
  call void @__asan_load1_noabort(i32 %237)
  %238 = load i8, ptr %use_dpencoder, align 1, !range !71
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %238)
  %tobool.not.i159 = icmp eq i8 %238, 0
  br i1 %tobool.not.i159, label %lor.lhs.false.i160.if.then.i162_crit_edge, label %if.else.i168

lor.lhs.false.i160.if.then.i162_crit_edge:        ; preds = %lor.lhs.false.i160
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then.i162

if.then.i162:                                     ; preds = %lor.lhs.false.i160.if.then.i162_crit_edge, %done.if.then.i162_crit_edge
  %239 = ptrtoint ptr %encoder59 to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load ptr, ptr %encoder59, align 4
  call void @atombios_dig_encoder_setup(ptr noundef %240, i32 noundef 11, i32 noundef 0) #5
  br label %cleanup

if.else.i168:                                     ; preds = %lor.lhs.false.i160
  call void @__sanitizer_cov_trace_pc() #7
  %241 = ptrtoint ptr %dp_clock62 to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load i32, ptr %dp_clock62, align 4
  %243 = ptrtoint ptr %enc_id to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load i32, ptr %enc_id, align 4
  %conv.i = trunc i32 %244 to i8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %args.i.i152) #5
  %245 = getelementptr inbounds %struct._DP_ENCODER_SERVICE_PARAMETERS, ptr %args.i.i152, i32 0, i32 1
  %246 = ptrtoint ptr %args.i.i152 to i32
  call void @__asan_store8_noabort(i32 %246)
  store i64 12884901888, ptr %args.i.i152, align 8
  %div.i.i165 = sdiv i32 %242, 10
  %conv.i.i166 = trunc i32 %div.i.i165 to i16
  store i16 %conv.i.i166, ptr %args.i.i152, align 8
  %247 = ptrtoint ptr %245 to i32
  call void @__asan_store1_noabort(i32 %247)
  store i8 %conv.i, ptr %245, align 2
  %mode_info.i.i167 = getelementptr inbounds %struct.radeon_device, ptr %234, i32 0, i32 44
  %248 = ptrtoint ptr %mode_info.i.i167 to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load ptr, ptr %mode_info.i.i167, align 4
  %call.i1.i = call i32 @atom_execute_table(ptr noundef %249, i32 noundef 79, ptr noundef nonnull %args.i.i152) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %args.i.i152) #5
  br label %cleanup

cleanup:                                          ; preds = %if.else.i168, %if.then.i162, %if.end9.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %crev) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %frev) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp2) #5
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %dp_info) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @atom_parse_cmd_header(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @radeon_process_aux_ch(ptr noundef %chan, ptr nocapture noundef readonly %send, i32 noundef %send_bytes, ptr noundef writeonly %recv, i32 noundef %recv_size, ptr nocapture noundef writeonly %ack) unnamed_addr #3 align 64 {
entry:
  %src_tmp.i1 = alloca [5 x i32], align 4
  %dst_tmp.i2 = alloca [5 x i32], align 4
  %src_tmp.i = alloca [5 x i32], align 4
  %dst_tmp.i = alloca [5 x i32], align 4
  %args = alloca %union.aux_channel_transaction, align 8
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.radeon_i2c_chan, ptr %chan, i32 0, i32 1
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 8
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_private, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %args) #5
  %4 = getelementptr inbounds %struct._PROCESS_AUX_CHANNEL_TRANSACTION_PARAMETERS, ptr %args, i32 0, i32 2
  %5 = getelementptr inbounds %struct._PROCESS_AUX_CHANNEL_TRANSACTION_PARAMETERS, ptr %args, i32 0, i32 3
  %6 = getelementptr inbounds %struct._PROCESS_AUX_CHANNEL_TRANSACTION_PARAMETERS, ptr %args, i32 0, i32 4
  %7 = getelementptr inbounds %struct._PROCESS_AUX_CHANNEL_TRANSACTION_PARAMETERS, ptr %args, i32 0, i32 5
  %8 = ptrtoint ptr %args to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 288252366384267264, ptr %args, align 8
  %mutex = getelementptr inbounds %struct.radeon_i2c_chan, ptr %chan, i32 0, i32 6
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #5
  %mode_info = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 44
  %9 = ptrtoint ptr %mode_info to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %mode_info, align 4
  %scratch_mutex = getelementptr inbounds %struct.atom_context, ptr %10, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %scratch_mutex, i32 noundef 0) #5
  %11 = ptrtoint ptr %mode_info to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %mode_info, align 4
  %scratch = getelementptr inbounds %struct.atom_context, ptr %12, i32 0, i32 16
  %13 = ptrtoint ptr %scratch to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %scratch, align 4
  %add.ptr = getelementptr i32, ptr %14, i32 1
  %conv = trunc i32 %send_bytes to i8
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %src_tmp.i) #5
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %dst_tmp.i) #5
  %conv.i = and i32 %send_bytes, 255
  %add.i = add i8 %conv, 3
  %and.i = and i8 %add.i, -4
  %15 = call ptr @memset(ptr %dst_tmp.i, i32 255, i32 20)
  %16 = zext i32 %conv.i to i64
  call void @__sanitizer_cov_trace_const_cmp4(i32 19, i32 %conv.i)
  %17 = icmp ugt i32 %conv.i, 19
  %18 = sub nsw i64 20, %16
  %19 = select i1 %17, i64 0, i64 %18
  %20 = getelementptr i8, ptr %src_tmp.i, i32 %conv.i
  %21 = trunc i64 %19 to i32
  %22 = call ptr @memset(ptr %20, i32 255, i32 %21)
  %23 = call ptr @memcpy(ptr %src_tmp.i, ptr %send, i32 %conv.i)
  %conv3.i = zext i8 %and.i to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %and.i)
  %cmp41.not.i = icmp eq i8 %and.i, 0
  br i1 %cmp41.not.i, label %entry.radeon_atom_copy_swap.exit_crit_edge, label %for.body.preheader.i

entry.radeon_atom_copy_swap.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %radeon_atom_copy_swap.exit

for.body.preheader.i:                             ; preds = %entry
  %div38.i = lshr exact i32 %conv3.i, 2
  %umax43.i = tail call i32 @llvm.umax.i32(i32 %div38.i, i32 1) #5
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.preheader.i
  %i.042.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %for.body.preheader.i ]
  %arrayidx.i = getelementptr [5 x i32], ptr %src_tmp.i, i32 0, i32 %i.042.i
  %24 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx.i, align 4
  %26 = tail call i32 @llvm.bswap.i32(i32 %25) #5
  %arrayidx5.i = getelementptr [5 x i32], ptr %dst_tmp.i, i32 0, i32 %i.042.i
  %27 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %arrayidx5.i, align 4
  %inc.i = add nuw nsw i32 %i.042.i, 1
  %exitcond44.not.i = icmp eq i32 %inc.i, %umax43.i
  br i1 %exitcond44.not.i, label %for.body.i.radeon_atom_copy_swap.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

for.body.i.radeon_atom_copy_swap.exit_crit_edge:  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %radeon_atom_copy_swap.exit

radeon_atom_copy_swap.exit:                       ; preds = %for.body.i.radeon_atom_copy_swap.exit_crit_edge, %entry.radeon_atom_copy_swap.exit_crit_edge
  %28 = call ptr @memcpy(ptr %add.ptr, ptr %dst_tmp.i, i32 %conv3.i)
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %dst_tmp.i) #5
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %src_tmp.i) #5
  %i2c_id = getelementptr inbounds %struct.radeon_i2c_chan, ptr %chan, i32 0, i32 3, i32 1
  %29 = ptrtoint ptr %i2c_id to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %i2c_id, align 1
  %31 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %30, ptr %4, align 4
  %family = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 6
  %32 = ptrtoint ptr %family to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %family, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 38, i32 %33)
  %cmp = icmp ugt i32 %33, 38
  br i1 %cmp, label %if.then, label %radeon_atom_copy_swap.exit.if.end_crit_edge

radeon_atom_copy_swap.exit.if.end_crit_edge:      ; preds = %radeon_atom_copy_swap.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %radeon_atom_copy_swap.exit
  call void @__sanitizer_cov_trace_pc() #7
  %hpd = getelementptr inbounds %struct.radeon_i2c_chan, ptr %chan, i32 0, i32 3, i32 2
  %34 = ptrtoint ptr %hpd to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %hpd, align 4
  %conv8 = trunc i32 %35 to i8
  %36 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %conv8, ptr %7, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %radeon_atom_copy_swap.exit.if.end_crit_edge
  %37 = ptrtoint ptr %mode_info to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %mode_info, align 4
  %call = call i32 @atom_execute_table_scratch_unlocked(ptr noundef %38, i32 noundef 78, ptr noundef nonnull %args) #5
  %39 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %5, align 1
  %41 = ptrtoint ptr %ack to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %40, ptr %ack, align 1
  %42 = zext i8 %40 to i64
  call void @__sanitizer_cov_trace_switch(i64 %42, ptr @__sancov_gen_cov_switch_values.26)
  switch i8 %40, label %if.end25 [
    i8 1, label %if.then14
    i8 2, label %if.then19
    i8 3, label %if.then24
  ]

if.then14:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.3) #5
  br label %done

if.then19:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.4) #5
  br label %done

if.then24:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.5) #5
  br label %done

if.end25:                                         ; preds = %if.end
  %43 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %6, align 2
  %conv27 = zext i8 %44 to i32
  %45 = call i32 @llvm.smin.i32(i32 %conv27, i32 %recv_size)
  %tobool.not = icmp eq ptr %recv, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %recv_size)
  %tobool32.not = icmp eq i32 %recv_size, 0
  %or.cond = or i1 %tobool.not, %tobool32.not
  br i1 %or.cond, label %if.end25.done_crit_edge, label %if.then33

if.end25.done_crit_edge:                          ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #7
  br label %done

if.then33:                                        ; preds = %if.end25
  %add.ptr34 = getelementptr i32, ptr %14, i32 5
  %conv35 = trunc i32 %45 to i8
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %src_tmp.i1) #5
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %dst_tmp.i2) #5
  %conv.i3 = and i32 %45, 255
  %add.i4 = add i8 %conv35, 3
  %and.i5 = and i8 %add.i4, -4
  %46 = call ptr @memset(ptr %dst_tmp.i2, i32 255, i32 20)
  %conv9.i = zext i8 %and.i5 to i32
  %47 = zext i8 %and.i5 to i64
  call void @__sanitizer_cov_trace_const_cmp1(i8 19, i8 %and.i5)
  %48 = icmp ugt i8 %and.i5, 19
  %49 = sub nsw i64 20, %47
  %50 = select i1 %48, i64 0, i64 %49
  %51 = zext i8 %and.i5 to i32
  %52 = getelementptr i8, ptr %src_tmp.i1, i32 %51
  %53 = trunc i64 %50 to i32
  %54 = call ptr @memset(ptr %52, i32 255, i32 %53)
  %55 = call ptr @memcpy(ptr %src_tmp.i1, ptr %add.ptr34, i32 %conv9.i)
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %and.i5)
  %cmp1339.not.i = icmp eq i8 %and.i5, 0
  br i1 %cmp1339.not.i, label %if.then33.radeon_atom_copy_swap.exit6_crit_edge, label %for.body15.preheader.i

if.then33.radeon_atom_copy_swap.exit6_crit_edge:  ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #7
  br label %radeon_atom_copy_swap.exit6

for.body15.preheader.i:                           ; preds = %if.then33
  %div1237.i = lshr exact i32 %conv9.i, 2
  %umax.i = call i32 @llvm.umax.i32(i32 %div1237.i, i32 1) #5
  br label %for.body15.i

for.body15.i:                                     ; preds = %for.body15.i.for.body15.i_crit_edge, %for.body15.preheader.i
  %i.140.i = phi i32 [ %inc19.i, %for.body15.i.for.body15.i_crit_edge ], [ 0, %for.body15.preheader.i ]
  %arrayidx16.i = getelementptr [5 x i32], ptr %src_tmp.i1, i32 0, i32 %i.140.i
  %56 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %arrayidx16.i, align 4
  %58 = call i32 @llvm.bswap.i32(i32 %57) #5
  %arrayidx17.i = getelementptr [5 x i32], ptr %dst_tmp.i2, i32 0, i32 %i.140.i
  %59 = ptrtoint ptr %arrayidx17.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %58, ptr %arrayidx17.i, align 4
  %inc19.i = add nuw nsw i32 %i.140.i, 1
  %exitcond.not.i = icmp eq i32 %inc19.i, %umax.i
  br i1 %exitcond.not.i, label %for.body15.i.radeon_atom_copy_swap.exit6_crit_edge, label %for.body15.i.for.body15.i_crit_edge

for.body15.i.for.body15.i_crit_edge:              ; preds = %for.body15.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body15.i

for.body15.i.radeon_atom_copy_swap.exit6_crit_edge: ; preds = %for.body15.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %radeon_atom_copy_swap.exit6

radeon_atom_copy_swap.exit6:                      ; preds = %for.body15.i.radeon_atom_copy_swap.exit6_crit_edge, %if.then33.radeon_atom_copy_swap.exit6_crit_edge
  %60 = call ptr @memcpy(ptr %recv, ptr %dst_tmp.i2, i32 %conv.i3)
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %dst_tmp.i2) #5
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %src_tmp.i1) #5
  br label %done

done:                                             ; preds = %radeon_atom_copy_swap.exit6, %if.end25.done_crit_edge, %if.then24, %if.then19, %if.then14
  %r.0 = phi i32 [ -110, %if.then14 ], [ -5, %if.then19 ], [ -5, %if.then24 ], [ %45, %radeon_atom_copy_swap.exit6 ], [ %45, %if.end25.done_crit_edge ]
  %61 = ptrtoint ptr %mode_info to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %mode_info, align 4
  %scratch_mutex39 = getelementptr inbounds %struct.atom_context, ptr %62, i32 0, i32 2
  call void @mutex_unlock(ptr noundef %scratch_mutex39) #5
  call void @mutex_unlock(ptr noundef %mutex) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %args) #5
  ret i32 %r.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @atom_execute_table_scratch_unlocked(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @atom_execute_table(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @radeon_get_monitor_bpc(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_dp_bw_code_to_link_rate(i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_dp_dpcd_write(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @drm_dp_link_rate_to_bw_code(i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @atombios_dig_encoder_setup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_dp_link_train_clock_recovery_delay(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_err(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @drm_dp_clock_recovery_ok(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dp_get_adjust_train(ptr noundef %link_status, i32 noundef %lane_count, ptr nocapture noundef writeonly %train_set) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %lane_count)
  %cmp71 = icmp sgt i32 %lane_count, 0
  br i1 %cmp71, label %entry.for.body_crit_edge, label %entry..thread_crit_edge

entry..thread_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %.thread

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %lane.074 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %p.073 = phi i8 [ %7, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %v.072 = phi i8 [ %6, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %call = tail call zeroext i8 @drm_dp_get_adjust_request_voltage(ptr noundef %link_status, i32 noundef %lane.074) #5
  %call1 = tail call zeroext i8 @drm_dp_get_adjust_request_pre_emphasis(ptr noundef %link_status, i32 noundef %lane.074) #5
  %conv = zext i8 %call to i32
  %arrayidx = getelementptr [4 x ptr], ptr @voltage_names, i32 0, i32 %conv
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %2 = lshr i8 %call1, 3
  %3 = zext i8 %2 to i32
  %arrayidx4 = getelementptr [4 x ptr], ptr @pre_emph_names, i32 0, i32 %3
  %4 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx4, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.13, i32 noundef %lane.074, ptr noundef %1, ptr noundef %5) #5
  %6 = tail call i8 @llvm.umax.i8(i8 %call, i8 %v.072)
  %7 = tail call i8 @llvm.umax.i8(i8 %call1, i8 %p.073)
  %inc = add nuw nsw i32 %lane.074, 1
  %exitcond.not = icmp eq i32 %inc, %lane_count
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %6)
  %cmp16 = icmp ugt i8 %6, 2
  %8 = or i8 %6, 4
  %spec.select = select i1 %cmp16, i8 %8, i8 %6
  call void @__sanitizer_cov_trace_const_cmp1(i8 23, i8 %7)
  %cmp23 = icmp ugt i8 %7, 23
  %9 = or i8 %7, 32
  %spec.select85 = select i1 %cmp23, i8 %9, i8 %7
  br label %.thread

.thread:                                          ; preds = %for.end, %entry..thread_crit_edge
  %10 = phi i8 [ 0, %entry..thread_crit_edge ], [ %spec.select, %for.end ]
  %11 = phi i8 [ 0, %entry..thread_crit_edge ], [ %spec.select85, %for.end ]
  %12 = and i8 %10, 3
  %and = zext i8 %12 to i32
  %arrayidx32 = getelementptr [4 x ptr], ptr @voltage_names, i32 0, i32 %and
  %13 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx32, align 4
  %15 = lshr i8 %11, 3
  %16 = and i8 %15, 3
  %17 = zext i8 %16 to i32
  %arrayidx36 = getelementptr [4 x ptr], ptr @pre_emph_names, i32 0, i32 %17
  %18 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx36, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.14, ptr noundef %14, ptr noundef %19) #5
  %or4369 = or i8 %11, %10
  %20 = zext i8 %or4369 to i32
  %21 = call ptr @memset(ptr %train_set, i32 %20, i32 4)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @atombios_dig_transmitter_setup(ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @drm_dp_get_adjust_request_voltage(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @drm_dp_get_adjust_request_pre_emphasis(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_dp_link_train_channel_eq_delay(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umax.i8(i8, i8) #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 28)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 28)
  ret void
}

attributes #0 = { argmemonly nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !13, !15, !17, !19, !21, !23, !25, !27, !29, !31, !33, !35, !37, !39, !41, !43, !45, !47, !49, !51, !53, !55, !57}
!llvm.module.flags = !{!59, !60, !61, !62, !63, !64, !65, !66}
!llvm.ident = !{!67}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/radeon/atombios_dp.c", i32 249, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../drivers/gpu/drm/radeon/atombios_dp.c", i32 398, i32 3}
!5 = distinct !{null, !6, !"__already_done", i1 false, i1 false}
!6 = !{!"../drivers/gpu/drm/radeon/atombios_dp.c", i32 186, i32 7}
!7 = !{ptr @.str.3, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../drivers/gpu/drm/radeon/atombios_dp.c", i32 121, i32 3}
!9 = !{ptr @.str.4, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/gpu/drm/radeon/atombios_dp.c", i32 128, i32 3}
!11 = !{ptr @.str.5, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/gpu/drm/radeon/atombios_dp.c", i32 135, i32 3}
!13 = !{ptr @.str.6, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/gpu/drm/radeon/atombios_dp.c", i32 379, i32 3}
!15 = !{ptr @.str.7, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/gpu/drm/radeon/atombios_dp.c", i32 383, i32 3}
!17 = distinct !{null, !18, !"link_rates", i1 false, i1 false}
!18 = !{!"../drivers/gpu/drm/radeon/atombios_dp.c", i32 312, i32 24}
!19 = !{ptr @.str.8, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/gpu/drm/radeon/atombios_dp.c", i32 687, i32 4}
!21 = !{ptr @.str.9, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/gpu/drm/radeon/atombios_dp.c", i32 701, i32 4}
!23 = !{ptr @.str.10, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/gpu/drm/radeon/atombios_dp.c", i32 708, i32 5}
!25 = !{ptr @.str.11, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/gpu/drm/radeon/atombios_dp.c", i32 722, i32 3}
!27 = !{ptr @.str.12, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/gpu/drm/radeon/atombios_dp.c", i32 725, i32 3}
!29 = !{ptr @.str.13, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/gpu/drm/radeon/atombios_dp.c", i32 269, i32 3}
!31 = !{ptr @.str.14, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/gpu/drm/radeon/atombios_dp.c", i32 286, i32 2}
!33 = !{ptr @.str.15, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/gpu/drm/radeon/atombios_dp.c", i32 40, i32 2}
!35 = !{ptr @.str.16, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/gpu/drm/radeon/atombios_dp.c", i32 40, i32 10}
!37 = !{ptr @.str.17, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/gpu/drm/radeon/atombios_dp.c", i32 40, i32 18}
!39 = !{ptr @.str.18, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/gpu/drm/radeon/atombios_dp.c", i32 40, i32 26}
!41 = !{ptr @voltage_names, !42, !"voltage_names", i1 false, i1 false}
!42 = !{!"../drivers/gpu/drm/radeon/atombios_dp.c", i32 39, i32 14}
!43 = !{ptr @.str.19, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/gpu/drm/radeon/atombios_dp.c", i32 43, i32 2}
!45 = !{ptr @.str.20, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/gpu/drm/radeon/atombios_dp.c", i32 43, i32 9}
!47 = !{ptr @.str.21, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/gpu/drm/radeon/atombios_dp.c", i32 43, i32 18}
!49 = !{ptr @.str.22, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/gpu/drm/radeon/atombios_dp.c", i32 43, i32 25}
!51 = !{ptr @pre_emph_names, !52, !"pre_emph_names", i1 false, i1 false}
!52 = !{!"../drivers/gpu/drm/radeon/atombios_dp.c", i32 42, i32 14}
!53 = !{ptr @.str.23, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/gpu/drm/radeon/atombios_dp.c", i32 761, i32 4}
!55 = !{ptr @.str.24, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/gpu/drm/radeon/atombios_dp.c", i32 773, i32 3}
!57 = !{ptr @.str.25, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/gpu/drm/radeon/atombios_dp.c", i32 776, i32 3}
!59 = !{i32 1, !"wchar_size", i32 2}
!60 = !{i32 1, !"min_enum_size", i32 4}
!61 = !{i32 8, !"branch-target-enforcement", i32 0}
!62 = !{i32 8, !"sign-return-address", i32 0}
!63 = !{i32 8, !"sign-return-address-all", i32 0}
!64 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!65 = !{i32 7, !"uwtable", i32 1}
!66 = !{i32 7, !"frame-pointer", i32 2}
!67 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!68 = !{!"auto-init"}
!69 = !{!"branch_weights", i32 1, i32 2000}
!70 = !{!"branch_weights", i32 2000, i32 1}
!71 = !{i8 0, i8 2}
