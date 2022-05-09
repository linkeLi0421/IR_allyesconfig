; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/radeon/radeon_i2c.c_pt.bc'
source_filename = "../drivers/gpu/drm/radeon/radeon_i2c.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.i2c_algorithm = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.i2c_msg = type { i16, i16, i16, ptr }
%struct.radeon_connector = type { %struct.drm_connector, i32, i32, ptr, i8, i8, ptr, ptr, i8, i8, i8, i16, %struct.radeon_hpd, %struct.radeon_router, ptr, i32, i32, i32, i8, ptr, ptr, %struct.drm_dp_mst_topology_mgr, ptr, [6 x %struct.stream_attribs], i32 }
%struct.drm_connector = type { ptr, ptr, ptr, ptr, %struct.list_head, %struct.list_head, %struct.drm_mode_object, ptr, %struct.mutex, i32, i32, i32, i8, i8, i8, i8, i32, %struct.list_head, i32, %struct.list_head, %struct.drm_display_info, ptr, ptr, %struct.drm_object_properties, ptr, ptr, ptr, ptr, ptr, ptr, %struct.notifier_block, ptr, ptr, i8, i32, ptr, %struct.drm_cmdline_mode, i32, i8, i64, i32, ptr, [128 x i8], [2 x i8], [2 x i32], [2 x i32], ptr, i32, i32, i8, i8, ptr, ptr, ptr, i8, ptr, i8, i8, i8, i8, i8, i16, i16, %struct.llist_node, %struct.hdr_sink_metadata }
%struct.drm_mode_object = type { i32, i32, ptr, %struct.kref, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
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
%struct.radeon_hpd = type { i32, i8, %struct.radeon_gpio_rec }
%struct.radeon_gpio_rec = type { i8, i8, i32, i32, i32 }
%struct.radeon_router = type { i32, %struct.radeon_i2c_bus_rec, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.radeon_i2c_bus_rec = type { i8, i8, i32, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.drm_dp_mst_topology_mgr = type { %struct.drm_private_obj, ptr, ptr, i32, ptr, i32, i32, i32, i32, %struct.drm_dp_sideband_msg_rx, %struct.drm_dp_sideband_msg_rx, %struct.mutex, %struct.mutex, i8, ptr, [15 x i8], i8, i32, ptr, %struct.mutex, %struct.list_head, %struct.mutex, ptr, ptr, i32, i32, %struct.wait_queue_head, %struct.work_struct, %struct.work_struct, %struct.list_head, %struct.list_head, %struct.mutex, ptr, %struct.work_struct, %struct.list_head, %struct.mutex, %struct.work_struct, %struct.mutex }
%struct.drm_private_obj = type { %struct.list_head, %struct.drm_modeset_lock, ptr, ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr, ptr }
%struct.drm_dp_sideband_msg_rx = type { [48 x i8], [256 x i8], i8, i8, i8, i8, i8, i8, %struct.drm_dp_sideband_msg_hdr }
%struct.drm_dp_sideband_msg_hdr = type { i8, i8, [8 x i8], i8, i8, i8, i8, i8, i8 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.stream_attribs = type { i16, i16 }
%struct.radeon_i2c_chan = type { %struct.i2c_adapter, ptr, %struct.i2c_algo_bit_data, %struct.radeon_i2c_bus_rec, %struct.drm_dp_aux, i8, %struct.mutex }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
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
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.78, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.87, ptr, i32, ptr, i8, i32 }
%struct.anon.78 = type { %struct.list_head, ptr, %struct.spinlock }
%struct.drm_mode_config = type { %struct.mutex, %struct.drm_modeset_lock, ptr, %struct.mutex, %struct.idr, %struct.idr, %struct.mutex, i32, %struct.list_head, %struct.spinlock, i32, %struct.ida, %struct.list_head, %struct.llist_head, %struct.work_struct, i32, %struct.list_head, i32, %struct.list_head, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, ptr, i32, i8, i8, i8, %struct.delayed_work, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, ptr, i32, i32, ptr, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.llist_head = type { ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.drm_open_hash = type { ptr, i8 }
%struct.anon.87 = type { i32, ptr }
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
%struct.ttm_pool = type { ptr, i8, i8, [3 x %struct.anon.96] }
%struct.anon.96 = type { [12 x %struct.ttm_pool_type] }
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

@radeon_hw_i2c = external dso_local local_unnamed_addr global i32, align 4
@radeon_i2c_create.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&i2c->mutex\00", [20 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Radeon i2c hw bus %s\00", [43 x i8] zeroinitializer }, align 32
@radeon_i2c_algo = internal constant { %struct.i2c_algorithm, [36 x i8] } { %struct.i2c_algorithm { ptr @radeon_hw_i2c_xfer, ptr null, ptr null, ptr null, ptr @radeon_hw_i2c_func, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@radeon_atom_i2c_algo = internal constant { %struct.i2c_algorithm, [36 x i8] } { %struct.i2c_algorithm { ptr @radeon_atom_hw_i2c_xfer, ptr null, ptr null, ptr null, ptr @radeon_atom_hw_i2c_func, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Radeon i2c bit bus %s\00", [42 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Failed to register bit i2c %s\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"drivers/gpu/drm/radeon/radeon_i2c.c\00", [60 x i8] zeroinitializer }, align 32
@radeon_i2c_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.4, i32 989, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [74 x i8], [54 x i8] } { [74 x i8] c"\016[drm] hw_i2c forced on, you may experience display detection problems!\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"radeon_i2c_init\00", [16 x i8] zeroinitializer }, align 32
@radeon_i2c_init._entry_ptr = internal global ptr @radeon_i2c_init._entry, section ".printk_index", align 4
@.str.7 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"val = 0x%02x\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"i2c 0x%02x 0x%02x read failed\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"i2c 0x%02x 0x%02x write failed\0A\00", [32 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.10 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"i2c: unhandled radeon chip\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"gpio not supported with hw i2c\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"unsupported asic\0A\00", [46 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.13 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"i2c write error 0x%08x\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"i2c read error 0x%08x\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"failed to get i2c bus\0A\00", [41 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [46 x i64] [i64 44, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15, i64 16, i64 17, i64 18, i64 19, i64 20, i64 21, i64 22, i64 23, i64 24, i64 25, i64 26, i64 27, i64 28, i64 29, i64 30, i64 31, i64 32, i64 33, i64 34, i64 35, i64 36, i64 37, i64 38, i64 39, i64 40, i64 41, i64 42, i64 43]
@__sancov_gen_cov_switch_values.16 = internal global [5 x i64] [i64 3, i64 32, i64 32320, i64 32336, i64 32352]
@__sancov_gen_cov_switch_values.17 = internal global [20 x i64] [i64 18, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15, i64 16, i64 17]
@__sancov_gen_cov_switch_values.18 = internal global [4 x i64] [i64 2, i64 32, i64 100, i64 104]
@__sancov_gen_cov_switch_values.19 = internal global [5 x i64] [i64 3, i64 32, i64 96, i64 100, i64 108]
@__sancov_gen_cov_switch_values.20 = internal global [4 x i64] [i64 2, i64 32, i64 96, i64 100]
@__sancov_gen_cov_switch_values.21 = internal global [5 x i64] [i64 3, i64 32, i64 96, i64 100, i64 104]
@__sancov_gen_cov_switch_values.22 = internal global [46 x i64] [i64 44, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15, i64 16, i64 17, i64 18, i64 19, i64 20, i64 21, i64 22, i64 23, i64 24, i64 25, i64 26, i64 27, i64 28, i64 29, i64 30, i64 31, i64 32, i64 33, i64 34, i64 35, i64 36, i64 37, i64 38, i64 39, i64 40, i64 41, i64 42, i64 43]
@___asan_gen_.23 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 925, i32 2 }
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 933, i32 5 }
@___asan_gen_.32 = private unnamed_addr constant [16 x i8] c"radeon_i2c_algo\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 893, i32 35 }
@___asan_gen_.35 = private unnamed_addr constant [21 x i8] c"radeon_atom_i2c_algo\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 898, i32 35 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 951, i32 5 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 964, i32 4 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 980, i32 2 }
@___asan_gen_.47 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 989, i32 3 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 1068, i32 3 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 1070, i32 3 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 1092, i32 3 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 878, i32 3 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 371, i32 5 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 451, i32 4 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 481, i32 5 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 513, i32 7 }
@___asan_gen_.80 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.81 = private constant [39 x i8] c"../drivers/gpu/drm/radeon/radeon_i2c.c\00", align 1
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 639, i32 3 }
@llvm.compiler.used = appending global [21 x ptr] [ptr @radeon_i2c_init._entry, ptr @radeon_i2c_init._entry_ptr, ptr @radeon_i2c_create.__key, ptr @.str, ptr @.str.1, ptr @radeon_i2c_algo, ptr @radeon_atom_i2c_algo, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15], section "llvm.metadata"
@0 = internal global [20 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radeon_i2c_create.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radeon_i2c_algo to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radeon_atom_i2c_algo to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radeon_i2c_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 74, i32 128, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @radeon_ddc_probe(ptr nocapture noundef readonly %radeon_connector, i1 noundef zeroext %use_aux) local_unnamed_addr #0 align 64 {
entry:
  %out = alloca i8, align 1
  %buf = alloca [8 x i8], align 8
  %msgs = alloca [2 x %struct.i2c_msg], align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %out) #9
  %0 = ptrtoint ptr %out to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %out, align 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %buf) #9
  %1 = ptrtoint ptr %buf to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 -1, ptr %buf, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msgs) #9
  %2 = getelementptr inbounds i8, ptr %msgs, i32 4
  %3 = call ptr @memset(ptr %2, i32 255, i32 16)
  %4 = ptrtoint ptr %msgs to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 80, ptr %msgs, align 4
  %flags = getelementptr inbounds %struct.i2c_msg, ptr %msgs, i32 0, i32 1
  %5 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 0, ptr %flags, align 2
  %len = getelementptr inbounds %struct.i2c_msg, ptr %msgs, i32 0, i32 2
  %6 = ptrtoint ptr %len to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 1, ptr %len, align 4
  %buf1 = getelementptr inbounds %struct.i2c_msg, ptr %msgs, i32 0, i32 3
  %7 = ptrtoint ptr %buf1 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %out, ptr %buf1, align 4
  %arrayinit.element = getelementptr inbounds %struct.i2c_msg, ptr %msgs, i32 1
  %8 = ptrtoint ptr %arrayinit.element to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 80, ptr %arrayinit.element, align 4
  %flags3 = getelementptr inbounds %struct.i2c_msg, ptr %msgs, i32 1, i32 1
  %9 = ptrtoint ptr %flags3 to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 1, ptr %flags3, align 2
  %len4 = getelementptr inbounds %struct.i2c_msg, ptr %msgs, i32 1, i32 2
  %10 = ptrtoint ptr %len4 to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 8, ptr %len4, align 4
  %buf5 = getelementptr inbounds %struct.i2c_msg, ptr %msgs, i32 1, i32 3
  %11 = ptrtoint ptr %buf5 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %buf, ptr %buf5, align 4
  %ddc_valid = getelementptr inbounds %struct.radeon_connector, ptr %radeon_connector, i32 0, i32 13, i32 3
  %12 = ptrtoint ptr %ddc_valid to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %ddc_valid, align 1, !range !47
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool.not = icmp eq i8 %13, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  call void @radeon_router_select_ddc_port(ptr noundef %radeon_connector)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %ddc_bus = getelementptr inbounds %struct.radeon_connector, ptr %radeon_connector, i32 0, i32 3
  %14 = ptrtoint ptr %ddc_bus to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ddc_bus, align 8
  %ddc = getelementptr inbounds %struct.radeon_i2c_chan, ptr %15, i32 0, i32 4, i32 1
  %.sink = select i1 %use_aux, ptr %ddc, ptr %15
  %call11 = call i32 @i2c_transfer(ptr noundef %.sink, ptr noundef nonnull %msgs, i32 noundef 2) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call11)
  %cmp.not = icmp eq i32 %call11, 2
  br i1 %cmp.not, label %if.end14, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end14:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %call16 = call i32 @drm_edid_header_is_valid(ptr noundef nonnull %buf) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %call16)
  %cmp17 = icmp sgt i32 %call16, 5
  br label %cleanup

cleanup:                                          ; preds = %if.end14, %if.end.cleanup_crit_edge
  %retval.0 = phi i1 [ false, %if.end.cleanup_crit_edge ], [ %cmp17, %if.end14 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %buf) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %out) #9
  ret i1 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @radeon_router_select_ddc_port(ptr nocapture noundef readonly %radeon_connector) local_unnamed_addr #0 align 64 {
entry:
  %out_buf.i67 = alloca [2 x i8], align 1
  %msg.i68 = alloca %struct.i2c_msg, align 4
  %out_buf.i49 = alloca [2 x i8], align 1
  %in_buf.i50 = alloca [2 x i8], align 1
  %msgs.i51 = alloca [2 x %struct.i2c_msg], align 4
  %out_buf.i42 = alloca [2 x i8], align 1
  %msg.i = alloca %struct.i2c_msg, align 4
  %out_buf.i = alloca [2 x i8], align 1
  %in_buf.i = alloca [2 x i8], align 1
  %msgs.i = alloca [2 x %struct.i2c_msg], align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %ddc_valid = getelementptr inbounds %struct.radeon_connector, ptr %radeon_connector, i32 0, i32 13, i32 3
  %0 = ptrtoint ptr %ddc_valid to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %ddc_valid, align 1, !range !47
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %router_bus = getelementptr inbounds %struct.radeon_connector, ptr %radeon_connector, i32 0, i32 14
  %2 = ptrtoint ptr %router_bus to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %router_bus, align 4
  %tobool1.not = icmp eq ptr %3, null
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %i2c_addr = getelementptr inbounds %struct.radeon_connector, ptr %radeon_connector, i32 0, i32 13, i32 2
  %4 = ptrtoint ptr %i2c_addr to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %i2c_addr, align 8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %out_buf.i) #9
  %6 = getelementptr inbounds [2 x i8], ptr %out_buf.i, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %in_buf.i) #9
  %7 = ptrtoint ptr %in_buf.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 -1, ptr %in_buf.i, align 1, !annotation !48
  %8 = getelementptr inbounds [2 x i8], ptr %in_buf.i, i32 0, i32 1
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 -1, ptr %8, align 1, !annotation !48
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msgs.i) #9
  %10 = getelementptr inbounds i8, ptr %msgs.i, i32 4
  %11 = call ptr @memset(ptr %10, i32 255, i32 16)
  %conv.i = zext i8 %5 to i16
  %12 = ptrtoint ptr %msgs.i to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %conv.i, ptr %msgs.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 0, i32 1
  %13 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 0, ptr %flags.i, align 2
  %14 = ptrtoint ptr %10 to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 1, ptr %10, align 4
  %buf.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 0, i32 3
  %15 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %out_buf.i, ptr %buf.i, align 4
  %arrayinit.element.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 1
  %16 = ptrtoint ptr %arrayinit.element.i to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %conv.i, ptr %arrayinit.element.i, align 4
  %flags4.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 1, i32 1
  %17 = ptrtoint ptr %flags4.i to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 1, ptr %flags4.i, align 2
  %len5.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 1, i32 2
  %18 = ptrtoint ptr %len5.i to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 1, ptr %len5.i, align 4
  %buf6.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 1, i32 3
  %19 = ptrtoint ptr %buf6.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %in_buf.i, ptr %buf6.i, align 4
  %20 = ptrtoint ptr %out_buf.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 3, ptr %out_buf.i, align 1
  %21 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 0, ptr %6, align 1
  %call.i = call i32 @i2c_transfer(ptr noundef nonnull %3, ptr noundef nonnull %msgs.i, i32 noundef 2) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i)
  %cmp.i = icmp eq i32 %call.i, 2
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #11
  %22 = ptrtoint ptr %in_buf.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %in_buf.i, align 1
  %conv12.i = zext i8 %23 to i32
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.7, i32 noundef %conv12.i) #9
  br label %radeon_i2c_get_byte.exit

if.else.i:                                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #11
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.8, i32 noundef 3, i32 noundef 255) #9
  br label %radeon_i2c_get_byte.exit

radeon_i2c_get_byte.exit:                         ; preds = %if.else.i, %if.then.i
  %val.0 = phi i8 [ %23, %if.then.i ], [ -1, %if.else.i ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs.i) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %in_buf.i) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %out_buf.i) #9
  %ddc_mux_control_pin = getelementptr inbounds %struct.radeon_connector, ptr %radeon_connector, i32 0, i32 13, i32 5
  %24 = ptrtoint ptr %ddc_mux_control_pin to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %ddc_mux_control_pin, align 1
  %neg = xor i8 %25, -1
  %and = and i8 %val.0, %neg
  %26 = ptrtoint ptr %router_bus to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %router_bus, align 4
  %28 = ptrtoint ptr %i2c_addr to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %i2c_addr, align 8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %out_buf.i42) #9
  %30 = getelementptr inbounds [2 x i8], ptr %out_buf.i42, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i) #9
  %31 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 196607, ptr %31, align 4
  %conv.i43 = zext i8 %29 to i16
  %33 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 %conv.i43, ptr %msg.i, align 4
  %flags.i44 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %34 = ptrtoint ptr %flags.i44 to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 0, ptr %flags.i44, align 2
  %buf.i46 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %35 = ptrtoint ptr %buf.i46 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %out_buf.i42, ptr %buf.i46, align 4
  %36 = ptrtoint ptr %out_buf.i42 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 3, ptr %out_buf.i42, align 1
  %37 = ptrtoint ptr %30 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %and, ptr %30, align 1
  %call.i47 = call i32 @i2c_transfer(ptr noundef %27, ptr noundef nonnull %msg.i, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i47)
  %cmp.not.i = icmp eq i32 %call.i47, 1
  br i1 %cmp.not.i, label %radeon_i2c_get_byte.exit.radeon_i2c_put_byte.exit_crit_edge, label %if.then.i48

radeon_i2c_get_byte.exit.radeon_i2c_put_byte.exit_crit_edge: ; preds = %radeon_i2c_get_byte.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %radeon_i2c_put_byte.exit

if.then.i48:                                      ; preds = %radeon_i2c_get_byte.exit
  call void @__sanitizer_cov_trace_pc() #11
  %conv5.i = zext i8 %and to i32
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.9, i32 noundef 3, i32 noundef %conv5.i) #9
  br label %radeon_i2c_put_byte.exit

radeon_i2c_put_byte.exit:                         ; preds = %if.then.i48, %radeon_i2c_get_byte.exit.radeon_i2c_put_byte.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %out_buf.i42) #9
  %38 = ptrtoint ptr %router_bus to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %router_bus, align 4
  %40 = ptrtoint ptr %i2c_addr to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %i2c_addr, align 8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %out_buf.i49) #9
  %42 = getelementptr inbounds [2 x i8], ptr %out_buf.i49, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %in_buf.i50) #9
  %43 = ptrtoint ptr %in_buf.i50 to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 -1, ptr %in_buf.i50, align 1, !annotation !48
  %44 = getelementptr inbounds [2 x i8], ptr %in_buf.i50, i32 0, i32 1
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 -1, ptr %44, align 1, !annotation !48
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msgs.i51) #9
  %46 = getelementptr inbounds i8, ptr %msgs.i51, i32 4
  %47 = call ptr @memset(ptr %46, i32 255, i32 16)
  %conv.i52 = zext i8 %41 to i16
  %48 = ptrtoint ptr %msgs.i51 to i32
  call void @__asan_store2_noabort(i32 %48)
  store i16 %conv.i52, ptr %msgs.i51, align 4
  %flags.i53 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i51, i32 0, i32 1
  %49 = ptrtoint ptr %flags.i53 to i32
  call void @__asan_store2_noabort(i32 %49)
  store i16 0, ptr %flags.i53, align 2
  %50 = ptrtoint ptr %46 to i32
  call void @__asan_store2_noabort(i32 %50)
  store i16 1, ptr %46, align 4
  %buf.i55 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i51, i32 0, i32 3
  %51 = ptrtoint ptr %buf.i55 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %out_buf.i49, ptr %buf.i55, align 4
  %arrayinit.element.i56 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i51, i32 1
  %52 = ptrtoint ptr %arrayinit.element.i56 to i32
  call void @__asan_store2_noabort(i32 %52)
  store i16 %conv.i52, ptr %arrayinit.element.i56, align 4
  %flags4.i57 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i51, i32 1, i32 1
  %53 = ptrtoint ptr %flags4.i57 to i32
  call void @__asan_store2_noabort(i32 %53)
  store i16 1, ptr %flags4.i57, align 2
  %len5.i58 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i51, i32 1, i32 2
  %54 = ptrtoint ptr %len5.i58 to i32
  call void @__asan_store2_noabort(i32 %54)
  store i16 1, ptr %len5.i58, align 4
  %buf6.i59 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i51, i32 1, i32 3
  %55 = ptrtoint ptr %buf6.i59 to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %in_buf.i50, ptr %buf6.i59, align 4
  %56 = ptrtoint ptr %out_buf.i49 to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 1, ptr %out_buf.i49, align 1
  %57 = ptrtoint ptr %42 to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 0, ptr %42, align 1
  %call.i60 = call i32 @i2c_transfer(ptr noundef %39, ptr noundef nonnull %msgs.i51, i32 noundef 2) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i60)
  %cmp.i61 = icmp eq i32 %call.i60, 2
  br i1 %cmp.i61, label %if.then.i63, label %if.else.i65

if.then.i63:                                      ; preds = %radeon_i2c_put_byte.exit
  call void @__sanitizer_cov_trace_pc() #11
  %58 = ptrtoint ptr %in_buf.i50 to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %in_buf.i50, align 1
  %conv12.i62 = zext i8 %59 to i32
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.7, i32 noundef %conv12.i62) #9
  br label %radeon_i2c_get_byte.exit66

if.else.i65:                                      ; preds = %radeon_i2c_put_byte.exit
  call void @__sanitizer_cov_trace_pc() #11
  %conv14.i64 = zext i8 %and to i32
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.8, i32 noundef 1, i32 noundef %conv14.i64) #9
  br label %radeon_i2c_get_byte.exit66

radeon_i2c_get_byte.exit66:                       ; preds = %if.else.i65, %if.then.i63
  %val.1 = phi i8 [ %59, %if.then.i63 ], [ %and, %if.else.i65 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs.i51) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %in_buf.i50) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %out_buf.i49) #9
  %60 = ptrtoint ptr %ddc_mux_control_pin to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %ddc_mux_control_pin, align 1
  %neg18 = xor i8 %61, -1
  %and20 = and i8 %val.1, %neg18
  %ddc_mux_state = getelementptr inbounds %struct.radeon_connector, ptr %radeon_connector, i32 0, i32 13, i32 6
  %62 = ptrtoint ptr %ddc_mux_state to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %ddc_mux_state, align 4
  %or41 = or i8 %and20, %63
  %64 = ptrtoint ptr %router_bus to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %router_bus, align 4
  %66 = ptrtoint ptr %i2c_addr to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %i2c_addr, align 8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %out_buf.i67) #9
  %68 = getelementptr inbounds [2 x i8], ptr %out_buf.i67, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i68) #9
  %69 = getelementptr inbounds i8, ptr %msg.i68, i32 4
  %70 = ptrtoint ptr %69 to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 196607, ptr %69, align 4
  %conv.i69 = zext i8 %67 to i16
  %71 = ptrtoint ptr %msg.i68 to i32
  call void @__asan_store2_noabort(i32 %71)
  store i16 %conv.i69, ptr %msg.i68, align 4
  %flags.i70 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i68, i32 0, i32 1
  %72 = ptrtoint ptr %flags.i70 to i32
  call void @__asan_store2_noabort(i32 %72)
  store i16 0, ptr %flags.i70, align 2
  %buf.i72 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i68, i32 0, i32 3
  %73 = ptrtoint ptr %buf.i72 to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr %out_buf.i67, ptr %buf.i72, align 4
  %74 = ptrtoint ptr %out_buf.i67 to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 1, ptr %out_buf.i67, align 1
  %75 = ptrtoint ptr %68 to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 %or41, ptr %68, align 1
  %call.i73 = call i32 @i2c_transfer(ptr noundef %65, ptr noundef nonnull %msg.i68, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i73)
  %cmp.not.i74 = icmp eq i32 %call.i73, 1
  br i1 %cmp.not.i74, label %radeon_i2c_get_byte.exit66.radeon_i2c_put_byte.exit77_crit_edge, label %if.then.i76

radeon_i2c_get_byte.exit66.radeon_i2c_put_byte.exit77_crit_edge: ; preds = %radeon_i2c_get_byte.exit66
  call void @__sanitizer_cov_trace_pc() #11
  br label %radeon_i2c_put_byte.exit77

if.then.i76:                                      ; preds = %radeon_i2c_get_byte.exit66
  call void @__sanitizer_cov_trace_pc() #11
  %conv5.i75 = zext i8 %or41 to i32
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.9, i32 noundef 1, i32 noundef %conv5.i75) #9
  br label %radeon_i2c_put_byte.exit77

radeon_i2c_put_byte.exit77:                       ; preds = %if.then.i76, %radeon_i2c_get_byte.exit66.radeon_i2c_put_byte.exit77_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i68) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %out_buf.i67) #9
  br label %cleanup

cleanup:                                          ; preds = %radeon_i2c_put_byte.exit77, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_edid_header_is_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @radeon_i2c_create(ptr noundef %dev, ptr nocapture noundef readonly %rec, ptr noundef %name) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_private, align 4
  %mm_i2c = getelementptr inbounds %struct.radeon_i2c_bus_rec, ptr %rec, i32 0, i32 4
  %2 = ptrtoint ptr %mm_i2c to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %mm_i2c, align 1, !range !47
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @radeon_hw_i2c to i32))
  %4 = load i32, ptr @radeon_hw_i2c, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp = icmp eq i32 %4, 0
  br i1 %cmp, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %5 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 3520, i32 noundef 3312) #12
  %cmp1 = icmp eq ptr %call7.i.i, null
  br i1 %cmp1, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %rec4 = getelementptr inbounds %struct.radeon_i2c_chan, ptr %call7.i.i, i32 0, i32 3
  %6 = call ptr @memcpy(ptr %rec4, ptr %rec, i32 76)
  %7 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %call7.i.i, align 8
  %class = getelementptr inbounds %struct.i2c_adapter, ptr %call7.i.i, i32 0, i32 1
  %8 = ptrtoint ptr %class to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 8, ptr %class, align 4
  %dev6 = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 2
  %9 = ptrtoint ptr %dev6 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev6, align 4
  %parent = getelementptr inbounds %struct.i2c_adapter, ptr %call7.i.i, i32 0, i32 9, i32 1
  %11 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %10, ptr %parent, align 8
  %dev9 = getelementptr inbounds %struct.radeon_i2c_chan, ptr %call7.i.i, i32 0, i32 1
  %12 = ptrtoint ptr %dev9 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %dev, ptr %dev9, align 8
  %driver_data.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %call7.i.i, i32 0, i32 9, i32 8
  %13 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call7.i.i, ptr %driver_data.i.i, align 4
  %mutex = getelementptr inbounds %struct.radeon_i2c_chan, ptr %call7.i.i, i32 0, i32 6
  tail call void @__mutex_init(ptr noundef %mutex, ptr noundef nonnull @.str, ptr noundef nonnull @radeon_i2c_create.__key) #9
  %14 = ptrtoint ptr %mm_i2c to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %mm_i2c, align 1, !range !47
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool12.not = icmp eq i8 %15, 0
  br i1 %tobool12.not, label %lor.lhs.false, label %if.end3.if.then24_crit_edge

if.end3.if.then24_crit_edge:                      ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then24

lor.lhs.false:                                    ; preds = %if.end3
  %hw_capable = getelementptr inbounds %struct.radeon_i2c_bus_rec, ptr %rec, i32 0, i32 3
  %16 = ptrtoint ptr %hw_capable to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %hw_capable, align 4, !range !47
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool13.not = icmp eq i8 %17, 0
  br i1 %tobool13.not, label %lor.lhs.false.if.else53_crit_edge, label %land.lhs.true14

lor.lhs.false.if.else53_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else53

land.lhs.true14:                                  ; preds = %lor.lhs.false
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @radeon_hw_i2c to i32))
  %18 = load i32, ptr @radeon_hw_i2c, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool15.not = icmp eq i32 %18, 0
  br i1 %tobool15.not, label %land.lhs.true14.if.else53_crit_edge, label %land.lhs.true16

land.lhs.true14.if.else53_crit_edge:              ; preds = %land.lhs.true14
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else53

land.lhs.true16:                                  ; preds = %land.lhs.true14
  %family = getelementptr inbounds %struct.radeon_device, ptr %1, i32 0, i32 6
  %19 = ptrtoint ptr %family to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %family, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 18, i32 %20)
  %cmp17 = icmp ult i32 %20, 18
  %21 = add i32 %20, -21
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %21)
  %22 = icmp ult i32 %21, 6
  %or.cond = or i1 %cmp17, %22
  br i1 %or.cond, label %land.lhs.true16.if.then24_crit_edge, label %land.lhs.true36

land.lhs.true16.if.then24_crit_edge:              ; preds = %land.lhs.true16
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then24

if.then24:                                        ; preds = %land.lhs.true16.if.then24_crit_edge, %if.end3.if.then24_crit_edge
  %name26 = getelementptr inbounds %struct.i2c_adapter, ptr %call7.i.i, i32 0, i32 12
  %call27 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %name26, i32 noundef 48, ptr noundef nonnull @.str.1, ptr noundef %name)
  %algo = getelementptr inbounds %struct.i2c_adapter, ptr %call7.i.i, i32 0, i32 2
  %23 = ptrtoint ptr %algo to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @radeon_i2c_algo, ptr %algo, align 8
  %call30 = tail call i32 @i2c_add_adapter(ptr noundef nonnull %call7.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %if.then24.cleanup_crit_edge, label %if.then24.out_free_crit_edge

if.then24.out_free_crit_edge:                     ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_free

if.then24.cleanup_crit_edge:                      ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.lhs.true36:                                  ; preds = %land.lhs.true16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @radeon_hw_i2c to i32))
  %.pr = load i32, ptr @radeon_hw_i2c, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %tobool37.not = icmp eq i32 %.pr, 0
  br i1 %tobool37.not, label %land.lhs.true36.if.else53_crit_edge, label %land.lhs.true38

land.lhs.true36.if.else53_crit_edge:              ; preds = %land.lhs.true36
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else53

land.lhs.true38:                                  ; preds = %land.lhs.true36
  %24 = ptrtoint ptr %family to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %family, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 30, i32 %25)
  %cmp40 = icmp ugt i32 %25, 30
  br i1 %cmp40, label %if.then41, label %land.lhs.true38.if.else53_crit_edge

land.lhs.true38.if.else53_crit_edge:              ; preds = %land.lhs.true38
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else53

if.then41:                                        ; preds = %land.lhs.true38
  %name43 = getelementptr inbounds %struct.i2c_adapter, ptr %call7.i.i, i32 0, i32 12
  %call45 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %name43, i32 noundef 48, ptr noundef nonnull @.str.1, ptr noundef %name)
  %algo47 = getelementptr inbounds %struct.i2c_adapter, ptr %call7.i.i, i32 0, i32 2
  %26 = ptrtoint ptr %algo47 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @radeon_atom_i2c_algo, ptr %algo47, align 8
  %call49 = tail call i32 @i2c_add_adapter(ptr noundef nonnull %call7.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49)
  %tobool50.not = icmp eq i32 %call49, 0
  br i1 %tobool50.not, label %if.then41.cleanup_crit_edge, label %if.then41.out_free_crit_edge

if.then41.out_free_crit_edge:                     ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_free

if.then41.cleanup_crit_edge:                      ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.else53:                                        ; preds = %land.lhs.true38.if.else53_crit_edge, %land.lhs.true36.if.else53_crit_edge, %land.lhs.true14.if.else53_crit_edge, %lor.lhs.false.if.else53_crit_edge
  %name55 = getelementptr inbounds %struct.i2c_adapter, ptr %call7.i.i, i32 0, i32 12
  %call57 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %name55, i32 noundef 48, ptr noundef nonnull @.str.2, ptr noundef %name)
  %bit = getelementptr inbounds %struct.radeon_i2c_chan, ptr %call7.i.i, i32 0, i32 2
  %algo_data = getelementptr inbounds %struct.i2c_adapter, ptr %call7.i.i, i32 0, i32 3
  %27 = ptrtoint ptr %algo_data to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %bit, ptr %algo_data, align 4
  %pre_xfer = getelementptr inbounds %struct.radeon_i2c_chan, ptr %call7.i.i, i32 0, i32 2, i32 5
  %28 = ptrtoint ptr %pre_xfer to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr @pre_xfer, ptr %pre_xfer, align 8
  %post_xfer = getelementptr inbounds %struct.radeon_i2c_chan, ptr %call7.i.i, i32 0, i32 2, i32 6
  %29 = ptrtoint ptr %post_xfer to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr @post_xfer, ptr %post_xfer, align 4
  %setsda = getelementptr inbounds %struct.radeon_i2c_chan, ptr %call7.i.i, i32 0, i32 2, i32 1
  %30 = ptrtoint ptr %setsda to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr @set_data, ptr %setsda, align 8
  %setscl = getelementptr inbounds %struct.radeon_i2c_chan, ptr %call7.i.i, i32 0, i32 2, i32 2
  %31 = ptrtoint ptr %setscl to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr @set_clock, ptr %setscl, align 4
  %getsda = getelementptr inbounds %struct.radeon_i2c_chan, ptr %call7.i.i, i32 0, i32 2, i32 3
  %32 = ptrtoint ptr %getsda to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr @get_data, ptr %getsda, align 8
  %getscl = getelementptr inbounds %struct.radeon_i2c_chan, ptr %call7.i.i, i32 0, i32 2, i32 4
  %33 = ptrtoint ptr %getscl to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr @get_clock, ptr %getscl, align 4
  %udelay = getelementptr inbounds %struct.radeon_i2c_chan, ptr %call7.i.i, i32 0, i32 2, i32 7
  %34 = ptrtoint ptr %udelay to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 10, ptr %udelay, align 8
  %call.i = tail call i32 @jiffies_to_usecs(i32 noundef 1073741822) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 2200, i32 %call.i)
  %cmp.i = icmp ult i32 %call.i, 2200
  %spec.select.i = select i1 %cmp.i, i32 1073741822, i32 1
  %timeout = getelementptr inbounds %struct.radeon_i2c_chan, ptr %call7.i.i, i32 0, i32 2, i32 8
  %35 = ptrtoint ptr %timeout to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %spec.select.i, ptr %timeout, align 4
  %36 = ptrtoint ptr %bit to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %call7.i.i, ptr %bit, align 4
  %call70 = tail call i32 @i2c_bit_add_bus(ptr noundef nonnull %call7.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call70)
  %tobool71.not = icmp eq i32 %call70, 0
  br i1 %tobool71.not, label %if.else53.cleanup_crit_edge, label %if.then72

if.else53.cleanup_crit_edge:                      ; preds = %if.else53
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then72:                                        ; preds = %if.else53
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.3, ptr noundef %name) #9
  br label %out_free

out_free:                                         ; preds = %if.then72, %if.then41.out_free_crit_edge, %if.then24.out_free_crit_edge
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #9
  br label %cleanup

cleanup:                                          ; preds = %out_free, %if.else53.cleanup_crit_edge, %if.then41.cleanup_crit_edge, %if.then24.cleanup_crit_edge, %if.end.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %out_free ], [ null, %land.lhs.true.cleanup_crit_edge ], [ null, %if.end.cleanup_crit_edge ], [ %call7.i.i, %if.then41.cleanup_crit_edge ], [ %call7.i.i, %if.else53.cleanup_crit_edge ], [ %call7.i.i, %if.then24.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_add_adapter(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pre_xfer(ptr nocapture noundef readonly %i2c_adap) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %i2c_adap, i32 0, i32 9, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %dev = getelementptr inbounds %struct.radeon_i2c_chan, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 8
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev_private, align 4
  %mutex = getelementptr inbounds %struct.radeon_i2c_chan, ptr %1, i32 0, i32 6
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #9
  %hw_capable = getelementptr inbounds %struct.radeon_i2c_chan, ptr %1, i32 0, i32 3, i32 3
  %6 = ptrtoint ptr %hw_capable to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %hw_capable, align 4, !range !47
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  br i1 %tobool.not, label %entry.if.end21_crit_edge, label %if.then

entry.if.end21_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end21

if.then:                                          ; preds = %entry
  %family = getelementptr inbounds %struct.radeon_device, ptr %5, i32 0, i32 6
  %8 = ptrtoint ptr %family to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %family, align 4
  %10 = add i32 %9, -18
  call void @__sanitizer_cov_trace_const_cmp4(i32 -13, i32 %10)
  %11 = icmp ult i32 %10, -13
  br i1 %11, label %if.then.if.end21_crit_edge, label %if.then4

if.then.if.end21_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end21

if.then4:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %9)
  %cmp6 = icmp ugt i32 %9, 10
  %.off = add nsw i32 %9, -9
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off)
  %switch = icmp ult i32 %.off, 2
  %spec.select = select i1 %switch, i32 100, i32 108
  %reg.0 = select i1 %cmp6, i32 104, i32 %spec.select
  %dc_hw_i2c_mutex = getelementptr inbounds %struct.radeon_device, ptr %5, i32 0, i32 92
  tail call void @mutex_lock_nested(ptr noundef %dc_hw_i2c_mutex, i32 noundef 0) #9
  %a_clk_reg = getelementptr inbounds %struct.radeon_i2c_chan, ptr %1, i32 0, i32 3, i32 7
  %12 = ptrtoint ptr %a_clk_reg to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %a_clk_reg, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %reg.0)
  %cmp15 = icmp eq i32 %13, %reg.0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  tail call void @arm_heavy_mb() #9
  %rmmio.i = getelementptr inbounds %struct.radeon_device, ptr %5, i32 0, i32 31
  %14 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %15, i32 736
  br i1 %cmp15, label %if.then16, label %if.else17

if.then16:                                        ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 536870912) #9, !srcloc !49
  br label %if.end18

if.else17:                                        ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 805306368) #9, !srcloc !49
  br label %if.end18

if.end18:                                         ; preds = %if.else17, %if.then16
  tail call void @mutex_unlock(ptr noundef %dc_hw_i2c_mutex) #9
  br label %if.end21

if.end21:                                         ; preds = %if.end18, %if.then.if.end21_crit_edge, %entry.if.end21_crit_edge
  %family22 = getelementptr inbounds %struct.radeon_device, ptr %5, i32 0, i32 6
  %16 = ptrtoint ptr %family22 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %family22, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 30, i32 %17)
  %cmp23 = icmp ugt i32 %17, 30
  br i1 %cmp23, label %land.lhs.true24, label %if.end21.if.end30_crit_edge

if.end21.if.end30_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end30

land.lhs.true24:                                  ; preds = %if.end21
  %18 = ptrtoint ptr %hw_capable to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %hw_capable, align 4, !range !47
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool26.not = icmp eq i8 %19, 0
  br i1 %tobool26.not, label %land.lhs.true24.if.end30_crit_edge, label %if.then27

land.lhs.true24.if.end30_crit_edge:               ; preds = %land.lhs.true24
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end30

if.then27:                                        ; preds = %land.lhs.true24
  %mask_clk_reg = getelementptr inbounds %struct.radeon_i2c_chan, ptr %1, i32 0, i32 3, i32 5
  %20 = ptrtoint ptr %mask_clk_reg to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %mask_clk_reg, align 4
  %rmmio_size.i119 = getelementptr inbounds %struct.radeon_device, ptr %5, i32 0, i32 18
  %22 = ptrtoint ptr %rmmio_size.i119 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %rmmio_size.i119, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %21)
  %cmp.i120 = icmp ugt i32 %23, %21
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %21)
  %cmp1.i = icmp ult i32 %21, 65536
  %or.cond.i = or i1 %cmp1.i, %cmp.i120
  br i1 %or.cond.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #11
  %rmmio.i121 = getelementptr inbounds %struct.radeon_device, ptr %5, i32 0, i32 31
  %24 = ptrtoint ptr %rmmio.i121 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %rmmio.i121, align 4
  %add.ptr.i122 = getelementptr i8, ptr %25, i32 %21
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i122) #9, !srcloc !50
  %27 = tail call i32 @llvm.bswap.i32(i32 %26) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !51
  br label %r100_mm_rreg.exit

if.else.i:                                        ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #11
  %call3.i = tail call i32 @r100_mm_rreg_slow(ptr noundef %5, i32 noundef %21) #9
  br label %r100_mm_rreg.exit

r100_mm_rreg.exit:                                ; preds = %if.else.i, %if.then.i
  %retval.0.i = phi i32 [ %call3.i, %if.else.i ], [ %27, %if.then.i ]
  %and = and i32 %retval.0.i, -65537
  %28 = ptrtoint ptr %mask_clk_reg to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %mask_clk_reg, align 4
  %30 = ptrtoint ptr %rmmio_size.i119 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %rmmio_size.i119, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %31, i32 %29)
  %cmp.i124 = icmp ugt i32 %31, %29
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %29)
  %cmp1.i125 = icmp ult i32 %29, 65536
  %or.cond.i126 = or i1 %cmp1.i125, %cmp.i124
  br i1 %or.cond.i126, label %do.body.i, label %if.else.i129

do.body.i:                                        ; preds = %r100_mm_rreg.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !52
  tail call void @arm_heavy_mb() #9
  %32 = tail call i32 @llvm.bswap.i32(i32 %and) #9
  %rmmio.i127 = getelementptr inbounds %struct.radeon_device, ptr %5, i32 0, i32 31
  %33 = ptrtoint ptr %rmmio.i127 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %rmmio.i127, align 4
  %add.ptr.i128 = getelementptr i8, ptr %34, i32 %29
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i128, i32 %32) #9, !srcloc !49
  br label %if.end30

if.else.i129:                                     ; preds = %r100_mm_rreg.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @r100_mm_wreg_slow(ptr noundef %5, i32 noundef %29, i32 noundef %and) #9
  br label %if.end30

if.end30:                                         ; preds = %if.else.i129, %do.body.i, %land.lhs.true24.if.end30_crit_edge, %if.end21.if.end30_crit_edge
  %a_clk_reg31 = getelementptr inbounds %struct.radeon_i2c_chan, ptr %1, i32 0, i32 3, i32 7
  %35 = ptrtoint ptr %a_clk_reg31 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %a_clk_reg31, align 4
  %rmmio_size.i130 = getelementptr inbounds %struct.radeon_device, ptr %5, i32 0, i32 18
  %37 = ptrtoint ptr %rmmio_size.i130 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %rmmio_size.i130, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %38, i32 %36)
  %cmp.i131 = icmp ugt i32 %38, %36
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %36)
  %cmp1.i132 = icmp ult i32 %36, 65536
  %or.cond.i133 = or i1 %cmp1.i132, %cmp.i131
  br i1 %or.cond.i133, label %if.then.i136, label %if.else.i138

if.then.i136:                                     ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #11
  %rmmio.i134 = getelementptr inbounds %struct.radeon_device, ptr %5, i32 0, i32 31
  %39 = ptrtoint ptr %rmmio.i134 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %rmmio.i134, align 4
  %add.ptr.i135 = getelementptr i8, ptr %40, i32 %36
  %41 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i135) #9, !srcloc !50
  %42 = tail call i32 @llvm.bswap.i32(i32 %41) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !51
  br label %r100_mm_rreg.exit140

if.else.i138:                                     ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #11
  %call3.i137 = tail call i32 @r100_mm_rreg_slow(ptr noundef %5, i32 noundef %36) #9
  br label %r100_mm_rreg.exit140

r100_mm_rreg.exit140:                             ; preds = %if.else.i138, %if.then.i136
  %retval.0.i139 = phi i32 [ %call3.i137, %if.else.i138 ], [ %42, %if.then.i136 ]
  %a_clk_mask = getelementptr inbounds %struct.radeon_i2c_chan, ptr %1, i32 0, i32 3, i32 15
  %43 = ptrtoint ptr %a_clk_mask to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %a_clk_mask, align 4
  %neg = xor i32 %44, -1
  %and33 = and i32 %retval.0.i139, %neg
  %45 = ptrtoint ptr %a_clk_reg31 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %a_clk_reg31, align 4
  %47 = ptrtoint ptr %rmmio_size.i130 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %rmmio_size.i130, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %48, i32 %46)
  %cmp.i142 = icmp ugt i32 %48, %46
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %46)
  %cmp1.i143 = icmp ult i32 %46, 65536
  %or.cond.i144 = or i1 %cmp1.i143, %cmp.i142
  br i1 %or.cond.i144, label %do.body.i147, label %if.else.i148

do.body.i147:                                     ; preds = %r100_mm_rreg.exit140
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !52
  tail call void @arm_heavy_mb() #9
  %49 = tail call i32 @llvm.bswap.i32(i32 %and33) #9
  %rmmio.i145 = getelementptr inbounds %struct.radeon_device, ptr %5, i32 0, i32 31
  %50 = ptrtoint ptr %rmmio.i145 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %rmmio.i145, align 4
  %add.ptr.i146 = getelementptr i8, ptr %51, i32 %46
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i146, i32 %49) #9, !srcloc !49
  br label %r100_mm_wreg.exit149

if.else.i148:                                     ; preds = %r100_mm_rreg.exit140
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @r100_mm_wreg_slow(ptr noundef %5, i32 noundef %46, i32 noundef %and33) #9
  br label %r100_mm_wreg.exit149

r100_mm_wreg.exit149:                             ; preds = %if.else.i148, %do.body.i147
  %a_data_reg = getelementptr inbounds %struct.radeon_i2c_chan, ptr %1, i32 0, i32 3, i32 8
  %52 = ptrtoint ptr %a_data_reg to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %a_data_reg, align 4
  %54 = ptrtoint ptr %rmmio_size.i130 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %rmmio_size.i130, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %55, i32 %53)
  %cmp.i151 = icmp ugt i32 %55, %53
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %53)
  %cmp1.i152 = icmp ult i32 %53, 65536
  %or.cond.i153 = or i1 %cmp1.i152, %cmp.i151
  br i1 %or.cond.i153, label %if.then.i156, label %if.else.i158

if.then.i156:                                     ; preds = %r100_mm_wreg.exit149
  call void @__sanitizer_cov_trace_pc() #11
  %rmmio.i154 = getelementptr inbounds %struct.radeon_device, ptr %5, i32 0, i32 31
  %56 = ptrtoint ptr %rmmio.i154 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %rmmio.i154, align 4
  %add.ptr.i155 = getelementptr i8, ptr %57, i32 %53
  %58 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i155) #9, !srcloc !50
  %59 = tail call i32 @llvm.bswap.i32(i32 %58) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !51
  br label %r100_mm_rreg.exit160

if.else.i158:                                     ; preds = %r100_mm_wreg.exit149
  call void @__sanitizer_cov_trace_pc() #11
  %call3.i157 = tail call i32 @r100_mm_rreg_slow(ptr noundef %5, i32 noundef %53) #9
  br label %r100_mm_rreg.exit160

r100_mm_rreg.exit160:                             ; preds = %if.else.i158, %if.then.i156
  %retval.0.i159 = phi i32 [ %call3.i157, %if.else.i158 ], [ %59, %if.then.i156 ]
  %a_data_mask = getelementptr inbounds %struct.radeon_i2c_chan, ptr %1, i32 0, i32 3, i32 16
  %60 = ptrtoint ptr %a_data_mask to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %a_data_mask, align 4
  %neg36 = xor i32 %61, -1
  %and37 = and i32 %retval.0.i159, %neg36
  %62 = ptrtoint ptr %a_data_reg to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %a_data_reg, align 4
  %64 = ptrtoint ptr %rmmio_size.i130 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %rmmio_size.i130, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %65, i32 %63)
  %cmp.i162 = icmp ugt i32 %65, %63
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %63)
  %cmp1.i163 = icmp ult i32 %63, 65536
  %or.cond.i164 = or i1 %cmp1.i163, %cmp.i162
  br i1 %or.cond.i164, label %do.body.i167, label %if.else.i168

do.body.i167:                                     ; preds = %r100_mm_rreg.exit160
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !52
  tail call void @arm_heavy_mb() #9
  %66 = tail call i32 @llvm.bswap.i32(i32 %and37) #9
  %rmmio.i165 = getelementptr inbounds %struct.radeon_device, ptr %5, i32 0, i32 31
  %67 = ptrtoint ptr %rmmio.i165 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %rmmio.i165, align 4
  %add.ptr.i166 = getelementptr i8, ptr %68, i32 %63
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i166, i32 %66) #9, !srcloc !49
  br label %r100_mm_wreg.exit169

if.else.i168:                                     ; preds = %r100_mm_rreg.exit160
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @r100_mm_wreg_slow(ptr noundef %5, i32 noundef %63, i32 noundef %and37) #9
  br label %r100_mm_wreg.exit169

r100_mm_wreg.exit169:                             ; preds = %if.else.i168, %do.body.i167
  %en_clk_reg = getelementptr inbounds %struct.radeon_i2c_chan, ptr %1, i32 0, i32 3, i32 9
  %69 = ptrtoint ptr %en_clk_reg to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %en_clk_reg, align 4
  %71 = ptrtoint ptr %rmmio_size.i130 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %rmmio_size.i130, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %72, i32 %70)
  %cmp.i171 = icmp ugt i32 %72, %70
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %70)
  %cmp1.i172 = icmp ult i32 %70, 65536
  %or.cond.i173 = or i1 %cmp1.i172, %cmp.i171
  br i1 %or.cond.i173, label %if.then.i176, label %if.else.i178

if.then.i176:                                     ; preds = %r100_mm_wreg.exit169
  call void @__sanitizer_cov_trace_pc() #11
  %rmmio.i174 = getelementptr inbounds %struct.radeon_device, ptr %5, i32 0, i32 31
  %73 = ptrtoint ptr %rmmio.i174 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %rmmio.i174, align 4
  %add.ptr.i175 = getelementptr i8, ptr %74, i32 %70
  %75 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i175) #9, !srcloc !50
  %76 = tail call i32 @llvm.bswap.i32(i32 %75) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !51
  br label %r100_mm_rreg.exit180

if.else.i178:                                     ; preds = %r100_mm_wreg.exit169
  call void @__sanitizer_cov_trace_pc() #11
  %call3.i177 = tail call i32 @r100_mm_rreg_slow(ptr noundef %5, i32 noundef %70) #9
  br label %r100_mm_rreg.exit180

r100_mm_rreg.exit180:                             ; preds = %if.else.i178, %if.then.i176
  %retval.0.i179 = phi i32 [ %call3.i177, %if.else.i178 ], [ %76, %if.then.i176 ]
  %en_clk_mask = getelementptr inbounds %struct.radeon_i2c_chan, ptr %1, i32 0, i32 3, i32 17
  %77 = ptrtoint ptr %en_clk_mask to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %en_clk_mask, align 4
  %neg40 = xor i32 %78, -1
  %and41 = and i32 %retval.0.i179, %neg40
  %79 = ptrtoint ptr %en_clk_reg to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %en_clk_reg, align 4
  %81 = ptrtoint ptr %rmmio_size.i130 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %rmmio_size.i130, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %82, i32 %80)
  %cmp.i182 = icmp ugt i32 %82, %80
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %80)
  %cmp1.i183 = icmp ult i32 %80, 65536
  %or.cond.i184 = or i1 %cmp1.i183, %cmp.i182
  br i1 %or.cond.i184, label %do.body.i187, label %if.else.i188

do.body.i187:                                     ; preds = %r100_mm_rreg.exit180
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !52
  tail call void @arm_heavy_mb() #9
  %83 = tail call i32 @llvm.bswap.i32(i32 %and41) #9
  %rmmio.i185 = getelementptr inbounds %struct.radeon_device, ptr %5, i32 0, i32 31
  %84 = ptrtoint ptr %rmmio.i185 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %rmmio.i185, align 4
  %add.ptr.i186 = getelementptr i8, ptr %85, i32 %80
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i186, i32 %83) #9, !srcloc !49
  br label %r100_mm_wreg.exit189

if.else.i188:                                     ; preds = %r100_mm_rreg.exit180
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @r100_mm_wreg_slow(ptr noundef %5, i32 noundef %80, i32 noundef %and41) #9
  br label %r100_mm_wreg.exit189

r100_mm_wreg.exit189:                             ; preds = %if.else.i188, %do.body.i187
  %en_data_reg = getelementptr inbounds %struct.radeon_i2c_chan, ptr %1, i32 0, i32 3, i32 10
  %86 = ptrtoint ptr %en_data_reg to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %en_data_reg, align 4
  %88 = ptrtoint ptr %rmmio_size.i130 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %rmmio_size.i130, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %89, i32 %87)
  %cmp.i191 = icmp ugt i32 %89, %87
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %87)
  %cmp1.i192 = icmp ult i32 %87, 65536
  %or.cond.i193 = or i1 %cmp1.i192, %cmp.i191
  br i1 %or.cond.i193, label %if.then.i196, label %if.else.i198

if.then.i196:                                     ; preds = %r100_mm_wreg.exit189
  call void @__sanitizer_cov_trace_pc() #11
  %rmmio.i194 = getelementptr inbounds %struct.radeon_device, ptr %5, i32 0, i32 31
  %90 = ptrtoint ptr %rmmio.i194 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %rmmio.i194, align 4
  %add.ptr.i195 = getelementptr i8, ptr %91, i32 %87
  %92 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i195) #9, !srcloc !50
  %93 = tail call i32 @llvm.bswap.i32(i32 %92) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !51
  br label %r100_mm_rreg.exit200

if.else.i198:                                     ; preds = %r100_mm_wreg.exit189
  call void @__sanitizer_cov_trace_pc() #11
  %call3.i197 = tail call i32 @r100_mm_rreg_slow(ptr noundef %5, i32 noundef %87) #9
  br label %r100_mm_rreg.exit200

r100_mm_rreg.exit200:                             ; preds = %if.else.i198, %if.then.i196
  %retval.0.i199 = phi i32 [ %call3.i197, %if.else.i198 ], [ %93, %if.then.i196 ]
  %en_data_mask = getelementptr inbounds %struct.radeon_i2c_chan, ptr %1, i32 0, i32 3, i32 18
  %94 = ptrtoint ptr %en_data_mask to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %en_data_mask, align 4
  %neg44 = xor i32 %95, -1
  %and45 = and i32 %retval.0.i199, %neg44
  %96 = ptrtoint ptr %en_data_reg to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %en_data_reg, align 4
  %98 = ptrtoint ptr %rmmio_size.i130 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %rmmio_size.i130, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %99, i32 %97)
  %cmp.i202 = icmp ugt i32 %99, %97
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %97)
  %cmp1.i203 = icmp ult i32 %97, 65536
  %or.cond.i204 = or i1 %cmp1.i203, %cmp.i202
  br i1 %or.cond.i204, label %do.body.i207, label %if.else.i208

do.body.i207:                                     ; preds = %r100_mm_rreg.exit200
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !52
  tail call void @arm_heavy_mb() #9
  %100 = tail call i32 @llvm.bswap.i32(i32 %and45) #9
  %rmmio.i205 = getelementptr inbounds %struct.radeon_device, ptr %5, i32 0, i32 31
  %101 = ptrtoint ptr %rmmio.i205 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %rmmio.i205, align 4
  %add.ptr.i206 = getelementptr i8, ptr %102, i32 %97
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i206, i32 %100) #9, !srcloc !49
  br label %r100_mm_wreg.exit209

if.else.i208:                                     ; preds = %r100_mm_rreg.exit200
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @r100_mm_wreg_slow(ptr noundef %5, i32 noundef %97, i32 noundef %and45) #9
  br label %r100_mm_wreg.exit209

r100_mm_wreg.exit209:                             ; preds = %if.else.i208, %do.body.i207
  %mask_clk_reg47 = getelementptr inbounds %struct.radeon_i2c_chan, ptr %1, i32 0, i32 3, i32 5
  %103 = ptrtoint ptr %mask_clk_reg47 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %mask_clk_reg47, align 4
  %105 = ptrtoint ptr %rmmio_size.i130 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %rmmio_size.i130, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %106, i32 %104)
  %cmp.i211 = icmp ugt i32 %106, %104
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %104)
  %cmp1.i212 = icmp ult i32 %104, 65536
  %or.cond.i213 = or i1 %cmp1.i212, %cmp.i211
  br i1 %or.cond.i213, label %if.then.i216, label %if.else.i218

if.then.i216:                                     ; preds = %r100_mm_wreg.exit209
  call void @__sanitizer_cov_trace_pc() #11
  %rmmio.i214 = getelementptr inbounds %struct.radeon_device, ptr %5, i32 0, i32 31
  %107 = ptrtoint ptr %rmmio.i214 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %rmmio.i214, align 4
  %add.ptr.i215 = getelementptr i8, ptr %108, i32 %104
  %109 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i215) #9, !srcloc !50
  %110 = tail call i32 @llvm.bswap.i32(i32 %109) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !51
  br label %r100_mm_rreg.exit220

if.else.i218:                                     ; preds = %r100_mm_wreg.exit209
  call void @__sanitizer_cov_trace_pc() #11
  %call3.i217 = tail call i32 @r100_mm_rreg_slow(ptr noundef %5, i32 noundef %104) #9
  br label %r100_mm_rreg.exit220

r100_mm_rreg.exit220:                             ; preds = %if.else.i218, %if.then.i216
  %retval.0.i219 = phi i32 [ %call3.i217, %if.else.i218 ], [ %110, %if.then.i216 ]
  %mask_clk_mask = getelementptr inbounds %struct.radeon_i2c_chan, ptr %1, i32 0, i32 3, i32 13
  %111 = ptrtoint ptr %mask_clk_mask to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %mask_clk_mask, align 4
  %or = or i32 %112, %retval.0.i219
  %113 = ptrtoint ptr %mask_clk_reg47 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %mask_clk_reg47, align 4
  %115 = ptrtoint ptr %rmmio_size.i130 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %rmmio_size.i130, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %116, i32 %114)
  %cmp.i222 = icmp ugt i32 %116, %114
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %114)
  %cmp1.i223 = icmp ult i32 %114, 65536
  %or.cond.i224 = or i1 %cmp1.i223, %cmp.i222
  br i1 %or.cond.i224, label %do.body.i227, label %if.else.i228

do.body.i227:                                     ; preds = %r100_mm_rreg.exit220
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !52
  tail call void @arm_heavy_mb() #9
  %117 = tail call i32 @llvm.bswap.i32(i32 %or) #9
  %rmmio.i225 = getelementptr inbounds %struct.radeon_device, ptr %5, i32 0, i32 31
  %118 = ptrtoint ptr %rmmio.i225 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %rmmio.i225, align 4
  %add.ptr.i226 = getelementptr i8, ptr %119, i32 %114
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i226, i32 %117) #9, !srcloc !49
  br label %r100_mm_wreg.exit229

if.else.i228:                                     ; preds = %r100_mm_rreg.exit220
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @r100_mm_wreg_slow(ptr noundef %5, i32 noundef %114, i32 noundef %or) #9
  br label %r100_mm_wreg.exit229

r100_mm_wreg.exit229:                             ; preds = %if.else.i228, %do.body.i227
  %120 = ptrtoint ptr %mask_clk_reg47 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %mask_clk_reg47, align 4
  %122 = ptrtoint ptr %rmmio_size.i130 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %rmmio_size.i130, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %123, i32 %121)
  %cmp.i231 = icmp ugt i32 %123, %121
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %121)
  %cmp1.i232 = icmp ult i32 %121, 65536
  %or.cond.i233 = or i1 %cmp1.i232, %cmp.i231
  br i1 %or.cond.i233, label %if.then.i236, label %if.else.i238

if.then.i236:                                     ; preds = %r100_mm_wreg.exit229
  call void @__sanitizer_cov_trace_pc() #11
  %rmmio.i234 = getelementptr inbounds %struct.radeon_device, ptr %5, i32 0, i32 31
  %124 = ptrtoint ptr %rmmio.i234 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %rmmio.i234, align 4
  %add.ptr.i235 = getelementptr i8, ptr %125, i32 %121
  %126 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i235) #9, !srcloc !50
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !51
  br label %r100_mm_rreg.exit240

if.else.i238:                                     ; preds = %r100_mm_wreg.exit229
  call void @__sanitizer_cov_trace_pc() #11
  %call3.i237 = tail call i32 @r100_mm_rreg_slow(ptr noundef %5, i32 noundef %121) #9
  br label %r100_mm_rreg.exit240

r100_mm_rreg.exit240:                             ; preds = %if.else.i238, %if.then.i236
  %mask_data_reg = getelementptr inbounds %struct.radeon_i2c_chan, ptr %1, i32 0, i32 3, i32 6
  %127 = ptrtoint ptr %mask_data_reg to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %mask_data_reg, align 4
  %129 = ptrtoint ptr %rmmio_size.i130 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %rmmio_size.i130, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %130, i32 %128)
  %cmp.i242 = icmp ugt i32 %130, %128
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %128)
  %cmp1.i243 = icmp ult i32 %128, 65536
  %or.cond.i244 = or i1 %cmp1.i243, %cmp.i242
  br i1 %or.cond.i244, label %if.then.i247, label %if.else.i249

if.then.i247:                                     ; preds = %r100_mm_rreg.exit240
  call void @__sanitizer_cov_trace_pc() #11
  %rmmio.i245 = getelementptr inbounds %struct.radeon_device, ptr %5, i32 0, i32 31
  %131 = ptrtoint ptr %rmmio.i245 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %rmmio.i245, align 4
  %add.ptr.i246 = getelementptr i8, ptr %132, i32 %128
  %133 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i246) #9, !srcloc !50
  %134 = tail call i32 @llvm.bswap.i32(i32 %133) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !51
  br label %r100_mm_rreg.exit251

if.else.i249:                                     ; preds = %r100_mm_rreg.exit240
  call void @__sanitizer_cov_trace_pc() #11
  %call3.i248 = tail call i32 @r100_mm_rreg_slow(ptr noundef %5, i32 noundef %128) #9
  br label %r100_mm_rreg.exit251

r100_mm_rreg.exit251:                             ; preds = %if.else.i249, %if.then.i247
  %retval.0.i250 = phi i32 [ %call3.i248, %if.else.i249 ], [ %134, %if.then.i247 ]
  %mask_data_mask = getelementptr inbounds %struct.radeon_i2c_chan, ptr %1, i32 0, i32 3, i32 14
  %135 = ptrtoint ptr %mask_data_mask to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %mask_data_mask, align 4
  %or53 = or i32 %136, %retval.0.i250
  %137 = ptrtoint ptr %mask_data_reg to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %mask_data_reg, align 4
  %139 = ptrtoint ptr %rmmio_size.i130 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %rmmio_size.i130, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %140, i32 %138)
  %cmp.i253 = icmp ugt i32 %140, %138
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %138)
  %cmp1.i254 = icmp ult i32 %138, 65536
  %or.cond.i255 = or i1 %cmp1.i254, %cmp.i253
  br i1 %or.cond.i255, label %do.body.i258, label %if.else.i259

do.body.i258:                                     ; preds = %r100_mm_rreg.exit251
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !52
  tail call void @arm_heavy_mb() #9
  %141 = tail call i32 @llvm.bswap.i32(i32 %or53) #9
  %rmmio.i256 = getelementptr inbounds %struct.radeon_device, ptr %5, i32 0, i32 31
  %142 = ptrtoint ptr %rmmio.i256 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %rmmio.i256, align 4
  %add.ptr.i257 = getelementptr i8, ptr %143, i32 %138
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i257, i32 %141) #9, !srcloc !49
  br label %r100_mm_wreg.exit260

if.else.i259:                                     ; preds = %r100_mm_rreg.exit251
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @r100_mm_wreg_slow(ptr noundef %5, i32 noundef %138, i32 noundef %or53) #9
  br label %r100_mm_wreg.exit260

r100_mm_wreg.exit260:                             ; preds = %if.else.i259, %do.body.i258
  %144 = ptrtoint ptr %mask_data_reg to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %mask_data_reg, align 4
  %146 = ptrtoint ptr %rmmio_size.i130 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %rmmio_size.i130, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %147, i32 %145)
  %cmp.i262 = icmp ugt i32 %147, %145
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %145)
  %cmp1.i263 = icmp ult i32 %145, 65536
  %or.cond.i264 = or i1 %cmp1.i263, %cmp.i262
  br i1 %or.cond.i264, label %if.then.i267, label %if.else.i269

if.then.i267:                                     ; preds = %r100_mm_wreg.exit260
  call void @__sanitizer_cov_trace_pc() #11
  %rmmio.i265 = getelementptr inbounds %struct.radeon_device, ptr %5, i32 0, i32 31
  %148 = ptrtoint ptr %rmmio.i265 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %rmmio.i265, align 4
  %add.ptr.i266 = getelementptr i8, ptr %149, i32 %145
  %150 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i266) #9, !srcloc !50
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !51
  br label %r100_mm_rreg.exit271

if.else.i269:                                     ; preds = %r100_mm_wreg.exit260
  call void @__sanitizer_cov_trace_pc() #11
  %call3.i268 = tail call i32 @r100_mm_rreg_slow(ptr noundef %5, i32 noundef %145) #9
  br label %r100_mm_rreg.exit271

r100_mm_rreg.exit271:                             ; preds = %if.else.i269, %if.then.i267
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @post_xfer(ptr nocapture noundef readonly %i2c_adap) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %i2c_adap, i32 0, i32 9, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %dev = getelementptr inbounds %struct.radeon_i2c_chan, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 8
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev_private, align 4
  %mask_clk_reg = getelementptr inbounds %struct.radeon_i2c_chan, ptr %1, i32 0, i32 3, i32 5
  %6 = ptrtoint ptr %mask_clk_reg to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %mask_clk_reg, align 4
  %rmmio_size.i = getelementptr inbounds %struct.radeon_device, ptr %5, i32 0, i32 18
  %8 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %7)
  %cmp.i = icmp ugt i32 %9, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %7)
  %cmp1.i = icmp ult i32 %7, 65536
  %or.cond.i = or i1 %cmp1.i, %cmp.i
  br i1 %or.cond.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %rmmio.i = getelementptr inbounds %struct.radeon_device, ptr %5, i32 0, i32 31
  %10 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %11, i32 %7
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !50
  %13 = tail call i32 @llvm.bswap.i32(i32 %12) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !51
  br label %r100_mm_rreg.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call3.i = tail call i32 @r100_mm_rreg_slow(ptr noundef %5, i32 noundef %7) #9
  br label %r100_mm_rreg.exit

r100_mm_rreg.exit:                                ; preds = %if.else.i, %if.then.i
  %retval.0.i = phi i32 [ %call3.i, %if.else.i ], [ %13, %if.then.i ]
  %mask_clk_mask = getelementptr inbounds %struct.radeon_i2c_chan, ptr %1, i32 0, i32 3, i32 13
  %14 = ptrtoint ptr %mask_clk_mask to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %mask_clk_mask, align 4
  %neg = xor i32 %15, -1
  %and = and i32 %retval.0.i, %neg
  %16 = ptrtoint ptr %mask_clk_reg to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %mask_clk_reg, align 4
  %18 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %17)
  %cmp.i28 = icmp ugt i32 %19, %17
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %17)
  %cmp1.i29 = icmp ult i32 %17, 65536
  %or.cond.i30 = or i1 %cmp1.i29, %cmp.i28
  br i1 %or.cond.i30, label %do.body.i, label %if.else.i33

do.body.i:                                        ; preds = %r100_mm_rreg.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !52
  tail call void @arm_heavy_mb() #9
  %20 = tail call i32 @llvm.bswap.i32(i32 %and) #9
  %rmmio.i31 = getelementptr inbounds %struct.radeon_device, ptr %5, i32 0, i32 31
  %21 = ptrtoint ptr %rmmio.i31 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %rmmio.i31, align 4
  %add.ptr.i32 = getelementptr i8, ptr %22, i32 %17
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i32, i32 %20) #9, !srcloc !49
  br label %r100_mm_wreg.exit

if.else.i33:                                      ; preds = %r100_mm_rreg.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @r100_mm_wreg_slow(ptr noundef %5, i32 noundef %17, i32 noundef %and) #9
  br label %r100_mm_wreg.exit

r100_mm_wreg.exit:                                ; preds = %if.else.i33, %do.body.i
  %23 = ptrtoint ptr %mask_clk_reg to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %mask_clk_reg, align 4
  %25 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %26, i32 %24)
  %cmp.i35 = icmp ugt i32 %26, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %24)
  %cmp1.i36 = icmp ult i32 %24, 65536
  %or.cond.i37 = or i1 %cmp1.i36, %cmp.i35
  br i1 %or.cond.i37, label %if.then.i40, label %if.else.i42

if.then.i40:                                      ; preds = %r100_mm_wreg.exit
  call void @__sanitizer_cov_trace_pc() #11
  %rmmio.i38 = getelementptr inbounds %struct.radeon_device, ptr %5, i32 0, i32 31
  %27 = ptrtoint ptr %rmmio.i38 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %rmmio.i38, align 4
  %add.ptr.i39 = getelementptr i8, ptr %28, i32 %24
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i39) #9, !srcloc !50
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !51
  br label %r100_mm_rreg.exit44

if.else.i42:                                      ; preds = %r100_mm_wreg.exit
  call void @__sanitizer_cov_trace_pc() #11
  %call3.i41 = tail call i32 @r100_mm_rreg_slow(ptr noundef %5, i32 noundef %24) #9
  br label %r100_mm_rreg.exit44

r100_mm_rreg.exit44:                              ; preds = %if.else.i42, %if.then.i40
  %mask_data_reg = getelementptr inbounds %struct.radeon_i2c_chan, ptr %1, i32 0, i32 3, i32 6
  %30 = ptrtoint ptr %mask_data_reg to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %mask_data_reg, align 4
  %32 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %33, i32 %31)
  %cmp.i46 = icmp ugt i32 %33, %31
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %31)
  %cmp1.i47 = icmp ult i32 %31, 65536
  %or.cond.i48 = or i1 %cmp1.i47, %cmp.i46
  br i1 %or.cond.i48, label %if.then.i51, label %if.else.i53

if.then.i51:                                      ; preds = %r100_mm_rreg.exit44
  call void @__sanitizer_cov_trace_pc() #11
  %rmmio.i49 = getelementptr inbounds %struct.radeon_device, ptr %5, i32 0, i32 31
  %34 = ptrtoint ptr %rmmio.i49 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %rmmio.i49, align 4
  %add.ptr.i50 = getelementptr i8, ptr %35, i32 %31
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i50) #9, !srcloc !50
  %37 = tail call i32 @llvm.bswap.i32(i32 %36) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !51
  br label %r100_mm_rreg.exit55

if.else.i53:                                      ; preds = %r100_mm_rreg.exit44
  call void @__sanitizer_cov_trace_pc() #11
  %call3.i52 = tail call i32 @r100_mm_rreg_slow(ptr noundef %5, i32 noundef %31) #9
  br label %r100_mm_rreg.exit55

r100_mm_rreg.exit55:                              ; preds = %if.else.i53, %if.then.i51
  %retval.0.i54 = phi i32 [ %call3.i52, %if.else.i53 ], [ %37, %if.then.i51 ]
  %mask_data_mask = getelementptr inbounds %struct.radeon_i2c_chan, ptr %1, i32 0, i32 3, i32 14
  %38 = ptrtoint ptr %mask_data_mask to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %mask_data_mask, align 4
  %neg7 = xor i32 %39, -1
  %and8 = and i32 %retval.0.i54, %neg7
  %40 = ptrtoint ptr %mask_data_reg to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %mask_data_reg, align 4
  %42 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %43, i32 %41)
  %cmp.i57 = icmp ugt i32 %43, %41
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %41)
  %cmp1.i58 = icmp ult i32 %41, 65536
  %or.cond.i59 = or i1 %cmp1.i58, %cmp.i57
  br i1 %or.cond.i59, label %do.body.i62, label %if.else.i63

do.body.i62:                                      ; preds = %r100_mm_rreg.exit55
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !52
  tail call void @arm_heavy_mb() #9
  %44 = tail call i32 @llvm.bswap.i32(i32 %and8) #9
  %rmmio.i60 = getelementptr inbounds %struct.radeon_device, ptr %5, i32 0, i32 31
  %45 = ptrtoint ptr %rmmio.i60 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %rmmio.i60, align 4
  %add.ptr.i61 = getelementptr i8, ptr %46, i32 %41
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i61, i32 %44) #9, !srcloc !49
  br label %r100_mm_wreg.exit64

if.else.i63:                                      ; preds = %r100_mm_rreg.exit55
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @r100_mm_wreg_slow(ptr noundef %5, i32 noundef %41, i32 noundef %and8) #9
  br label %r100_mm_wreg.exit64

r100_mm_wreg.exit64:                              ; preds = %if.else.i63, %do.body.i62
  %47 = ptrtoint ptr %mask_data_reg to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %mask_data_reg, align 4
  %49 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %50, i32 %48)
  %cmp.i66 = icmp ugt i32 %50, %48
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %48)
  %cmp1.i67 = icmp ult i32 %48, 65536
  %or.cond.i68 = or i1 %cmp1.i67, %cmp.i66
  br i1 %or.cond.i68, label %if.then.i71, label %if.else.i73

if.then.i71:                                      ; preds = %r100_mm_wreg.exit64
  call void @__sanitizer_cov_trace_pc() #11
  %rmmio.i69 = getelementptr inbounds %struct.radeon_device, ptr %5, i32 0, i32 31
  %51 = ptrtoint ptr %rmmio.i69 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %rmmio.i69, align 4
  %add.ptr.i70 = getelementptr i8, ptr %52, i32 %48
  %53 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i70) #9, !srcloc !50
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !51
  br label %r100_mm_rreg.exit75

if.else.i73:                                      ; preds = %r100_mm_wreg.exit64
  call void @__sanitizer_cov_trace_pc() #11
  %call3.i72 = tail call i32 @r100_mm_rreg_slow(ptr noundef %5, i32 noundef %48) #9
  br label %r100_mm_rreg.exit75

r100_mm_rreg.exit75:                              ; preds = %if.else.i73, %if.then.i71
  %mutex = getelementptr inbounds %struct.radeon_i2c_chan, ptr %1, i32 0, i32 6
  tail call void @mutex_unlock(ptr noundef %mutex) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @set_data(ptr nocapture noundef readonly %i2c_priv, i32 noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.radeon_i2c_chan, ptr %i2c_priv, i32 0, i32 1
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 8
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_private, align 4
  %en_data_reg = getelementptr inbounds %struct.radeon_i2c_chan, ptr %i2c_priv, i32 0, i32 3, i32 10
  %4 = ptrtoint ptr %en_data_reg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %en_data_reg, align 4
  %rmmio_size.i = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 18
  %6 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %5)
  %cmp.i = icmp ugt i32 %7, %5
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %5)
  %cmp1.i = icmp ult i32 %5, 65536
  %or.cond.i = or i1 %cmp1.i, %cmp.i
  br i1 %or.cond.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %rmmio.i = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 31
  %8 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %9, i32 %5
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !50
  %11 = tail call i32 @llvm.bswap.i32(i32 %10) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !51
  br label %r100_mm_rreg.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call3.i = tail call i32 @r100_mm_rreg_slow(ptr noundef %3, i32 noundef %5) #9
  br label %r100_mm_rreg.exit

r100_mm_rreg.exit:                                ; preds = %if.else.i, %if.then.i
  %retval.0.i = phi i32 [ %call3.i, %if.else.i ], [ %11, %if.then.i ]
  %en_data_mask = getelementptr inbounds %struct.radeon_i2c_chan, ptr %i2c_priv, i32 0, i32 3, i32 18
  %12 = ptrtoint ptr %en_data_mask to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %en_data_mask, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %data)
  %tobool.not = icmp eq i32 %data, 0
  %spec.select = select i1 %tobool.not, i32 %13, i32 0
  %neg = xor i32 %13, -1
  %and = and i32 %retval.0.i, %neg
  %or = or i32 %and, %spec.select
  %14 = ptrtoint ptr %en_data_reg to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %en_data_reg, align 4
  %16 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %15)
  %cmp.i11 = icmp ugt i32 %17, %15
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %15)
  %cmp1.i12 = icmp ult i32 %15, 65536
  %or.cond.i13 = or i1 %cmp1.i12, %cmp.i11
  br i1 %or.cond.i13, label %do.body.i, label %if.else.i16

do.body.i:                                        ; preds = %r100_mm_rreg.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !52
  tail call void @arm_heavy_mb() #9
  %18 = tail call i32 @llvm.bswap.i32(i32 %or) #9
  %rmmio.i14 = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 31
  %19 = ptrtoint ptr %rmmio.i14 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %rmmio.i14, align 4
  %add.ptr.i15 = getelementptr i8, ptr %20, i32 %15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i15, i32 %18) #9, !srcloc !49
  br label %r100_mm_wreg.exit

if.else.i16:                                      ; preds = %r100_mm_rreg.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @r100_mm_wreg_slow(ptr noundef %3, i32 noundef %15, i32 noundef %or) #9
  br label %r100_mm_wreg.exit

r100_mm_wreg.exit:                                ; preds = %if.else.i16, %do.body.i
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @set_clock(ptr nocapture noundef readonly %i2c_priv, i32 noundef %clock) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.radeon_i2c_chan, ptr %i2c_priv, i32 0, i32 1
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 8
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_private, align 4
  %en_clk_reg = getelementptr inbounds %struct.radeon_i2c_chan, ptr %i2c_priv, i32 0, i32 3, i32 9
  %4 = ptrtoint ptr %en_clk_reg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %en_clk_reg, align 4
  %rmmio_size.i = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 18
  %6 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %5)
  %cmp.i = icmp ugt i32 %7, %5
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %5)
  %cmp1.i = icmp ult i32 %5, 65536
  %or.cond.i = or i1 %cmp1.i, %cmp.i
  br i1 %or.cond.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %rmmio.i = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 31
  %8 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %9, i32 %5
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !50
  %11 = tail call i32 @llvm.bswap.i32(i32 %10) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !51
  br label %r100_mm_rreg.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call3.i = tail call i32 @r100_mm_rreg_slow(ptr noundef %3, i32 noundef %5) #9
  br label %r100_mm_rreg.exit

r100_mm_rreg.exit:                                ; preds = %if.else.i, %if.then.i
  %retval.0.i = phi i32 [ %call3.i, %if.else.i ], [ %11, %if.then.i ]
  %en_clk_mask = getelementptr inbounds %struct.radeon_i2c_chan, ptr %i2c_priv, i32 0, i32 3, i32 17
  %12 = ptrtoint ptr %en_clk_mask to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %en_clk_mask, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %clock)
  %tobool.not = icmp eq i32 %clock, 0
  %spec.select = select i1 %tobool.not, i32 %13, i32 0
  %neg = xor i32 %13, -1
  %and = and i32 %retval.0.i, %neg
  %or = or i32 %and, %spec.select
  %14 = ptrtoint ptr %en_clk_reg to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %en_clk_reg, align 4
  %16 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %15)
  %cmp.i11 = icmp ugt i32 %17, %15
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %15)
  %cmp1.i12 = icmp ult i32 %15, 65536
  %or.cond.i13 = or i1 %cmp1.i12, %cmp.i11
  br i1 %or.cond.i13, label %do.body.i, label %if.else.i16

do.body.i:                                        ; preds = %r100_mm_rreg.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !52
  tail call void @arm_heavy_mb() #9
  %18 = tail call i32 @llvm.bswap.i32(i32 %or) #9
  %rmmio.i14 = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 31
  %19 = ptrtoint ptr %rmmio.i14 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %rmmio.i14, align 4
  %add.ptr.i15 = getelementptr i8, ptr %20, i32 %15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i15, i32 %18) #9, !srcloc !49
  br label %r100_mm_wreg.exit

if.else.i16:                                      ; preds = %r100_mm_rreg.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @r100_mm_wreg_slow(ptr noundef %3, i32 noundef %15, i32 noundef %or) #9
  br label %r100_mm_wreg.exit

r100_mm_wreg.exit:                                ; preds = %if.else.i16, %do.body.i
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @get_data(ptr nocapture noundef readonly %i2c_priv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.radeon_i2c_chan, ptr %i2c_priv, i32 0, i32 1
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 8
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_private, align 4
  %y_data_reg = getelementptr inbounds %struct.radeon_i2c_chan, ptr %i2c_priv, i32 0, i32 3, i32 12
  %4 = ptrtoint ptr %y_data_reg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %y_data_reg, align 4
  %rmmio_size.i = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 18
  %6 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %5)
  %cmp.i = icmp ugt i32 %7, %5
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %5)
  %cmp1.i = icmp ult i32 %5, 65536
  %or.cond.i = or i1 %cmp1.i, %cmp.i
  br i1 %or.cond.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %rmmio.i = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 31
  %8 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %9, i32 %5
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !50
  %11 = tail call i32 @llvm.bswap.i32(i32 %10) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !51
  br label %r100_mm_rreg.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call3.i = tail call i32 @r100_mm_rreg_slow(ptr noundef %3, i32 noundef %5) #9
  br label %r100_mm_rreg.exit

r100_mm_rreg.exit:                                ; preds = %if.else.i, %if.then.i
  %retval.0.i = phi i32 [ %call3.i, %if.else.i ], [ %11, %if.then.i ]
  %y_data_mask = getelementptr inbounds %struct.radeon_i2c_chan, ptr %i2c_priv, i32 0, i32 3, i32 20
  %12 = ptrtoint ptr %y_data_mask to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %y_data_mask, align 4
  %and = and i32 %13, %retval.0.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp = icmp ne i32 %and, 0
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @get_clock(ptr nocapture noundef readonly %i2c_priv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.radeon_i2c_chan, ptr %i2c_priv, i32 0, i32 1
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 8
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_private, align 4
  %y_clk_reg = getelementptr inbounds %struct.radeon_i2c_chan, ptr %i2c_priv, i32 0, i32 3, i32 11
  %4 = ptrtoint ptr %y_clk_reg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %y_clk_reg, align 4
  %rmmio_size.i = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 18
  %6 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %5)
  %cmp.i = icmp ugt i32 %7, %5
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %5)
  %cmp1.i = icmp ult i32 %5, 65536
  %or.cond.i = or i1 %cmp1.i, %cmp.i
  br i1 %or.cond.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %rmmio.i = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 31
  %8 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %9, i32 %5
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !50
  %11 = tail call i32 @llvm.bswap.i32(i32 %10) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !51
  br label %r100_mm_rreg.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call3.i = tail call i32 @r100_mm_rreg_slow(ptr noundef %3, i32 noundef %5) #9
  br label %r100_mm_rreg.exit

r100_mm_rreg.exit:                                ; preds = %if.else.i, %if.then.i
  %retval.0.i = phi i32 [ %call3.i, %if.else.i ], [ %11, %if.then.i ]
  %y_clk_mask = getelementptr inbounds %struct.radeon_i2c_chan, ptr %i2c_priv, i32 0, i32 3, i32 19
  %12 = ptrtoint ptr %y_clk_mask to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %y_clk_mask, align 4
  %and = and i32 %13, %retval.0.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp = icmp ne i32 %and, 0
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_bit_add_bus(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_err(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @radeon_i2c_destroy(ptr noundef %i2c) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %i2c, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end:                                           ; preds = %entry
  %has_aux = getelementptr inbounds %struct.radeon_i2c_chan, ptr %i2c, i32 0, i32 5
  %0 = ptrtoint ptr %has_aux to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %has_aux, align 8, !range !47
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool1.not = icmp eq i8 %1, 0
  br i1 %tobool1.not, label %if.end.if.end16_crit_edge, label %do.end, !prof !53

if.end.if.end16_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end16

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 980, i32 noundef 9, ptr noundef null) #9
  br label %if.end16

if.end16:                                         ; preds = %do.end, %if.end.if.end16_crit_edge
  tail call void @i2c_del_adapter(ptr noundef nonnull %i2c) #9
  tail call void @kfree(ptr noundef nonnull %i2c) #9
  br label %return

return:                                           ; preds = %if.end16, %entry.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_adapter(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @radeon_i2c_init(ptr noundef %rdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @radeon_hw_i2c to i32))
  %0 = load i32, ptr @radeon_hw_i2c, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5) #13
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %is_atom_bios = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 14
  %1 = ptrtoint ptr %is_atom_bios to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %is_atom_bios, align 4, !range !47
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool1.not = icmp eq i8 %2, 0
  br i1 %tobool1.not, label %if.else, label %if.then2

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @radeon_atombios_i2c_init(ptr noundef %rdev) #9
  br label %if.end3

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @radeon_combios_i2c_init(ptr noundef %rdev) #9
  br label %if.end3

if.end3:                                          ; preds = %if.else, %if.then2
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @radeon_atombios_i2c_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @radeon_combios_i2c_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @radeon_i2c_fini(ptr nocapture noundef %rdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %i.011 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 99, i32 %i.011
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.end.i

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.end.i:                                         ; preds = %for.body
  %has_aux.i = getelementptr inbounds %struct.radeon_i2c_chan, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %has_aux.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %has_aux.i, align 8, !range !47
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool1.not.i = icmp eq i8 %3, 0
  br i1 %tobool1.not.i, label %if.end.i.radeon_i2c_destroy.exit_crit_edge, label %do.end.i, !prof !53

if.end.i.radeon_i2c_destroy.exit_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %radeon_i2c_destroy.exit

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 980, i32 noundef 9, ptr noundef null) #9
  br label %radeon_i2c_destroy.exit

radeon_i2c_destroy.exit:                          ; preds = %do.end.i, %if.end.i.radeon_i2c_destroy.exit_crit_edge
  tail call void @i2c_del_adapter(ptr noundef nonnull %1) #9
  tail call void @kfree(ptr noundef nonnull %1) #9
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %radeon_i2c_destroy.exit, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.011, 1
  %exitcond.not = icmp eq i32 %inc, 16
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @radeon_i2c_add(ptr nocapture noundef %rdev, ptr nocapture noundef readonly %rec, ptr noundef %name) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %ddev = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 1
  %0 = ptrtoint ptr %ddev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ddev, align 4
  %arrayidx = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 99, i32 0
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.then_crit_edge, label %for.cond

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

for.cond:                                         ; preds = %entry
  %arrayidx.1 = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 99, i32 1
  %4 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx.1, align 4
  %tobool.not.1 = icmp eq ptr %5, null
  br i1 %tobool.not.1, label %for.cond.if.then_crit_edge, label %for.cond.1

for.cond.if.then_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

for.cond.1:                                       ; preds = %for.cond
  %arrayidx.2 = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 99, i32 2
  %6 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx.2, align 4
  %tobool.not.2 = icmp eq ptr %7, null
  br i1 %tobool.not.2, label %for.cond.1.if.then_crit_edge, label %for.cond.2

for.cond.1.if.then_crit_edge:                     ; preds = %for.cond.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

for.cond.2:                                       ; preds = %for.cond.1
  %arrayidx.3 = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 99, i32 3
  %8 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx.3, align 4
  %tobool.not.3 = icmp eq ptr %9, null
  br i1 %tobool.not.3, label %for.cond.2.if.then_crit_edge, label %for.cond.3

for.cond.2.if.then_crit_edge:                     ; preds = %for.cond.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

for.cond.3:                                       ; preds = %for.cond.2
  %arrayidx.4 = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 99, i32 4
  %10 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx.4, align 4
  %tobool.not.4 = icmp eq ptr %11, null
  br i1 %tobool.not.4, label %for.cond.3.if.then_crit_edge, label %for.cond.4

for.cond.3.if.then_crit_edge:                     ; preds = %for.cond.3
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

for.cond.4:                                       ; preds = %for.cond.3
  %arrayidx.5 = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 99, i32 5
  %12 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx.5, align 4
  %tobool.not.5 = icmp eq ptr %13, null
  br i1 %tobool.not.5, label %for.cond.4.if.then_crit_edge, label %for.cond.5

for.cond.4.if.then_crit_edge:                     ; preds = %for.cond.4
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

for.cond.5:                                       ; preds = %for.cond.4
  %arrayidx.6 = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 99, i32 6
  %14 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx.6, align 4
  %tobool.not.6 = icmp eq ptr %15, null
  br i1 %tobool.not.6, label %for.cond.5.if.then_crit_edge, label %for.cond.6

for.cond.5.if.then_crit_edge:                     ; preds = %for.cond.5
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

for.cond.6:                                       ; preds = %for.cond.5
  %arrayidx.7 = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 99, i32 7
  %16 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx.7, align 4
  %tobool.not.7 = icmp eq ptr %17, null
  br i1 %tobool.not.7, label %for.cond.6.if.then_crit_edge, label %for.cond.7

for.cond.6.if.then_crit_edge:                     ; preds = %for.cond.6
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

for.cond.7:                                       ; preds = %for.cond.6
  %arrayidx.8 = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 99, i32 8
  %18 = ptrtoint ptr %arrayidx.8 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx.8, align 4
  %tobool.not.8 = icmp eq ptr %19, null
  br i1 %tobool.not.8, label %for.cond.7.if.then_crit_edge, label %for.cond.8

for.cond.7.if.then_crit_edge:                     ; preds = %for.cond.7
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

for.cond.8:                                       ; preds = %for.cond.7
  %arrayidx.9 = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 99, i32 9
  %20 = ptrtoint ptr %arrayidx.9 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx.9, align 4
  %tobool.not.9 = icmp eq ptr %21, null
  br i1 %tobool.not.9, label %for.cond.8.if.then_crit_edge, label %for.cond.9

for.cond.8.if.then_crit_edge:                     ; preds = %for.cond.8
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

for.cond.9:                                       ; preds = %for.cond.8
  %arrayidx.10 = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 99, i32 10
  %22 = ptrtoint ptr %arrayidx.10 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx.10, align 4
  %tobool.not.10 = icmp eq ptr %23, null
  br i1 %tobool.not.10, label %for.cond.9.if.then_crit_edge, label %for.cond.10

for.cond.9.if.then_crit_edge:                     ; preds = %for.cond.9
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

for.cond.10:                                      ; preds = %for.cond.9
  %arrayidx.11 = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 99, i32 11
  %24 = ptrtoint ptr %arrayidx.11 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx.11, align 4
  %tobool.not.11 = icmp eq ptr %25, null
  br i1 %tobool.not.11, label %for.cond.10.if.then_crit_edge, label %for.cond.11

for.cond.10.if.then_crit_edge:                    ; preds = %for.cond.10
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

for.cond.11:                                      ; preds = %for.cond.10
  %arrayidx.12 = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 99, i32 12
  %26 = ptrtoint ptr %arrayidx.12 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx.12, align 4
  %tobool.not.12 = icmp eq ptr %27, null
  br i1 %tobool.not.12, label %for.cond.11.if.then_crit_edge, label %for.cond.12

for.cond.11.if.then_crit_edge:                    ; preds = %for.cond.11
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

for.cond.12:                                      ; preds = %for.cond.11
  %arrayidx.13 = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 99, i32 13
  %28 = ptrtoint ptr %arrayidx.13 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %arrayidx.13, align 4
  %tobool.not.13 = icmp eq ptr %29, null
  br i1 %tobool.not.13, label %for.cond.12.if.then_crit_edge, label %for.cond.13

for.cond.12.if.then_crit_edge:                    ; preds = %for.cond.12
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

for.cond.13:                                      ; preds = %for.cond.12
  %arrayidx.14 = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 99, i32 14
  %30 = ptrtoint ptr %arrayidx.14 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %arrayidx.14, align 4
  %tobool.not.14 = icmp eq ptr %31, null
  br i1 %tobool.not.14, label %for.cond.13.if.then_crit_edge, label %for.cond.14

for.cond.13.if.then_crit_edge:                    ; preds = %for.cond.13
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

for.cond.14:                                      ; preds = %for.cond.13
  %arrayidx.15 = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 99, i32 15
  %32 = ptrtoint ptr %arrayidx.15 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %arrayidx.15, align 4
  %tobool.not.15 = icmp eq ptr %33, null
  br i1 %tobool.not.15, label %for.cond.14.if.then_crit_edge, label %for.cond.14.cleanup_crit_edge

for.cond.14.cleanup_crit_edge:                    ; preds = %for.cond.14
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.cond.14.if.then_crit_edge:                    ; preds = %for.cond.14
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

if.then:                                          ; preds = %for.cond.14.if.then_crit_edge, %for.cond.13.if.then_crit_edge, %for.cond.12.if.then_crit_edge, %for.cond.11.if.then_crit_edge, %for.cond.10.if.then_crit_edge, %for.cond.9.if.then_crit_edge, %for.cond.8.if.then_crit_edge, %for.cond.7.if.then_crit_edge, %for.cond.6.if.then_crit_edge, %for.cond.5.if.then_crit_edge, %for.cond.4.if.then_crit_edge, %for.cond.3.if.then_crit_edge, %for.cond.2.if.then_crit_edge, %for.cond.1.if.then_crit_edge, %for.cond.if.then_crit_edge, %entry.if.then_crit_edge
  %arrayidx.lcssa = phi ptr [ %arrayidx, %entry.if.then_crit_edge ], [ %arrayidx.1, %for.cond.if.then_crit_edge ], [ %arrayidx.2, %for.cond.1.if.then_crit_edge ], [ %arrayidx.3, %for.cond.2.if.then_crit_edge ], [ %arrayidx.4, %for.cond.3.if.then_crit_edge ], [ %arrayidx.5, %for.cond.4.if.then_crit_edge ], [ %arrayidx.6, %for.cond.5.if.then_crit_edge ], [ %arrayidx.7, %for.cond.6.if.then_crit_edge ], [ %arrayidx.8, %for.cond.7.if.then_crit_edge ], [ %arrayidx.9, %for.cond.8.if.then_crit_edge ], [ %arrayidx.10, %for.cond.9.if.then_crit_edge ], [ %arrayidx.11, %for.cond.10.if.then_crit_edge ], [ %arrayidx.12, %for.cond.11.if.then_crit_edge ], [ %arrayidx.13, %for.cond.12.if.then_crit_edge ], [ %arrayidx.14, %for.cond.13.if.then_crit_edge ], [ %arrayidx.15, %for.cond.14.if.then_crit_edge ]
  %call = tail call ptr @radeon_i2c_create(ptr noundef %1, ptr noundef %rec, ptr noundef %name)
  %34 = ptrtoint ptr %arrayidx.lcssa to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %call, ptr %arrayidx.lcssa, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then, %for.cond.14.cleanup_crit_edge
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local ptr @radeon_i2c_lookup(ptr nocapture noundef readonly %rdev, ptr nocapture noundef readonly %i2c_bus) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %i2c_id4 = getelementptr inbounds %struct.radeon_i2c_bus_rec, ptr %i2c_bus, i32 0, i32 1
  %arrayidx = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 99, i32 0
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.for.inc_crit_edge, label %land.lhs.true

entry.for.inc_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

land.lhs.true:                                    ; preds = %entry
  %i2c_id = getelementptr inbounds %struct.radeon_i2c_chan, ptr %1, i32 0, i32 3, i32 1
  %2 = ptrtoint ptr %i2c_id to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %i2c_id, align 1
  %4 = ptrtoint ptr %i2c_id4 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %i2c_id4, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %3, i8 %5)
  %cmp6 = icmp eq i8 %3, %5
  br i1 %cmp6, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.inc:                                          ; preds = %land.lhs.true.for.inc_crit_edge, %entry.for.inc_crit_edge
  %arrayidx.1 = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 99, i32 1
  %6 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx.1, align 4
  %tobool.not.1 = icmp eq ptr %7, null
  br i1 %tobool.not.1, label %for.inc.for.inc.1_crit_edge, label %land.lhs.true.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.1

land.lhs.true.1:                                  ; preds = %for.inc
  %i2c_id.1 = getelementptr inbounds %struct.radeon_i2c_chan, ptr %7, i32 0, i32 3, i32 1
  %8 = ptrtoint ptr %i2c_id.1 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %i2c_id.1, align 1
  %10 = ptrtoint ptr %i2c_id4 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %i2c_id4, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %9, i8 %11)
  %cmp6.1 = icmp eq i8 %9, %11
  br i1 %cmp6.1, label %land.lhs.true.1.cleanup_crit_edge, label %land.lhs.true.1.for.inc.1_crit_edge

land.lhs.true.1.for.inc.1_crit_edge:              ; preds = %land.lhs.true.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.1

land.lhs.true.1.cleanup_crit_edge:                ; preds = %land.lhs.true.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.inc.1:                                        ; preds = %land.lhs.true.1.for.inc.1_crit_edge, %for.inc.for.inc.1_crit_edge
  %arrayidx.2 = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 99, i32 2
  %12 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx.2, align 4
  %tobool.not.2 = icmp eq ptr %13, null
  br i1 %tobool.not.2, label %for.inc.1.for.inc.2_crit_edge, label %land.lhs.true.2

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.2

land.lhs.true.2:                                  ; preds = %for.inc.1
  %i2c_id.2 = getelementptr inbounds %struct.radeon_i2c_chan, ptr %13, i32 0, i32 3, i32 1
  %14 = ptrtoint ptr %i2c_id.2 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %i2c_id.2, align 1
  %16 = ptrtoint ptr %i2c_id4 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %i2c_id4, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %15, i8 %17)
  %cmp6.2 = icmp eq i8 %15, %17
  br i1 %cmp6.2, label %land.lhs.true.2.cleanup_crit_edge, label %land.lhs.true.2.for.inc.2_crit_edge

land.lhs.true.2.for.inc.2_crit_edge:              ; preds = %land.lhs.true.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.2

land.lhs.true.2.cleanup_crit_edge:                ; preds = %land.lhs.true.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.inc.2:                                        ; preds = %land.lhs.true.2.for.inc.2_crit_edge, %for.inc.1.for.inc.2_crit_edge
  %arrayidx.3 = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 99, i32 3
  %18 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx.3, align 4
  %tobool.not.3 = icmp eq ptr %19, null
  br i1 %tobool.not.3, label %for.inc.2.for.inc.3_crit_edge, label %land.lhs.true.3

for.inc.2.for.inc.3_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.3

land.lhs.true.3:                                  ; preds = %for.inc.2
  %i2c_id.3 = getelementptr inbounds %struct.radeon_i2c_chan, ptr %19, i32 0, i32 3, i32 1
  %20 = ptrtoint ptr %i2c_id.3 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %i2c_id.3, align 1
  %22 = ptrtoint ptr %i2c_id4 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %i2c_id4, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %21, i8 %23)
  %cmp6.3 = icmp eq i8 %21, %23
  br i1 %cmp6.3, label %land.lhs.true.3.cleanup_crit_edge, label %land.lhs.true.3.for.inc.3_crit_edge

land.lhs.true.3.for.inc.3_crit_edge:              ; preds = %land.lhs.true.3
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.3

land.lhs.true.3.cleanup_crit_edge:                ; preds = %land.lhs.true.3
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.inc.3:                                        ; preds = %land.lhs.true.3.for.inc.3_crit_edge, %for.inc.2.for.inc.3_crit_edge
  %arrayidx.4 = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 99, i32 4
  %24 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx.4, align 4
  %tobool.not.4 = icmp eq ptr %25, null
  br i1 %tobool.not.4, label %for.inc.3.for.inc.4_crit_edge, label %land.lhs.true.4

for.inc.3.for.inc.4_crit_edge:                    ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.4

land.lhs.true.4:                                  ; preds = %for.inc.3
  %i2c_id.4 = getelementptr inbounds %struct.radeon_i2c_chan, ptr %25, i32 0, i32 3, i32 1
  %26 = ptrtoint ptr %i2c_id.4 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %i2c_id.4, align 1
  %28 = ptrtoint ptr %i2c_id4 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %i2c_id4, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %27, i8 %29)
  %cmp6.4 = icmp eq i8 %27, %29
  br i1 %cmp6.4, label %land.lhs.true.4.cleanup_crit_edge, label %land.lhs.true.4.for.inc.4_crit_edge

land.lhs.true.4.for.inc.4_crit_edge:              ; preds = %land.lhs.true.4
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.4

land.lhs.true.4.cleanup_crit_edge:                ; preds = %land.lhs.true.4
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.inc.4:                                        ; preds = %land.lhs.true.4.for.inc.4_crit_edge, %for.inc.3.for.inc.4_crit_edge
  %arrayidx.5 = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 99, i32 5
  %30 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %arrayidx.5, align 4
  %tobool.not.5 = icmp eq ptr %31, null
  br i1 %tobool.not.5, label %for.inc.4.for.inc.5_crit_edge, label %land.lhs.true.5

for.inc.4.for.inc.5_crit_edge:                    ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.5

land.lhs.true.5:                                  ; preds = %for.inc.4
  %i2c_id.5 = getelementptr inbounds %struct.radeon_i2c_chan, ptr %31, i32 0, i32 3, i32 1
  %32 = ptrtoint ptr %i2c_id.5 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %i2c_id.5, align 1
  %34 = ptrtoint ptr %i2c_id4 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %i2c_id4, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %33, i8 %35)
  %cmp6.5 = icmp eq i8 %33, %35
  br i1 %cmp6.5, label %land.lhs.true.5.cleanup_crit_edge, label %land.lhs.true.5.for.inc.5_crit_edge

land.lhs.true.5.for.inc.5_crit_edge:              ; preds = %land.lhs.true.5
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.5

land.lhs.true.5.cleanup_crit_edge:                ; preds = %land.lhs.true.5
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.inc.5:                                        ; preds = %land.lhs.true.5.for.inc.5_crit_edge, %for.inc.4.for.inc.5_crit_edge
  %arrayidx.6 = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 99, i32 6
  %36 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %arrayidx.6, align 4
  %tobool.not.6 = icmp eq ptr %37, null
  br i1 %tobool.not.6, label %for.inc.5.for.inc.6_crit_edge, label %land.lhs.true.6

for.inc.5.for.inc.6_crit_edge:                    ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.6

land.lhs.true.6:                                  ; preds = %for.inc.5
  %i2c_id.6 = getelementptr inbounds %struct.radeon_i2c_chan, ptr %37, i32 0, i32 3, i32 1
  %38 = ptrtoint ptr %i2c_id.6 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %i2c_id.6, align 1
  %40 = ptrtoint ptr %i2c_id4 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %i2c_id4, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %39, i8 %41)
  %cmp6.6 = icmp eq i8 %39, %41
  br i1 %cmp6.6, label %land.lhs.true.6.cleanup_crit_edge, label %land.lhs.true.6.for.inc.6_crit_edge

land.lhs.true.6.for.inc.6_crit_edge:              ; preds = %land.lhs.true.6
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.6

land.lhs.true.6.cleanup_crit_edge:                ; preds = %land.lhs.true.6
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.inc.6:                                        ; preds = %land.lhs.true.6.for.inc.6_crit_edge, %for.inc.5.for.inc.6_crit_edge
  %arrayidx.7 = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 99, i32 7
  %42 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %arrayidx.7, align 4
  %tobool.not.7 = icmp eq ptr %43, null
  br i1 %tobool.not.7, label %for.inc.6.for.inc.7_crit_edge, label %land.lhs.true.7

for.inc.6.for.inc.7_crit_edge:                    ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.7

land.lhs.true.7:                                  ; preds = %for.inc.6
  %i2c_id.7 = getelementptr inbounds %struct.radeon_i2c_chan, ptr %43, i32 0, i32 3, i32 1
  %44 = ptrtoint ptr %i2c_id.7 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %i2c_id.7, align 1
  %46 = ptrtoint ptr %i2c_id4 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %i2c_id4, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %45, i8 %47)
  %cmp6.7 = icmp eq i8 %45, %47
  br i1 %cmp6.7, label %land.lhs.true.7.cleanup_crit_edge, label %land.lhs.true.7.for.inc.7_crit_edge

land.lhs.true.7.for.inc.7_crit_edge:              ; preds = %land.lhs.true.7
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.7

land.lhs.true.7.cleanup_crit_edge:                ; preds = %land.lhs.true.7
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.inc.7:                                        ; preds = %land.lhs.true.7.for.inc.7_crit_edge, %for.inc.6.for.inc.7_crit_edge
  %arrayidx.8 = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 99, i32 8
  %48 = ptrtoint ptr %arrayidx.8 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %arrayidx.8, align 4
  %tobool.not.8 = icmp eq ptr %49, null
  br i1 %tobool.not.8, label %for.inc.7.for.inc.8_crit_edge, label %land.lhs.true.8

for.inc.7.for.inc.8_crit_edge:                    ; preds = %for.inc.7
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.8

land.lhs.true.8:                                  ; preds = %for.inc.7
  %i2c_id.8 = getelementptr inbounds %struct.radeon_i2c_chan, ptr %49, i32 0, i32 3, i32 1
  %50 = ptrtoint ptr %i2c_id.8 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %i2c_id.8, align 1
  %52 = ptrtoint ptr %i2c_id4 to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %i2c_id4, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %51, i8 %53)
  %cmp6.8 = icmp eq i8 %51, %53
  br i1 %cmp6.8, label %land.lhs.true.8.cleanup_crit_edge, label %land.lhs.true.8.for.inc.8_crit_edge

land.lhs.true.8.for.inc.8_crit_edge:              ; preds = %land.lhs.true.8
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.8

land.lhs.true.8.cleanup_crit_edge:                ; preds = %land.lhs.true.8
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.inc.8:                                        ; preds = %land.lhs.true.8.for.inc.8_crit_edge, %for.inc.7.for.inc.8_crit_edge
  %arrayidx.9 = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 99, i32 9
  %54 = ptrtoint ptr %arrayidx.9 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %arrayidx.9, align 4
  %tobool.not.9 = icmp eq ptr %55, null
  br i1 %tobool.not.9, label %for.inc.8.for.inc.9_crit_edge, label %land.lhs.true.9

for.inc.8.for.inc.9_crit_edge:                    ; preds = %for.inc.8
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.9

land.lhs.true.9:                                  ; preds = %for.inc.8
  %i2c_id.9 = getelementptr inbounds %struct.radeon_i2c_chan, ptr %55, i32 0, i32 3, i32 1
  %56 = ptrtoint ptr %i2c_id.9 to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %i2c_id.9, align 1
  %58 = ptrtoint ptr %i2c_id4 to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %i2c_id4, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %57, i8 %59)
  %cmp6.9 = icmp eq i8 %57, %59
  br i1 %cmp6.9, label %land.lhs.true.9.cleanup_crit_edge, label %land.lhs.true.9.for.inc.9_crit_edge

land.lhs.true.9.for.inc.9_crit_edge:              ; preds = %land.lhs.true.9
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.9

land.lhs.true.9.cleanup_crit_edge:                ; preds = %land.lhs.true.9
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.inc.9:                                        ; preds = %land.lhs.true.9.for.inc.9_crit_edge, %for.inc.8.for.inc.9_crit_edge
  %arrayidx.10 = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 99, i32 10
  %60 = ptrtoint ptr %arrayidx.10 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %arrayidx.10, align 4
  %tobool.not.10 = icmp eq ptr %61, null
  br i1 %tobool.not.10, label %for.inc.9.for.inc.10_crit_edge, label %land.lhs.true.10

for.inc.9.for.inc.10_crit_edge:                   ; preds = %for.inc.9
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.10

land.lhs.true.10:                                 ; preds = %for.inc.9
  %i2c_id.10 = getelementptr inbounds %struct.radeon_i2c_chan, ptr %61, i32 0, i32 3, i32 1
  %62 = ptrtoint ptr %i2c_id.10 to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %i2c_id.10, align 1
  %64 = ptrtoint ptr %i2c_id4 to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %i2c_id4, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %63, i8 %65)
  %cmp6.10 = icmp eq i8 %63, %65
  br i1 %cmp6.10, label %land.lhs.true.10.cleanup_crit_edge, label %land.lhs.true.10.for.inc.10_crit_edge

land.lhs.true.10.for.inc.10_crit_edge:            ; preds = %land.lhs.true.10
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.10

land.lhs.true.10.cleanup_crit_edge:               ; preds = %land.lhs.true.10
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.inc.10:                                       ; preds = %land.lhs.true.10.for.inc.10_crit_edge, %for.inc.9.for.inc.10_crit_edge
  %arrayidx.11 = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 99, i32 11
  %66 = ptrtoint ptr %arrayidx.11 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %arrayidx.11, align 4
  %tobool.not.11 = icmp eq ptr %67, null
  br i1 %tobool.not.11, label %for.inc.10.for.inc.11_crit_edge, label %land.lhs.true.11

for.inc.10.for.inc.11_crit_edge:                  ; preds = %for.inc.10
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.11

land.lhs.true.11:                                 ; preds = %for.inc.10
  %i2c_id.11 = getelementptr inbounds %struct.radeon_i2c_chan, ptr %67, i32 0, i32 3, i32 1
  %68 = ptrtoint ptr %i2c_id.11 to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %i2c_id.11, align 1
  %70 = ptrtoint ptr %i2c_id4 to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %i2c_id4, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %69, i8 %71)
  %cmp6.11 = icmp eq i8 %69, %71
  br i1 %cmp6.11, label %land.lhs.true.11.cleanup_crit_edge, label %land.lhs.true.11.for.inc.11_crit_edge

land.lhs.true.11.for.inc.11_crit_edge:            ; preds = %land.lhs.true.11
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.11

land.lhs.true.11.cleanup_crit_edge:               ; preds = %land.lhs.true.11
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.inc.11:                                       ; preds = %land.lhs.true.11.for.inc.11_crit_edge, %for.inc.10.for.inc.11_crit_edge
  %arrayidx.12 = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 99, i32 12
  %72 = ptrtoint ptr %arrayidx.12 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %arrayidx.12, align 4
  %tobool.not.12 = icmp eq ptr %73, null
  br i1 %tobool.not.12, label %for.inc.11.for.inc.12_crit_edge, label %land.lhs.true.12

for.inc.11.for.inc.12_crit_edge:                  ; preds = %for.inc.11
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.12

land.lhs.true.12:                                 ; preds = %for.inc.11
  %i2c_id.12 = getelementptr inbounds %struct.radeon_i2c_chan, ptr %73, i32 0, i32 3, i32 1
  %74 = ptrtoint ptr %i2c_id.12 to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %i2c_id.12, align 1
  %76 = ptrtoint ptr %i2c_id4 to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %i2c_id4, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %75, i8 %77)
  %cmp6.12 = icmp eq i8 %75, %77
  br i1 %cmp6.12, label %land.lhs.true.12.cleanup_crit_edge, label %land.lhs.true.12.for.inc.12_crit_edge

land.lhs.true.12.for.inc.12_crit_edge:            ; preds = %land.lhs.true.12
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.12

land.lhs.true.12.cleanup_crit_edge:               ; preds = %land.lhs.true.12
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.inc.12:                                       ; preds = %land.lhs.true.12.for.inc.12_crit_edge, %for.inc.11.for.inc.12_crit_edge
  %arrayidx.13 = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 99, i32 13
  %78 = ptrtoint ptr %arrayidx.13 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %arrayidx.13, align 4
  %tobool.not.13 = icmp eq ptr %79, null
  br i1 %tobool.not.13, label %for.inc.12.for.inc.13_crit_edge, label %land.lhs.true.13

for.inc.12.for.inc.13_crit_edge:                  ; preds = %for.inc.12
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.13

land.lhs.true.13:                                 ; preds = %for.inc.12
  %i2c_id.13 = getelementptr inbounds %struct.radeon_i2c_chan, ptr %79, i32 0, i32 3, i32 1
  %80 = ptrtoint ptr %i2c_id.13 to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %i2c_id.13, align 1
  %82 = ptrtoint ptr %i2c_id4 to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %i2c_id4, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %81, i8 %83)
  %cmp6.13 = icmp eq i8 %81, %83
  br i1 %cmp6.13, label %land.lhs.true.13.cleanup_crit_edge, label %land.lhs.true.13.for.inc.13_crit_edge

land.lhs.true.13.for.inc.13_crit_edge:            ; preds = %land.lhs.true.13
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.13

land.lhs.true.13.cleanup_crit_edge:               ; preds = %land.lhs.true.13
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.inc.13:                                       ; preds = %land.lhs.true.13.for.inc.13_crit_edge, %for.inc.12.for.inc.13_crit_edge
  %arrayidx.14 = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 99, i32 14
  %84 = ptrtoint ptr %arrayidx.14 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %arrayidx.14, align 4
  %tobool.not.14 = icmp eq ptr %85, null
  br i1 %tobool.not.14, label %for.inc.13.for.inc.14_crit_edge, label %land.lhs.true.14

for.inc.13.for.inc.14_crit_edge:                  ; preds = %for.inc.13
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.14

land.lhs.true.14:                                 ; preds = %for.inc.13
  %i2c_id.14 = getelementptr inbounds %struct.radeon_i2c_chan, ptr %85, i32 0, i32 3, i32 1
  %86 = ptrtoint ptr %i2c_id.14 to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %i2c_id.14, align 1
  %88 = ptrtoint ptr %i2c_id4 to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %i2c_id4, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %87, i8 %89)
  %cmp6.14 = icmp eq i8 %87, %89
  br i1 %cmp6.14, label %land.lhs.true.14.cleanup_crit_edge, label %land.lhs.true.14.for.inc.14_crit_edge

land.lhs.true.14.for.inc.14_crit_edge:            ; preds = %land.lhs.true.14
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.14

land.lhs.true.14.cleanup_crit_edge:               ; preds = %land.lhs.true.14
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.inc.14:                                       ; preds = %land.lhs.true.14.for.inc.14_crit_edge, %for.inc.13.for.inc.14_crit_edge
  %arrayidx.15 = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 99, i32 15
  %90 = ptrtoint ptr %arrayidx.15 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %arrayidx.15, align 4
  %tobool.not.15 = icmp eq ptr %91, null
  br i1 %tobool.not.15, label %for.inc.14.for.inc.15_crit_edge, label %land.lhs.true.15

for.inc.14.for.inc.15_crit_edge:                  ; preds = %for.inc.14
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.15

land.lhs.true.15:                                 ; preds = %for.inc.14
  %i2c_id.15 = getelementptr inbounds %struct.radeon_i2c_chan, ptr %91, i32 0, i32 3, i32 1
  %92 = ptrtoint ptr %i2c_id.15 to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %i2c_id.15, align 1
  %94 = ptrtoint ptr %i2c_id4 to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %i2c_id4, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %93, i8 %95)
  %cmp6.15 = icmp eq i8 %93, %95
  br i1 %cmp6.15, label %land.lhs.true.15.cleanup_crit_edge, label %land.lhs.true.15.for.inc.15_crit_edge

land.lhs.true.15.for.inc.15_crit_edge:            ; preds = %land.lhs.true.15
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.15

land.lhs.true.15.cleanup_crit_edge:               ; preds = %land.lhs.true.15
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.inc.15:                                       ; preds = %land.lhs.true.15.for.inc.15_crit_edge, %for.inc.14.for.inc.15_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %for.inc.15, %land.lhs.true.15.cleanup_crit_edge, %land.lhs.true.14.cleanup_crit_edge, %land.lhs.true.13.cleanup_crit_edge, %land.lhs.true.12.cleanup_crit_edge, %land.lhs.true.11.cleanup_crit_edge, %land.lhs.true.10.cleanup_crit_edge, %land.lhs.true.9.cleanup_crit_edge, %land.lhs.true.8.cleanup_crit_edge, %land.lhs.true.7.cleanup_crit_edge, %land.lhs.true.6.cleanup_crit_edge, %land.lhs.true.5.cleanup_crit_edge, %land.lhs.true.4.cleanup_crit_edge, %land.lhs.true.3.cleanup_crit_edge, %land.lhs.true.2.cleanup_crit_edge, %land.lhs.true.1.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi ptr [ %1, %land.lhs.true.cleanup_crit_edge ], [ %7, %land.lhs.true.1.cleanup_crit_edge ], [ %13, %land.lhs.true.2.cleanup_crit_edge ], [ %19, %land.lhs.true.3.cleanup_crit_edge ], [ %25, %land.lhs.true.4.cleanup_crit_edge ], [ %31, %land.lhs.true.5.cleanup_crit_edge ], [ %37, %land.lhs.true.6.cleanup_crit_edge ], [ %43, %land.lhs.true.7.cleanup_crit_edge ], [ %49, %land.lhs.true.8.cleanup_crit_edge ], [ %55, %land.lhs.true.9.cleanup_crit_edge ], [ %61, %land.lhs.true.10.cleanup_crit_edge ], [ %67, %land.lhs.true.11.cleanup_crit_edge ], [ %73, %land.lhs.true.12.cleanup_crit_edge ], [ %79, %land.lhs.true.13.cleanup_crit_edge ], [ %85, %land.lhs.true.14.cleanup_crit_edge ], [ %91, %land.lhs.true.15.cleanup_crit_edge ], [ null, %for.inc.15 ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @radeon_i2c_get_byte(ptr noundef %i2c_bus, i8 noundef zeroext %slave_addr, i8 noundef zeroext %addr, ptr nocapture noundef %val) local_unnamed_addr #0 align 64 {
entry:
  %out_buf = alloca [2 x i8], align 1
  %in_buf = alloca [2 x i8], align 1
  %msgs = alloca [2 x %struct.i2c_msg], align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %out_buf) #9
  %0 = getelementptr inbounds [2 x i8], ptr %out_buf, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %in_buf) #9
  %1 = ptrtoint ptr %in_buf to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 -1, ptr %in_buf, align 1, !annotation !48
  %2 = getelementptr inbounds [2 x i8], ptr %in_buf, i32 0, i32 1
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 -1, ptr %2, align 1, !annotation !48
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msgs) #9
  %4 = getelementptr inbounds i8, ptr %msgs, i32 4
  %5 = call ptr @memset(ptr %4, i32 255, i32 16)
  %conv = zext i8 %slave_addr to i16
  %6 = ptrtoint ptr %msgs to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %conv, ptr %msgs, align 4
  %flags = getelementptr inbounds %struct.i2c_msg, ptr %msgs, i32 0, i32 1
  %7 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 0, ptr %flags, align 2
  %len = getelementptr inbounds %struct.i2c_msg, ptr %msgs, i32 0, i32 2
  %8 = ptrtoint ptr %len to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 1, ptr %len, align 4
  %buf = getelementptr inbounds %struct.i2c_msg, ptr %msgs, i32 0, i32 3
  %9 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %out_buf, ptr %buf, align 4
  %arrayinit.element = getelementptr inbounds %struct.i2c_msg, ptr %msgs, i32 1
  %10 = ptrtoint ptr %arrayinit.element to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %conv, ptr %arrayinit.element, align 4
  %flags4 = getelementptr inbounds %struct.i2c_msg, ptr %msgs, i32 1, i32 1
  %11 = ptrtoint ptr %flags4 to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 1, ptr %flags4, align 2
  %len5 = getelementptr inbounds %struct.i2c_msg, ptr %msgs, i32 1, i32 2
  %12 = ptrtoint ptr %len5 to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 1, ptr %len5, align 4
  %buf6 = getelementptr inbounds %struct.i2c_msg, ptr %msgs, i32 1, i32 3
  %13 = ptrtoint ptr %buf6 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %in_buf, ptr %buf6, align 4
  %14 = ptrtoint ptr %out_buf to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %addr, ptr %out_buf, align 1
  %15 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 0, ptr %0, align 1
  %call = call i32 @i2c_transfer(ptr noundef %i2c_bus, ptr noundef nonnull %msgs, i32 noundef 2) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call)
  %cmp = icmp eq i32 %call, 2
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %16 = ptrtoint ptr %in_buf to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %in_buf, align 1
  %18 = ptrtoint ptr %val to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %17, ptr %val, align 1
  %conv12 = zext i8 %17 to i32
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.7, i32 noundef %conv12) #9
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %conv13 = zext i8 %addr to i32
  %19 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %val, align 1
  %conv14 = zext i8 %20 to i32
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.8, i32 noundef %conv13, i32 noundef %conv14) #9
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %in_buf) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %out_buf) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @radeon_i2c_put_byte(ptr noundef %i2c_bus, i8 noundef zeroext %slave_addr, i8 noundef zeroext %addr, i8 noundef zeroext %val) local_unnamed_addr #0 align 64 {
entry:
  %out_buf = alloca [2 x i8], align 1
  %msg = alloca %struct.i2c_msg, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %out_buf) #9
  %0 = getelementptr inbounds [2 x i8], ptr %out_buf, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg) #9
  %1 = getelementptr inbounds i8, ptr %msg, i32 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %1, align 4
  %conv = zext i8 %slave_addr to i16
  %3 = ptrtoint ptr %msg to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 %conv, ptr %msg, align 4
  %flags = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 1
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 0, ptr %flags, align 2
  %len = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 2
  %5 = ptrtoint ptr %len to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 2, ptr %len, align 4
  %buf = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 3
  %6 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %out_buf, ptr %buf, align 4
  %7 = ptrtoint ptr %out_buf to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %addr, ptr %out_buf, align 1
  %8 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %val, ptr %0, align 1
  %call = call i32 @i2c_transfer(ptr noundef %i2c_bus, ptr noundef nonnull %msg, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %conv4 = zext i8 %addr to i32
  %conv5 = zext i8 %val to i32
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.9, i32 noundef %conv4, i32 noundef %conv5) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %out_buf) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @radeon_router_select_cd_port(ptr nocapture noundef readonly %radeon_connector) local_unnamed_addr #0 align 64 {
entry:
  %out_buf.i67 = alloca [2 x i8], align 1
  %msg.i68 = alloca %struct.i2c_msg, align 4
  %out_buf.i49 = alloca [2 x i8], align 1
  %in_buf.i50 = alloca [2 x i8], align 1
  %msgs.i51 = alloca [2 x %struct.i2c_msg], align 4
  %out_buf.i42 = alloca [2 x i8], align 1
  %msg.i = alloca %struct.i2c_msg, align 4
  %out_buf.i = alloca [2 x i8], align 1
  %in_buf.i = alloca [2 x i8], align 1
  %msgs.i = alloca [2 x %struct.i2c_msg], align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %cd_valid = getelementptr inbounds %struct.radeon_connector, ptr %radeon_connector, i32 0, i32 13, i32 7
  %0 = ptrtoint ptr %cd_valid to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %cd_valid, align 1, !range !47
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %router_bus = getelementptr inbounds %struct.radeon_connector, ptr %radeon_connector, i32 0, i32 14
  %2 = ptrtoint ptr %router_bus to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %router_bus, align 4
  %tobool1.not = icmp eq ptr %3, null
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %i2c_addr = getelementptr inbounds %struct.radeon_connector, ptr %radeon_connector, i32 0, i32 13, i32 2
  %4 = ptrtoint ptr %i2c_addr to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %i2c_addr, align 8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %out_buf.i) #9
  %6 = getelementptr inbounds [2 x i8], ptr %out_buf.i, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %in_buf.i) #9
  %7 = ptrtoint ptr %in_buf.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 -1, ptr %in_buf.i, align 1, !annotation !48
  %8 = getelementptr inbounds [2 x i8], ptr %in_buf.i, i32 0, i32 1
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 -1, ptr %8, align 1, !annotation !48
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msgs.i) #9
  %10 = getelementptr inbounds i8, ptr %msgs.i, i32 4
  %11 = call ptr @memset(ptr %10, i32 255, i32 16)
  %conv.i = zext i8 %5 to i16
  %12 = ptrtoint ptr %msgs.i to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %conv.i, ptr %msgs.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 0, i32 1
  %13 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 0, ptr %flags.i, align 2
  %14 = ptrtoint ptr %10 to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 1, ptr %10, align 4
  %buf.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 0, i32 3
  %15 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %out_buf.i, ptr %buf.i, align 4
  %arrayinit.element.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 1
  %16 = ptrtoint ptr %arrayinit.element.i to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %conv.i, ptr %arrayinit.element.i, align 4
  %flags4.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 1, i32 1
  %17 = ptrtoint ptr %flags4.i to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 1, ptr %flags4.i, align 2
  %len5.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 1, i32 2
  %18 = ptrtoint ptr %len5.i to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 1, ptr %len5.i, align 4
  %buf6.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 1, i32 3
  %19 = ptrtoint ptr %buf6.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %in_buf.i, ptr %buf6.i, align 4
  %20 = ptrtoint ptr %out_buf.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 3, ptr %out_buf.i, align 1
  %21 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 0, ptr %6, align 1
  %call.i = call i32 @i2c_transfer(ptr noundef nonnull %3, ptr noundef nonnull %msgs.i, i32 noundef 2) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i)
  %cmp.i = icmp eq i32 %call.i, 2
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #11
  %22 = ptrtoint ptr %in_buf.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %in_buf.i, align 1
  %conv12.i = zext i8 %23 to i32
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.7, i32 noundef %conv12.i) #9
  br label %radeon_i2c_get_byte.exit

if.else.i:                                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #11
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.8, i32 noundef 3, i32 noundef 255) #9
  br label %radeon_i2c_get_byte.exit

radeon_i2c_get_byte.exit:                         ; preds = %if.else.i, %if.then.i
  %val.0 = phi i8 [ %23, %if.then.i ], [ -1, %if.else.i ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs.i) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %in_buf.i) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %out_buf.i) #9
  %cd_mux_control_pin = getelementptr inbounds %struct.radeon_connector, ptr %radeon_connector, i32 0, i32 13, i32 9
  %24 = ptrtoint ptr %cd_mux_control_pin to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %cd_mux_control_pin, align 1
  %neg = xor i8 %25, -1
  %and = and i8 %val.0, %neg
  %26 = ptrtoint ptr %router_bus to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %router_bus, align 4
  %28 = ptrtoint ptr %i2c_addr to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %i2c_addr, align 8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %out_buf.i42) #9
  %30 = getelementptr inbounds [2 x i8], ptr %out_buf.i42, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i) #9
  %31 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 196607, ptr %31, align 4
  %conv.i43 = zext i8 %29 to i16
  %33 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 %conv.i43, ptr %msg.i, align 4
  %flags.i44 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %34 = ptrtoint ptr %flags.i44 to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 0, ptr %flags.i44, align 2
  %buf.i46 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %35 = ptrtoint ptr %buf.i46 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %out_buf.i42, ptr %buf.i46, align 4
  %36 = ptrtoint ptr %out_buf.i42 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 3, ptr %out_buf.i42, align 1
  %37 = ptrtoint ptr %30 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %and, ptr %30, align 1
  %call.i47 = call i32 @i2c_transfer(ptr noundef %27, ptr noundef nonnull %msg.i, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i47)
  %cmp.not.i = icmp eq i32 %call.i47, 1
  br i1 %cmp.not.i, label %radeon_i2c_get_byte.exit.radeon_i2c_put_byte.exit_crit_edge, label %if.then.i48

radeon_i2c_get_byte.exit.radeon_i2c_put_byte.exit_crit_edge: ; preds = %radeon_i2c_get_byte.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %radeon_i2c_put_byte.exit

if.then.i48:                                      ; preds = %radeon_i2c_get_byte.exit
  call void @__sanitizer_cov_trace_pc() #11
  %conv5.i = zext i8 %and to i32
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.9, i32 noundef 3, i32 noundef %conv5.i) #9
  br label %radeon_i2c_put_byte.exit

radeon_i2c_put_byte.exit:                         ; preds = %if.then.i48, %radeon_i2c_get_byte.exit.radeon_i2c_put_byte.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %out_buf.i42) #9
  %38 = ptrtoint ptr %router_bus to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %router_bus, align 4
  %40 = ptrtoint ptr %i2c_addr to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %i2c_addr, align 8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %out_buf.i49) #9
  %42 = getelementptr inbounds [2 x i8], ptr %out_buf.i49, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %in_buf.i50) #9
  %43 = ptrtoint ptr %in_buf.i50 to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 -1, ptr %in_buf.i50, align 1, !annotation !48
  %44 = getelementptr inbounds [2 x i8], ptr %in_buf.i50, i32 0, i32 1
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 -1, ptr %44, align 1, !annotation !48
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msgs.i51) #9
  %46 = getelementptr inbounds i8, ptr %msgs.i51, i32 4
  %47 = call ptr @memset(ptr %46, i32 255, i32 16)
  %conv.i52 = zext i8 %41 to i16
  %48 = ptrtoint ptr %msgs.i51 to i32
  call void @__asan_store2_noabort(i32 %48)
  store i16 %conv.i52, ptr %msgs.i51, align 4
  %flags.i53 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i51, i32 0, i32 1
  %49 = ptrtoint ptr %flags.i53 to i32
  call void @__asan_store2_noabort(i32 %49)
  store i16 0, ptr %flags.i53, align 2
  %50 = ptrtoint ptr %46 to i32
  call void @__asan_store2_noabort(i32 %50)
  store i16 1, ptr %46, align 4
  %buf.i55 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i51, i32 0, i32 3
  %51 = ptrtoint ptr %buf.i55 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %out_buf.i49, ptr %buf.i55, align 4
  %arrayinit.element.i56 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i51, i32 1
  %52 = ptrtoint ptr %arrayinit.element.i56 to i32
  call void @__asan_store2_noabort(i32 %52)
  store i16 %conv.i52, ptr %arrayinit.element.i56, align 4
  %flags4.i57 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i51, i32 1, i32 1
  %53 = ptrtoint ptr %flags4.i57 to i32
  call void @__asan_store2_noabort(i32 %53)
  store i16 1, ptr %flags4.i57, align 2
  %len5.i58 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i51, i32 1, i32 2
  %54 = ptrtoint ptr %len5.i58 to i32
  call void @__asan_store2_noabort(i32 %54)
  store i16 1, ptr %len5.i58, align 4
  %buf6.i59 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i51, i32 1, i32 3
  %55 = ptrtoint ptr %buf6.i59 to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %in_buf.i50, ptr %buf6.i59, align 4
  %56 = ptrtoint ptr %out_buf.i49 to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 1, ptr %out_buf.i49, align 1
  %57 = ptrtoint ptr %42 to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 0, ptr %42, align 1
  %call.i60 = call i32 @i2c_transfer(ptr noundef %39, ptr noundef nonnull %msgs.i51, i32 noundef 2) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i60)
  %cmp.i61 = icmp eq i32 %call.i60, 2
  br i1 %cmp.i61, label %if.then.i63, label %if.else.i65

if.then.i63:                                      ; preds = %radeon_i2c_put_byte.exit
  call void @__sanitizer_cov_trace_pc() #11
  %58 = ptrtoint ptr %in_buf.i50 to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %in_buf.i50, align 1
  %conv12.i62 = zext i8 %59 to i32
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.7, i32 noundef %conv12.i62) #9
  br label %radeon_i2c_get_byte.exit66

if.else.i65:                                      ; preds = %radeon_i2c_put_byte.exit
  call void @__sanitizer_cov_trace_pc() #11
  %conv14.i64 = zext i8 %and to i32
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.8, i32 noundef 1, i32 noundef %conv14.i64) #9
  br label %radeon_i2c_get_byte.exit66

radeon_i2c_get_byte.exit66:                       ; preds = %if.else.i65, %if.then.i63
  %val.1 = phi i8 [ %59, %if.then.i63 ], [ %and, %if.else.i65 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs.i51) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %in_buf.i50) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %out_buf.i49) #9
  %60 = ptrtoint ptr %cd_mux_control_pin to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %cd_mux_control_pin, align 1
  %neg18 = xor i8 %61, -1
  %and20 = and i8 %val.1, %neg18
  %cd_mux_state = getelementptr inbounds %struct.radeon_connector, ptr %radeon_connector, i32 0, i32 13, i32 10
  %62 = ptrtoint ptr %cd_mux_state to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %cd_mux_state, align 8
  %or41 = or i8 %and20, %63
  %64 = ptrtoint ptr %router_bus to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %router_bus, align 4
  %66 = ptrtoint ptr %i2c_addr to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %i2c_addr, align 8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %out_buf.i67) #9
  %68 = getelementptr inbounds [2 x i8], ptr %out_buf.i67, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i68) #9
  %69 = getelementptr inbounds i8, ptr %msg.i68, i32 4
  %70 = ptrtoint ptr %69 to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 196607, ptr %69, align 4
  %conv.i69 = zext i8 %67 to i16
  %71 = ptrtoint ptr %msg.i68 to i32
  call void @__asan_store2_noabort(i32 %71)
  store i16 %conv.i69, ptr %msg.i68, align 4
  %flags.i70 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i68, i32 0, i32 1
  %72 = ptrtoint ptr %flags.i70 to i32
  call void @__asan_store2_noabort(i32 %72)
  store i16 0, ptr %flags.i70, align 2
  %buf.i72 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i68, i32 0, i32 3
  %73 = ptrtoint ptr %buf.i72 to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr %out_buf.i67, ptr %buf.i72, align 4
  %74 = ptrtoint ptr %out_buf.i67 to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 1, ptr %out_buf.i67, align 1
  %75 = ptrtoint ptr %68 to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 %or41, ptr %68, align 1
  %call.i73 = call i32 @i2c_transfer(ptr noundef %65, ptr noundef nonnull %msg.i68, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i73)
  %cmp.not.i74 = icmp eq i32 %call.i73, 1
  br i1 %cmp.not.i74, label %radeon_i2c_get_byte.exit66.radeon_i2c_put_byte.exit77_crit_edge, label %if.then.i76

radeon_i2c_get_byte.exit66.radeon_i2c_put_byte.exit77_crit_edge: ; preds = %radeon_i2c_get_byte.exit66
  call void @__sanitizer_cov_trace_pc() #11
  br label %radeon_i2c_put_byte.exit77

if.then.i76:                                      ; preds = %radeon_i2c_get_byte.exit66
  call void @__sanitizer_cov_trace_pc() #11
  %conv5.i75 = zext i8 %or41 to i32
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.9, i32 noundef 1, i32 noundef %conv5.i75) #9
  br label %radeon_i2c_put_byte.exit77

radeon_i2c_put_byte.exit77:                       ; preds = %if.then.i76, %radeon_i2c_get_byte.exit66.radeon_i2c_put_byte.exit77_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i68) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %out_buf.i67) #9
  br label %cleanup

cleanup:                                          ; preds = %radeon_i2c_put_byte.exit77, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @radeon_hw_i2c_xfer(ptr nocapture noundef readonly %i2c_adap, ptr nocapture noundef readonly %msgs, i32 noundef %num) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %i2c_adap, i32 0, i32 9, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %dev = getelementptr inbounds %struct.radeon_i2c_chan, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 8
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev_private, align 4
  %mutex = getelementptr inbounds %struct.radeon_i2c_chan, ptr %1, i32 0, i32 6
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #9
  %family = getelementptr inbounds %struct.radeon_device, ptr %5, i32 0, i32 6
  %6 = ptrtoint ptr %family to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %family, align 4
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values)
  switch i32 %7, label %sw.default [
    i32 0, label %entry.sw.bb_crit_edge
    i32 1, label %entry.sw.bb_crit_edge37
    i32 2, label %entry.sw.bb_crit_edge38
    i32 3, label %entry.sw.bb_crit_edge39
    i32 4, label %entry.sw.bb_crit_edge40
    i32 5, label %entry.sw.bb_crit_edge41
    i32 6, label %entry.sw.bb_crit_edge42
    i32 7, label %entry.sw.bb_crit_edge43
    i32 8, label %entry.sw.bb_crit_edge44
    i32 9, label %entry.sw.bb_crit_edge45
    i32 10, label %entry.sw.bb_crit_edge46
    i32 11, label %entry.sw.bb_crit_edge47
    i32 12, label %entry.sw.bb_crit_edge48
    i32 13, label %entry.sw.bb_crit_edge49
    i32 14, label %entry.sw.bb_crit_edge50
    i32 15, label %entry.sw.bb_crit_edge51
    i32 16, label %entry.sw.bb_crit_edge52
    i32 17, label %entry.sw.bb_crit_edge53
    i32 18, label %entry.sw.epilog_crit_edge
    i32 19, label %entry.sw.epilog_crit_edge54
    i32 20, label %entry.sw.epilog_crit_edge55
    i32 21, label %entry.sw.bb4_crit_edge
    i32 22, label %entry.sw.bb4_crit_edge56
    i32 23, label %entry.sw.bb4_crit_edge57
    i32 24, label %entry.sw.bb4_crit_edge58
    i32 25, label %entry.sw.bb4_crit_edge59
    i32 26, label %entry.sw.bb4_crit_edge60
    i32 27, label %entry.sw.epilog_crit_edge61
    i32 28, label %entry.sw.epilog_crit_edge62
    i32 29, label %entry.sw.epilog_crit_edge63
    i32 30, label %entry.sw.epilog_crit_edge64
    i32 31, label %entry.sw.epilog_crit_edge65
    i32 32, label %entry.sw.epilog_crit_edge66
    i32 33, label %entry.sw.epilog_crit_edge67
    i32 34, label %entry.sw.epilog_crit_edge68
    i32 35, label %entry.sw.epilog_crit_edge69
    i32 36, label %entry.sw.epilog_crit_edge70
    i32 37, label %entry.sw.epilog_crit_edge71
    i32 38, label %entry.sw.epilog_crit_edge72
    i32 39, label %entry.sw.epilog_crit_edge73
    i32 40, label %entry.sw.epilog_crit_edge74
    i32 41, label %entry.sw.epilog_crit_edge75
    i32 42, label %entry.sw.epilog_crit_edge76
    i32 43, label %entry.sw.epilog_crit_edge77
  ]

entry.sw.epilog_crit_edge77:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

entry.sw.epilog_crit_edge76:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

entry.sw.epilog_crit_edge75:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

entry.sw.epilog_crit_edge74:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

entry.sw.epilog_crit_edge73:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

entry.sw.epilog_crit_edge72:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

entry.sw.epilog_crit_edge71:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

entry.sw.epilog_crit_edge70:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

entry.sw.epilog_crit_edge69:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

entry.sw.epilog_crit_edge68:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

entry.sw.epilog_crit_edge67:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

entry.sw.epilog_crit_edge66:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

entry.sw.epilog_crit_edge65:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

entry.sw.epilog_crit_edge64:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

entry.sw.epilog_crit_edge63:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

entry.sw.epilog_crit_edge62:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

entry.sw.epilog_crit_edge61:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

entry.sw.bb4_crit_edge60:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb4

entry.sw.bb4_crit_edge59:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb4

entry.sw.bb4_crit_edge58:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb4

entry.sw.bb4_crit_edge57:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb4

entry.sw.bb4_crit_edge56:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb4

entry.sw.bb4_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb4

entry.sw.epilog_crit_edge55:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

entry.sw.epilog_crit_edge54:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

entry.sw.bb_crit_edge53:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb

entry.sw.bb_crit_edge52:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb

entry.sw.bb_crit_edge51:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb

entry.sw.bb_crit_edge50:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb

entry.sw.bb_crit_edge49:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb

entry.sw.bb_crit_edge48:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb

entry.sw.bb_crit_edge47:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb

entry.sw.bb_crit_edge46:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb

entry.sw.bb_crit_edge45:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb

entry.sw.bb_crit_edge44:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb

entry.sw.bb_crit_edge43:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb

entry.sw.bb_crit_edge42:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb

entry.sw.bb_crit_edge41:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb

entry.sw.bb_crit_edge40:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb

entry.sw.bb_crit_edge39:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb

entry.sw.bb_crit_edge38:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb

entry.sw.bb_crit_edge37:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge37, %entry.sw.bb_crit_edge38, %entry.sw.bb_crit_edge39, %entry.sw.bb_crit_edge40, %entry.sw.bb_crit_edge41, %entry.sw.bb_crit_edge42, %entry.sw.bb_crit_edge43, %entry.sw.bb_crit_edge44, %entry.sw.bb_crit_edge45, %entry.sw.bb_crit_edge46, %entry.sw.bb_crit_edge47, %entry.sw.bb_crit_edge48, %entry.sw.bb_crit_edge49, %entry.sw.bb_crit_edge50, %entry.sw.bb_crit_edge51, %entry.sw.bb_crit_edge52, %entry.sw.bb_crit_edge53
  %call2 = tail call fastcc i32 @r100_hw_i2c_xfer(ptr noundef %i2c_adap, ptr noundef %msgs, i32 noundef %num)
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry.sw.bb4_crit_edge, %entry.sw.bb4_crit_edge56, %entry.sw.bb4_crit_edge57, %entry.sw.bb4_crit_edge58, %entry.sw.bb4_crit_edge59, %entry.sw.bb4_crit_edge60
  %mm_i2c = getelementptr inbounds %struct.radeon_i2c_chan, ptr %1, i32 0, i32 3, i32 4
  %9 = ptrtoint ptr %mm_i2c to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %mm_i2c, align 1, !range !47
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool.not = icmp eq i8 %10, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #11
  %call5 = tail call fastcc i32 @r100_hw_i2c_xfer(ptr noundef %i2c_adap, ptr noundef %msgs, i32 noundef %num)
  br label %sw.epilog

if.else:                                          ; preds = %sw.bb4
  %11 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %driver_data.i.i, align 4
  %dev.i = getelementptr inbounds %struct.radeon_i2c_chan, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev.i, align 8
  %dev_private.i = getelementptr inbounds %struct.drm_device, ptr %14, i32 0, i32 5
  %15 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev_private.i, align 4
  %dc_hw_i2c_mutex.i = getelementptr inbounds %struct.radeon_device, ptr %16, i32 0, i32 92
  tail call void @mutex_lock_nested(ptr noundef %dc_hw_i2c_mutex.i, i32 noundef 0) #9
  %pm.i = getelementptr inbounds %struct.radeon_device, ptr %16, i32 0, i32 58
  tail call void @mutex_lock_nested(ptr noundef %pm.i, i32 noundef 0) #9
  %call2.i = tail call fastcc i32 @radeon_get_i2c_prescale(ptr noundef %16) #9
  %mask_clk_reg.i = getelementptr inbounds %struct.radeon_i2c_chan, ptr %12, i32 0, i32 3, i32 5
  %17 = ptrtoint ptr %mask_clk_reg.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %mask_clk_reg.i, align 4
  %rmmio_size.i.i = getelementptr inbounds %struct.radeon_device, ptr %16, i32 0, i32 18
  %19 = ptrtoint ptr %rmmio_size.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %rmmio_size.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %20, i32 %18)
  %cmp.i.i = icmp ugt i32 %20, %18
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %18)
  %cmp1.i.i = icmp ult i32 %18, 65536
  %or.cond.i.i = or i1 %cmp1.i.i, %cmp.i.i
  br i1 %or.cond.i.i, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %rmmio.i.i = getelementptr inbounds %struct.radeon_device, ptr %16, i32 0, i32 31
  %21 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %22, i32 %18
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #9, !srcloc !50
  %24 = tail call i32 @llvm.bswap.i32(i32 %23) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !51
  br label %r100_mm_rreg.exit.i

if.else.i.i:                                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %call3.i.i = tail call i32 @r100_mm_rreg_slow(ptr noundef %16, i32 noundef %18) #9
  br label %r100_mm_rreg.exit.i

r100_mm_rreg.exit.i:                              ; preds = %if.else.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %call3.i.i, %if.else.i.i ], [ %24, %if.then.i.i ]
  %mask_clk_mask.i = getelementptr inbounds %struct.radeon_i2c_chan, ptr %12, i32 0, i32 3, i32 13
  %25 = ptrtoint ptr %mask_clk_mask.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %mask_clk_mask.i, align 4
  %neg.i = xor i32 %26, -1
  %and.i = and i32 %retval.0.i.i, %neg.i
  %27 = ptrtoint ptr %mask_clk_reg.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %mask_clk_reg.i, align 4
  %29 = ptrtoint ptr %rmmio_size.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %rmmio_size.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %30, i32 %28)
  %cmp.i363.i = icmp ugt i32 %30, %28
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %28)
  %cmp1.i364.i = icmp ult i32 %28, 65536
  %or.cond.i365.i = or i1 %cmp1.i364.i, %cmp.i363.i
  br i1 %or.cond.i365.i, label %do.body.i.i, label %if.else.i368.i

do.body.i.i:                                      ; preds = %r100_mm_rreg.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !52
  tail call void @arm_heavy_mb() #9
  %31 = tail call i32 @llvm.bswap.i32(i32 %and.i) #9
  %rmmio.i366.i = getelementptr inbounds %struct.radeon_device, ptr %16, i32 0, i32 31
  %32 = ptrtoint ptr %rmmio.i366.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %rmmio.i366.i, align 4
  %add.ptr.i367.i = getelementptr i8, ptr %33, i32 %28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i367.i, i32 %31) #9, !srcloc !49
  br label %r100_mm_wreg.exit.i

if.else.i368.i:                                   ; preds = %r100_mm_rreg.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @r100_mm_wreg_slow(ptr noundef %16, i32 noundef %28, i32 noundef %and.i) #9
  br label %r100_mm_wreg.exit.i

r100_mm_wreg.exit.i:                              ; preds = %if.else.i368.i, %do.body.i.i
  %34 = ptrtoint ptr %mask_clk_reg.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %mask_clk_reg.i, align 4
  %36 = ptrtoint ptr %rmmio_size.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %rmmio_size.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %37, i32 %35)
  %cmp.i370.i = icmp ugt i32 %37, %35
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %35)
  %cmp1.i371.i = icmp ult i32 %35, 65536
  %or.cond.i372.i = or i1 %cmp1.i371.i, %cmp.i370.i
  br i1 %or.cond.i372.i, label %if.then.i375.i, label %if.else.i377.i

if.then.i375.i:                                   ; preds = %r100_mm_wreg.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %rmmio.i373.i = getelementptr inbounds %struct.radeon_device, ptr %16, i32 0, i32 31
  %38 = ptrtoint ptr %rmmio.i373.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %rmmio.i373.i, align 4
  %add.ptr.i374.i = getelementptr i8, ptr %39, i32 %35
  %40 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i374.i) #9, !srcloc !50
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !51
  br label %r100_mm_rreg.exit379.i

if.else.i377.i:                                   ; preds = %r100_mm_wreg.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %call3.i376.i = tail call i32 @r100_mm_rreg_slow(ptr noundef %16, i32 noundef %35) #9
  br label %r100_mm_rreg.exit379.i

r100_mm_rreg.exit379.i:                           ; preds = %if.else.i377.i, %if.then.i375.i
  %mask_data_reg.i = getelementptr inbounds %struct.radeon_i2c_chan, ptr %12, i32 0, i32 3, i32 6
  %41 = ptrtoint ptr %mask_data_reg.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %mask_data_reg.i, align 4
  %43 = ptrtoint ptr %rmmio_size.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %rmmio_size.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %44, i32 %42)
  %cmp.i381.i = icmp ugt i32 %44, %42
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %42)
  %cmp1.i382.i = icmp ult i32 %42, 65536
  %or.cond.i383.i = or i1 %cmp1.i382.i, %cmp.i381.i
  br i1 %or.cond.i383.i, label %if.then.i386.i, label %if.else.i388.i

if.then.i386.i:                                   ; preds = %r100_mm_rreg.exit379.i
  call void @__sanitizer_cov_trace_pc() #11
  %rmmio.i384.i = getelementptr inbounds %struct.radeon_device, ptr %16, i32 0, i32 31
  %45 = ptrtoint ptr %rmmio.i384.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %rmmio.i384.i, align 4
  %add.ptr.i385.i = getelementptr i8, ptr %46, i32 %42
  %47 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i385.i) #9, !srcloc !50
  %48 = tail call i32 @llvm.bswap.i32(i32 %47) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !51
  br label %r100_mm_rreg.exit390.i

if.else.i388.i:                                   ; preds = %r100_mm_rreg.exit379.i
  call void @__sanitizer_cov_trace_pc() #11
  %call3.i387.i = tail call i32 @r100_mm_rreg_slow(ptr noundef %16, i32 noundef %42) #9
  br label %r100_mm_rreg.exit390.i

r100_mm_rreg.exit390.i:                           ; preds = %if.else.i388.i, %if.then.i386.i
  %retval.0.i389.i = phi i32 [ %call3.i387.i, %if.else.i388.i ], [ %48, %if.then.i386.i ]
  %mask_data_mask.i = getelementptr inbounds %struct.radeon_i2c_chan, ptr %12, i32 0, i32 3, i32 14
  %49 = ptrtoint ptr %mask_data_mask.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %mask_data_mask.i, align 4
  %neg8.i = xor i32 %50, -1
  %and9.i = and i32 %retval.0.i389.i, %neg8.i
  %51 = ptrtoint ptr %mask_data_reg.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %mask_data_reg.i, align 4
  %53 = ptrtoint ptr %rmmio_size.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %rmmio_size.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %54, i32 %52)
  %cmp.i392.i = icmp ugt i32 %54, %52
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %52)
  %cmp1.i393.i = icmp ult i32 %52, 65536
  %or.cond.i394.i = or i1 %cmp1.i393.i, %cmp.i392.i
  br i1 %or.cond.i394.i, label %do.body.i397.i, label %if.else.i398.i

do.body.i397.i:                                   ; preds = %r100_mm_rreg.exit390.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !52
  tail call void @arm_heavy_mb() #9
  %55 = tail call i32 @llvm.bswap.i32(i32 %and9.i) #9
  %rmmio.i395.i = getelementptr inbounds %struct.radeon_device, ptr %16, i32 0, i32 31
  %56 = ptrtoint ptr %rmmio.i395.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %rmmio.i395.i, align 4
  %add.ptr.i396.i = getelementptr i8, ptr %57, i32 %52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i396.i, i32 %55) #9, !srcloc !49
  br label %r100_mm_wreg.exit399.i

if.else.i398.i:                                   ; preds = %r100_mm_rreg.exit390.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @r100_mm_wreg_slow(ptr noundef %16, i32 noundef %52, i32 noundef %and9.i) #9
  br label %r100_mm_wreg.exit399.i

r100_mm_wreg.exit399.i:                           ; preds = %if.else.i398.i, %do.body.i397.i
  %58 = ptrtoint ptr %mask_data_reg.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %mask_data_reg.i, align 4
  %60 = ptrtoint ptr %rmmio_size.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %rmmio_size.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %61, i32 %59)
  %cmp.i401.i = icmp ugt i32 %61, %59
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %59)
  %cmp1.i402.i = icmp ult i32 %59, 65536
  %or.cond.i403.i = or i1 %cmp1.i402.i, %cmp.i401.i
  br i1 %or.cond.i403.i, label %if.then.i406.i, label %if.else.i408.i

if.then.i406.i:                                   ; preds = %r100_mm_wreg.exit399.i
  call void @__sanitizer_cov_trace_pc() #11
  %rmmio.i404.i = getelementptr inbounds %struct.radeon_device, ptr %16, i32 0, i32 31
  %62 = ptrtoint ptr %rmmio.i404.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %rmmio.i404.i, align 4
  %add.ptr.i405.i = getelementptr i8, ptr %63, i32 %59
  %64 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i405.i) #9, !srcloc !50
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !51
  br label %r100_mm_rreg.exit410.i

if.else.i408.i:                                   ; preds = %r100_mm_wreg.exit399.i
  call void @__sanitizer_cov_trace_pc() #11
  %call3.i407.i = tail call i32 @r100_mm_rreg_slow(ptr noundef %16, i32 noundef %59) #9
  br label %r100_mm_rreg.exit410.i

r100_mm_rreg.exit410.i:                           ; preds = %if.else.i408.i, %if.then.i406.i
  %a_clk_reg.i = getelementptr inbounds %struct.radeon_i2c_chan, ptr %12, i32 0, i32 3, i32 7
  %65 = ptrtoint ptr %a_clk_reg.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %a_clk_reg.i, align 4
  %67 = ptrtoint ptr %rmmio_size.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %rmmio_size.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %68, i32 %66)
  %cmp.i412.i = icmp ugt i32 %68, %66
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %66)
  %cmp1.i413.i = icmp ult i32 %66, 65536
  %or.cond.i414.i = or i1 %cmp1.i413.i, %cmp.i412.i
  br i1 %or.cond.i414.i, label %if.then.i417.i, label %if.else.i419.i

if.then.i417.i:                                   ; preds = %r100_mm_rreg.exit410.i
  call void @__sanitizer_cov_trace_pc() #11
  %rmmio.i415.i = getelementptr inbounds %struct.radeon_device, ptr %16, i32 0, i32 31
  %69 = ptrtoint ptr %rmmio.i415.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %rmmio.i415.i, align 4
  %add.ptr.i416.i = getelementptr i8, ptr %70, i32 %66
  %71 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i416.i) #9, !srcloc !50
  %72 = tail call i32 @llvm.bswap.i32(i32 %71) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !51
  br label %r100_mm_rreg.exit421.i

if.else.i419.i:                                   ; preds = %r100_mm_rreg.exit410.i
  call void @__sanitizer_cov_trace_pc() #11
  %call3.i418.i = tail call i32 @r100_mm_rreg_slow(ptr noundef %16, i32 noundef %66) #9
  br label %r100_mm_rreg.exit421.i

r100_mm_rreg.exit421.i:                           ; preds = %if.else.i419.i, %if.then.i417.i
  %retval.0.i420.i = phi i32 [ %call3.i418.i, %if.else.i419.i ], [ %72, %if.then.i417.i ]
  %a_clk_mask.i = getelementptr inbounds %struct.radeon_i2c_chan, ptr %12, i32 0, i32 3, i32 15
  %73 = ptrtoint ptr %a_clk_mask.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %a_clk_mask.i, align 4
  %neg14.i = xor i32 %74, -1
  %and15.i = and i32 %retval.0.i420.i, %neg14.i
  %75 = ptrtoint ptr %a_clk_reg.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %a_clk_reg.i, align 4
  %77 = ptrtoint ptr %rmmio_size.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %rmmio_size.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %78, i32 %76)
  %cmp.i423.i = icmp ugt i32 %78, %76
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %76)
  %cmp1.i424.i = icmp ult i32 %76, 65536
  %or.cond.i425.i = or i1 %cmp1.i424.i, %cmp.i423.i
  br i1 %or.cond.i425.i, label %do.body.i428.i, label %if.else.i429.i

do.body.i428.i:                                   ; preds = %r100_mm_rreg.exit421.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !52
  tail call void @arm_heavy_mb() #9
  %79 = tail call i32 @llvm.bswap.i32(i32 %and15.i) #9
  %rmmio.i426.i = getelementptr inbounds %struct.radeon_device, ptr %16, i32 0, i32 31
  %80 = ptrtoint ptr %rmmio.i426.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %rmmio.i426.i, align 4
  %add.ptr.i427.i = getelementptr i8, ptr %81, i32 %76
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i427.i, i32 %79) #9, !srcloc !49
  br label %r100_mm_wreg.exit430.i

if.else.i429.i:                                   ; preds = %r100_mm_rreg.exit421.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @r100_mm_wreg_slow(ptr noundef %16, i32 noundef %76, i32 noundef %and15.i) #9
  br label %r100_mm_wreg.exit430.i

r100_mm_wreg.exit430.i:                           ; preds = %if.else.i429.i, %do.body.i428.i
  %82 = ptrtoint ptr %a_clk_reg.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %a_clk_reg.i, align 4
  %84 = ptrtoint ptr %rmmio_size.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %rmmio_size.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %85, i32 %83)
  %cmp.i432.i = icmp ugt i32 %85, %83
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %83)
  %cmp1.i433.i = icmp ult i32 %83, 65536
  %or.cond.i434.i = or i1 %cmp1.i433.i, %cmp.i432.i
  br i1 %or.cond.i434.i, label %if.then.i437.i, label %if.else.i439.i

if.then.i437.i:                                   ; preds = %r100_mm_wreg.exit430.i
  call void @__sanitizer_cov_trace_pc() #11
  %rmmio.i435.i = getelementptr inbounds %struct.radeon_device, ptr %16, i32 0, i32 31
  %86 = ptrtoint ptr %rmmio.i435.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %rmmio.i435.i, align 4
  %add.ptr.i436.i = getelementptr i8, ptr %87, i32 %83
  %88 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i436.i) #9, !srcloc !50
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !51
  br label %r100_mm_rreg.exit441.i

if.else.i439.i:                                   ; preds = %r100_mm_wreg.exit430.i
  call void @__sanitizer_cov_trace_pc() #11
  %call3.i438.i = tail call i32 @r100_mm_rreg_slow(ptr noundef %16, i32 noundef %83) #9
  br label %r100_mm_rreg.exit441.i

r100_mm_rreg.exit441.i:                           ; preds = %if.else.i439.i, %if.then.i437.i
  %a_data_reg.i = getelementptr inbounds %struct.radeon_i2c_chan, ptr %12, i32 0, i32 3, i32 8
  %89 = ptrtoint ptr %a_data_reg.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %a_data_reg.i, align 4
  %91 = ptrtoint ptr %rmmio_size.i.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %rmmio_size.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %92, i32 %90)
  %cmp.i443.i = icmp ugt i32 %92, %90
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %90)
  %cmp1.i444.i = icmp ult i32 %90, 65536
  %or.cond.i445.i = or i1 %cmp1.i444.i, %cmp.i443.i
  br i1 %or.cond.i445.i, label %if.then.i448.i, label %if.else.i450.i

if.then.i448.i:                                   ; preds = %r100_mm_rreg.exit441.i
  call void @__sanitizer_cov_trace_pc() #11
  %rmmio.i446.i = getelementptr inbounds %struct.radeon_device, ptr %16, i32 0, i32 31
  %93 = ptrtoint ptr %rmmio.i446.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %rmmio.i446.i, align 4
  %add.ptr.i447.i = getelementptr i8, ptr %94, i32 %90
  %95 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i447.i) #9, !srcloc !50
  %96 = tail call i32 @llvm.bswap.i32(i32 %95) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !51
  br label %r100_mm_rreg.exit452.i

if.else.i450.i:                                   ; preds = %r100_mm_rreg.exit441.i
  call void @__sanitizer_cov_trace_pc() #11
  %call3.i449.i = tail call i32 @r100_mm_rreg_slow(ptr noundef %16, i32 noundef %90) #9
  br label %r100_mm_rreg.exit452.i

r100_mm_rreg.exit452.i:                           ; preds = %if.else.i450.i, %if.then.i448.i
  %retval.0.i451.i = phi i32 [ %call3.i449.i, %if.else.i450.i ], [ %96, %if.then.i448.i ]
  %a_data_mask.i = getelementptr inbounds %struct.radeon_i2c_chan, ptr %12, i32 0, i32 3, i32 16
  %97 = ptrtoint ptr %a_data_mask.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %a_data_mask.i, align 4
  %neg20.i = xor i32 %98, -1
  %and21.i = and i32 %retval.0.i451.i, %neg20.i
  %99 = ptrtoint ptr %a_data_reg.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %a_data_reg.i, align 4
  %101 = ptrtoint ptr %rmmio_size.i.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %rmmio_size.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %102, i32 %100)
  %cmp.i454.i = icmp ugt i32 %102, %100
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %100)
  %cmp1.i455.i = icmp ult i32 %100, 65536
  %or.cond.i456.i = or i1 %cmp1.i455.i, %cmp.i454.i
  br i1 %or.cond.i456.i, label %do.body.i459.i, label %if.else.i460.i

do.body.i459.i:                                   ; preds = %r100_mm_rreg.exit452.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !52
  tail call void @arm_heavy_mb() #9
  %103 = tail call i32 @llvm.bswap.i32(i32 %and21.i) #9
  %rmmio.i457.i = getelementptr inbounds %struct.radeon_device, ptr %16, i32 0, i32 31
  %104 = ptrtoint ptr %rmmio.i457.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %rmmio.i457.i, align 4
  %add.ptr.i458.i = getelementptr i8, ptr %105, i32 %100
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i458.i, i32 %103) #9, !srcloc !49
  br label %r100_mm_wreg.exit461.i

if.else.i460.i:                                   ; preds = %r100_mm_rreg.exit452.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @r100_mm_wreg_slow(ptr noundef %16, i32 noundef %100, i32 noundef %and21.i) #9
  br label %r100_mm_wreg.exit461.i

r100_mm_wreg.exit461.i:                           ; preds = %if.else.i460.i, %do.body.i459.i
  %106 = ptrtoint ptr %a_data_reg.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %a_data_reg.i, align 4
  %108 = ptrtoint ptr %rmmio_size.i.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %rmmio_size.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %109, i32 %107)
  %cmp.i463.i = icmp ugt i32 %109, %107
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %107)
  %cmp1.i464.i = icmp ult i32 %107, 65536
  %or.cond.i465.i = or i1 %cmp1.i464.i, %cmp.i463.i
  br i1 %or.cond.i465.i, label %if.then.i468.i, label %if.else.i470.i

if.then.i468.i:                                   ; preds = %r100_mm_wreg.exit461.i
  call void @__sanitizer_cov_trace_pc() #11
  %rmmio.i466.i = getelementptr inbounds %struct.radeon_device, ptr %16, i32 0, i32 31
  %110 = ptrtoint ptr %rmmio.i466.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %rmmio.i466.i, align 4
  %add.ptr.i467.i = getelementptr i8, ptr %111, i32 %107
  %112 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i467.i) #9, !srcloc !50
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !51
  br label %r100_mm_rreg.exit472.i

if.else.i470.i:                                   ; preds = %r100_mm_wreg.exit461.i
  call void @__sanitizer_cov_trace_pc() #11
  %call3.i469.i = tail call i32 @r100_mm_rreg_slow(ptr noundef %16, i32 noundef %107) #9
  br label %r100_mm_rreg.exit472.i

r100_mm_rreg.exit472.i:                           ; preds = %if.else.i470.i, %if.then.i468.i
  %en_clk_reg.i = getelementptr inbounds %struct.radeon_i2c_chan, ptr %12, i32 0, i32 3, i32 9
  %113 = ptrtoint ptr %en_clk_reg.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %en_clk_reg.i, align 4
  %115 = ptrtoint ptr %rmmio_size.i.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %rmmio_size.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %116, i32 %114)
  %cmp.i474.i = icmp ugt i32 %116, %114
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %114)
  %cmp1.i475.i = icmp ult i32 %114, 65536
  %or.cond.i476.i = or i1 %cmp1.i475.i, %cmp.i474.i
  br i1 %or.cond.i476.i, label %if.then.i479.i, label %if.else.i481.i

if.then.i479.i:                                   ; preds = %r100_mm_rreg.exit472.i
  call void @__sanitizer_cov_trace_pc() #11
  %rmmio.i477.i = getelementptr inbounds %struct.radeon_device, ptr %16, i32 0, i32 31
  %117 = ptrtoint ptr %rmmio.i477.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %rmmio.i477.i, align 4
  %add.ptr.i478.i = getelementptr i8, ptr %118, i32 %114
  %119 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i478.i) #9, !srcloc !50
  %120 = tail call i32 @llvm.bswap.i32(i32 %119) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !51
  br label %r100_mm_rreg.exit483.i

if.else.i481.i:                                   ; preds = %r100_mm_rreg.exit472.i
  call void @__sanitizer_cov_trace_pc() #11
  %call3.i480.i = tail call i32 @r100_mm_rreg_slow(ptr noundef %16, i32 noundef %114) #9
  br label %r100_mm_rreg.exit483.i

r100_mm_rreg.exit483.i:                           ; preds = %if.else.i481.i, %if.then.i479.i
  %retval.0.i482.i = phi i32 [ %call3.i480.i, %if.else.i481.i ], [ %120, %if.then.i479.i ]
  %en_clk_mask.i = getelementptr inbounds %struct.radeon_i2c_chan, ptr %12, i32 0, i32 3, i32 17
  %121 = ptrtoint ptr %en_clk_mask.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %en_clk_mask.i, align 4
  %neg26.i = xor i32 %122, -1
  %and27.i = and i32 %retval.0.i482.i, %neg26.i
  %123 = ptrtoint ptr %en_clk_reg.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %en_clk_reg.i, align 4
  %125 = ptrtoint ptr %rmmio_size.i.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %rmmio_size.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %126, i32 %124)
  %cmp.i485.i = icmp ugt i32 %126, %124
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %124)
  %cmp1.i486.i = icmp ult i32 %124, 65536
  %or.cond.i487.i = or i1 %cmp1.i486.i, %cmp.i485.i
  br i1 %or.cond.i487.i, label %do.body.i490.i, label %if.else.i491.i

do.body.i490.i:                                   ; preds = %r100_mm_rreg.exit483.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !52
  tail call void @arm_heavy_mb() #9
  %127 = tail call i32 @llvm.bswap.i32(i32 %and27.i) #9
  %rmmio.i488.i = getelementptr inbounds %struct.radeon_device, ptr %16, i32 0, i32 31
  %128 = ptrtoint ptr %rmmio.i488.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %rmmio.i488.i, align 4
  %add.ptr.i489.i = getelementptr i8, ptr %129, i32 %124
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i489.i, i32 %127) #9, !srcloc !49
  br label %r100_mm_wreg.exit492.i

if.else.i491.i:                                   ; preds = %r100_mm_rreg.exit483.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @r100_mm_wreg_slow(ptr noundef %16, i32 noundef %124, i32 noundef %and27.i) #9
  br label %r100_mm_wreg.exit492.i

r100_mm_wreg.exit492.i:                           ; preds = %if.else.i491.i, %do.body.i490.i
  %130 = ptrtoint ptr %en_clk_reg.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %en_clk_reg.i, align 4
  %132 = ptrtoint ptr %rmmio_size.i.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %rmmio_size.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %133, i32 %131)
  %cmp.i494.i = icmp ugt i32 %133, %131
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %131)
  %cmp1.i495.i = icmp ult i32 %131, 65536
  %or.cond.i496.i = or i1 %cmp1.i495.i, %cmp.i494.i
  br i1 %or.cond.i496.i, label %if.then.i499.i, label %if.else.i501.i

if.then.i499.i:                                   ; preds = %r100_mm_wreg.exit492.i
  call void @__sanitizer_cov_trace_pc() #11
  %rmmio.i497.i = getelementptr inbounds %struct.radeon_device, ptr %16, i32 0, i32 31
  %134 = ptrtoint ptr %rmmio.i497.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %rmmio.i497.i, align 4
  %add.ptr.i498.i = getelementptr i8, ptr %135, i32 %131
  %136 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i498.i) #9, !srcloc !50
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !51
  br label %r100_mm_rreg.exit503.i

if.else.i501.i:                                   ; preds = %r100_mm_wreg.exit492.i
  call void @__sanitizer_cov_trace_pc() #11
  %call3.i500.i = tail call i32 @r100_mm_rreg_slow(ptr noundef %16, i32 noundef %131) #9
  br label %r100_mm_rreg.exit503.i

r100_mm_rreg.exit503.i:                           ; preds = %if.else.i501.i, %if.then.i499.i
  %en_data_reg.i = getelementptr inbounds %struct.radeon_i2c_chan, ptr %12, i32 0, i32 3, i32 10
  %137 = ptrtoint ptr %en_data_reg.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %en_data_reg.i, align 4
  %139 = ptrtoint ptr %rmmio_size.i.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %rmmio_size.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %140, i32 %138)
  %cmp.i505.i = icmp ugt i32 %140, %138
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %138)
  %cmp1.i506.i = icmp ult i32 %138, 65536
  %or.cond.i507.i = or i1 %cmp1.i506.i, %cmp.i505.i
  br i1 %or.cond.i507.i, label %if.then.i510.i, label %if.else.i512.i

if.then.i510.i:                                   ; preds = %r100_mm_rreg.exit503.i
  call void @__sanitizer_cov_trace_pc() #11
  %rmmio.i508.i = getelementptr inbounds %struct.radeon_device, ptr %16, i32 0, i32 31
  %141 = ptrtoint ptr %rmmio.i508.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %rmmio.i508.i, align 4
  %add.ptr.i509.i = getelementptr i8, ptr %142, i32 %138
  %143 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i509.i) #9, !srcloc !50
  %144 = tail call i32 @llvm.bswap.i32(i32 %143) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !51
  br label %r100_mm_rreg.exit514.i

if.else.i512.i:                                   ; preds = %r100_mm_rreg.exit503.i
  call void @__sanitizer_cov_trace_pc() #11
  %call3.i511.i = tail call i32 @r100_mm_rreg_slow(ptr noundef %16, i32 noundef %138) #9
  br label %r100_mm_rreg.exit514.i

r100_mm_rreg.exit514.i:                           ; preds = %if.else.i512.i, %if.then.i510.i
  %retval.0.i513.i = phi i32 [ %call3.i511.i, %if.else.i512.i ], [ %144, %if.then.i510.i ]
  %en_data_mask.i = getelementptr inbounds %struct.radeon_i2c_chan, ptr %12, i32 0, i32 3, i32 18
  %145 = ptrtoint ptr %en_data_mask.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %en_data_mask.i, align 4
  %neg32.i = xor i32 %146, -1
  %and33.i = and i32 %retval.0.i513.i, %neg32.i
  %147 = ptrtoint ptr %en_data_reg.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %en_data_reg.i, align 4
  %149 = ptrtoint ptr %rmmio_size.i.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %rmmio_size.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %150, i32 %148)
  %cmp.i516.i = icmp ugt i32 %150, %148
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %148)
  %cmp1.i517.i = icmp ult i32 %148, 65536
  %or.cond.i518.i = or i1 %cmp1.i517.i, %cmp.i516.i
  br i1 %or.cond.i518.i, label %do.body.i521.i, label %if.else.i522.i

do.body.i521.i:                                   ; preds = %r100_mm_rreg.exit514.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !52
  tail call void @arm_heavy_mb() #9
  %151 = tail call i32 @llvm.bswap.i32(i32 %and33.i) #9
  %rmmio.i519.i = getelementptr inbounds %struct.radeon_device, ptr %16, i32 0, i32 31
  %152 = ptrtoint ptr %rmmio.i519.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %rmmio.i519.i, align 4
  %add.ptr.i520.i = getelementptr i8, ptr %153, i32 %148
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i520.i, i32 %151) #9, !srcloc !49
  br label %r100_mm_wreg.exit523.i

if.else.i522.i:                                   ; preds = %r100_mm_rreg.exit514.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @r100_mm_wreg_slow(ptr noundef %16, i32 noundef %148, i32 noundef %and33.i) #9
  br label %r100_mm_wreg.exit523.i

r100_mm_wreg.exit523.i:                           ; preds = %if.else.i522.i, %do.body.i521.i
  %154 = ptrtoint ptr %en_data_reg.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %en_data_reg.i, align 4
  %156 = ptrtoint ptr %rmmio_size.i.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %rmmio_size.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %157, i32 %155)
  %cmp.i525.i = icmp ugt i32 %157, %155
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %155)
  %cmp1.i526.i = icmp ult i32 %155, 65536
  %or.cond.i527.i = or i1 %cmp1.i526.i, %cmp.i525.i
  br i1 %or.cond.i527.i, label %if.then.i530.i, label %if.else.i532.i

if.then.i530.i:                                   ; preds = %r100_mm_wreg.exit523.i
  call void @__sanitizer_cov_trace_pc() #11
  %rmmio.i528.i = getelementptr inbounds %struct.radeon_device, ptr %16, i32 0, i32 31
  %158 = ptrtoint ptr %rmmio.i528.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %rmmio.i528.i, align 4
  %add.ptr.i529.i = getelementptr i8, ptr %159, i32 %155
  %160 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i529.i) #9, !srcloc !50
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !51
  br label %r100_mm_rreg.exit534.i

if.else.i532.i:                                   ; preds = %r100_mm_wreg.exit523.i
  call void @__sanitizer_cov_trace_pc() #11
  %call3.i531.i = tail call i32 @r100_mm_rreg_slow(ptr noundef %16, i32 noundef %155) #9
  br label %r100_mm_rreg.exit534.i

r100_mm_rreg.exit534.i:                           ; preds = %if.else.i532.i, %if.then.i530.i
  %rmmio.i537.i = getelementptr inbounds %struct.radeon_device, ptr %16, i32 0, i32 31
  %161 = ptrtoint ptr %rmmio.i537.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %rmmio.i537.i, align 4
  %add.ptr.i538.i = getelementptr i8, ptr %162, i32 40
  %163 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i538.i) #9, !srcloc !50
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !51
  %164 = or i32 %163, 131072
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !52
  tail call void @arm_heavy_mb() #9
  %165 = ptrtoint ptr %rmmio.i537.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %rmmio.i537.i, align 4
  %add.ptr.i544.i = getelementptr i8, ptr %166, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i544.i, i32 %164) #9, !srcloc !49
  %167 = ptrtoint ptr %rmmio.i537.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %rmmio.i537.i, align 4
  %add.ptr.i549.i = getelementptr i8, ptr %168, i32 32056
  %169 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i549.i) #9, !srcloc !50
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !51
  %170 = ptrtoint ptr %rmmio.i537.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %rmmio.i537.i, align 4
  %add.ptr.i555.i = getelementptr i8, ptr %171, i32 1172
  %172 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i555.i) #9, !srcloc !50
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !51
  %173 = or i32 %172, 16777216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !52
  tail call void @arm_heavy_mb() #9
  %174 = ptrtoint ptr %rmmio.i537.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %rmmio.i537.i, align 4
  %add.ptr.i561.i = getelementptr i8, ptr %175, i32 1172
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i561.i, i32 %173) #9, !srcloc !49
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !52
  tail call void @arm_heavy_mb() #9
  %176 = ptrtoint ptr %rmmio.i537.i to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %rmmio.i537.i, align 4
  %add.ptr.i566.i = getelementptr i8, ptr %177, i32 32080
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i566.i, i32 16777216) #9, !srcloc !49
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %r100_mm_rreg.exit534.i
  %i.0807.i = phi i32 [ 0, %r100_mm_rreg.exit534.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %178 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %178(i32 noundef 214748) #9
  %179 = ptrtoint ptr %rmmio.i537.i to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %rmmio.i537.i, align 4
  %add.ptr.i571.i = getelementptr i8, ptr %180, i32 32080
  %181 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i571.i) #9, !srcloc !50
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !51
  %182 = and i32 %181, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %182)
  %tobool.not.i = icmp eq i32 %182, 0
  br i1 %tobool.not.i, label %for.inc.i, label %if.end45.i

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %i.0807.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 50
  br i1 %exitcond.not.i, label %if.then44.i, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

if.then44.i:                                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.15) #9
  br label %r500_hw_i2c_xfer.exit

if.end45.i:                                       ; preds = %for.body.i
  %183 = ptrtoint ptr %mask_clk_reg.i to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load i32, ptr %mask_clk_reg.i, align 4
  %185 = zext i32 %184 to i64
  call void @__sanitizer_cov_trace_switch(i64 %185, ptr @__sancov_gen_cov_switch_values.16)
  switch i32 %184, label %sw.default.i [
    i32 32320, label %if.end45.i.sw.epilog.i_crit_edge
    i32 32336, label %sw.bb48.i
    i32 32352, label %sw.bb50.i
  ]

if.end45.i.sw.epilog.i_crit_edge:                 ; preds = %if.end45.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.i

sw.bb48.i:                                        ; preds = %if.end45.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.i

sw.bb50.i:                                        ; preds = %if.end45.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.i

sw.default.i:                                     ; preds = %if.end45.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.11) #9
  br label %r500_hw_i2c_xfer.exit

sw.epilog.i:                                      ; preds = %sw.bb50.i, %sw.bb48.i, %if.end45.i.sw.epilog.i_crit_edge
  %reg.0.i = phi i32 [ 131331, %sw.bb50.i ], [ 65795, %sw.bb48.i ], [ 259, %if.end45.i.sw.epilog.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %num)
  %cmp52.i = icmp eq i32 %num, 1
  br i1 %cmp52.i, label %land.lhs.true.i, label %if.end76.i

land.lhs.true.i:                                  ; preds = %sw.epilog.i
  %len.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs, i32 0, i32 2
  %186 = ptrtoint ptr %len.i to i32
  call void @__asan_load2_noabort(i32 %186)
  %187 = load i16, ptr %len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %187)
  %cmp53.i = icmp eq i16 %187, 0
  br i1 %cmp53.i, label %if.then55.i, label %land.lhs.true.i.for.body80.lr.ph.i_crit_edge

land.lhs.true.i.for.body80.lr.ph.i_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body80.lr.ph.i

if.then55.i:                                      ; preds = %land.lhs.true.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !52
  tail call void @arm_heavy_mb() #9
  %188 = ptrtoint ptr %rmmio.i537.i to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %rmmio.i537.i, align 4
  %add.ptr.i577.i = getelementptr i8, ptr %189, i32 32048
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i577.i, i32 117440512) #9, !srcloc !49
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !52
  tail call void @arm_heavy_mb() #9
  %190 = ptrtoint ptr %rmmio.i537.i to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %rmmio.i537.i, align 4
  %add.ptr.i582.i = getelementptr i8, ptr %191, i32 32052
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i582.i, i32 16777216) #9, !srcloc !49
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %192 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %192(i32 noundef 214748) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !52
  tail call void @arm_heavy_mb() #9
  %193 = ptrtoint ptr %rmmio.i537.i to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %rmmio.i537.i, align 4
  %add.ptr.i587.i = getelementptr i8, ptr %194, i32 32052
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i587.i, i32 0) #9, !srcloc !49
  %195 = ptrtoint ptr %msgs to i32
  call void @__asan_load2_noabort(i32 %195)
  %196 = load i16, ptr %msgs, align 4
  %conv56.i = zext i16 %196 to i32
  %shl.i = shl i32 %conv56.i, 25
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !52
  tail call void @arm_heavy_mb() #9
  %197 = ptrtoint ptr %rmmio.i537.i to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load ptr, ptr %rmmio.i537.i, align 4
  %add.ptr.i592.i = getelementptr i8, ptr %198, i32 32068
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i592.i, i32 %shl.i) #9, !srcloc !49
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !52
  tail call void @arm_heavy_mb() #9
  %199 = ptrtoint ptr %rmmio.i537.i to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load ptr, ptr %rmmio.i537.i, align 4
  %add.ptr.i597.i = getelementptr i8, ptr %200, i32 32068
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i597.i, i32 0) #9, !srcloc !49
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !52
  tail call void @arm_heavy_mb() #9
  %201 = ptrtoint ptr %rmmio.i537.i to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %rmmio.i537.i, align 4
  %add.ptr.i602.i = getelementptr i8, ptr %202, i32 32064
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i602.i, i32 48) #9, !srcloc !49
  %shl58.i = shl i32 %call2.i, 16
  %or59.i = or i32 %shl58.i, 257
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !52
  tail call void @arm_heavy_mb() #9
  %203 = tail call i32 @llvm.bswap.i32(i32 %or59.i) #9
  %204 = ptrtoint ptr %rmmio.i537.i to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load ptr, ptr %rmmio.i537.i, align 4
  %add.ptr.i607.i = getelementptr i8, ptr %205, i32 32060
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i607.i, i32 %203) #9, !srcloc !49
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !52
  tail call void @arm_heavy_mb() #9
  %206 = tail call i32 @llvm.bswap.i32(i32 %reg.0.i) #9
  %207 = ptrtoint ptr %rmmio.i537.i to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load ptr, ptr %rmmio.i537.i, align 4
  %add.ptr.i612.i = getelementptr i8, ptr %208, i32 32056
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i612.i, i32 %206) #9, !srcloc !49
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !52
  tail call void @arm_heavy_mb() #9
  %209 = ptrtoint ptr %rmmio.i537.i to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load ptr, ptr %rmmio.i537.i, align 4
  %add.ptr.i617.i = getelementptr i8, ptr %210, i32 32048
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i617.i, i32 134217728) #9, !srcloc !49
  br label %for.body63.i

for.cond60.i:                                     ; preds = %for.body63.i
  %inc74.i = add nuw nsw i32 %j.0825.i, 1
  %exitcond835.not.i = icmp eq i32 %inc74.i, 200
  br i1 %exitcond835.not.i, label %for.cond60.i.r500_hw_i2c_xfer.exit_crit_edge, label %for.cond60.i.for.body63.i_crit_edge

for.cond60.i.for.body63.i_crit_edge:              ; preds = %for.cond60.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body63.i

for.cond60.i.r500_hw_i2c_xfer.exit_crit_edge:     ; preds = %for.cond60.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %r500_hw_i2c_xfer.exit

for.body63.i:                                     ; preds = %for.cond60.i.for.body63.i_crit_edge, %if.then55.i
  %j.0825.i = phi i32 [ 0, %if.then55.i ], [ %inc74.i, %for.cond60.i.for.body63.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %211 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %211(i32 noundef 10737400) #9
  %212 = ptrtoint ptr %rmmio.i537.i to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load ptr, ptr %rmmio.i537.i, align 4
  %add.ptr.i622.i = getelementptr i8, ptr %213, i32 32048
  %214 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i622.i) #9, !srcloc !50
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !51
  %215 = and i32 %214, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %215)
  %tobool66.not.i = icmp eq i32 %215, 0
  br i1 %tobool66.not.i, label %if.end68.i, label %for.cond60.i

if.end68.i:                                       ; preds = %for.body63.i
  %216 = ptrtoint ptr %rmmio.i537.i to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load ptr, ptr %rmmio.i537.i, align 4
  %add.ptr.i628.i = getelementptr i8, ptr %217, i32 32048
  %218 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i628.i) #9, !srcloc !50
  %219 = tail call i32 @llvm.bswap.i32(i32 %218) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !51
  %and70.i = and i32 %219, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and70.i)
  %tobool71.not.i = icmp eq i32 %and70.i, 0
  br i1 %tobool71.not.i, label %if.else.i, label %if.end68.i.r500_hw_i2c_xfer.exit_crit_edge

if.end68.i.r500_hw_i2c_xfer.exit_crit_edge:       ; preds = %if.end68.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %r500_hw_i2c_xfer.exit

if.else.i:                                        ; preds = %if.end68.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.13, i32 noundef %219) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !52
  tail call void @arm_heavy_mb() #9
  %220 = ptrtoint ptr %rmmio.i537.i to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load ptr, ptr %rmmio.i537.i, align 4
  %add.ptr.i634.i = getelementptr i8, ptr %221, i32 32052
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i634.i, i32 65536) #9, !srcloc !49
  br label %r500_hw_i2c_xfer.exit

if.end76.i:                                       ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num)
  %cmp78820.i = icmp sgt i32 %num, 0
  br i1 %cmp78820.i, label %if.end76.i.for.body80.lr.ph.i_crit_edge, label %if.end76.i.r500_hw_i2c_xfer.exit_crit_edge

if.end76.i.r500_hw_i2c_xfer.exit_crit_edge:       ; preds = %if.end76.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %r500_hw_i2c_xfer.exit

if.end76.i.for.body80.lr.ph.i_crit_edge:          ; preds = %if.end76.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body80.lr.ph.i

for.body80.lr.ph.i:                               ; preds = %if.end76.i.for.body80.lr.ph.i_crit_edge, %land.lhs.true.i.for.body80.lr.ph.i_crit_edge
  %shl101.i = shl i32 %call2.i, 16
  %or103.i = or i32 %reg.0.i, 4
  %222 = tail call i32 @llvm.bswap.i32(i32 %or103.i) #9
  %223 = tail call i32 @llvm.bswap.i32(i32 %reg.0.i) #9
  br label %for.body80.i

for.body80.i:                                     ; preds = %for.inc182.i.for.body80.i_crit_edge, %for.body80.lr.ph.i
  %i.1821.i = phi i32 [ 0, %for.body80.lr.ph.i ], [ %inc183.i, %for.inc182.i.for.body80.i_crit_edge ]
  %arrayidx81.i = getelementptr %struct.i2c_msg, ptr %msgs, i32 %i.1821.i
  %len82.i = getelementptr %struct.i2c_msg, ptr %msgs, i32 %i.1821.i, i32 2
  %224 = ptrtoint ptr %len82.i to i32
  call void @__asan_load2_noabort(i32 %224)
  %225 = load i16, ptr %len82.i, align 4
  %conv83.i = zext i16 %225 to i32
  %flags.i = getelementptr %struct.i2c_msg, ptr %msgs, i32 %i.1821.i, i32 1
  %226 = ptrtoint ptr %flags.i to i32
  call void @__asan_load2_noabort(i32 %226)
  %227 = load i16, ptr %flags.i, align 2
  %228 = and i16 %227, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %228)
  %tobool86.not.i = icmp eq i16 %228, 0
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %225)
  %tobool135.not817.i = icmp eq i16 %225, 0
  br i1 %tobool86.not.i, label %while.cond134.preheader.i, label %while.cond.preheader.i

while.cond.preheader.i:                           ; preds = %for.body80.i
  br i1 %tobool135.not817.i, label %while.cond.preheader.i.for.inc182.i_crit_edge, label %while.body.lr.ph.i

while.cond.preheader.i.for.inc182.i_crit_edge:    ; preds = %while.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc182.i

while.body.lr.ph.i:                               ; preds = %while.cond.preheader.i
  %buf.i = getelementptr %struct.i2c_msg, ptr %msgs, i32 %i.1821.i, i32 3
  br label %while.body.i

while.cond134.preheader.i:                        ; preds = %for.body80.i
  br i1 %tobool135.not817.i, label %while.cond134.preheader.i.for.inc182.i_crit_edge, label %while.body136.lr.ph.i

while.cond134.preheader.i.for.inc182.i_crit_edge: ; preds = %while.cond134.preheader.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc182.i

while.body136.lr.ph.i:                            ; preds = %while.cond134.preheader.i
  %buf150.i = getelementptr %struct.i2c_msg, ptr %msgs, i32 %i.1821.i, i32 3
  br label %while.body136.i

while.body.i:                                     ; preds = %for.end131.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %buffer_offset.0813.i = phi i32 [ 0, %while.body.lr.ph.i ], [ %add132.i, %for.end131.i.while.body.i_crit_edge ]
  %remaining.0812.i = phi i32 [ %conv83.i, %while.body.lr.ph.i ], [ %sub.i, %for.end131.i.while.body.i_crit_edge ]
  %229 = tail call i32 @llvm.smin.i32(i32 %remaining.0812.i, i32 15) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !52
  tail call void @arm_heavy_mb() #9
  %230 = ptrtoint ptr %rmmio.i537.i to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load ptr, ptr %rmmio.i537.i, align 4
  %add.ptr.i639.i = getelementptr i8, ptr %231, i32 32048
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i639.i, i32 117440512) #9, !srcloc !49
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !52
  tail call void @arm_heavy_mb() #9
  %232 = ptrtoint ptr %rmmio.i537.i to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load ptr, ptr %rmmio.i537.i, align 4
  %add.ptr.i644.i = getelementptr i8, ptr %233, i32 32052
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i644.i, i32 16777216) #9, !srcloc !49
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %234 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %234(i32 noundef 214748) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !52
  tail call void @arm_heavy_mb() #9
  %235 = ptrtoint ptr %rmmio.i537.i to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load ptr, ptr %rmmio.i537.i, align 4
  %add.ptr.i649.i = getelementptr i8, ptr %236, i32 32052
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i649.i, i32 0) #9, !srcloc !49
  %237 = ptrtoint ptr %arrayidx81.i to i32
  call void @__asan_load2_noabort(i32 %237)
  %238 = load i16, ptr %arrayidx81.i, align 4
  %conv95.i = zext i16 %238 to i32
  %shl96.i = shl i32 %conv95.i, 25
  %or98.i = or i32 %shl96.i, 16777216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !52
  tail call void @arm_heavy_mb() #9
  %239 = ptrtoint ptr %rmmio.i537.i to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load ptr, ptr %rmmio.i537.i, align 4
  %add.ptr.i654.i = getelementptr i8, ptr %240, i32 32068
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i654.i, i32 %or98.i) #9, !srcloc !49
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !52
  tail call void @arm_heavy_mb() #9
  %241 = ptrtoint ptr %rmmio.i537.i to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load ptr, ptr %rmmio.i537.i, align 4
  %add.ptr.i659.i = getelementptr i8, ptr %242, i32 32064
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i659.i, i32 48) #9, !srcloc !49
  %shl99.i = shl i32 %229, 8
  %or100.i = or i32 %shl101.i, %shl99.i
  %or102.i = or i32 %or100.i, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !52
  tail call void @arm_heavy_mb() #9
  %243 = tail call i32 @llvm.bswap.i32(i32 %or102.i) #9
  %244 = ptrtoint ptr %rmmio.i537.i to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load ptr, ptr %rmmio.i537.i, align 4
  %add.ptr.i664.i = getelementptr i8, ptr %245, i32 32060
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i664.i, i32 %243) #9, !srcloc !49
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !52
  tail call void @arm_heavy_mb() #9
  %246 = ptrtoint ptr %rmmio.i537.i to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load ptr, ptr %rmmio.i537.i, align 4
  %add.ptr.i669.i = getelementptr i8, ptr %247, i32 32056
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i669.i, i32 %222) #9, !srcloc !49
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !52
  tail call void @arm_heavy_mb() #9
  %248 = ptrtoint ptr %rmmio.i537.i to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load ptr, ptr %rmmio.i537.i, align 4
  %add.ptr.i674.i = getelementptr i8, ptr %249, i32 32048
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i674.i, i32 134217728) #9, !srcloc !49
  br label %for.body107.i

for.cond104.i:                                    ; preds = %for.body107.i
  %inc119.i = add nuw nsw i32 %j.1808.i, 1
  %exitcond829.not.i = icmp eq i32 %inc119.i, 200
  br i1 %exitcond829.not.i, label %for.cond104.i.for.end120.i_crit_edge, label %for.cond104.i.for.body107.i_crit_edge

for.cond104.i.for.body107.i_crit_edge:            ; preds = %for.cond104.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body107.i

for.cond104.i.for.end120.i_crit_edge:             ; preds = %for.cond104.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end120.i

for.body107.i:                                    ; preds = %for.cond104.i.for.body107.i_crit_edge, %while.body.i
  %j.1808.i = phi i32 [ 0, %while.body.i ], [ %inc119.i, %for.cond104.i.for.body107.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %250 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %250(i32 noundef 10737400) #9
  %251 = ptrtoint ptr %rmmio.i537.i to i32
  call void @__asan_load4_noabort(i32 %251)
  %252 = load ptr, ptr %rmmio.i537.i, align 4
  %add.ptr.i679.i = getelementptr i8, ptr %252, i32 32048
  %253 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i679.i) #9, !srcloc !50
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !51
  %254 = and i32 %253, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %254)
  %tobool110.not.i = icmp eq i32 %254, 0
  br i1 %tobool110.not.i, label %if.end112.i, label %for.cond104.i

if.end112.i:                                      ; preds = %for.body107.i
  %255 = ptrtoint ptr %rmmio.i537.i to i32
  call void @__asan_load4_noabort(i32 %255)
  %256 = load ptr, ptr %rmmio.i537.i, align 4
  %add.ptr.i685.i = getelementptr i8, ptr %256, i32 32048
  %257 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i685.i) #9, !srcloc !50
  %258 = tail call i32 @llvm.bswap.i32(i32 %257) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !51
  %and114.i = and i32 %258, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and114.i)
  %tobool115.not.i = icmp eq i32 %and114.i, 0
  br i1 %tobool115.not.i, label %if.else117.i, label %if.end112.i.for.end120.i_crit_edge

if.end112.i.for.end120.i_crit_edge:               ; preds = %if.end112.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end120.i

if.else117.i:                                     ; preds = %if.end112.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.14, i32 noundef %258) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !52
  tail call void @arm_heavy_mb() #9
  %259 = ptrtoint ptr %rmmio.i537.i to i32
  call void @__asan_load4_noabort(i32 %259)
  %260 = load ptr, ptr %rmmio.i537.i, align 4
  %add.ptr.i691.i = getelementptr i8, ptr %260, i32 32052
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i691.i, i32 65536) #9, !srcloc !49
  br label %r500_hw_i2c_xfer.exit

for.end120.i:                                     ; preds = %if.end112.i.for.end120.i_crit_edge, %for.cond104.i.for.end120.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %remaining.0812.i)
  %cmp122809.i = icmp sgt i32 %remaining.0812.i, 0
  br i1 %cmp122809.i, label %for.body124.preheader.i, label %for.end120.i.for.end131.i_crit_edge

for.end120.i.for.end131.i_crit_edge:              ; preds = %for.end120.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end131.i

for.body124.preheader.i:                          ; preds = %for.end120.i
  %smax.i = tail call i32 @llvm.smax.i32(i32 %229, i32 1) #9
  br label %for.body124.i

for.body124.i:                                    ; preds = %for.body124.i.for.body124.i_crit_edge, %for.body124.preheader.i
  %j.2810.i = phi i32 [ %inc130.i, %for.body124.i.for.body124.i_crit_edge ], [ 0, %for.body124.preheader.i ]
  %261 = ptrtoint ptr %rmmio.i537.i to i32
  call void @__asan_load4_noabort(i32 %261)
  %262 = load ptr, ptr %rmmio.i537.i, align 4
  %add.ptr.i696.i = getelementptr i8, ptr %262, i32 32068
  %263 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i696.i) #9, !srcloc !50
  %264 = lshr i32 %263, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !51
  %conv127.i = trunc i32 %264 to i8
  %265 = ptrtoint ptr %buf.i to i32
  call void @__asan_load4_noabort(i32 %265)
  %266 = load ptr, ptr %buf.i, align 4
  %add.i = add i32 %j.2810.i, %buffer_offset.0813.i
  %arrayidx128.i = getelementptr i8, ptr %266, i32 %add.i
  %267 = ptrtoint ptr %arrayidx128.i to i32
  call void @__asan_store1_noabort(i32 %267)
  store i8 %conv127.i, ptr %arrayidx128.i, align 1
  %inc130.i = add nuw nsw i32 %j.2810.i, 1
  %exitcond830.not.i = icmp eq i32 %inc130.i, %smax.i
  br i1 %exitcond830.not.i, label %for.body124.i.for.end131.i_crit_edge, label %for.body124.i.for.body124.i_crit_edge

for.body124.i.for.body124.i_crit_edge:            ; preds = %for.body124.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body124.i

for.body124.i.for.end131.i_crit_edge:             ; preds = %for.body124.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end131.i

for.end131.i:                                     ; preds = %for.body124.i.for.end131.i_crit_edge, %for.end120.i.for.end131.i_crit_edge
  %sub.i = sub i32 %remaining.0812.i, %229
  %add132.i = add i32 %229, %buffer_offset.0813.i
  %tobool88.not.i = icmp eq i32 %sub.i, 0
  br i1 %tobool88.not.i, label %for.end131.i.for.inc182.i_crit_edge, label %for.end131.i.while.body.i_crit_edge

for.end131.i.while.body.i_crit_edge:              ; preds = %for.end131.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i

for.end131.i.for.inc182.i_crit_edge:              ; preds = %for.end131.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc182.i

while.body136.i:                                  ; preds = %for.end177.i.while.body136.i_crit_edge, %while.body136.lr.ph.i
  %buffer_offset.1819.i = phi i32 [ 0, %while.body136.lr.ph.i ], [ %add179.i, %for.end177.i.while.body136.i_crit_edge ]
  %remaining.1818.i = phi i32 [ %conv83.i, %while.body136.lr.ph.i ], [ %sub178.i, %for.end177.i.while.body136.i_crit_edge ]
  %268 = tail call i32 @llvm.smin.i32(i32 %remaining.1818.i, i32 15) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !52
  tail call void @arm_heavy_mb() #9
  %269 = ptrtoint ptr %rmmio.i537.i to i32
  call void @__asan_load4_noabort(i32 %269)
  %270 = load ptr, ptr %rmmio.i537.i, align 4
  %add.ptr.i702.i = getelementptr i8, ptr %270, i32 32048
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i702.i, i32 117440512) #9, !srcloc !49
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !52
  tail call void @arm_heavy_mb() #9
  %271 = ptrtoint ptr %rmmio.i537.i to i32
  call void @__asan_load4_noabort(i32 %271)
  %272 = load ptr, ptr %rmmio.i537.i, align 4
  %add.ptr.i707.i = getelementptr i8, ptr %272, i32 32052
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i707.i, i32 16777216) #9, !srcloc !49
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %273 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %273(i32 noundef 214748) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !52
  tail call void @arm_heavy_mb() #9
  %274 = ptrtoint ptr %rmmio.i537.i to i32
  call void @__asan_load4_noabort(i32 %274)
  %275 = load ptr, ptr %rmmio.i537.i, align 4
  %add.ptr.i712.i = getelementptr i8, ptr %275, i32 32052
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i712.i, i32 0) #9, !srcloc !49
  %276 = ptrtoint ptr %arrayidx81.i to i32
  call void @__asan_load2_noabort(i32 %276)
  %277 = load i16, ptr %arrayidx81.i, align 4
  %conv143.i = zext i16 %277 to i32
  %shl144.i = shl i32 %conv143.i, 25
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !52
  tail call void @arm_heavy_mb() #9
  %278 = ptrtoint ptr %rmmio.i537.i to i32
  call void @__asan_load4_noabort(i32 %278)
  %279 = load ptr, ptr %rmmio.i537.i, align 4
  %add.ptr.i717.i = getelementptr i8, ptr %279, i32 32068
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i717.i, i32 %shl144.i) #9, !srcloc !49
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %remaining.1818.i)
  %cmp147814.i = icmp sgt i32 %remaining.1818.i, 0
  br i1 %cmp147814.i, label %for.body149.preheader.i, label %while.body136.i.for.end156.i_crit_edge

while.body136.i.for.end156.i_crit_edge:           ; preds = %while.body136.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end156.i

for.body149.preheader.i:                          ; preds = %while.body136.i
  %smax831.i = tail call i32 @llvm.smax.i32(i32 %268, i32 1) #9
  br label %for.body149.i

for.body149.i:                                    ; preds = %for.body149.i.for.body149.i_crit_edge, %for.body149.preheader.i
  %j.3815.i = phi i32 [ %inc155.i, %for.body149.i.for.body149.i_crit_edge ], [ 0, %for.body149.preheader.i ]
  %280 = ptrtoint ptr %buf150.i to i32
  call void @__asan_load4_noabort(i32 %280)
  %281 = load ptr, ptr %buf150.i, align 4
  %add151.i = add i32 %j.3815.i, %buffer_offset.1819.i
  %arrayidx152.i = getelementptr i8, ptr %281, i32 %add151.i
  %282 = ptrtoint ptr %arrayidx152.i to i32
  call void @__asan_load1_noabort(i32 %282)
  %283 = load i8, ptr %arrayidx152.i, align 1
  %conv153.i = zext i8 %283 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !52
  tail call void @arm_heavy_mb() #9
  %284 = shl nuw i32 %conv153.i, 24
  %285 = ptrtoint ptr %rmmio.i537.i to i32
  call void @__asan_load4_noabort(i32 %285)
  %286 = load ptr, ptr %rmmio.i537.i, align 4
  %add.ptr.i722.i = getelementptr i8, ptr %286, i32 32068
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i722.i, i32 %284) #9, !srcloc !49
  %inc155.i = add nuw nsw i32 %j.3815.i, 1
  %exitcond832.not.i = icmp eq i32 %inc155.i, %smax831.i
  br i1 %exitcond832.not.i, label %for.body149.i.for.end156.i_crit_edge, label %for.body149.i.for.body149.i_crit_edge

for.body149.i.for.body149.i_crit_edge:            ; preds = %for.body149.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body149.i

for.body149.i.for.end156.i_crit_edge:             ; preds = %for.body149.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end156.i

for.end156.i:                                     ; preds = %for.body149.i.for.end156.i_crit_edge, %while.body136.i.for.end156.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !52
  tail call void @arm_heavy_mb() #9
  %287 = ptrtoint ptr %rmmio.i537.i to i32
  call void @__asan_load4_noabort(i32 %287)
  %288 = load ptr, ptr %rmmio.i537.i, align 4
  %add.ptr.i727.i = getelementptr i8, ptr %288, i32 32064
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i727.i, i32 48) #9, !srcloc !49
  %shl157.i = shl i32 %268, 8
  %or158.i = or i32 %shl101.i, %shl157.i
  %or160.i = or i32 %or158.i, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !52
  tail call void @arm_heavy_mb() #9
  %289 = tail call i32 @llvm.bswap.i32(i32 %or160.i) #9
  %290 = ptrtoint ptr %rmmio.i537.i to i32
  call void @__asan_load4_noabort(i32 %290)
  %291 = load ptr, ptr %rmmio.i537.i, align 4
  %add.ptr.i732.i = getelementptr i8, ptr %291, i32 32060
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i732.i, i32 %289) #9, !srcloc !49
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !52
  tail call void @arm_heavy_mb() #9
  %292 = ptrtoint ptr %rmmio.i537.i to i32
  call void @__asan_load4_noabort(i32 %292)
  %293 = load ptr, ptr %rmmio.i537.i, align 4
  %add.ptr.i737.i = getelementptr i8, ptr %293, i32 32056
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i737.i, i32 %223) #9, !srcloc !49
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !52
  tail call void @arm_heavy_mb() #9
  %294 = ptrtoint ptr %rmmio.i537.i to i32
  call void @__asan_load4_noabort(i32 %294)
  %295 = load ptr, ptr %rmmio.i537.i, align 4
  %add.ptr.i742.i = getelementptr i8, ptr %295, i32 32048
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i742.i, i32 134217728) #9, !srcloc !49
  br label %for.body164.i

for.cond161.i:                                    ; preds = %for.body164.i
  %inc176.i = add nuw nsw i32 %j.4816.i, 1
  %exitcond833.not.i = icmp eq i32 %inc176.i, 200
  br i1 %exitcond833.not.i, label %for.cond161.i.for.end177.i_crit_edge, label %for.cond161.i.for.body164.i_crit_edge

for.cond161.i.for.body164.i_crit_edge:            ; preds = %for.cond161.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body164.i

for.cond161.i.for.end177.i_crit_edge:             ; preds = %for.cond161.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end177.i

for.body164.i:                                    ; preds = %for.cond161.i.for.body164.i_crit_edge, %for.end156.i
  %j.4816.i = phi i32 [ 0, %for.end156.i ], [ %inc176.i, %for.cond161.i.for.body164.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %296 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %296(i32 noundef 10737400) #9
  %297 = ptrtoint ptr %rmmio.i537.i to i32
  call void @__asan_load4_noabort(i32 %297)
  %298 = load ptr, ptr %rmmio.i537.i, align 4
  %add.ptr.i747.i = getelementptr i8, ptr %298, i32 32048
  %299 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i747.i) #9, !srcloc !50
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !51
  %300 = and i32 %299, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %300)
  %tobool167.not.i = icmp eq i32 %300, 0
  br i1 %tobool167.not.i, label %if.end169.i, label %for.cond161.i

if.end169.i:                                      ; preds = %for.body164.i
  %301 = ptrtoint ptr %rmmio.i537.i to i32
  call void @__asan_load4_noabort(i32 %301)
  %302 = load ptr, ptr %rmmio.i537.i, align 4
  %add.ptr.i753.i = getelementptr i8, ptr %302, i32 32048
  %303 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i753.i) #9, !srcloc !50
  %304 = tail call i32 @llvm.bswap.i32(i32 %303) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !51
  %and171.i = and i32 %304, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and171.i)
  %tobool172.not.i = icmp eq i32 %and171.i, 0
  br i1 %tobool172.not.i, label %if.else174.i, label %if.end169.i.for.end177.i_crit_edge

if.end169.i.for.end177.i_crit_edge:               ; preds = %if.end169.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end177.i

if.else174.i:                                     ; preds = %if.end169.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.13, i32 noundef %304) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !52
  tail call void @arm_heavy_mb() #9
  %305 = ptrtoint ptr %rmmio.i537.i to i32
  call void @__asan_load4_noabort(i32 %305)
  %306 = load ptr, ptr %rmmio.i537.i, align 4
  %add.ptr.i759.i = getelementptr i8, ptr %306, i32 32052
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i759.i, i32 65536) #9, !srcloc !49
  br label %r500_hw_i2c_xfer.exit

for.end177.i:                                     ; preds = %if.end169.i.for.end177.i_crit_edge, %for.cond161.i.for.end177.i_crit_edge
  %sub178.i = sub i32 %remaining.1818.i, %268
  %add179.i = add i32 %268, %buffer_offset.1819.i
  %tobool135.not.i = icmp eq i32 %sub178.i, 0
  br i1 %tobool135.not.i, label %for.end177.i.for.inc182.i_crit_edge, label %for.end177.i.while.body136.i_crit_edge

for.end177.i.while.body136.i_crit_edge:           ; preds = %for.end177.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body136.i

for.end177.i.for.inc182.i_crit_edge:              ; preds = %for.end177.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc182.i

for.inc182.i:                                     ; preds = %for.end177.i.for.inc182.i_crit_edge, %for.end131.i.for.inc182.i_crit_edge, %while.cond134.preheader.i.for.inc182.i_crit_edge, %while.cond.preheader.i.for.inc182.i_crit_edge
  %inc183.i = add nuw nsw i32 %i.1821.i, 1
  %exitcond834.not.i = icmp eq i32 %inc183.i, %num
  br i1 %exitcond834.not.i, label %for.inc182.i.r500_hw_i2c_xfer.exit_crit_edge, label %for.inc182.i.for.body80.i_crit_edge

for.inc182.i.for.body80.i_crit_edge:              ; preds = %for.inc182.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body80.i

for.inc182.i.r500_hw_i2c_xfer.exit_crit_edge:     ; preds = %for.inc182.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %r500_hw_i2c_xfer.exit

r500_hw_i2c_xfer.exit:                            ; preds = %for.inc182.i.r500_hw_i2c_xfer.exit_crit_edge, %if.else174.i, %if.else117.i, %if.end76.i.r500_hw_i2c_xfer.exit_crit_edge, %if.else.i, %if.end68.i.r500_hw_i2c_xfer.exit_crit_edge, %for.cond60.i.r500_hw_i2c_xfer.exit_crit_edge, %sw.default.i, %if.then44.i
  %ret.0.i = phi i32 [ -16, %if.then44.i ], [ -22, %sw.default.i ], [ 1, %if.end68.i.r500_hw_i2c_xfer.exit_crit_edge ], [ -5, %if.else.i ], [ -5, %if.else117.i ], [ -5, %if.else174.i ], [ %num, %if.end76.i.r500_hw_i2c_xfer.exit_crit_edge ], [ 1, %for.cond60.i.r500_hw_i2c_xfer.exit_crit_edge ], [ %num, %for.inc182.i.r500_hw_i2c_xfer.exit_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !52
  tail call void @arm_heavy_mb() #9
  %307 = ptrtoint ptr %rmmio.i537.i to i32
  call void @__asan_load4_noabort(i32 %307)
  %308 = load ptr, ptr %rmmio.i537.i, align 4
  %add.ptr.i764.i = getelementptr i8, ptr %308, i32 32048
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i764.i, i32 117440512) #9, !srcloc !49
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !52
  tail call void @arm_heavy_mb() #9
  %309 = ptrtoint ptr %rmmio.i537.i to i32
  call void @__asan_load4_noabort(i32 %309)
  %310 = load ptr, ptr %rmmio.i537.i, align 4
  %add.ptr.i769.i = getelementptr i8, ptr %310, i32 32052
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i769.i, i32 16777216) #9, !srcloc !49
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %311 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %311(i32 noundef 214748) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !52
  tail call void @arm_heavy_mb() #9
  %312 = ptrtoint ptr %rmmio.i537.i to i32
  call void @__asan_load4_noabort(i32 %312)
  %313 = load ptr, ptr %rmmio.i537.i, align 4
  %add.ptr.i774.i = getelementptr i8, ptr %313, i32 32052
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i774.i, i32 0) #9, !srcloc !49
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !52
  tail call void @arm_heavy_mb() #9
  %314 = ptrtoint ptr %rmmio.i537.i to i32
  call void @__asan_load4_noabort(i32 %314)
  %315 = load ptr, ptr %rmmio.i537.i, align 4
  %add.ptr.i779.i = getelementptr i8, ptr %315, i32 32080
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i779.i, i32 65536) #9, !srcloc !49
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !52
  tail call void @arm_heavy_mb() #9
  %316 = ptrtoint ptr %rmmio.i537.i to i32
  call void @__asan_load4_noabort(i32 %316)
  %317 = load ptr, ptr %rmmio.i537.i, align 4
  %add.ptr.i784.i = getelementptr i8, ptr %317, i32 32056
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i784.i, i32 %169) #9, !srcloc !49
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !52
  tail call void @arm_heavy_mb() #9
  %318 = ptrtoint ptr %rmmio.i537.i to i32
  call void @__asan_load4_noabort(i32 %318)
  %319 = load ptr, ptr %rmmio.i537.i, align 4
  %add.ptr.i789.i = getelementptr i8, ptr %319, i32 1172
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i789.i, i32 %172) #9, !srcloc !49
  %320 = ptrtoint ptr %rmmio.i537.i to i32
  call void @__asan_load4_noabort(i32 %320)
  %321 = load ptr, ptr %rmmio.i537.i, align 4
  %add.ptr.i794.i = getelementptr i8, ptr %321, i32 40
  %322 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i794.i) #9, !srcloc !50
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !51
  %323 = and i32 %322, -131073
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !52
  tail call void @arm_heavy_mb() #9
  %324 = ptrtoint ptr %rmmio.i537.i to i32
  call void @__asan_load4_noabort(i32 %324)
  %325 = load ptr, ptr %rmmio.i537.i, align 4
  %add.ptr.i800.i = getelementptr i8, ptr %325, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i800.i, i32 %323) #9, !srcloc !49
  tail call void @mutex_unlock(ptr noundef %pm.i) #9
  tail call void @mutex_unlock(ptr noundef %dc_hw_i2c_mutex.i) #9
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.10) #9
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %r500_hw_i2c_xfer.exit, %if.then, %sw.bb, %entry.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge54, %entry.sw.epilog_crit_edge55, %entry.sw.epilog_crit_edge61, %entry.sw.epilog_crit_edge62, %entry.sw.epilog_crit_edge63, %entry.sw.epilog_crit_edge64, %entry.sw.epilog_crit_edge65, %entry.sw.epilog_crit_edge66, %entry.sw.epilog_crit_edge67, %entry.sw.epilog_crit_edge68, %entry.sw.epilog_crit_edge69, %entry.sw.epilog_crit_edge70, %entry.sw.epilog_crit_edge71, %entry.sw.epilog_crit_edge72, %entry.sw.epilog_crit_edge73, %entry.sw.epilog_crit_edge74, %entry.sw.epilog_crit_edge75, %entry.sw.epilog_crit_edge76, %entry.sw.epilog_crit_edge77
  %ret.0 = phi i32 [ -5, %sw.default ], [ %call5, %if.then ], [ %ret.0.i, %r500_hw_i2c_xfer.exit ], [ 0, %entry.sw.epilog_crit_edge ], [ 0, %entry.sw.epilog_crit_edge54 ], [ 0, %entry.sw.epilog_crit_edge55 ], [ 0, %entry.sw.epilog_crit_edge61 ], [ 0, %entry.sw.epilog_crit_edge62 ], [ 0, %entry.sw.epilog_crit_edge63 ], [ 0, %entry.sw.epilog_crit_edge64 ], [ 0, %entry.sw.epilog_crit_edge65 ], [ 0, %entry.sw.epilog_crit_edge66 ], [ 0, %entry.sw.epilog_crit_edge67 ], [ 0, %entry.sw.epilog_crit_edge68 ], [ 0, %entry.sw.epilog_crit_edge69 ], [ 0, %entry.sw.epilog_crit_edge70 ], [ 0, %entry.sw.epilog_crit_edge71 ], [ 0, %entry.sw.epilog_crit_edge72 ], [ 0, %entry.sw.epilog_crit_edge73 ], [ 0, %entry.sw.epilog_crit_edge74 ], [ 0, %entry.sw.epilog_crit_edge75 ], [ 0, %entry.sw.epilog_crit_edge76 ], [ 0, %entry.sw.epilog_crit_edge77 ], [ %call2, %sw.bb ]
  tail call void @mutex_unlock(ptr noundef %mutex) #9
  ret i32 %ret.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @radeon_hw_i2c_func(ptr nocapture noundef readnone %adap) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 251592713
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @r100_hw_i2c_xfer(ptr nocapture noundef readonly %i2c_adap, ptr nocapture noundef readonly %msgs, i32 noundef %num) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %i2c_adap, i32 0, i32 9, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %dev = getelementptr inbounds %struct.radeon_i2c_chan, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 8
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev_private, align 4
  %dc_hw_i2c_mutex = getelementptr inbounds %struct.radeon_device, ptr %5, i32 0, i32 92
  tail call void @mutex_lock_nested(ptr noundef %dc_hw_i2c_mutex, i32 noundef 0) #9
  %pm = getelementptr inbounds %struct.radeon_device, ptr %5, i32 0, i32 58
  tail call void @mutex_lock_nested(ptr noundef %pm, i32 noundef 0) #9
  %call2 = tail call fastcc i32 @radeon_get_i2c_prescale(ptr noundef %5)
  %shl = shl i32 %call2, 16
  %or5 = or i32 %shl, 4928
  %is_atom_bios = getelementptr inbounds %struct.radeon_device, ptr %5, i32 0, i32 14
  %6 = ptrtoint ptr %is_atom_bios to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %is_atom_bios, align 4, !range !47
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %rmmio.i = getelementptr inbounds %struct.radeon_device, ptr %5, i32 0, i32 31
  %8 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %9, i32 40
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !50
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !51
  %11 = or i32 %10, 131072
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !52
  tail call void @arm_heavy_mb() #9
  %12 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i270 = getelementptr i8, ptr %13, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i270, i32 %11) #9, !srcloc !49
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %mm_i2c = getelementptr inbounds %struct.radeon_i2c_chan, ptr %1, i32 0, i32 3, i32 4
  %14 = ptrtoint ptr %mm_i2c to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %mm_i2c, align 1, !range !47
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool8.not = icmp eq i8 %15, 0
  br i1 %tobool8.not, label %if.else, label %if.end.if.end48_crit_edge

if.end.if.end48_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end48

if.else:                                          ; preds = %if.end
  %family = getelementptr inbounds %struct.radeon_device, ptr %5, i32 0, i32 6
  %16 = ptrtoint ptr %family to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %family, align 4
  %18 = zext i32 %17 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.17)
  switch i32 %17, label %sw.default46 [
    i32 0, label %if.else.sw.bb_crit_edge
    i32 1, label %if.else.sw.bb_crit_edge412
    i32 2, label %if.else.sw.bb_crit_edge413
    i32 3, label %if.else.sw.bb_crit_edge414
    i32 4, label %if.else.sw.bb_crit_edge415
    i32 7, label %if.else.sw.bb_crit_edge416
    i32 5, label %sw.bb10
    i32 6, label %if.else.sw.bb18_crit_edge
    i32 8, label %if.else.sw.bb18_crit_edge417
    i32 9, label %if.else.sw.bb28_crit_edge
    i32 10, label %if.else.sw.bb28_crit_edge418
    i32 11, label %if.else.sw.bb36_crit_edge
    i32 12, label %if.else.sw.bb36_crit_edge419
    i32 13, label %if.else.sw.bb36_crit_edge420
    i32 14, label %if.else.sw.bb36_crit_edge421
    i32 15, label %if.else.sw.bb36_crit_edge422
    i32 16, label %if.else.sw.bb36_crit_edge423
    i32 17, label %if.else.sw.bb36_crit_edge424
  ]

if.else.sw.bb36_crit_edge424:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb36

if.else.sw.bb36_crit_edge423:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb36

if.else.sw.bb36_crit_edge422:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb36

if.else.sw.bb36_crit_edge421:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb36

if.else.sw.bb36_crit_edge420:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb36

if.else.sw.bb36_crit_edge419:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb36

if.else.sw.bb36_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb36

if.else.sw.bb28_crit_edge418:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb28

if.else.sw.bb28_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb28

if.else.sw.bb18_crit_edge417:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb18

if.else.sw.bb18_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb18

if.else.sw.bb_crit_edge416:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb

if.else.sw.bb_crit_edge415:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb

if.else.sw.bb_crit_edge414:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb

if.else.sw.bb_crit_edge413:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb

if.else.sw.bb_crit_edge412:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb

if.else.sw.bb_crit_edge:                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb

sw.bb:                                            ; preds = %if.else.sw.bb_crit_edge, %if.else.sw.bb_crit_edge412, %if.else.sw.bb_crit_edge413, %if.else.sw.bb_crit_edge414, %if.else.sw.bb_crit_edge415, %if.else.sw.bb_crit_edge416
  %mask_clk_reg = getelementptr inbounds %struct.radeon_i2c_chan, ptr %1, i32 0, i32 3, i32 5
  %19 = ptrtoint ptr %mask_clk_reg to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %mask_clk_reg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 100, i32 %20)
  %cond = icmp eq i32 %20, 100
  br i1 %cond, label %sw.bb.if.end48_crit_edge, label %sw.default

sw.bb.if.end48_crit_edge:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end48

sw.default:                                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.11) #9
  br label %done

sw.bb10:                                          ; preds = %if.else
  %mask_clk_reg11 = getelementptr inbounds %struct.radeon_i2c_chan, ptr %1, i32 0, i32 3, i32 5
  %21 = ptrtoint ptr %mask_clk_reg11 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %mask_clk_reg11, align 4
  %23 = zext i32 %22 to i64
  call void @__sanitizer_cov_trace_switch(i64 %23, ptr @__sancov_gen_cov_switch_values.18)
  switch i32 %22, label %sw.default16 [
    i32 100, label %sw.bb10.if.end48_crit_edge
    i32 104, label %sw.bb14
  ]

sw.bb10.if.end48_crit_edge:                       ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end48

sw.bb14:                                          ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #11
  %or15 = or i32 %shl, 4944
  br label %if.end48

sw.default16:                                     ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.11) #9
  br label %done

sw.bb18:                                          ; preds = %if.else.sw.bb18_crit_edge, %if.else.sw.bb18_crit_edge417
  %mask_clk_reg19 = getelementptr inbounds %struct.radeon_i2c_chan, ptr %1, i32 0, i32 3, i32 5
  %24 = ptrtoint ptr %mask_clk_reg19 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %mask_clk_reg19, align 4
  %26 = zext i32 %25 to i64
  call void @__sanitizer_cov_trace_switch(i64 %26, ptr @__sancov_gen_cov_switch_values.19)
  switch i32 %25, label %sw.default26 [
    i32 100, label %sw.bb18.if.end48_crit_edge
    i32 96, label %sw.bb22
    i32 108, label %sw.bb24
  ]

sw.bb18.if.end48_crit_edge:                       ; preds = %sw.bb18
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end48

sw.bb22:                                          ; preds = %sw.bb18
  call void @__sanitizer_cov_trace_pc() #11
  %or23 = or i32 %shl, 4936
  br label %if.end48

sw.bb24:                                          ; preds = %sw.bb18
  call void @__sanitizer_cov_trace_pc() #11
  %or25 = or i32 %shl, 4944
  br label %if.end48

sw.default26:                                     ; preds = %sw.bb18
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.11) #9
  br label %done

sw.bb28:                                          ; preds = %if.else.sw.bb28_crit_edge, %if.else.sw.bb28_crit_edge418
  %mask_clk_reg29 = getelementptr inbounds %struct.radeon_i2c_chan, ptr %1, i32 0, i32 3, i32 5
  %27 = ptrtoint ptr %mask_clk_reg29 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %mask_clk_reg29, align 4
  %29 = zext i32 %28 to i64
  call void @__sanitizer_cov_trace_switch(i64 %29, ptr @__sancov_gen_cov_switch_values.20)
  switch i32 %28, label %sw.default34 [
    i32 96, label %sw.bb28.if.end48_crit_edge
    i32 100, label %sw.bb32
  ]

sw.bb28.if.end48_crit_edge:                       ; preds = %sw.bb28
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end48

sw.bb32:                                          ; preds = %sw.bb28
  call void @__sanitizer_cov_trace_pc() #11
  %or33 = or i32 %shl, 4944
  br label %if.end48

sw.default34:                                     ; preds = %sw.bb28
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.11) #9
  br label %done

sw.bb36:                                          ; preds = %if.else.sw.bb36_crit_edge, %if.else.sw.bb36_crit_edge419, %if.else.sw.bb36_crit_edge420, %if.else.sw.bb36_crit_edge421, %if.else.sw.bb36_crit_edge422, %if.else.sw.bb36_crit_edge423, %if.else.sw.bb36_crit_edge424
  %mask_clk_reg37 = getelementptr inbounds %struct.radeon_i2c_chan, ptr %1, i32 0, i32 3, i32 5
  %30 = ptrtoint ptr %mask_clk_reg37 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %mask_clk_reg37, align 4
  %32 = zext i32 %31 to i64
  call void @__sanitizer_cov_trace_switch(i64 %32, ptr @__sancov_gen_cov_switch_values.21)
  switch i32 %31, label %sw.default44 [
    i32 96, label %sw.bb36.if.end48_crit_edge
    i32 100, label %sw.bb40
    i32 104, label %sw.bb42
  ]

sw.bb36.if.end48_crit_edge:                       ; preds = %sw.bb36
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end48

sw.bb40:                                          ; preds = %sw.bb36
  call void @__sanitizer_cov_trace_pc() #11
  %or41 = or i32 %shl, 4936
  br label %if.end48

sw.bb42:                                          ; preds = %sw.bb36
  call void @__sanitizer_cov_trace_pc() #11
  %or43 = or i32 %shl, 4944
  br label %if.end48

sw.default44:                                     ; preds = %sw.bb36
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.11) #9
  br label %done

sw.default46:                                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.12) #9
  br label %done

if.end48:                                         ; preds = %sw.bb42, %sw.bb40, %sw.bb36.if.end48_crit_edge, %sw.bb32, %sw.bb28.if.end48_crit_edge, %sw.bb24, %sw.bb22, %sw.bb18.if.end48_crit_edge, %sw.bb14, %sw.bb10.if.end48_crit_edge, %sw.bb.if.end48_crit_edge, %if.end.if.end48_crit_edge
  %i2c_cntl_0.0 = phi i32 [ 736, %sw.bb42 ], [ 736, %sw.bb40 ], [ 736, %sw.bb32 ], [ 736, %sw.bb24 ], [ 736, %sw.bb22 ], [ 736, %sw.bb14 ], [ 736, %sw.bb.if.end48_crit_edge ], [ 144, %if.end.if.end48_crit_edge ], [ 736, %sw.bb10.if.end48_crit_edge ], [ 736, %sw.bb18.if.end48_crit_edge ], [ 736, %sw.bb28.if.end48_crit_edge ], [ 736, %sw.bb36.if.end48_crit_edge ]
  %i2c_cntl_1.0 = phi i32 [ 740, %sw.bb42 ], [ 740, %sw.bb40 ], [ 740, %sw.bb32 ], [ 740, %sw.bb24 ], [ 740, %sw.bb22 ], [ 740, %sw.bb14 ], [ 740, %sw.bb.if.end48_crit_edge ], [ 148, %if.end.if.end48_crit_edge ], [ 740, %sw.bb10.if.end48_crit_edge ], [ 740, %sw.bb18.if.end48_crit_edge ], [ 740, %sw.bb28.if.end48_crit_edge ], [ 740, %sw.bb36.if.end48_crit_edge ]
  %i2c_data.0 = phi i32 [ 744, %sw.bb42 ], [ 744, %sw.bb40 ], [ 744, %sw.bb32 ], [ 744, %sw.bb24 ], [ 744, %sw.bb22 ], [ 744, %sw.bb14 ], [ 744, %sw.bb.if.end48_crit_edge ], [ 152, %if.end.if.end48_crit_edge ], [ 744, %sw.bb10.if.end48_crit_edge ], [ 744, %sw.bb18.if.end48_crit_edge ], [ 744, %sw.bb28.if.end48_crit_edge ], [ 744, %sw.bb36.if.end48_crit_edge ]
  %reg.0 = phi i32 [ %or43, %sw.bb42 ], [ %or41, %sw.bb40 ], [ %or33, %sw.bb32 ], [ %or25, %sw.bb24 ], [ %or23, %sw.bb22 ], [ %or15, %sw.bb14 ], [ %or5, %sw.bb.if.end48_crit_edge ], [ %or5, %if.end.if.end48_crit_edge ], [ %or5, %sw.bb10.if.end48_crit_edge ], [ %or5, %sw.bb18.if.end48_crit_edge ], [ %or5, %sw.bb28.if.end48_crit_edge ], [ %or5, %sw.bb36.if.end48_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %num)
  %cmp = icmp eq i32 %num, 1
  br i1 %cmp, label %land.lhs.true, label %if.end67

land.lhs.true:                                    ; preds = %if.end48
  %len = getelementptr inbounds %struct.i2c_msg, ptr %msgs, i32 0, i32 2
  %33 = ptrtoint ptr %len to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %34)
  %cmp49 = icmp eq i16 %34, 0
  br i1 %cmp49, label %if.then51, label %land.lhs.true.for.body71.lr.ph_crit_edge

land.lhs.true.for.body71.lr.ph_crit_edge:         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body71.lr.ph

if.then51:                                        ; preds = %land.lhs.true
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !52
  tail call void @arm_heavy_mb() #9
  %rmmio.i273 = getelementptr inbounds %struct.radeon_device, ptr %5, i32 0, i32 31
  %35 = ptrtoint ptr %rmmio.i273 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %rmmio.i273, align 4
  %add.ptr.i274 = getelementptr i8, ptr %36, i32 %i2c_cntl_0.0
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i274, i32 654311424) #9, !srcloc !49
  %37 = ptrtoint ptr %msgs to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %msgs, align 4
  %conv52 = zext i16 %38 to i32
  %shl53 = shl i32 %conv52, 25
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !52
  tail call void @arm_heavy_mb() #9
  %39 = ptrtoint ptr %rmmio.i273 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %rmmio.i273, align 4
  %add.ptr.i278 = getelementptr i8, ptr %40, i32 %i2c_data.0
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i278, i32 %shl53) #9, !srcloc !49
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !52
  tail call void @arm_heavy_mb() #9
  %41 = ptrtoint ptr %rmmio.i273 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %rmmio.i273, align 4
  %add.ptr.i282 = getelementptr i8, ptr %42, i32 %i2c_data.0
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i282, i32 0) #9, !srcloc !49
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !52
  tail call void @arm_heavy_mb() #9
  %43 = ptrtoint ptr %rmmio.i273 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %rmmio.i273, align 4
  %add.ptr.i286 = getelementptr i8, ptr %44, i32 %i2c_cntl_1.0
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i286, i32 285213232) #9, !srcloc !49
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !52
  tail call void @arm_heavy_mb() #9
  %45 = tail call i32 @llvm.bswap.i32(i32 %reg.0) #9
  %46 = ptrtoint ptr %rmmio.i273 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %rmmio.i273, align 4
  %add.ptr.i290 = getelementptr i8, ptr %47, i32 %i2c_cntl_0.0
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i290, i32 %45) #9, !srcloc !49
  br label %for.body

for.cond:                                         ; preds = %for.body
  %inc = add nuw nsw i32 %k.0398, 1
  %exitcond403.not = icmp eq i32 %inc, 32
  br i1 %exitcond403.not, label %for.cond.done_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.cond.done_crit_edge:                          ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %done

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %if.then51
  %k.0398 = phi i32 [ 0, %if.then51 ], [ %inc, %for.cond.for.body_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %48 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %48(i32 noundef 2147480) #9
  %49 = ptrtoint ptr %rmmio.i273 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %rmmio.i273, align 4
  %add.ptr.i294 = getelementptr i8, ptr %50, i32 %i2c_cntl_0.0
  %51 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i294) #9, !srcloc !50
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !51
  %52 = and i32 %51, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %tobool58.not = icmp eq i32 %52, 0
  br i1 %tobool58.not, label %if.end60, label %for.cond

if.end60:                                         ; preds = %for.body
  %53 = ptrtoint ptr %rmmio.i273 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %rmmio.i273, align 4
  %add.ptr.i298 = getelementptr i8, ptr %54, i32 %i2c_cntl_0.0
  %55 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i298) #9, !srcloc !50
  %56 = tail call i32 @llvm.bswap.i32(i32 %55) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !51
  %and62 = and i32 %56, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and62)
  %tobool63.not = icmp eq i32 %and62, 0
  br i1 %tobool63.not, label %if.else65, label %if.end60.done_crit_edge

if.end60.done_crit_edge:                          ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #11
  br label %done

if.else65:                                        ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.13, i32 noundef %56) #9
  %or66 = or i32 %56, 2048
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !52
  tail call void @arm_heavy_mb() #9
  %57 = tail call i32 @llvm.bswap.i32(i32 %or66) #9
  %58 = ptrtoint ptr %rmmio.i273 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %rmmio.i273, align 4
  %add.ptr.i302 = getelementptr i8, ptr %59, i32 %i2c_cntl_0.0
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i302, i32 %57) #9, !srcloc !49
  br label %done

if.end67:                                         ; preds = %if.end48
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num)
  %cmp69395 = icmp sgt i32 %num, 0
  br i1 %cmp69395, label %if.end67.for.body71.lr.ph_crit_edge, label %if.end67.done_crit_edge

if.end67.done_crit_edge:                          ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #11
  br label %done

if.end67.for.body71.lr.ph_crit_edge:              ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body71.lr.ph

for.body71.lr.ph:                                 ; preds = %if.end67.for.body71.lr.ph_crit_edge, %land.lhs.true.for.body71.lr.ph_crit_edge
  %rmmio.i305 = getelementptr inbounds %struct.radeon_device, ptr %5, i32 0, i32 31
  %or88 = or i32 %reg.0, 1024
  %60 = tail call i32 @llvm.bswap.i32(i32 %or88) #9
  %61 = tail call i32 @llvm.bswap.i32(i32 %reg.0) #9
  br label %for.body71

for.body71:                                       ; preds = %for.inc141.for.body71_crit_edge, %for.body71.lr.ph
  %i.0396 = phi i32 [ 0, %for.body71.lr.ph ], [ %inc142, %for.inc141.for.body71_crit_edge ]
  %arrayidx72 = getelementptr %struct.i2c_msg, ptr %msgs, i32 %i.0396
  %len74 = getelementptr %struct.i2c_msg, ptr %msgs, i32 %i.0396, i32 2
  %62 = ptrtoint ptr %len74 to i32
  call void @__asan_load2_noabort(i32 %62)
  %63 = load i16, ptr %len74, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %63)
  %cmp76392.not = icmp eq i16 %63, 0
  br i1 %cmp76392.not, label %for.body71.for.inc141_crit_edge, label %for.body78.lr.ph

for.body71.for.inc141_crit_edge:                  ; preds = %for.body71
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc141

for.body78.lr.ph:                                 ; preds = %for.body71
  %flags = getelementptr %struct.i2c_msg, ptr %msgs, i32 %i.0396, i32 1
  %buf = getelementptr %struct.i2c_msg, ptr %msgs, i32 %i.0396, i32 3
  br label %for.body78

for.body78:                                       ; preds = %for.inc138.for.body78_crit_edge, %for.body78.lr.ph
  %j.0393 = phi i32 [ 0, %for.body78.lr.ph ], [ %inc139, %for.inc138.for.body78_crit_edge ]
  %64 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %64)
  %65 = load i16, ptr %flags, align 2
  %66 = and i16 %65, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %66)
  %tobool81.not = icmp eq i16 %66, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  tail call void @arm_heavy_mb() #9
  %67 = ptrtoint ptr %rmmio.i305 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %rmmio.i305, align 4
  %add.ptr.i338 = getelementptr i8, ptr %68, i32 %i2c_cntl_0.0
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i338, i32 654311424) #9
  %69 = ptrtoint ptr %arrayidx72 to i32
  call void @__asan_load2_noabort(i32 %69)
  %70 = load i16, ptr %arrayidx72, align 4
  %conv113 = zext i16 %70 to i32
  %shl114 = shl i32 %conv113, 25
  br i1 %tobool81.not, label %if.else111, label %if.then82

if.then82:                                        ; preds = %for.body78
  %or87 = or i32 %shl114, 16777216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !52
  tail call void @arm_heavy_mb() #9
  %71 = ptrtoint ptr %rmmio.i305 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %rmmio.i305, align 4
  %add.ptr.i310 = getelementptr i8, ptr %72, i32 %i2c_data.0
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i310, i32 %or87) #9, !srcloc !49
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !52
  tail call void @arm_heavy_mb() #9
  %73 = ptrtoint ptr %rmmio.i305 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %rmmio.i305, align 4
  %add.ptr.i314 = getelementptr i8, ptr %74, i32 %i2c_cntl_1.0
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i314, i32 285213232) #9, !srcloc !49
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !52
  tail call void @arm_heavy_mb() #9
  %75 = ptrtoint ptr %rmmio.i305 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %rmmio.i305, align 4
  %add.ptr.i318 = getelementptr i8, ptr %76, i32 %i2c_cntl_0.0
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i318, i32 %60) #9, !srcloc !49
  br label %for.body92

for.cond89:                                       ; preds = %for.body92
  %inc105 = add nuw nsw i32 %k.1389, 1
  %exitcond.not = icmp eq i32 %inc105, 32
  br i1 %exitcond.not, label %for.cond89.for.end106_crit_edge, label %for.cond89.for.body92_crit_edge

for.cond89.for.body92_crit_edge:                  ; preds = %for.cond89
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body92

for.cond89.for.end106_crit_edge:                  ; preds = %for.cond89
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end106

for.body92:                                       ; preds = %for.cond89.for.body92_crit_edge, %if.then82
  %k.1389 = phi i32 [ 0, %if.then82 ], [ %inc105, %for.cond89.for.body92_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %77 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %77(i32 noundef 2147480) #9
  %78 = ptrtoint ptr %rmmio.i305 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %rmmio.i305, align 4
  %add.ptr.i322 = getelementptr i8, ptr %79, i32 %i2c_cntl_0.0
  %80 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i322) #9, !srcloc !50
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !51
  %81 = and i32 %80, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %81)
  %tobool95.not = icmp eq i32 %81, 0
  br i1 %tobool95.not, label %if.end97, label %for.cond89

if.end97:                                         ; preds = %for.body92
  %82 = ptrtoint ptr %rmmio.i305 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %rmmio.i305, align 4
  %add.ptr.i326 = getelementptr i8, ptr %83, i32 %i2c_cntl_0.0
  %84 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i326) #9, !srcloc !50
  %85 = tail call i32 @llvm.bswap.i32(i32 %84) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !51
  %and99 = and i32 %85, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and99)
  %tobool100.not = icmp eq i32 %and99, 0
  br i1 %tobool100.not, label %if.else102, label %if.end97.for.end106_crit_edge

if.end97.for.end106_crit_edge:                    ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end106

if.else102:                                       ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.14, i32 noundef %85) #9
  %or103 = or i32 %85, 2048
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !52
  tail call void @arm_heavy_mb() #9
  %86 = tail call i32 @llvm.bswap.i32(i32 %or103) #9
  %87 = ptrtoint ptr %rmmio.i305 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %rmmio.i305, align 4
  %add.ptr.i330 = getelementptr i8, ptr %88, i32 %i2c_cntl_0.0
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i330, i32 %86) #9, !srcloc !49
  br label %done

for.end106:                                       ; preds = %if.end97.for.end106_crit_edge, %for.cond89.for.end106_crit_edge
  %89 = ptrtoint ptr %rmmio.i305 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %rmmio.i305, align 4
  %add.ptr.i334 = getelementptr i8, ptr %90, i32 %i2c_data.0
  %91 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i334) #9, !srcloc !50
  %92 = lshr i32 %91, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !51
  %conv109 = trunc i32 %92 to i8
  %93 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %buf, align 4
  %arrayidx110 = getelementptr i8, ptr %94, i32 %j.0393
  %95 = ptrtoint ptr %arrayidx110 to i32
  call void @__asan_store1_noabort(i32 %95)
  store i8 %conv109, ptr %arrayidx110, align 1
  br label %for.inc138

if.else111:                                       ; preds = %for.body78
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !52
  tail call void @arm_heavy_mb() #9
  %96 = ptrtoint ptr %rmmio.i305 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %rmmio.i305, align 4
  %add.ptr.i342 = getelementptr i8, ptr %97, i32 %i2c_data.0
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i342, i32 %shl114) #9, !srcloc !49
  %98 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %buf, align 4
  %arrayidx117 = getelementptr i8, ptr %99, i32 %j.0393
  %100 = ptrtoint ptr %arrayidx117 to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %arrayidx117, align 1
  %conv118 = zext i8 %101 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !52
  tail call void @arm_heavy_mb() #9
  %102 = shl nuw i32 %conv118, 24
  %103 = ptrtoint ptr %rmmio.i305 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %rmmio.i305, align 4
  %add.ptr.i346 = getelementptr i8, ptr %104, i32 %i2c_data.0
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i346, i32 %102) #9, !srcloc !49
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !52
  tail call void @arm_heavy_mb() #9
  %105 = ptrtoint ptr %rmmio.i305 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %rmmio.i305, align 4
  %add.ptr.i350 = getelementptr i8, ptr %106, i32 %i2c_cntl_1.0
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i350, i32 285213232) #9, !srcloc !49
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !52
  tail call void @arm_heavy_mb() #9
  %107 = ptrtoint ptr %rmmio.i305 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %rmmio.i305, align 4
  %add.ptr.i354 = getelementptr i8, ptr %108, i32 %i2c_cntl_0.0
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i354, i32 %61) #9, !srcloc !49
  br label %for.body122

for.cond119:                                      ; preds = %for.body122
  %inc135 = add nuw nsw i32 %k.2390, 1
  %exitcond401.not = icmp eq i32 %inc135, 32
  br i1 %exitcond401.not, label %for.cond119.for.inc138_crit_edge, label %for.cond119.for.body122_crit_edge

for.cond119.for.body122_crit_edge:                ; preds = %for.cond119
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body122

for.cond119.for.inc138_crit_edge:                 ; preds = %for.cond119
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc138

for.body122:                                      ; preds = %for.cond119.for.body122_crit_edge, %if.else111
  %k.2390 = phi i32 [ 0, %if.else111 ], [ %inc135, %for.cond119.for.body122_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %109 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %109(i32 noundef 2147480) #9
  %110 = ptrtoint ptr %rmmio.i305 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %rmmio.i305, align 4
  %add.ptr.i358 = getelementptr i8, ptr %111, i32 %i2c_cntl_0.0
  %112 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i358) #9, !srcloc !50
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !51
  %113 = and i32 %112, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %113)
  %tobool125.not = icmp eq i32 %113, 0
  br i1 %tobool125.not, label %if.end127, label %for.cond119

if.end127:                                        ; preds = %for.body122
  %114 = ptrtoint ptr %rmmio.i305 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %rmmio.i305, align 4
  %add.ptr.i362 = getelementptr i8, ptr %115, i32 %i2c_cntl_0.0
  %116 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i362) #9, !srcloc !50
  %117 = tail call i32 @llvm.bswap.i32(i32 %116) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !51
  %and129 = and i32 %117, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and129)
  %tobool130.not = icmp eq i32 %and129, 0
  br i1 %tobool130.not, label %if.else132, label %if.end127.for.inc138_crit_edge

if.end127.for.inc138_crit_edge:                   ; preds = %if.end127
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc138

if.else132:                                       ; preds = %if.end127
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.13, i32 noundef %117) #9
  %or133 = or i32 %117, 2048
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !52
  tail call void @arm_heavy_mb() #9
  %118 = tail call i32 @llvm.bswap.i32(i32 %or133) #9
  %119 = ptrtoint ptr %rmmio.i305 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %rmmio.i305, align 4
  %add.ptr.i366 = getelementptr i8, ptr %120, i32 %i2c_cntl_0.0
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i366, i32 %118) #9, !srcloc !49
  br label %done

for.inc138:                                       ; preds = %if.end127.for.inc138_crit_edge, %for.cond119.for.inc138_crit_edge, %for.end106
  %inc139 = add nuw nsw i32 %j.0393, 1
  %121 = ptrtoint ptr %len74 to i32
  call void @__asan_load2_noabort(i32 %121)
  %122 = load i16, ptr %len74, align 4
  %conv75 = zext i16 %122 to i32
  %cmp76 = icmp ult i32 %inc139, %conv75
  br i1 %cmp76, label %for.inc138.for.body78_crit_edge, label %for.inc138.for.inc141_crit_edge

for.inc138.for.inc141_crit_edge:                  ; preds = %for.inc138
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc141

for.inc138.for.body78_crit_edge:                  ; preds = %for.inc138
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body78

for.inc141:                                       ; preds = %for.inc138.for.inc141_crit_edge, %for.body71.for.inc141_crit_edge
  %inc142 = add nuw nsw i32 %i.0396, 1
  %exitcond402.not = icmp eq i32 %inc142, %num
  br i1 %exitcond402.not, label %for.inc141.done_crit_edge, label %for.inc141.for.body71_crit_edge

for.inc141.for.body71_crit_edge:                  ; preds = %for.inc141
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body71

for.inc141.done_crit_edge:                        ; preds = %for.inc141
  call void @__sanitizer_cov_trace_pc() #11
  br label %done

done:                                             ; preds = %for.inc141.done_crit_edge, %if.else132, %if.else102, %if.end67.done_crit_edge, %if.else65, %if.end60.done_crit_edge, %for.cond.done_crit_edge, %sw.default46, %sw.default44, %sw.default34, %sw.default26, %sw.default16, %sw.default
  %ret.0 = phi i32 [ 1, %if.end60.done_crit_edge ], [ -5, %if.else65 ], [ -5, %if.else102 ], [ -5, %if.else132 ], [ -22, %sw.default46 ], [ -22, %sw.default44 ], [ -22, %sw.default34 ], [ -22, %sw.default26 ], [ -22, %sw.default16 ], [ -22, %sw.default ], [ %num, %if.end67.done_crit_edge ], [ 1, %for.cond.done_crit_edge ], [ %num, %for.inc141.done_crit_edge ]
  %i2c_cntl_0.1 = phi i32 [ %i2c_cntl_0.0, %if.end60.done_crit_edge ], [ %i2c_cntl_0.0, %if.else65 ], [ %i2c_cntl_0.0, %if.else102 ], [ %i2c_cntl_0.0, %if.else132 ], [ 736, %sw.default46 ], [ 736, %sw.default44 ], [ 736, %sw.default34 ], [ 736, %sw.default26 ], [ 736, %sw.default16 ], [ 736, %sw.default ], [ %i2c_cntl_0.0, %if.end67.done_crit_edge ], [ %i2c_cntl_0.0, %for.cond.done_crit_edge ], [ %i2c_cntl_0.0, %for.inc141.done_crit_edge ]
  %i2c_cntl_1.1 = phi i32 [ %i2c_cntl_1.0, %if.end60.done_crit_edge ], [ %i2c_cntl_1.0, %if.else65 ], [ %i2c_cntl_1.0, %if.else102 ], [ %i2c_cntl_1.0, %if.else132 ], [ 740, %sw.default46 ], [ 740, %sw.default44 ], [ 740, %sw.default34 ], [ 740, %sw.default26 ], [ 740, %sw.default16 ], [ 740, %sw.default ], [ %i2c_cntl_1.0, %if.end67.done_crit_edge ], [ %i2c_cntl_1.0, %for.cond.done_crit_edge ], [ %i2c_cntl_1.0, %for.inc141.done_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !52
  tail call void @arm_heavy_mb() #9
  %rmmio.i369 = getelementptr inbounds %struct.radeon_device, ptr %5, i32 0, i32 31
  %123 = ptrtoint ptr %rmmio.i369 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %rmmio.i369, align 4
  %add.ptr.i370 = getelementptr i8, ptr %124, i32 %i2c_cntl_0.1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i370, i32 0) #9, !srcloc !49
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !52
  tail call void @arm_heavy_mb() #9
  %125 = ptrtoint ptr %rmmio.i369 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %rmmio.i369, align 4
  %add.ptr.i374 = getelementptr i8, ptr %126, i32 %i2c_cntl_1.1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i374, i32 0) #9, !srcloc !49
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !52
  tail call void @arm_heavy_mb() #9
  %127 = ptrtoint ptr %rmmio.i369 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %rmmio.i369, align 4
  %add.ptr.i378 = getelementptr i8, ptr %128, i32 %i2c_cntl_0.1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i378, i32 654311424) #9, !srcloc !49
  %129 = ptrtoint ptr %is_atom_bios to i32
  call void @__asan_load1_noabort(i32 %129)
  %130 = load i8, ptr %is_atom_bios, align 4, !range !47
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %130)
  %tobool145.not = icmp eq i8 %130, 0
  br i1 %tobool145.not, label %done.if.end149_crit_edge, label %if.then146

done.if.end149_crit_edge:                         ; preds = %done
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end149

if.then146:                                       ; preds = %done
  call void @__sanitizer_cov_trace_pc() #11
  %131 = ptrtoint ptr %rmmio.i369 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %rmmio.i369, align 4
  %add.ptr.i382 = getelementptr i8, ptr %132, i32 40
  %133 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i382) #9, !srcloc !50
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !51
  %134 = and i32 %133, -131073
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !52
  tail call void @arm_heavy_mb() #9
  %135 = ptrtoint ptr %rmmio.i369 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %rmmio.i369, align 4
  %add.ptr.i386 = getelementptr i8, ptr %136, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i386, i32 %134) #9, !srcloc !49
  br label %if.end149

if.end149:                                        ; preds = %if.then146, %done.if.end149_crit_edge
  tail call void @mutex_unlock(ptr noundef %pm) #9
  tail call void @mutex_unlock(ptr noundef %dc_hw_i2c_mutex) #9
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @radeon_get_i2c_prescale(ptr nocapture noundef readonly %rdev) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %current_sclk = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 25
  %0 = ptrtoint ptr %current_sclk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %current_sclk, align 8
  %family = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 6
  %2 = ptrtoint ptr %family to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %family, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.22)
  switch i32 %3, label %sw.default [
    i32 0, label %entry.sw.bb_crit_edge
    i32 1, label %entry.sw.bb_crit_edge56
    i32 2, label %entry.sw.bb_crit_edge57
    i32 3, label %entry.sw.bb_crit_edge58
    i32 4, label %entry.sw.bb_crit_edge59
    i32 5, label %entry.sw.bb_crit_edge60
    i32 6, label %entry.sw.bb_crit_edge61
    i32 7, label %entry.sw.bb_crit_edge62
    i32 8, label %entry.sw.bb_crit_edge63
    i32 9, label %entry.sw.bb_crit_edge64
    i32 10, label %entry.sw.bb_crit_edge65
    i32 11, label %entry.sw.bb_crit_edge66
    i32 12, label %entry.sw.bb15_crit_edge
    i32 16, label %entry.sw.bb15_crit_edge67
    i32 17, label %entry.sw.bb15_crit_edge68
    i32 13, label %entry.sw.bb15_crit_edge69
    i32 14, label %entry.sw.bb15_crit_edge70
    i32 15, label %entry.sw.bb15_crit_edge71
    i32 18, label %entry.sw.epilog_crit_edge
    i32 19, label %entry.sw.epilog_crit_edge72
    i32 20, label %entry.sw.epilog_crit_edge73
    i32 43, label %entry.sw.epilog_crit_edge74
    i32 42, label %entry.sw.epilog_crit_edge75
    i32 41, label %entry.sw.epilog_crit_edge76
    i32 40, label %entry.sw.epilog_crit_edge77
    i32 39, label %entry.sw.epilog_crit_edge78
    i32 38, label %entry.sw.epilog_crit_edge79
    i32 27, label %entry.sw.epilog_crit_edge80
    i32 28, label %entry.sw.epilog_crit_edge81
    i32 29, label %entry.sw.epilog_crit_edge82
    i32 30, label %entry.sw.epilog_crit_edge83
    i32 31, label %entry.sw.epilog_crit_edge84
    i32 32, label %entry.sw.epilog_crit_edge85
    i32 33, label %entry.sw.epilog_crit_edge86
    i32 34, label %entry.sw.epilog_crit_edge87
    i32 35, label %entry.sw.epilog_crit_edge88
    i32 36, label %entry.sw.epilog_crit_edge89
    i32 37, label %entry.sw.epilog_crit_edge90
    i32 22, label %if.then25
    i32 21, label %entry.if.else_crit_edge
    i32 23, label %entry.if.else_crit_edge91
    i32 24, label %entry.if.else_crit_edge92
    i32 25, label %entry.if.else_crit_edge93
    i32 26, label %entry.if.else_crit_edge94
  ]

entry.if.else_crit_edge94:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

entry.if.else_crit_edge93:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

entry.if.else_crit_edge92:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

entry.if.else_crit_edge91:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

entry.sw.epilog_crit_edge90:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

entry.sw.epilog_crit_edge89:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

entry.sw.epilog_crit_edge88:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

entry.sw.epilog_crit_edge87:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

entry.sw.epilog_crit_edge86:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

entry.sw.epilog_crit_edge85:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

entry.sw.epilog_crit_edge84:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

entry.sw.epilog_crit_edge83:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

entry.sw.epilog_crit_edge82:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

entry.sw.epilog_crit_edge81:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

entry.sw.epilog_crit_edge80:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

entry.sw.epilog_crit_edge79:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

entry.sw.epilog_crit_edge78:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

entry.sw.epilog_crit_edge77:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

entry.sw.epilog_crit_edge76:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

entry.sw.epilog_crit_edge75:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

entry.sw.epilog_crit_edge74:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

entry.sw.epilog_crit_edge73:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

entry.sw.epilog_crit_edge72:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

entry.sw.bb15_crit_edge71:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb15

entry.sw.bb15_crit_edge70:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb15

entry.sw.bb15_crit_edge69:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb15

entry.sw.bb15_crit_edge68:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb15

entry.sw.bb15_crit_edge67:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb15

entry.sw.bb15_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb15

entry.sw.bb_crit_edge66:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb

entry.sw.bb_crit_edge65:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb

entry.sw.bb_crit_edge64:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb

entry.sw.bb_crit_edge63:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb

entry.sw.bb_crit_edge62:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb

entry.sw.bb_crit_edge61:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb

entry.sw.bb_crit_edge60:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb

entry.sw.bb_crit_edge59:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb

entry.sw.bb_crit_edge58:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb

entry.sw.bb_crit_edge57:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb

entry.sw.bb_crit_edge56:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge56, %entry.sw.bb_crit_edge57, %entry.sw.bb_crit_edge58, %entry.sw.bb_crit_edge59, %entry.sw.bb_crit_edge60, %entry.sw.bb_crit_edge61, %entry.sw.bb_crit_edge62, %entry.sw.bb_crit_edge63, %entry.sw.bb_crit_edge64, %entry.sw.bb_crit_edge65, %entry.sw.bb_crit_edge66
  %mul = mul i32 %1, 10
  %div = udiv i32 %mul, 240
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %sw.bb
  %indvars.iv = phi i32 [ 1, %sw.bb ], [ %indvars.iv.next, %for.inc.for.body_crit_edge ]
  %div4 = udiv i32 %div, %indvars.iv
  call void @__sanitizer_cov_trace_cmp4(i32 %div4, i32 %indvars.iv)
  %cmp6 = icmp ult i32 %div4, %indvars.iv
  br i1 %cmp6, label %for.end.split.loop.exit, label %for.inc

for.inc:                                          ; preds = %for.body
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %cmp.not = icmp eq i32 %indvars.iv.next, 255
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end.split.loop.exit:                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %5 = trunc i32 %indvars.iv to i8
  br label %for.end

for.end:                                          ; preds = %for.end.split.loop.exit, %for.inc.for.end_crit_edge
  %loop.0.lcssa = phi i8 [ %5, %for.end.split.loop.exit ], [ -1, %for.inc.for.end_crit_edge ]
  %sub = add i8 %loop.0.lcssa, -1
  %sub11 = add i8 %loop.0.lcssa, -2
  %conv13 = zext i8 %sub11 to i32
  %conv14 = zext i8 %sub to i32
  %shl = shl nuw nsw i32 %conv14, 8
  %or = or i32 %shl, %conv13
  br label %sw.epilog

sw.bb15:                                          ; preds = %entry.sw.bb15_crit_edge, %entry.sw.bb15_crit_edge67, %entry.sw.bb15_crit_edge68, %entry.sw.bb15_crit_edge69, %entry.sw.bb15_crit_edge70, %entry.sw.bb15_crit_edge71
  %mul16 = mul i32 %1, 10
  %div17 = udiv i32 %mul16, 51200
  %add = shl nuw nsw i32 %div17, 8
  %add19 = add nuw nsw i32 %add, 384
  br label %sw.epilog

if.then25:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %mul26 = mul i32 %1, 10
  %div28 = udiv i32 %mul26, 25400
  %add29 = add nuw nsw i32 %div28, 32512
  br label %sw.epilog

if.else:                                          ; preds = %entry.if.else_crit_edge, %entry.if.else_crit_edge91, %entry.if.else_crit_edge92, %entry.if.else_crit_edge93, %entry.if.else_crit_edge94
  %mul30 = mul i32 %1, 10
  %div31 = udiv i32 %mul30, 51200
  %add32 = shl nuw nsw i32 %div31, 8
  %add34 = add nuw nsw i32 %add32, 384
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.10) #9
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.else, %if.then25, %sw.bb15, %for.end, %entry.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge72, %entry.sw.epilog_crit_edge73, %entry.sw.epilog_crit_edge74, %entry.sw.epilog_crit_edge75, %entry.sw.epilog_crit_edge76, %entry.sw.epilog_crit_edge77, %entry.sw.epilog_crit_edge78, %entry.sw.epilog_crit_edge79, %entry.sw.epilog_crit_edge80, %entry.sw.epilog_crit_edge81, %entry.sw.epilog_crit_edge82, %entry.sw.epilog_crit_edge83, %entry.sw.epilog_crit_edge84, %entry.sw.epilog_crit_edge85, %entry.sw.epilog_crit_edge86, %entry.sw.epilog_crit_edge87, %entry.sw.epilog_crit_edge88, %entry.sw.epilog_crit_edge89, %entry.sw.epilog_crit_edge90
  %prescale.0 = phi i32 [ 0, %sw.default ], [ %add29, %if.then25 ], [ %add34, %if.else ], [ 0, %entry.sw.epilog_crit_edge ], [ 0, %entry.sw.epilog_crit_edge72 ], [ 0, %entry.sw.epilog_crit_edge73 ], [ 0, %entry.sw.epilog_crit_edge74 ], [ 0, %entry.sw.epilog_crit_edge75 ], [ 0, %entry.sw.epilog_crit_edge76 ], [ 0, %entry.sw.epilog_crit_edge77 ], [ 0, %entry.sw.epilog_crit_edge78 ], [ 0, %entry.sw.epilog_crit_edge79 ], [ 0, %entry.sw.epilog_crit_edge80 ], [ 0, %entry.sw.epilog_crit_edge81 ], [ 0, %entry.sw.epilog_crit_edge82 ], [ 0, %entry.sw.epilog_crit_edge83 ], [ 0, %entry.sw.epilog_crit_edge84 ], [ 0, %entry.sw.epilog_crit_edge85 ], [ 0, %entry.sw.epilog_crit_edge86 ], [ 0, %entry.sw.epilog_crit_edge87 ], [ 0, %entry.sw.epilog_crit_edge88 ], [ 0, %entry.sw.epilog_crit_edge89 ], [ 0, %entry.sw.epilog_crit_edge90 ], [ %add19, %sw.bb15 ], [ %or, %for.end ]
  ret i32 %prescale.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @r100_mm_rreg_slow(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @r100_mm_wreg_slow(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @radeon_atom_hw_i2c_xfer(ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @radeon_atom_hw_i2c_func(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jiffies_to_usecs(i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

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

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 20)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 20)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { nounwind allocsize(2) }
attributes #13 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !13, !14, !15, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36}
!llvm.module.flags = !{!38, !39, !40, !41, !42, !43, !44, !45}
!llvm.ident = !{!46}

!0 = !{ptr @radeon_i2c_create.__key, !1, !"__key", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/radeon/radeon_i2c.c", i32 925, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.1, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../drivers/gpu/drm/radeon/radeon_i2c.c", i32 933, i32 5}
!5 = !{ptr @.str.2, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../drivers/gpu/drm/radeon/radeon_i2c.c", i32 951, i32 5}
!7 = !{ptr @.str.3, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../drivers/gpu/drm/radeon/radeon_i2c.c", i32 964, i32 4}
!9 = !{ptr @.str.4, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/gpu/drm/radeon/radeon_i2c.c", i32 980, i32 2}
!11 = !{ptr @.str.5, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/gpu/drm/radeon/radeon_i2c.c", i32 989, i32 3}
!13 = !{ptr @.str.6, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @radeon_i2c_init._entry, !12, !"_entry", i1 false, i1 false}
!15 = !{ptr @radeon_i2c_init._entry_ptr, !12, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.7, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/radeon/radeon_i2c.c", i32 1068, i32 3}
!18 = !{ptr @.str.8, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/gpu/drm/radeon/radeon_i2c.c", i32 1070, i32 3}
!20 = !{ptr @.str.9, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/gpu/drm/radeon/radeon_i2c.c", i32 1092, i32 3}
!22 = !{ptr @radeon_i2c_algo, !23, !"radeon_i2c_algo", i1 false, i1 false}
!23 = !{!"../drivers/gpu/drm/radeon/radeon_i2c.c", i32 893, i32 35}
!24 = !{ptr @.str.10, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/gpu/drm/radeon/radeon_i2c.c", i32 878, i32 3}
!26 = !{ptr @.str.11, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/gpu/drm/radeon/radeon_i2c.c", i32 371, i32 5}
!28 = !{ptr @.str.12, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/gpu/drm/radeon/radeon_i2c.c", i32 451, i32 4}
!30 = !{ptr @.str.13, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/gpu/drm/radeon/radeon_i2c.c", i32 481, i32 5}
!32 = !{ptr @.str.14, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/gpu/drm/radeon/radeon_i2c.c", i32 513, i32 7}
!34 = !{ptr @.str.15, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/gpu/drm/radeon/radeon_i2c.c", i32 639, i32 3}
!36 = !{ptr @radeon_atom_i2c_algo, !37, !"radeon_atom_i2c_algo", i1 false, i1 false}
!37 = !{!"../drivers/gpu/drm/radeon/radeon_i2c.c", i32 898, i32 35}
!38 = !{i32 1, !"wchar_size", i32 2}
!39 = !{i32 1, !"min_enum_size", i32 4}
!40 = !{i32 8, !"branch-target-enforcement", i32 0}
!41 = !{i32 8, !"sign-return-address", i32 0}
!42 = !{i32 8, !"sign-return-address-all", i32 0}
!43 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!44 = !{i32 7, !"uwtable", i32 1}
!45 = !{i32 7, !"frame-pointer", i32 2}
!46 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!47 = !{i8 0, i8 2}
!48 = !{!"auto-init"}
!49 = !{i64 5006896}
!50 = !{i64 5007314}
!51 = !{i64 2157843863}
!52 = !{i64 2157844270}
!53 = !{!"branch_weights", i32 2000, i32 1}
