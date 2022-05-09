; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/radeon/evergreen_hdmi.c_pt.bc'
source_filename = "../drivers/gpu/drm/radeon/evergreen_hdmi.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

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
%struct.ttm_pool = type { ptr, i8, i8, [3 x %struct.anon.88] }
%struct.anon.88 = type { [12 x %struct.ttm_pool_type] }
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
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.drm_open_hash = type { ptr, i8 }
%struct.anon.87 = type { i32, ptr }
%struct.drm_encoder = type { ptr, %struct.list_head, %struct.drm_mode_object, ptr, i32, i32, i32, i32, ptr, %struct.list_head, ptr, ptr }
%struct.drm_mode_object = type { i32, i32, ptr, %struct.kref, ptr }
%struct.radeon_crtc = type { %struct.drm_crtc, i32, i8, i8, i8, i32, ptr, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, %union.dfixed, %union.dfixed, %struct.drm_display_mode, i32, ptr, ptr, i32, %struct.radeon_atom_ss, i8, i32, i32, i32, i32, i32, ptr, ptr, i32, i32, i32, i32, %struct.drm_display_mode, i32 }
%struct.drm_crtc = type { ptr, ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, ptr, ptr, i32, i32, i32, i8, %struct.drm_display_mode, %struct.drm_display_mode, i32, i32, ptr, i32, ptr, ptr, %struct.drm_object_properties, ptr, ptr, %struct.list_head, %struct.spinlock, ptr, %struct.drm_crtc_crc, i32, %struct.spinlock, i32, [32 x i8], ptr }
%struct.drm_object_properties = type { i32, [24 x ptr], [24 x i64] }
%struct.drm_crtc_crc = type { %struct.spinlock, ptr, i8, i8, ptr, i32, i32, i32, %struct.wait_queue_head }
%struct.radeon_atom_ss = type { i16, i16, i8, i16, i8, i8, i8, i16, i16 }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }
%struct.radeon_hdmi_acr = type { i32, i32, i32, i32, i32, i32, i32 }
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
%struct.hdr_sink_metadata = type { i32, %union.anon.86 }
%union.anon.86 = type { %struct.hdr_static_metadata }
%struct.hdr_static_metadata = type { i8, i8, i16, i16, i16 }
%struct.cea_sad = type { i8, i8, i8, i8 }
%struct.radeon_encoder = type { %struct.drm_encoder, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.drm_display_mode, ptr, i32, i8, i16, ptr, i32, i8, i32, i8 }
%struct.radeon_encoder_atom_dig = type { i8, i8, i32, i32, i16, i32, %struct.drm_display_mode, ptr, i32, i8, i32, ptr, ptr, i32 }
%struct.radeon_afmt = type { i8, i32, i8, i32 }
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

@evergreen_hdmi_write_sad_regs.eld_reg_to_type = internal constant { [12 x [2 x i16]], [48 x i8] } { [12 x [2 x i16]] [[2 x i16] [i16 24452, i16 1], [2 x i16] [i16 24456, i16 2], [2 x i16] [i16 24460, i16 3], [2 x i16] [i16 24464, i16 4], [2 x i16] [i16 24468, i16 5], [2 x i16] [i16 24472, i16 6], [2 x i16] [i16 24476, i16 7], [2 x i16] [i16 24480, i16 8], [2 x i16] [i16 24488, i16 10], [2 x i16] [i16 24492, i16 11], [2 x i16] [i16 24496, i16 12], [2 x i16] [i16 24504, i16 14]], [48 x i8] zeroinitializer }, align 32
@.str = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"%s: Disabling hdmi deep color for %d bpc.\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"%s: Enabling hdmi deep color 30 for 10 bpc.\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"%s: Enabling hdmi deep color 36 for 12 bpc.\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"%sabling HDMI interface @ 0x%04X for encoder 0x%x\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"En\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"Dis\00", [28 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 5, i64 6]
@___asan_gen_.6 = private unnamed_addr constant [16 x i8] c"eld_reg_to_type\00", align 1
@___asan_gen_.8 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.25, i32 161, i32 19 }
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.25, i32 335, i32 4 }
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.25, i32 341, i32 4 }
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.25, i32 347, i32 4 }
@___asan_gen_.24 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.25 = private constant [43 x i8] c"../drivers/gpu/drm/radeon/evergreen_hdmi.c\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.25, i32 437, i32 2 }
@llvm.compiler.used = appending global [7 x ptr] [ptr @evergreen_hdmi_write_sad_regs.eld_reg_to_type, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5], section "llvm.metadata"
@0 = internal global [7 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @evergreen_hdmi_write_sad_regs.eld_reg_to_type to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dce4_audio_enable(ptr nocapture noundef readonly %rdev, ptr noundef readnone %pin, i8 noundef zeroext %enable_mask) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %rmmio.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %0 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 24184
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #3, !srcloc !21
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !22
  %tobool.not = icmp eq ptr %pin, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %enable_mask)
  %tobool1.not = icmp eq i8 %enable_mask, 0
  br i1 %tobool1.not, label %if.else, label %if.then2

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %conv = zext i8 %enable_mask to i32
  %and = and i32 %conv, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool3.not = icmp eq i32 %and, 0
  %spec.select.v = select i1 %tobool3.not, i32 -2147483648, i32 -2130706432
  %and8 = shl nuw i32 %conv, 24
  %4 = and i32 %and8, 234881024
  %5 = or i32 %4, %spec.select.v
  %6 = or i32 %5, %3
  br label %if.end26

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %and25 = and i32 %3, 1895825407
  br label %if.end26

if.end26:                                         ; preds = %if.else, %if.then2
  %tmp.3 = phi i32 [ %and25, %if.else ], [ %6, %if.then2 ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !23
  tail call void @arm_heavy_mb() #3
  %7 = tail call i32 @llvm.bswap.i32(i32 %tmp.3) #3
  %8 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i42 = getelementptr i8, ptr %9, i32 24184
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i42, i32 %7) #3, !srcloc !24
  br label %cleanup

cleanup:                                          ; preds = %if.end26, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @evergreen_hdmi_update_acr(ptr nocapture noundef readonly %encoder, i32 noundef %offset, ptr nocapture noundef readonly %acr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
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
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.if.else_crit_edge, label %if.then

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.else

if.then:                                          ; preds = %entry
  %bpc3 = getelementptr inbounds %struct.radeon_crtc, ptr %5, i32 0, i32 30
  %6 = ptrtoint ptr %bpc3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %bpc3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %7)
  %phi.cmp = icmp sgt i32 %7, 8
  br i1 %phi.cmp, label %if.then4, label %if.then.if.else_crit_edge

if.then.if.else_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.else

if.then4:                                         ; preds = %if.then
  %add = add i32 %offset, 28732
  %rmmio_size.i = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 18
  %8 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %add)
  %cmp.i = icmp ugt i32 %9, %add
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %add)
  %cmp1.i = icmp ult i32 %add, 65536
  %or.cond.i = or i1 %cmp1.i, %cmp.i
  br i1 %or.cond.i, label %do.body.i, label %if.else.i

do.body.i:                                        ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !23
  tail call void @arm_heavy_mb() #3
  %rmmio.i = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 31
  %10 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %11, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 1048576) #3, !srcloc !24
  br label %if.end6

if.else.i:                                        ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @r100_mm_wreg_slow(ptr noundef %3, i32 noundef %add, i32 noundef 4096) #3
  br label %if.end6

if.else:                                          ; preds = %if.then.if.else_crit_edge, %entry.if.else_crit_edge
  %add5 = add i32 %offset, 28732
  %rmmio_size.i38 = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 18
  %12 = ptrtoint ptr %rmmio_size.i38 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %rmmio_size.i38, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %add5)
  %cmp.i39 = icmp ugt i32 %13, %add5
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %add5)
  %cmp1.i40 = icmp ult i32 %add5, 65536
  %or.cond.i41 = or i1 %cmp1.i40, %cmp.i39
  br i1 %or.cond.i41, label %do.body.i44, label %if.else.i45

do.body.i44:                                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !23
  tail call void @arm_heavy_mb() #3
  %rmmio.i42 = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 31
  %14 = ptrtoint ptr %rmmio.i42 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %rmmio.i42, align 4
  %add.ptr.i43 = getelementptr i8, ptr %15, i32 %add5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i43, i32 1114112) #3, !srcloc !24
  br label %if.end6

if.else.i45:                                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @r100_mm_wreg_slow(ptr noundef %3, i32 noundef %add5, i32 noundef 4352) #3
  br label %if.end6

if.end6:                                          ; preds = %if.else.i45, %do.body.i44, %if.else.i, %do.body.i
  %add7 = add i32 %offset, 28892
  %cts_32khz = getelementptr inbounds %struct.radeon_hdmi_acr, ptr %acr, i32 0, i32 2
  %16 = ptrtoint ptr %cts_32khz to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %cts_32khz, align 4
  %shl = shl i32 %17, 12
  %rmmio_size.i47 = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 18
  %18 = ptrtoint ptr %rmmio_size.i47 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %rmmio_size.i47, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %add7)
  %cmp.i48 = icmp ugt i32 %19, %add7
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %add7)
  %cmp1.i49 = icmp ult i32 %add7, 65536
  %or.cond.i50 = or i1 %cmp1.i49, %cmp.i48
  br i1 %or.cond.i50, label %do.body.i53, label %if.else.i54

do.body.i53:                                      ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !23
  tail call void @arm_heavy_mb() #3
  %20 = tail call i32 @llvm.bswap.i32(i32 %shl) #3
  %rmmio.i51 = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 31
  %21 = ptrtoint ptr %rmmio.i51 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %rmmio.i51, align 4
  %add.ptr.i52 = getelementptr i8, ptr %22, i32 %add7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i52, i32 %20) #3, !srcloc !24
  br label %r100_mm_wreg.exit55

if.else.i54:                                      ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @r100_mm_wreg_slow(ptr noundef %3, i32 noundef %add7, i32 noundef %shl) #3
  br label %r100_mm_wreg.exit55

r100_mm_wreg.exit55:                              ; preds = %if.else.i54, %do.body.i53
  %add8 = add i32 %offset, 28896
  %n_32khz = getelementptr inbounds %struct.radeon_hdmi_acr, ptr %acr, i32 0, i32 1
  %23 = ptrtoint ptr %n_32khz to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %n_32khz, align 4
  %25 = ptrtoint ptr %rmmio_size.i47 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %rmmio_size.i47, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %26, i32 %add8)
  %cmp.i57 = icmp ugt i32 %26, %add8
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %add8)
  %cmp1.i58 = icmp ult i32 %add8, 65536
  %or.cond.i59 = or i1 %cmp1.i58, %cmp.i57
  br i1 %or.cond.i59, label %do.body.i62, label %if.else.i63

do.body.i62:                                      ; preds = %r100_mm_wreg.exit55
  call void @__sanitizer_cov_trace_pc() #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !23
  tail call void @arm_heavy_mb() #3
  %27 = tail call i32 @llvm.bswap.i32(i32 %24) #3
  %rmmio.i60 = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 31
  %28 = ptrtoint ptr %rmmio.i60 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %rmmio.i60, align 4
  %add.ptr.i61 = getelementptr i8, ptr %29, i32 %add8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i61, i32 %27) #3, !srcloc !24
  br label %r100_mm_wreg.exit64

if.else.i63:                                      ; preds = %r100_mm_wreg.exit55
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @r100_mm_wreg_slow(ptr noundef %3, i32 noundef %add8, i32 noundef %24) #3
  br label %r100_mm_wreg.exit64

r100_mm_wreg.exit64:                              ; preds = %if.else.i63, %do.body.i62
  %add9 = add i32 %offset, 28900
  %cts_44_1khz = getelementptr inbounds %struct.radeon_hdmi_acr, ptr %acr, i32 0, i32 4
  %30 = ptrtoint ptr %cts_44_1khz to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %cts_44_1khz, align 4
  %shl11 = shl i32 %31, 12
  %32 = ptrtoint ptr %rmmio_size.i47 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %rmmio_size.i47, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %33, i32 %add9)
  %cmp.i66 = icmp ugt i32 %33, %add9
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %add9)
  %cmp1.i67 = icmp ult i32 %add9, 65536
  %or.cond.i68 = or i1 %cmp1.i67, %cmp.i66
  br i1 %or.cond.i68, label %do.body.i71, label %if.else.i72

do.body.i71:                                      ; preds = %r100_mm_wreg.exit64
  call void @__sanitizer_cov_trace_pc() #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !23
  tail call void @arm_heavy_mb() #3
  %34 = tail call i32 @llvm.bswap.i32(i32 %shl11) #3
  %rmmio.i69 = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 31
  %35 = ptrtoint ptr %rmmio.i69 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %rmmio.i69, align 4
  %add.ptr.i70 = getelementptr i8, ptr %36, i32 %add9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i70, i32 %34) #3, !srcloc !24
  br label %r100_mm_wreg.exit73

if.else.i72:                                      ; preds = %r100_mm_wreg.exit64
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @r100_mm_wreg_slow(ptr noundef %3, i32 noundef %add9, i32 noundef %shl11) #3
  br label %r100_mm_wreg.exit73

r100_mm_wreg.exit73:                              ; preds = %if.else.i72, %do.body.i71
  %add12 = add i32 %offset, 28904
  %n_44_1khz = getelementptr inbounds %struct.radeon_hdmi_acr, ptr %acr, i32 0, i32 3
  %37 = ptrtoint ptr %n_44_1khz to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %n_44_1khz, align 4
  %39 = ptrtoint ptr %rmmio_size.i47 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %rmmio_size.i47, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %40, i32 %add12)
  %cmp.i75 = icmp ugt i32 %40, %add12
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %add12)
  %cmp1.i76 = icmp ult i32 %add12, 65536
  %or.cond.i77 = or i1 %cmp1.i76, %cmp.i75
  br i1 %or.cond.i77, label %do.body.i80, label %if.else.i81

do.body.i80:                                      ; preds = %r100_mm_wreg.exit73
  call void @__sanitizer_cov_trace_pc() #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !23
  tail call void @arm_heavy_mb() #3
  %41 = tail call i32 @llvm.bswap.i32(i32 %38) #3
  %rmmio.i78 = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 31
  %42 = ptrtoint ptr %rmmio.i78 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %rmmio.i78, align 4
  %add.ptr.i79 = getelementptr i8, ptr %43, i32 %add12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i79, i32 %41) #3, !srcloc !24
  br label %r100_mm_wreg.exit82

if.else.i81:                                      ; preds = %r100_mm_wreg.exit73
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @r100_mm_wreg_slow(ptr noundef %3, i32 noundef %add12, i32 noundef %38) #3
  br label %r100_mm_wreg.exit82

r100_mm_wreg.exit82:                              ; preds = %if.else.i81, %do.body.i80
  %add13 = add i32 %offset, 28908
  %cts_48khz = getelementptr inbounds %struct.radeon_hdmi_acr, ptr %acr, i32 0, i32 6
  %44 = ptrtoint ptr %cts_48khz to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %cts_48khz, align 4
  %shl15 = shl i32 %45, 12
  %46 = ptrtoint ptr %rmmio_size.i47 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %rmmio_size.i47, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %47, i32 %add13)
  %cmp.i84 = icmp ugt i32 %47, %add13
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %add13)
  %cmp1.i85 = icmp ult i32 %add13, 65536
  %or.cond.i86 = or i1 %cmp1.i85, %cmp.i84
  br i1 %or.cond.i86, label %do.body.i89, label %if.else.i90

do.body.i89:                                      ; preds = %r100_mm_wreg.exit82
  call void @__sanitizer_cov_trace_pc() #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !23
  tail call void @arm_heavy_mb() #3
  %48 = tail call i32 @llvm.bswap.i32(i32 %shl15) #3
  %rmmio.i87 = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 31
  %49 = ptrtoint ptr %rmmio.i87 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %rmmio.i87, align 4
  %add.ptr.i88 = getelementptr i8, ptr %50, i32 %add13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i88, i32 %48) #3, !srcloc !24
  br label %r100_mm_wreg.exit91

if.else.i90:                                      ; preds = %r100_mm_wreg.exit82
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @r100_mm_wreg_slow(ptr noundef %3, i32 noundef %add13, i32 noundef %shl15) #3
  br label %r100_mm_wreg.exit91

r100_mm_wreg.exit91:                              ; preds = %if.else.i90, %do.body.i89
  %add16 = add i32 %offset, 28912
  %n_48khz = getelementptr inbounds %struct.radeon_hdmi_acr, ptr %acr, i32 0, i32 5
  %51 = ptrtoint ptr %n_48khz to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %n_48khz, align 4
  %53 = ptrtoint ptr %rmmio_size.i47 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %rmmio_size.i47, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %54, i32 %add16)
  %cmp.i93 = icmp ugt i32 %54, %add16
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %add16)
  %cmp1.i94 = icmp ult i32 %add16, 65536
  %or.cond.i95 = or i1 %cmp1.i94, %cmp.i93
  br i1 %or.cond.i95, label %do.body.i98, label %if.else.i99

do.body.i98:                                      ; preds = %r100_mm_wreg.exit91
  call void @__sanitizer_cov_trace_pc() #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !23
  tail call void @arm_heavy_mb() #3
  %55 = tail call i32 @llvm.bswap.i32(i32 %52) #3
  %rmmio.i96 = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 31
  %56 = ptrtoint ptr %rmmio.i96 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %rmmio.i96, align 4
  %add.ptr.i97 = getelementptr i8, ptr %57, i32 %add16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i97, i32 %55) #3, !srcloc !24
  br label %r100_mm_wreg.exit100

if.else.i99:                                      ; preds = %r100_mm_wreg.exit91
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @r100_mm_wreg_slow(ptr noundef %3, i32 noundef %add16, i32 noundef %52) #3
  br label %r100_mm_wreg.exit100

r100_mm_wreg.exit100:                             ; preds = %if.else.i99, %do.body.i98
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dce4_afmt_write_latency_fields(ptr nocapture noundef readonly %encoder, ptr nocapture noundef readonly %connector, ptr nocapture noundef readonly %mode) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %encoder to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %encoder, align 4
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_private, align 4
  %flags = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 11
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags, align 4
  %and = and i32 %5, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else8, label %if.then

if.then:                                          ; preds = %entry
  %arrayidx = getelementptr %struct.drm_connector, ptr %connector, i32 0, i32 43, i32 1
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx, align 1, !range !25
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool1.not = icmp eq i8 %7, 0
  br i1 %tobool1.not, label %if.then.if.end24_crit_edge, label %if.then2

if.then.if.end24_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end24

if.then2:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #5
  %arrayidx3 = getelementptr %struct.drm_connector, ptr %connector, i32 0, i32 44, i32 1
  %arrayidx5 = getelementptr %struct.drm_connector, ptr %connector, i32 0, i32 45, i32 1
  br label %if.end24.sink.split

if.else8:                                         ; preds = %entry
  %latency_present9 = getelementptr inbounds %struct.drm_connector, ptr %connector, i32 0, i32 43
  %8 = ptrtoint ptr %latency_present9 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %latency_present9, align 8, !range !25
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool11.not = icmp eq i8 %9, 0
  br i1 %tobool11.not, label %if.else8.if.end24_crit_edge, label %if.then12

if.else8.if.end24_crit_edge:                      ; preds = %if.else8
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end24

if.then12:                                        ; preds = %if.else8
  call void @__sanitizer_cov_trace_pc() #5
  %video_latency13 = getelementptr inbounds %struct.drm_connector, ptr %connector, i32 0, i32 44
  %audio_latency17 = getelementptr inbounds %struct.drm_connector, ptr %connector, i32 0, i32 45
  br label %if.end24.sink.split

if.end24.sink.split:                              ; preds = %if.then12, %if.then2
  %audio_latency17.sink = phi ptr [ %audio_latency17, %if.then12 ], [ %arrayidx5, %if.then2 ]
  %and15.sink.in.in = phi ptr [ %video_latency13, %if.then12 ], [ %arrayidx3, %if.then2 ]
  %10 = ptrtoint ptr %and15.sink.in.in to i32
  call void @__asan_load4_noabort(i32 %10)
  %and15.sink.in = load i32, ptr %and15.sink.in.in, align 4
  %and15.sink = and i32 %and15.sink.in, 255
  %11 = ptrtoint ptr %audio_latency17.sink to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %audio_latency17.sink, align 4
  %and19 = shl i32 %12, 8
  %shl20 = and i32 %and19, 65280
  %or21 = or i32 %shl20, %and15.sink
  br label %if.end24

if.end24:                                         ; preds = %if.end24.sink.split, %if.else8.if.end24_crit_edge, %if.then.if.end24_crit_edge
  %tmp.0 = phi i32 [ 65535, %if.then.if.end24_crit_edge ], [ 65535, %if.else8.if.end24_crit_edge ], [ %or21, %if.end24.sink.split ]
  tail call void @radeon_audio_endpoint_wreg(ptr noundef %3, i32 noundef 0, i32 noundef 24552, i32 noundef %tmp.0) #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @radeon_audio_endpoint_wreg(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dce4_afmt_hdmi_write_speaker_allocation(ptr nocapture noundef readonly %encoder, ptr nocapture noundef readonly %sadb, i32 noundef %sad_count) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %encoder to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %encoder, align 4
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_private, align 4
  %call = tail call i32 @radeon_audio_endpoint_rreg(ptr noundef %3, i32 noundef 0, i32 noundef 24440) #3
  %and = and i32 %call, -196736
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sad_count)
  %tobool.not = icmp eq i32 %sad_count, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %4 = ptrtoint ptr %sadb to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %sadb, align 1
  %6 = and i8 %5, 127
  %and1 = zext i8 %6 to i32
  %or = or i32 %and, %and1
  %or2 = or i32 %or, 65536
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %or3 = or i32 %and, 65541
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %tmp.0 = phi i32 [ %or2, %if.then ], [ %or3, %if.else ]
  tail call void @radeon_audio_endpoint_wreg(ptr noundef %3, i32 noundef 0, i32 noundef 24440, i32 noundef %tmp.0) #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @radeon_audio_endpoint_rreg(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dce4_afmt_dp_write_speaker_allocation(ptr nocapture noundef readonly %encoder, ptr nocapture noundef readonly %sadb, i32 noundef %sad_count) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %encoder to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %encoder, align 4
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_private, align 4
  %call = tail call i32 @radeon_audio_endpoint_rreg(ptr noundef %3, i32 noundef 0, i32 noundef 24440) #3
  %and = and i32 %call, -196736
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sad_count)
  %tobool.not = icmp eq i32 %sad_count, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %4 = ptrtoint ptr %sadb to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %sadb, align 1
  %6 = and i8 %5, 127
  %and1 = zext i8 %6 to i32
  %or = or i32 %and, %and1
  %or2 = or i32 %or, 131072
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %or3 = or i32 %and, 131077
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %tmp.0 = phi i32 [ %or2, %if.then ], [ %or3, %if.else ]
  tail call void @radeon_audio_endpoint_wreg(ptr noundef %3, i32 noundef 0, i32 noundef 24440, i32 noundef %tmp.0) #3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @evergreen_hdmi_write_sad_regs(ptr nocapture noundef readonly %encoder, ptr nocapture noundef readonly %sads, i32 noundef %sad_count) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %encoder to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %encoder, align 4
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_private, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sad_count)
  %cmp269 = icmp sgt i32 %sad_count, 0
  br label %for.cond1.preheader

for.cond1.preheader:                              ; preds = %for.end.for.cond1.preheader_crit_edge, %entry
  %i.079 = phi i32 [ 0, %entry ], [ %inc44, %for.end.for.cond1.preheader_crit_edge ]
  br i1 %cmp269, label %for.body3.lr.ph, label %for.cond1.preheader.for.end_crit_edge

for.cond1.preheader.for.end_crit_edge:            ; preds = %for.cond1.preheader
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end

for.body3.lr.ph:                                  ; preds = %for.cond1.preheader
  %arrayidx5 = getelementptr [12 x [2 x i16]], ptr @evergreen_hdmi_write_sad_regs.eld_reg_to_type, i32 0, i32 %i.079, i32 1
  %4 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %arrayidx5, align 2
  br label %for.body3

for.body3:                                        ; preds = %for.inc.for.body3_crit_edge, %for.body3.lr.ph
  %j.073 = phi i32 [ 0, %for.body3.lr.ph ], [ %inc, %for.inc.for.body3_crit_edge ]
  %max_channels.072 = phi i32 [ -1, %for.body3.lr.ph ], [ %max_channels.3.ph, %for.inc.for.body3_crit_edge ]
  %stereo_freqs.071 = phi i8 [ 0, %for.body3.lr.ph ], [ %stereo_freqs.2.ph, %for.inc.for.body3_crit_edge ]
  %value.070 = phi i32 [ 0, %for.body3.lr.ph ], [ %value.3.ph, %for.inc.for.body3_crit_edge ]
  %arrayidx = getelementptr %struct.cea_sad, ptr %sads, i32 %j.073
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx, align 1
  %8 = zext i8 %7 to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %5, i16 %8)
  %cmp7 = icmp eq i16 %5, %8
  br i1 %cmp7, label %if.then, label %for.body3.for.inc_crit_edge

for.body3.for.inc_crit_edge:                      ; preds = %for.body3
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc

if.then:                                          ; preds = %for.body3
  %channels = getelementptr %struct.cea_sad, ptr %sads, i32 %j.073, i32 1
  %9 = ptrtoint ptr %channels to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %channels, align 1
  %conv9 = zext i8 %10 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %max_channels.072, i32 %conv9)
  %cmp10 = icmp slt i32 %max_channels.072, %conv9
  br i1 %cmp10, label %if.then12, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

if.then12:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #5
  %and = and i32 %conv9, 7
  %byte2 = getelementptr %struct.cea_sad, ptr %sads, i32 %j.073, i32 3
  %11 = ptrtoint ptr %byte2 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %byte2, align 1
  %conv15 = zext i8 %12 to i32
  %shl17 = shl nuw nsw i32 %conv15, 16
  %or = or i32 %shl17, %and
  %freq = getelementptr %struct.cea_sad, ptr %sads, i32 %j.073, i32 2
  %13 = ptrtoint ptr %freq to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %freq, align 1
  %conv18 = zext i8 %14 to i32
  %shl20 = shl nuw nsw i32 %conv18, 8
  %or21 = or i32 %or, %shl20
  br label %if.end

if.end:                                           ; preds = %if.then12, %if.then.if.end_crit_edge
  %value.1 = phi i32 [ %or21, %if.then12 ], [ %value.070, %if.then.if.end_crit_edge ]
  %max_channels.1 = phi i32 [ %conv9, %if.then12 ], [ %max_channels.072, %if.then.if.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %7)
  %cmp26 = icmp eq i8 %7, 1
  br i1 %cmp26, label %if.then28, label %if.end.for.end_crit_edge

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end

if.then28:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %freq29 = getelementptr %struct.cea_sad, ptr %sads, i32 %j.073, i32 2
  %15 = ptrtoint ptr %freq29 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %freq29, align 1
  %or3260 = or i8 %16, %stereo_freqs.071
  br label %for.inc

for.inc:                                          ; preds = %if.then28, %for.body3.for.inc_crit_edge
  %value.3.ph = phi i32 [ %value.070, %for.body3.for.inc_crit_edge ], [ %value.1, %if.then28 ]
  %stereo_freqs.2.ph = phi i8 [ %stereo_freqs.071, %for.body3.for.inc_crit_edge ], [ %or3260, %if.then28 ]
  %max_channels.3.ph = phi i32 [ %max_channels.072, %for.body3.for.inc_crit_edge ], [ %max_channels.1, %if.then28 ]
  %inc = add nuw nsw i32 %j.073, 1
  %exitcond.not = icmp eq i32 %inc, %sad_count
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body3_crit_edge

for.inc.for.body3_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body3

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end.for.end_crit_edge, %for.cond1.preheader.for.end_crit_edge
  %stereo_freqs.0.lcssa = phi i8 [ 0, %for.cond1.preheader.for.end_crit_edge ], [ %stereo_freqs.071, %if.end.for.end_crit_edge ], [ %stereo_freqs.2.ph, %for.inc.for.end_crit_edge ]
  %value.4 = phi i32 [ 0, %for.cond1.preheader.for.end_crit_edge ], [ %value.1, %if.end.for.end_crit_edge ], [ %value.3.ph, %for.inc.for.end_crit_edge ]
  %conv36 = zext i8 %stereo_freqs.0.lcssa to i32
  %shl38 = shl nuw i32 %conv36, 24
  %or39 = or i32 %value.4, %shl38
  %arrayidx40 = getelementptr [12 x [2 x i16]], ptr @evergreen_hdmi_write_sad_regs.eld_reg_to_type, i32 0, i32 %i.079
  %17 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %arrayidx40, align 2
  %conv42 = zext i16 %18 to i32
  tail call void @radeon_audio_endpoint_wreg(ptr noundef %3, i32 noundef 0, i32 noundef %conv42, i32 noundef %or39) #3
  %inc44 = add nuw nsw i32 %i.079, 1
  %exitcond81.not = icmp eq i32 %inc44, 12
  br i1 %exitcond81.not, label %for.end45, label %for.end.for.cond1.preheader_crit_edge

for.end.for.cond1.preheader_crit_edge:            ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.cond1.preheader

for.end45:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @evergreen_set_avi_packet(ptr noundef %rdev, i32 noundef %offset, ptr nocapture noundef readonly %buffer, i32 noundef %size) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %buffer, i32 3
  %add = add i32 %offset, 28804
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %add.ptr, align 1
  %conv = zext i8 %1 to i32
  %arrayidx1 = getelementptr i8, ptr %buffer, i32 4
  %2 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx1, align 1
  %conv2 = zext i8 %3 to i32
  %shl = shl nuw nsw i32 %conv2, 8
  %or = or i32 %shl, %conv
  %arrayidx3 = getelementptr i8, ptr %buffer, i32 5
  %4 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx3, align 1
  %conv4 = zext i8 %5 to i32
  %shl5 = shl nuw nsw i32 %conv4, 16
  %or6 = or i32 %or, %shl5
  %arrayidx7 = getelementptr i8, ptr %buffer, i32 6
  %6 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx7, align 1
  %conv8 = zext i8 %7 to i32
  %shl9 = shl nuw i32 %conv8, 24
  %or10 = or i32 %or6, %shl9
  %rmmio_size.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 18
  %8 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %add)
  %cmp.i = icmp ugt i32 %9, %add
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %add)
  %cmp1.i = icmp ult i32 %add, 65536
  %or.cond.i = or i1 %cmp1.i, %cmp.i
  br i1 %or.cond.i, label %do.body.i, label %if.else.i

do.body.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !23
  tail call void @arm_heavy_mb() #3
  %10 = tail call i32 @llvm.bswap.i32(i32 %or10) #3
  %rmmio.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %11 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %12, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %10) #3, !srcloc !24
  br label %r100_mm_wreg.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @r100_mm_wreg_slow(ptr noundef %rdev, i32 noundef %add, i32 noundef %or10) #3
  br label %r100_mm_wreg.exit

r100_mm_wreg.exit:                                ; preds = %if.else.i, %do.body.i
  %add11 = add i32 %offset, 28808
  %arrayidx12 = getelementptr i8, ptr %buffer, i32 7
  %13 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx12, align 1
  %conv13 = zext i8 %14 to i32
  %arrayidx14 = getelementptr i8, ptr %buffer, i32 8
  %15 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx14, align 1
  %conv15 = zext i8 %16 to i32
  %shl16 = shl nuw nsw i32 %conv15, 8
  %or17 = or i32 %shl16, %conv13
  %arrayidx18 = getelementptr i8, ptr %buffer, i32 9
  %17 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx18, align 1
  %conv19 = zext i8 %18 to i32
  %shl20 = shl nuw nsw i32 %conv19, 16
  %or21 = or i32 %or17, %shl20
  %arrayidx22 = getelementptr i8, ptr %buffer, i32 10
  %19 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx22, align 1
  %conv23 = zext i8 %20 to i32
  %shl24 = shl nuw i32 %conv23, 24
  %or25 = or i32 %or21, %shl24
  %21 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %add11)
  %cmp.i82 = icmp ugt i32 %22, %add11
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %add11)
  %cmp1.i83 = icmp ult i32 %add11, 65536
  %or.cond.i84 = or i1 %cmp1.i83, %cmp.i82
  br i1 %or.cond.i84, label %do.body.i87, label %if.else.i88

do.body.i87:                                      ; preds = %r100_mm_wreg.exit
  call void @__sanitizer_cov_trace_pc() #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !23
  tail call void @arm_heavy_mb() #3
  %23 = tail call i32 @llvm.bswap.i32(i32 %or25) #3
  %rmmio.i85 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %24 = ptrtoint ptr %rmmio.i85 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %rmmio.i85, align 4
  %add.ptr.i86 = getelementptr i8, ptr %25, i32 %add11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i86, i32 %23) #3, !srcloc !24
  br label %r100_mm_wreg.exit89

if.else.i88:                                      ; preds = %r100_mm_wreg.exit
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @r100_mm_wreg_slow(ptr noundef %rdev, i32 noundef %add11, i32 noundef %or25) #3
  br label %r100_mm_wreg.exit89

r100_mm_wreg.exit89:                              ; preds = %if.else.i88, %do.body.i87
  %add26 = add i32 %offset, 28812
  %arrayidx27 = getelementptr i8, ptr %buffer, i32 11
  %26 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx27, align 1
  %conv28 = zext i8 %27 to i32
  %arrayidx29 = getelementptr i8, ptr %buffer, i32 12
  %28 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx29, align 1
  %conv30 = zext i8 %29 to i32
  %shl31 = shl nuw nsw i32 %conv30, 8
  %or32 = or i32 %shl31, %conv28
  %arrayidx33 = getelementptr i8, ptr %buffer, i32 13
  %30 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %arrayidx33, align 1
  %conv34 = zext i8 %31 to i32
  %shl35 = shl nuw nsw i32 %conv34, 16
  %or36 = or i32 %or32, %shl35
  %arrayidx37 = getelementptr i8, ptr %buffer, i32 14
  %32 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %arrayidx37, align 1
  %conv38 = zext i8 %33 to i32
  %shl39 = shl nuw i32 %conv38, 24
  %or40 = or i32 %or36, %shl39
  %34 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %35, i32 %add26)
  %cmp.i91 = icmp ugt i32 %35, %add26
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %add26)
  %cmp1.i92 = icmp ult i32 %add26, 65536
  %or.cond.i93 = or i1 %cmp1.i92, %cmp.i91
  br i1 %or.cond.i93, label %do.body.i96, label %if.else.i97

do.body.i96:                                      ; preds = %r100_mm_wreg.exit89
  call void @__sanitizer_cov_trace_pc() #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !23
  tail call void @arm_heavy_mb() #3
  %36 = tail call i32 @llvm.bswap.i32(i32 %or40) #3
  %rmmio.i94 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %37 = ptrtoint ptr %rmmio.i94 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %rmmio.i94, align 4
  %add.ptr.i95 = getelementptr i8, ptr %38, i32 %add26
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i95, i32 %36) #3, !srcloc !24
  br label %r100_mm_wreg.exit98

if.else.i97:                                      ; preds = %r100_mm_wreg.exit89
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @r100_mm_wreg_slow(ptr noundef %rdev, i32 noundef %add26, i32 noundef %or40) #3
  br label %r100_mm_wreg.exit98

r100_mm_wreg.exit98:                              ; preds = %if.else.i97, %do.body.i96
  %add41 = add i32 %offset, 28816
  %arrayidx42 = getelementptr i8, ptr %buffer, i32 15
  %39 = ptrtoint ptr %arrayidx42 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %arrayidx42, align 1
  %conv43 = zext i8 %40 to i32
  %arrayidx44 = getelementptr i8, ptr %buffer, i32 16
  %41 = ptrtoint ptr %arrayidx44 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %arrayidx44, align 1
  %conv45 = zext i8 %42 to i32
  %shl46 = shl nuw nsw i32 %conv45, 8
  %or47 = or i32 %shl46, %conv43
  %arrayidx48 = getelementptr i8, ptr %buffer, i32 1
  %43 = ptrtoint ptr %arrayidx48 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %arrayidx48, align 1
  %conv49 = zext i8 %44 to i32
  %shl50 = shl nuw i32 %conv49, 24
  %or51 = or i32 %or47, %shl50
  %45 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %46, i32 %add41)
  %cmp.i100 = icmp ugt i32 %46, %add41
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %add41)
  %cmp1.i101 = icmp ult i32 %add41, 65536
  %or.cond.i102 = or i1 %cmp1.i101, %cmp.i100
  br i1 %or.cond.i102, label %do.body.i105, label %if.else.i106

do.body.i105:                                     ; preds = %r100_mm_wreg.exit98
  call void @__sanitizer_cov_trace_pc() #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !23
  tail call void @arm_heavy_mb() #3
  %47 = tail call i32 @llvm.bswap.i32(i32 %or51) #3
  %rmmio.i103 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %48 = ptrtoint ptr %rmmio.i103 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %rmmio.i103, align 4
  %add.ptr.i104 = getelementptr i8, ptr %49, i32 %add41
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i104, i32 %47) #3, !srcloc !24
  br label %r100_mm_wreg.exit107

if.else.i106:                                     ; preds = %r100_mm_wreg.exit98
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @r100_mm_wreg_slow(ptr noundef %rdev, i32 noundef %add41, i32 noundef %or51) #3
  br label %r100_mm_wreg.exit107

r100_mm_wreg.exit107:                             ; preds = %if.else.i106, %do.body.i105
  %add52 = add i32 %offset, 28744
  %50 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %51, i32 %add52)
  %cmp.i109 = icmp ugt i32 %51, %add52
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %add52)
  %cmp1.i110 = icmp ult i32 %add52, 65536
  %or.cond.i111 = or i1 %cmp1.i110, %cmp.i109
  br i1 %or.cond.i111, label %if.then.i, label %if.else.i114

if.then.i:                                        ; preds = %r100_mm_wreg.exit107
  call void @__sanitizer_cov_trace_pc() #5
  %rmmio.i112 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %52 = ptrtoint ptr %rmmio.i112 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %rmmio.i112, align 4
  %add.ptr.i113 = getelementptr i8, ptr %53, i32 %add52
  %54 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i113) #3, !srcloc !21
  %55 = tail call i32 @llvm.bswap.i32(i32 %54) #3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !22
  br label %r100_mm_rreg.exit

if.else.i114:                                     ; preds = %r100_mm_wreg.exit107
  call void @__sanitizer_cov_trace_pc() #5
  %call3.i = tail call i32 @r100_mm_rreg_slow(ptr noundef %rdev, i32 noundef %add52) #3
  br label %r100_mm_rreg.exit

r100_mm_rreg.exit:                                ; preds = %if.else.i114, %if.then.i
  %retval.0.i = phi i32 [ %call3.i, %if.else.i114 ], [ %55, %if.then.i ]
  %and = and i32 %retval.0.i, -64
  %or53 = or i32 %and, 2
  %56 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %57, i32 %add52)
  %cmp.i116 = icmp ugt i32 %57, %add52
  %or.cond.i118 = or i1 %cmp1.i110, %cmp.i116
  br i1 %or.cond.i118, label %do.body.i121, label %if.else.i122

do.body.i121:                                     ; preds = %r100_mm_rreg.exit
  call void @__sanitizer_cov_trace_pc() #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !23
  tail call void @arm_heavy_mb() #3
  %58 = tail call i32 @llvm.bswap.i32(i32 %or53) #3
  %rmmio.i119 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %59 = ptrtoint ptr %rmmio.i119 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %rmmio.i119, align 4
  %add.ptr.i120 = getelementptr i8, ptr %60, i32 %add52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i120, i32 %58) #3, !srcloc !24
  br label %r100_mm_wreg.exit123

if.else.i122:                                     ; preds = %r100_mm_rreg.exit
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @r100_mm_wreg_slow(ptr noundef %rdev, i32 noundef %add52, i32 noundef %or53) #3
  br label %r100_mm_wreg.exit123

r100_mm_wreg.exit123:                             ; preds = %if.else.i122, %do.body.i121
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dce4_hdmi_audio_set_dto(ptr nocapture noundef readonly %rdev, ptr noundef readonly %crtc, i32 noundef %clock) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 191999, i32 %clock)
  %cmp = icmp ugt i32 %clock, 191999
  br i1 %cmp, label %entry.if.end8_crit_edge, label %if.else

entry.if.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end8

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 95999, i32 %clock)
  %cmp1 = icmp ugt i32 %clock, 95999
  br i1 %cmp1, label %if.else.if.end8_crit_edge, label %if.else3

if.else.if.end8_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end8

if.else3:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 47999, i32 %clock)
  %cmp4 = icmp ugt i32 %clock, 47999
  %. = select i1 %cmp4, i32 48000, i32 24000
  %.27 = zext i1 %cmp4 to i32
  br label %if.end8

if.end8:                                          ; preds = %if.else3, %if.else.if.end8_crit_edge, %entry.if.end8_crit_edge
  %dto_phase.0 = phi i32 [ 192000, %entry.if.end8_crit_edge ], [ 96000, %if.else.if.end8_crit_edge ], [ %., %if.else3 ]
  %wallclock_ratio.0 = phi i32 [ 3, %entry.if.end8_crit_edge ], [ 2, %if.else.if.end8_crit_edge ], [ %.27, %if.else3 ]
  %rmmio.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %0 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 1468
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #3, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !22
  %3 = and i32 %2, -251658241
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  %or = or i32 %4, %wallclock_ratio.0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !23
  tail call void @arm_heavy_mb() #3
  %5 = tail call i32 @llvm.bswap.i32(i32 %or) #3
  %6 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i31 = getelementptr i8, ptr %7, i32 1468
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i31, i32 %5) #3, !srcloc !24
  %tobool.not = icmp eq ptr %crtc, null
  br i1 %tobool.not, label %if.end8.if.end14_crit_edge, label %if.then11

if.end8.if.end14_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end14

if.then11:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #5
  %crtc_id = getelementptr inbounds %struct.radeon_crtc, ptr %crtc, i32 0, i32 1
  %8 = ptrtoint ptr %crtc_id to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %crtc_id, align 8
  br label %if.end14

if.end14:                                         ; preds = %if.then11, %if.end8.if.end14_crit_edge
  %value.0 = phi i32 [ %9, %if.then11 ], [ 0, %if.end8.if.end14_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !23
  tail call void @arm_heavy_mb() #3
  %10 = tail call i32 @llvm.bswap.i32(i32 %value.0) #3
  %11 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i35 = getelementptr i8, ptr %12, i32 1452
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i35, i32 %10) #3, !srcloc !24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !23
  tail call void @arm_heavy_mb() #3
  %13 = tail call i32 @llvm.bswap.i32(i32 %dto_phase.0) #3
  %14 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i39 = getelementptr i8, ptr %15, i32 1456
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i39, i32 %13) #3, !srcloc !24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !23
  tail call void @arm_heavy_mb() #3
  %16 = tail call i32 @llvm.bswap.i32(i32 %clock) #3
  %17 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i43 = getelementptr i8, ptr %18, i32 1460
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i43, i32 %16) #3, !srcloc !24
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dce4_dp_audio_set_dto(ptr nocapture noundef readonly %rdev, ptr noundef readonly %crtc, i32 noundef %clock) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %rmmio.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %0 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 1484
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #3, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !22
  %3 = and i32 %2, -251658241
  %4 = or i32 %3, 134217728
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !23
  tail call void @arm_heavy_mb() #3
  %5 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i32 = getelementptr i8, ptr %6, i32 1484
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i32, i32 %4) #3, !srcloc !24
  %tobool.not = icmp eq ptr %crtc, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %crtc_id = getelementptr inbounds %struct.radeon_crtc, ptr %crtc, i32 0, i32 1
  %7 = ptrtoint ptr %crtc_id to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %crtc_id, align 8
  %or2 = or i32 %8, 16
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %value.0 = phi i32 [ %or2, %if.then ], [ 16, %entry.if.end_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !23
  tail call void @arm_heavy_mb() #3
  %9 = tail call i32 @llvm.bswap.i32(i32 %value.0) #3
  %10 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i36 = getelementptr i8, ptr %11, i32 1452
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i36, i32 %9) #3, !srcloc !24
  %family = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 6
  %12 = ptrtoint ptr %family to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %family, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 43, i32 %13)
  %cmp = icmp ugt i32 %13, 43
  br i1 %cmp, label %land.lhs.true, label %if.end.if.end13_crit_edge

if.end.if.end13_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end13

land.lhs.true:                                    ; preds = %if.end
  %flags = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 7
  %14 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %flags, align 8
  %and3 = and i32 %15, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool4.not = icmp eq i32 %and3, 0
  br i1 %tobool4.not, label %land.lhs.true.if.end13_crit_edge, label %if.then5

land.lhs.true.if.end13_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end13

if.then5:                                         ; preds = %land.lhs.true
  %16 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i40 = getelementptr i8, ptr %17, i32 1180
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i40) #3, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !22
  %shr = and i32 %18, 127
  %call8 = tail call i32 @radeon_audio_decode_dfs_div(i32 noundef %shr) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.then5.if.end13_crit_edge, label %if.then10

if.then5.if.end13_crit_edge:                      ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end13

if.then10:                                        ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #5
  %mul = mul i32 %clock, 100
  %div11 = udiv i32 %mul, %call8
  br label %if.end13

if.end13:                                         ; preds = %if.then10, %if.then5.if.end13_crit_edge, %land.lhs.true.if.end13_crit_edge, %if.end.if.end13_crit_edge
  %clock.addr.1 = phi i32 [ %clock, %land.lhs.true.if.end13_crit_edge ], [ %clock, %if.end.if.end13_crit_edge ], [ %div11, %if.then10 ], [ %clock, %if.then5.if.end13_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !23
  tail call void @arm_heavy_mb() #3
  %19 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i44 = getelementptr i8, ptr %20, i32 1472
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i44, i32 -1067646976) #3, !srcloc !24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !23
  tail call void @arm_heavy_mb() #3
  %21 = tail call i32 @llvm.bswap.i32(i32 %clock.addr.1) #3
  %22 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i48 = getelementptr i8, ptr %23, i32 1476
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i48, i32 %21) #3, !srcloc !24
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @radeon_audio_decode_dfs_div(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dce4_set_vbi_packet(ptr nocapture noundef readonly %encoder, i32 noundef %offset) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %encoder to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %encoder, align 4
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_private, align 4
  %add = add i32 %offset, 28736
  %rmmio_size.i = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 18
  %4 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %add)
  %cmp.i = icmp ugt i32 %5, %add
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %add)
  %cmp1.i = icmp ult i32 %add, 65536
  %or.cond.i = or i1 %cmp1.i, %cmp.i
  br i1 %or.cond.i, label %do.body.i, label %if.else.i

do.body.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !23
  tail call void @arm_heavy_mb() #3
  %rmmio.i = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 31
  %6 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %7, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 822083584) #3, !srcloc !24
  br label %r100_mm_wreg.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @r100_mm_wreg_slow(ptr noundef %3, i32 noundef %add, i32 noundef 49) #3
  br label %r100_mm_wreg.exit

r100_mm_wreg.exit:                                ; preds = %if.else.i, %do.body.i
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dce4_hdmi_set_color_depth(ptr noundef %encoder, i32 noundef %offset, i32 noundef %bpc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %encoder to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %encoder, align 4
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_private, align 4
  %call = tail call ptr @radeon_get_connector_for_encoder(ptr noundef %encoder) #3
  %add = add i32 %offset, 28720
  %rmmio_size.i = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 18
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
  call void @__sanitizer_cov_trace_pc() #5
  %rmmio.i = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 31
  %6 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %7, i32 %add
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #3, !srcloc !21
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !22
  br label %r100_mm_rreg.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %call3.i = tail call i32 @r100_mm_rreg_slow(ptr noundef %3, i32 noundef %add) #3
  br label %r100_mm_rreg.exit

r100_mm_rreg.exit:                                ; preds = %if.else.i, %if.then.i
  %retval.0.i = phi i32 [ %call3.i, %if.else.i ], [ %9, %if.then.i ]
  %and3 = and i32 %retval.0.i, -822083585
  %10 = tail call i32 @llvm.fshl.i32(i32 %bpc, i32 %bpc, i32 31)
  %11 = zext i32 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values)
  switch i32 %10, label %sw.default [
    i32 6, label %sw.bb7
    i32 5, label %sw.bb4
  ]

sw.default:                                       ; preds = %r100_mm_rreg.exit
  call void @__sanitizer_cov_trace_pc() #5
  %name = getelementptr inbounds %struct.drm_connector, ptr %call, i32 0, i32 7
  %12 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %name, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef %13, i32 noundef %bpc) #3
  br label %sw.epilog

sw.bb4:                                           ; preds = %r100_mm_rreg.exit
  call void @__sanitizer_cov_trace_pc() #5
  %or5 = or i32 %and3, 285212672
  %name6 = getelementptr inbounds %struct.drm_connector, ptr %call, i32 0, i32 7
  %14 = ptrtoint ptr %name6 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %name6, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.1, ptr noundef %15) #3
  br label %sw.epilog

sw.bb7:                                           ; preds = %r100_mm_rreg.exit
  call void @__sanitizer_cov_trace_pc() #5
  %or9 = or i32 %and3, 553648128
  %name10 = getelementptr inbounds %struct.drm_connector, ptr %call, i32 0, i32 7
  %16 = ptrtoint ptr %name10 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %name10, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.2, ptr noundef %17) #3
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb7, %sw.bb4, %sw.default
  %val.0 = phi i32 [ %and3, %sw.default ], [ %or5, %sw.bb4 ], [ %or9, %sw.bb7 ]
  %18 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %add)
  %cmp.i25 = icmp ugt i32 %19, %add
  %or.cond.i27 = or i1 %cmp1.i, %cmp.i25
  br i1 %or.cond.i27, label %do.body.i, label %if.else.i30

do.body.i:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !23
  tail call void @arm_heavy_mb() #3
  %20 = tail call i32 @llvm.bswap.i32(i32 %val.0) #3
  %rmmio.i28 = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 31
  %21 = ptrtoint ptr %rmmio.i28 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %rmmio.i28, align 4
  %add.ptr.i29 = getelementptr i8, ptr %22, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i29, i32 %20) #3, !srcloc !24
  br label %r100_mm_wreg.exit

if.else.i30:                                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @r100_mm_wreg_slow(ptr noundef %3, i32 noundef %add, i32 noundef %val.0) #3
  br label %r100_mm_wreg.exit

r100_mm_wreg.exit:                                ; preds = %if.else.i30, %do.body.i
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @radeon_get_connector_for_encoder(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dce4_set_audio_packet(ptr nocapture noundef readonly %encoder, i32 noundef %offset) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %encoder to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %encoder, align 4
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_private, align 4
  %add = add i32 %offset, 28980
  %rmmio_size.i = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 18
  %4 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %add)
  %cmp.i = icmp ugt i32 %5, %add
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %add)
  %cmp1.i = icmp ult i32 %add, 65536
  %or.cond.i = or i1 %cmp1.i, %cmp.i
  br i1 %or.cond.i, label %do.body.i, label %if.else.i

do.body.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !23
  tail call void @arm_heavy_mb() #3
  %rmmio.i = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 31
  %6 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %7, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 -2147483648) #3, !srcloc !24
  br label %r100_mm_wreg.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @r100_mm_wreg_slow(ptr noundef %3, i32 noundef %add, i32 noundef 128) #3
  br label %r100_mm_wreg.exit

r100_mm_wreg.exit:                                ; preds = %if.else.i, %do.body.i
  %add2 = add i32 %offset, 28932
  %8 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %add2)
  %cmp.i26 = icmp ugt i32 %9, %add2
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %add2)
  %cmp1.i27 = icmp ult i32 %add2, 65536
  %or.cond.i28 = or i1 %cmp1.i27, %cmp.i26
  br i1 %or.cond.i28, label %do.body.i31, label %if.else.i32

do.body.i31:                                      ; preds = %r100_mm_wreg.exit
  call void @__sanitizer_cov_trace_pc() #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !23
  tail call void @arm_heavy_mb() #3
  %rmmio.i29 = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 31
  %10 = ptrtoint ptr %rmmio.i29 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %rmmio.i29, align 4
  %add.ptr.i30 = getelementptr i8, ptr %11, i32 %add2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i30, i32 4096) #3, !srcloc !24
  br label %r100_mm_wreg.exit33

if.else.i32:                                      ; preds = %r100_mm_wreg.exit
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @r100_mm_wreg_slow(ptr noundef %3, i32 noundef %add2, i32 noundef 1048576) #3
  br label %r100_mm_wreg.exit33

r100_mm_wreg.exit33:                              ; preds = %if.else.i32, %do.body.i31
  %add3 = add i32 %offset, 28936
  %12 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %add3)
  %cmp.i35 = icmp ugt i32 %13, %add3
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %add3)
  %cmp1.i36 = icmp ult i32 %add3, 65536
  %or.cond.i37 = or i1 %cmp1.i36, %cmp.i35
  br i1 %or.cond.i37, label %do.body.i40, label %if.else.i41

do.body.i40:                                      ; preds = %r100_mm_wreg.exit33
  call void @__sanitizer_cov_trace_pc() #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !23
  tail call void @arm_heavy_mb() #3
  %rmmio.i38 = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 31
  %14 = ptrtoint ptr %rmmio.i38 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %rmmio.i38, align 4
  %add.ptr.i39 = getelementptr i8, ptr %15, i32 %add3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i39, i32 8192) #3, !srcloc !24
  br label %r100_mm_wreg.exit42

if.else.i41:                                      ; preds = %r100_mm_wreg.exit33
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @r100_mm_wreg_slow(ptr noundef %3, i32 noundef %add3, i32 noundef 2097152) #3
  br label %r100_mm_wreg.exit42

r100_mm_wreg.exit42:                              ; preds = %if.else.i41, %do.body.i40
  %add4 = add i32 %offset, 28960
  %16 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %add4)
  %cmp.i44 = icmp ugt i32 %17, %add4
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %add4)
  %cmp1.i45 = icmp ult i32 %add4, 65536
  %or.cond.i46 = or i1 %cmp1.i45, %cmp.i44
  br i1 %or.cond.i46, label %do.body.i49, label %if.else.i50

do.body.i49:                                      ; preds = %r100_mm_wreg.exit42
  call void @__sanitizer_cov_trace_pc() #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !23
  tail call void @arm_heavy_mb() #3
  %rmmio.i47 = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 31
  %18 = ptrtoint ptr %rmmio.i47 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %rmmio.i47, align 4
  %add.ptr.i48 = getelementptr i8, ptr %19, i32 %add4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i48, i32 1130727168) #3, !srcloc !24
  br label %r100_mm_wreg.exit51

if.else.i50:                                      ; preds = %r100_mm_wreg.exit42
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @r100_mm_wreg_slow(ptr noundef %3, i32 noundef %add4, i32 noundef 8873283) #3
  br label %r100_mm_wreg.exit51

r100_mm_wreg.exit51:                              ; preds = %if.else.i50, %do.body.i49
  %add5 = add i32 %offset, 28764
  %20 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %add5)
  %cmp.i53 = icmp ugt i32 %21, %add5
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %add5)
  %cmp1.i54 = icmp ult i32 %add5, 65536
  %or.cond.i55 = or i1 %cmp1.i54, %cmp.i53
  br i1 %or.cond.i55, label %do.body.i58, label %if.else.i59

do.body.i58:                                      ; preds = %r100_mm_wreg.exit51
  call void @__sanitizer_cov_trace_pc() #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !23
  tail call void @arm_heavy_mb() #3
  %rmmio.i56 = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 31
  %22 = ptrtoint ptr %rmmio.i56 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %rmmio.i56, align 4
  %add.ptr.i57 = getelementptr i8, ptr %23, i32 %add5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i57, i32 16711680) #3, !srcloc !24
  br label %r100_mm_wreg.exit60

if.else.i59:                                      ; preds = %r100_mm_wreg.exit51
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @r100_mm_wreg_slow(ptr noundef %3, i32 noundef %add5, i32 noundef 65280) #3
  br label %r100_mm_wreg.exit60

r100_mm_wreg.exit60:                              ; preds = %if.else.i59, %do.body.i58
  %add6 = add i32 %offset, 28728
  %24 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %25, i32 %add6)
  %cmp.i62 = icmp ugt i32 %25, %add6
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %add6)
  %cmp1.i63 = icmp ult i32 %add6, 65536
  %or.cond.i64 = or i1 %cmp1.i63, %cmp.i62
  br i1 %or.cond.i64, label %do.body.i67, label %if.else.i68

do.body.i67:                                      ; preds = %r100_mm_wreg.exit60
  call void @__sanitizer_cov_trace_pc() #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !23
  tail call void @arm_heavy_mb() #3
  %rmmio.i65 = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 31
  %26 = ptrtoint ptr %rmmio.i65 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %rmmio.i65, align 4
  %add.ptr.i66 = getelementptr i8, ptr %27, i32 %add6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i66, i32 268436224) #3, !srcloc !24
  br label %r100_mm_wreg.exit69

if.else.i68:                                      ; preds = %r100_mm_wreg.exit60
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @r100_mm_wreg_slow(ptr noundef %3, i32 noundef %add6, i32 noundef 196624) #3
  br label %r100_mm_wreg.exit69

r100_mm_wreg.exit69:                              ; preds = %if.else.i68, %do.body.i67
  %add7 = add i32 %offset, 28972
  %28 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %29, i32 %add7)
  %cmp.i71 = icmp ugt i32 %29, %add7
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %add7)
  %cmp1.i72 = icmp ult i32 %add7, 65536
  %or.cond.i73 = or i1 %cmp1.i72, %cmp.i71
  br i1 %or.cond.i73, label %if.then.i, label %if.else.i76

if.then.i:                                        ; preds = %r100_mm_wreg.exit69
  call void @__sanitizer_cov_trace_pc() #5
  %rmmio.i74 = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 31
  %30 = ptrtoint ptr %rmmio.i74 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %rmmio.i74, align 4
  %add.ptr.i75 = getelementptr i8, ptr %31, i32 %add7
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i75) #3, !srcloc !21
  %33 = tail call i32 @llvm.bswap.i32(i32 %32) #3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !22
  br label %r100_mm_rreg.exit

if.else.i76:                                      ; preds = %r100_mm_wreg.exit69
  call void @__sanitizer_cov_trace_pc() #5
  %call3.i = tail call i32 @r100_mm_rreg_slow(ptr noundef %3, i32 noundef %add7) #3
  br label %r100_mm_rreg.exit

r100_mm_rreg.exit:                                ; preds = %if.else.i76, %if.then.i
  %retval.0.i = phi i32 [ %call3.i, %if.else.i76 ], [ %33, %if.then.i ]
  %or = or i32 %retval.0.i, 67110912
  %34 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %35, i32 %add7)
  %cmp.i78 = icmp ugt i32 %35, %add7
  %or.cond.i80 = or i1 %cmp1.i72, %cmp.i78
  br i1 %or.cond.i80, label %do.body.i83, label %if.else.i84

do.body.i83:                                      ; preds = %r100_mm_rreg.exit
  call void @__sanitizer_cov_trace_pc() #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !23
  tail call void @arm_heavy_mb() #3
  %36 = tail call i32 @llvm.bswap.i32(i32 %or) #3
  %rmmio.i81 = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 31
  %37 = ptrtoint ptr %rmmio.i81 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %rmmio.i81, align 4
  %add.ptr.i82 = getelementptr i8, ptr %38, i32 %add7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i82, i32 %36) #3, !srcloc !24
  br label %r100_mm_wreg.exit85

if.else.i84:                                      ; preds = %r100_mm_rreg.exit
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @r100_mm_wreg_slow(ptr noundef %3, i32 noundef %add7, i32 noundef %or) #3
  br label %r100_mm_wreg.exit85

r100_mm_wreg.exit85:                              ; preds = %if.else.i84, %do.body.i83
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dce4_set_mute(ptr nocapture noundef readonly %encoder, i32 noundef %offset, i1 noundef zeroext %mute) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %encoder to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %encoder, align 4
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_private, align 4
  %add = add i32 %offset, 28760
  %rmmio_size.i = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 18
  %4 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %add)
  %cmp.i = icmp ugt i32 %5, %add
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %add)
  %cmp1.i = icmp ult i32 %add, 65536
  %or.cond.i = or i1 %cmp1.i, %cmp.i
  br i1 %mute, label %do.body, label %do.body3

do.body:                                          ; preds = %entry
  br i1 %or.cond.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #5
  %rmmio.i = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 31
  %6 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %7, i32 %add
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #3, !srcloc !21
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !22
  br label %r100_mm_rreg.exit

if.else.i:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #5
  %call3.i = tail call i32 @r100_mm_rreg_slow(ptr noundef %3, i32 noundef %add) #3
  br label %r100_mm_rreg.exit

r100_mm_rreg.exit:                                ; preds = %if.else.i, %if.then.i
  %retval.0.i = phi i32 [ %call3.i, %if.else.i ], [ %9, %if.then.i ]
  %or = or i32 %retval.0.i, 1
  %10 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %add)
  %cmp.i23 = icmp ugt i32 %11, %add
  %or.cond.i25 = or i1 %cmp1.i, %cmp.i23
  br i1 %or.cond.i25, label %do.body.i, label %if.else.i28

do.body.i:                                        ; preds = %r100_mm_rreg.exit
  call void @__sanitizer_cov_trace_pc() #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !23
  tail call void @arm_heavy_mb() #3
  %12 = tail call i32 @llvm.bswap.i32(i32 %or) #3
  %rmmio.i26 = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 31
  %13 = ptrtoint ptr %rmmio.i26 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %rmmio.i26, align 4
  %add.ptr.i27 = getelementptr i8, ptr %14, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i27, i32 %12) #3, !srcloc !24
  br label %if.end

if.else.i28:                                      ; preds = %r100_mm_rreg.exit
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @r100_mm_wreg_slow(ptr noundef %3, i32 noundef %add, i32 noundef %or) #3
  br label %if.end

do.body3:                                         ; preds = %entry
  br i1 %or.cond.i, label %if.then.i35, label %if.else.i37

if.then.i35:                                      ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #5
  %rmmio.i33 = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 31
  %15 = ptrtoint ptr %rmmio.i33 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %rmmio.i33, align 4
  %add.ptr.i34 = getelementptr i8, ptr %16, i32 %add
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i34) #3, !srcloc !21
  %18 = tail call i32 @llvm.bswap.i32(i32 %17) #3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !22
  br label %r100_mm_rreg.exit39

if.else.i37:                                      ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #5
  %call3.i36 = tail call i32 @r100_mm_rreg_slow(ptr noundef %3, i32 noundef %add) #3
  br label %r100_mm_rreg.exit39

r100_mm_rreg.exit39:                              ; preds = %if.else.i37, %if.then.i35
  %retval.0.i38 = phi i32 [ %call3.i36, %if.else.i37 ], [ %18, %if.then.i35 ]
  %and7 = and i32 %retval.0.i38, -2
  %19 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %20, i32 %add)
  %cmp.i41 = icmp ugt i32 %20, %add
  %or.cond.i43 = or i1 %cmp1.i, %cmp.i41
  br i1 %or.cond.i43, label %do.body.i46, label %if.else.i47

do.body.i46:                                      ; preds = %r100_mm_rreg.exit39
  call void @__sanitizer_cov_trace_pc() #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !23
  tail call void @arm_heavy_mb() #3
  %21 = tail call i32 @llvm.bswap.i32(i32 %and7) #3
  %rmmio.i44 = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 31
  %22 = ptrtoint ptr %rmmio.i44 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %rmmio.i44, align 4
  %add.ptr.i45 = getelementptr i8, ptr %23, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i45, i32 %21) #3, !srcloc !24
  br label %if.end

if.else.i47:                                      ; preds = %r100_mm_rreg.exit39
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @r100_mm_wreg_slow(ptr noundef %3, i32 noundef %add, i32 noundef %and7) #3
  br label %if.end

if.end:                                           ; preds = %if.else.i47, %do.body.i46, %if.else.i28, %do.body.i
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @evergreen_hdmi_enable(ptr noundef %encoder, i1 noundef zeroext %enable) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %frombool = zext i1 %enable to i8
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
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %afmt = getelementptr inbounds %struct.radeon_encoder_atom_dig, ptr %5, i32 0, i32 11
  %6 = ptrtoint ptr %afmt to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %afmt, align 4
  %tobool2.not = icmp eq ptr %7, null
  br i1 %tobool2.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  br i1 %enable, label %if.then4, label %do.body35

if.then4:                                         ; preds = %if.end
  %call = tail call ptr @radeon_get_connector_for_encoder(ptr noundef %encoder) #3
  %tobool5.not = icmp eq ptr %call, null
  br i1 %tobool5.not, label %if.then4.if.else_crit_edge, label %land.lhs.true

if.then4.if.else_crit_edge:                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.else

land.lhs.true:                                    ; preds = %if.then4
  %call6 = tail call ptr @radeon_connector_edid(ptr noundef nonnull %call) #3
  %call7 = tail call zeroext i1 @drm_detect_monitor_audio(ptr noundef %call6) #3
  br i1 %call7, label %if.then8, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.else

if.then8:                                         ; preds = %land.lhs.true
  %8 = ptrtoint ptr %afmt to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %afmt, align 4
  %offset = getelementptr inbounds %struct.radeon_afmt, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %offset, align 4
  %add = add i32 %11, 28740
  %rmmio_size.i = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 18
  %12 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %add)
  %cmp.i = icmp ugt i32 %13, %add
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %add)
  %cmp1.i = icmp ult i32 %add, 65536
  %or.cond.i = or i1 %cmp1.i, %cmp.i
  br i1 %or.cond.i, label %do.body.i, label %if.else.i

do.body.i:                                        ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !23
  tail call void @arm_heavy_mb() #3
  %rmmio.i = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 31
  %14 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %15, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 855638016) #3, !srcloc !24
  br label %r100_mm_wreg.exit

if.else.i:                                        ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @r100_mm_wreg_slow(ptr noundef %3, i32 noundef %add, i32 noundef 51) #3
  br label %r100_mm_wreg.exit

r100_mm_wreg.exit:                                ; preds = %if.else.i, %do.body.i
  %16 = ptrtoint ptr %afmt to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %afmt, align 4
  %offset11 = getelementptr inbounds %struct.radeon_afmt, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %offset11 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %offset11, align 4
  %add12 = add i32 %19, 28972
  %20 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %add12)
  %cmp.i95 = icmp ugt i32 %21, %add12
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %add12)
  %cmp1.i96 = icmp ult i32 %add12, 65536
  %or.cond.i97 = or i1 %cmp1.i96, %cmp.i95
  br i1 %or.cond.i97, label %if.then.i, label %if.else.i100

if.then.i:                                        ; preds = %r100_mm_wreg.exit
  call void @__sanitizer_cov_trace_pc() #5
  %rmmio.i98 = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 31
  %22 = ptrtoint ptr %rmmio.i98 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %rmmio.i98, align 4
  %add.ptr.i99 = getelementptr i8, ptr %23, i32 %add12
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i99) #3, !srcloc !21
  %25 = tail call i32 @llvm.bswap.i32(i32 %24) #3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !22
  br label %r100_mm_rreg.exit

if.else.i100:                                     ; preds = %r100_mm_wreg.exit
  call void @__sanitizer_cov_trace_pc() #5
  %call3.i = tail call i32 @r100_mm_rreg_slow(ptr noundef %3, i32 noundef %add12) #3
  br label %r100_mm_rreg.exit

r100_mm_rreg.exit:                                ; preds = %if.else.i100, %if.then.i
  %retval.0.i = phi i32 [ %call3.i, %if.else.i100 ], [ %25, %if.then.i ]
  %or = or i32 %retval.0.i, 1
  %26 = ptrtoint ptr %afmt to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %afmt, align 4
  %offset15 = getelementptr inbounds %struct.radeon_afmt, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %offset15 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %offset15, align 4
  %add16 = add i32 %29, 28972
  %30 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %31, i32 %add16)
  %cmp.i102 = icmp ugt i32 %31, %add16
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %add16)
  %cmp1.i103 = icmp ult i32 %add16, 65536
  %or.cond.i104 = or i1 %cmp1.i103, %cmp.i102
  br i1 %or.cond.i104, label %do.body.i107, label %if.else.i108

do.body.i107:                                     ; preds = %r100_mm_rreg.exit
  call void @__sanitizer_cov_trace_pc() #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !23
  tail call void @arm_heavy_mb() #3
  %32 = tail call i32 @llvm.bswap.i32(i32 %or) #3
  %rmmio.i105 = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 31
  %33 = ptrtoint ptr %rmmio.i105 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %rmmio.i105, align 4
  %add.ptr.i106 = getelementptr i8, ptr %34, i32 %add16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i106, i32 %32) #3, !srcloc !24
  br label %if.end51

if.else.i108:                                     ; preds = %r100_mm_rreg.exit
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @r100_mm_wreg_slow(ptr noundef %3, i32 noundef %add16, i32 noundef %or) #3
  br label %if.end51

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %if.then4.if.else_crit_edge
  %35 = ptrtoint ptr %afmt to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %afmt, align 4
  %offset18 = getelementptr inbounds %struct.radeon_afmt, ptr %36, i32 0, i32 1
  %37 = ptrtoint ptr %offset18 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %offset18, align 4
  %add19 = add i32 %38, 28740
  %rmmio_size.i110 = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 18
  %39 = ptrtoint ptr %rmmio_size.i110 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %rmmio_size.i110, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %40, i32 %add19)
  %cmp.i111 = icmp ugt i32 %40, %add19
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %add19)
  %cmp1.i112 = icmp ult i32 %add19, 65536
  %or.cond.i113 = or i1 %cmp1.i112, %cmp.i111
  br i1 %or.cond.i113, label %do.body.i116, label %if.else.i117

do.body.i116:                                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !23
  tail call void @arm_heavy_mb() #3
  %rmmio.i114 = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 31
  %41 = ptrtoint ptr %rmmio.i114 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %rmmio.i114, align 4
  %add.ptr.i115 = getelementptr i8, ptr %42, i32 %add19
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i115, i32 50331648) #3, !srcloc !24
  br label %r100_mm_wreg.exit118

if.else.i117:                                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @r100_mm_wreg_slow(ptr noundef %3, i32 noundef %add19, i32 noundef 3) #3
  br label %r100_mm_wreg.exit118

r100_mm_wreg.exit118:                             ; preds = %if.else.i117, %do.body.i116
  %43 = ptrtoint ptr %afmt to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %afmt, align 4
  %offset23 = getelementptr inbounds %struct.radeon_afmt, ptr %44, i32 0, i32 1
  %45 = ptrtoint ptr %offset23 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %offset23, align 4
  %add24 = add i32 %46, 28972
  %47 = ptrtoint ptr %rmmio_size.i110 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %rmmio_size.i110, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %48, i32 %add24)
  %cmp.i120 = icmp ugt i32 %48, %add24
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %add24)
  %cmp1.i121 = icmp ult i32 %add24, 65536
  %or.cond.i122 = or i1 %cmp1.i121, %cmp.i120
  br i1 %or.cond.i122, label %if.then.i125, label %if.else.i127

if.then.i125:                                     ; preds = %r100_mm_wreg.exit118
  call void @__sanitizer_cov_trace_pc() #5
  %rmmio.i123 = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 31
  %49 = ptrtoint ptr %rmmio.i123 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %rmmio.i123, align 4
  %add.ptr.i124 = getelementptr i8, ptr %50, i32 %add24
  %51 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i124) #3, !srcloc !21
  %52 = tail call i32 @llvm.bswap.i32(i32 %51) #3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !22
  br label %r100_mm_rreg.exit129

if.else.i127:                                     ; preds = %r100_mm_wreg.exit118
  call void @__sanitizer_cov_trace_pc() #5
  %call3.i126 = tail call i32 @r100_mm_rreg_slow(ptr noundef %3, i32 noundef %add24) #3
  br label %r100_mm_rreg.exit129

r100_mm_rreg.exit129:                             ; preds = %if.else.i127, %if.then.i125
  %retval.0.i128 = phi i32 [ %call3.i126, %if.else.i127 ], [ %52, %if.then.i125 ]
  %and26 = and i32 %retval.0.i128, -2
  %53 = ptrtoint ptr %afmt to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %afmt, align 4
  %offset29 = getelementptr inbounds %struct.radeon_afmt, ptr %54, i32 0, i32 1
  %55 = ptrtoint ptr %offset29 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %offset29, align 4
  %add30 = add i32 %56, 28972
  %57 = ptrtoint ptr %rmmio_size.i110 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %rmmio_size.i110, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %58, i32 %add30)
  %cmp.i131 = icmp ugt i32 %58, %add30
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %add30)
  %cmp1.i132 = icmp ult i32 %add30, 65536
  %or.cond.i133 = or i1 %cmp1.i132, %cmp.i131
  br i1 %or.cond.i133, label %do.body.i136, label %if.else.i137

do.body.i136:                                     ; preds = %r100_mm_rreg.exit129
  call void @__sanitizer_cov_trace_pc() #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !23
  tail call void @arm_heavy_mb() #3
  %59 = tail call i32 @llvm.bswap.i32(i32 %and26) #3
  %rmmio.i134 = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 31
  %60 = ptrtoint ptr %rmmio.i134 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %rmmio.i134, align 4
  %add.ptr.i135 = getelementptr i8, ptr %61, i32 %add30
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i135, i32 %59) #3, !srcloc !24
  br label %if.end51

if.else.i137:                                     ; preds = %r100_mm_rreg.exit129
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @r100_mm_wreg_slow(ptr noundef %3, i32 noundef %add30, i32 noundef %and26) #3
  br label %if.end51

do.body35:                                        ; preds = %if.end
  %offset38 = getelementptr inbounds %struct.radeon_afmt, ptr %7, i32 0, i32 1
  %62 = ptrtoint ptr %offset38 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %offset38, align 4
  %add39 = add i32 %63, 28972
  %rmmio_size.i139 = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 18
  %64 = ptrtoint ptr %rmmio_size.i139 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %rmmio_size.i139, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %65, i32 %add39)
  %cmp.i140 = icmp ugt i32 %65, %add39
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %add39)
  %cmp1.i141 = icmp ult i32 %add39, 65536
  %or.cond.i142 = or i1 %cmp1.i141, %cmp.i140
  br i1 %or.cond.i142, label %if.then.i145, label %if.else.i147

if.then.i145:                                     ; preds = %do.body35
  call void @__sanitizer_cov_trace_pc() #5
  %rmmio.i143 = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 31
  %66 = ptrtoint ptr %rmmio.i143 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %rmmio.i143, align 4
  %add.ptr.i144 = getelementptr i8, ptr %67, i32 %add39
  %68 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i144) #3, !srcloc !21
  %69 = tail call i32 @llvm.bswap.i32(i32 %68) #3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !22
  br label %r100_mm_rreg.exit149

if.else.i147:                                     ; preds = %do.body35
  call void @__sanitizer_cov_trace_pc() #5
  %call3.i146 = tail call i32 @r100_mm_rreg_slow(ptr noundef %3, i32 noundef %add39) #3
  br label %r100_mm_rreg.exit149

r100_mm_rreg.exit149:                             ; preds = %if.else.i147, %if.then.i145
  %retval.0.i148 = phi i32 [ %call3.i146, %if.else.i147 ], [ %69, %if.then.i145 ]
  %and41 = and i32 %retval.0.i148, -2
  %70 = ptrtoint ptr %afmt to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %afmt, align 4
  %offset44 = getelementptr inbounds %struct.radeon_afmt, ptr %71, i32 0, i32 1
  %72 = ptrtoint ptr %offset44 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %offset44, align 4
  %add45 = add i32 %73, 28972
  %74 = ptrtoint ptr %rmmio_size.i139 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %rmmio_size.i139, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %75, i32 %add45)
  %cmp.i151 = icmp ugt i32 %75, %add45
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %add45)
  %cmp1.i152 = icmp ult i32 %add45, 65536
  %or.cond.i153 = or i1 %cmp1.i152, %cmp.i151
  br i1 %or.cond.i153, label %do.body.i156, label %if.else.i157

do.body.i156:                                     ; preds = %r100_mm_rreg.exit149
  call void @__sanitizer_cov_trace_pc() #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !23
  tail call void @arm_heavy_mb() #3
  %76 = tail call i32 @llvm.bswap.i32(i32 %and41) #3
  %rmmio.i154 = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 31
  %77 = ptrtoint ptr %rmmio.i154 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %rmmio.i154, align 4
  %add.ptr.i155 = getelementptr i8, ptr %78, i32 %add45
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i155, i32 %76) #3, !srcloc !24
  br label %r100_mm_wreg.exit158

if.else.i157:                                     ; preds = %r100_mm_rreg.exit149
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @r100_mm_wreg_slow(ptr noundef %3, i32 noundef %add45, i32 noundef %and41) #3
  br label %r100_mm_wreg.exit158

r100_mm_wreg.exit158:                             ; preds = %if.else.i157, %do.body.i156
  %79 = ptrtoint ptr %afmt to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %afmt, align 4
  %offset49 = getelementptr inbounds %struct.radeon_afmt, ptr %80, i32 0, i32 1
  %81 = ptrtoint ptr %offset49 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %offset49, align 4
  %add50 = add i32 %82, 28740
  %83 = ptrtoint ptr %rmmio_size.i139 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %rmmio_size.i139, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %84, i32 %add50)
  %cmp.i160 = icmp ugt i32 %84, %add50
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %add50)
  %cmp1.i161 = icmp ult i32 %add50, 65536
  %or.cond.i162 = or i1 %cmp1.i161, %cmp.i160
  br i1 %or.cond.i162, label %do.body.i165, label %if.else.i166

do.body.i165:                                     ; preds = %r100_mm_wreg.exit158
  call void @__sanitizer_cov_trace_pc() #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !23
  tail call void @arm_heavy_mb() #3
  %rmmio.i163 = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 31
  %85 = ptrtoint ptr %rmmio.i163 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %rmmio.i163, align 4
  %add.ptr.i164 = getelementptr i8, ptr %86, i32 %add50
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i164, i32 0) #3, !srcloc !24
  br label %if.end51

if.else.i166:                                     ; preds = %r100_mm_wreg.exit158
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @r100_mm_wreg_slow(ptr noundef %3, i32 noundef %add50, i32 noundef 0) #3
  br label %if.end51

if.end51:                                         ; preds = %if.else.i166, %do.body.i165, %if.else.i137, %do.body.i136, %if.else.i108, %do.body.i107
  %cond = phi ptr [ @.str.4, %do.body.i107 ], [ @.str.4, %if.else.i108 ], [ @.str.4, %do.body.i136 ], [ @.str.4, %if.else.i137 ], [ @.str.5, %do.body.i165 ], [ @.str.5, %if.else.i166 ]
  %87 = ptrtoint ptr %afmt to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %afmt, align 4
  %89 = ptrtoint ptr %88 to i32
  call void @__asan_store1_noabort(i32 %89)
  store i8 %frombool, ptr %88, align 4
  %90 = load ptr, ptr %afmt, align 4
  %offset57 = getelementptr inbounds %struct.radeon_afmt, ptr %90, i32 0, i32 1
  %91 = ptrtoint ptr %offset57 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %offset57, align 4
  %encoder_id = getelementptr inbounds %struct.radeon_encoder, ptr %encoder, i32 0, i32 2
  %93 = ptrtoint ptr %encoder_id to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %encoder_id, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.3, ptr noundef nonnull %cond, i32 noundef %92, i32 noundef %94) #3
  br label %cleanup

cleanup:                                          ; preds = %if.end51, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @drm_detect_monitor_audio(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @radeon_connector_edid(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @evergreen_dp_enable(ptr noundef %encoder, i1 noundef zeroext %enable) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %frombool = zext i1 %enable to i8
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
  %call = tail call ptr @radeon_get_connector_for_encoder(ptr noundef %encoder) #3
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %afmt = getelementptr inbounds %struct.radeon_encoder_atom_dig, ptr %5, i32 0, i32 11
  %6 = ptrtoint ptr %afmt to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %afmt, align 4
  %tobool2.not = icmp eq ptr %7, null
  br i1 %tobool2.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %enable.not = xor i1 %enable, true
  %tobool4.not = icmp eq ptr %call, null
  %or.cond = select i1 %enable.not, i1 true, i1 %tobool4.not
  br i1 %or.cond, label %if.end.if.else43_crit_edge, label %land.lhs.true5

if.end.if.else43_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.else43

land.lhs.true5:                                   ; preds = %if.end
  %call6 = tail call ptr @radeon_connector_edid(ptr noundef nonnull %call) #3
  %call7 = tail call zeroext i1 @drm_detect_monitor_audio(ptr noundef %call6) #3
  br i1 %call7, label %if.then8, label %land.lhs.true5.if.else43_crit_edge

land.lhs.true5.if.else43_crit_edge:               ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.else43

if.then8:                                         ; preds = %land.lhs.true5
  %call10 = tail call ptr @radeon_get_connector_for_encoder(ptr noundef %encoder) #3
  %8 = ptrtoint ptr %afmt to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %afmt, align 4
  %offset = getelementptr inbounds %struct.radeon_afmt, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %offset, align 4
  %add = add i32 %11, 28972
  %rmmio_size.i = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 18
  %12 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %add)
  %cmp.i = icmp ugt i32 %13, %add
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %add)
  %cmp1.i = icmp ult i32 %add, 65536
  %or.cond.i = or i1 %cmp1.i, %cmp.i
  br i1 %or.cond.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #5
  %rmmio.i = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 31
  %14 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %15, i32 %add
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #3, !srcloc !21
  %17 = tail call i32 @llvm.bswap.i32(i32 %16) #3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !22
  br label %r100_mm_rreg.exit

if.else.i:                                        ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #5
  %call3.i = tail call i32 @r100_mm_rreg_slow(ptr noundef %3, i32 noundef %add) #3
  br label %r100_mm_rreg.exit

r100_mm_rreg.exit:                                ; preds = %if.else.i, %if.then.i
  %retval.0.i = phi i32 [ %call3.i, %if.else.i ], [ %17, %if.then.i ]
  %or = or i32 %retval.0.i, 1
  %18 = ptrtoint ptr %afmt to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %afmt, align 4
  %offset17 = getelementptr inbounds %struct.radeon_afmt, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %offset17 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %offset17, align 4
  %add18 = add i32 %21, 28972
  %22 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %add18)
  %cmp.i103 = icmp ugt i32 %23, %add18
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %add18)
  %cmp1.i104 = icmp ult i32 %add18, 65536
  %or.cond.i105 = or i1 %cmp1.i104, %cmp.i103
  br i1 %or.cond.i105, label %do.body.i, label %if.else.i108

do.body.i:                                        ; preds = %r100_mm_rreg.exit
  call void @__sanitizer_cov_trace_pc() #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !23
  tail call void @arm_heavy_mb() #3
  %24 = tail call i32 @llvm.bswap.i32(i32 %or) #3
  %rmmio.i106 = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 31
  %25 = ptrtoint ptr %rmmio.i106 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %rmmio.i106, align 4
  %add.ptr.i107 = getelementptr i8, ptr %26, i32 %add18
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i107, i32 %24) #3, !srcloc !24
  br label %r100_mm_wreg.exit

if.else.i108:                                     ; preds = %r100_mm_rreg.exit
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @r100_mm_wreg_slow(ptr noundef %3, i32 noundef %add18, i32 noundef %or) #3
  br label %r100_mm_wreg.exit

r100_mm_wreg.exit:                                ; preds = %if.else.i108, %do.body.i
  %27 = ptrtoint ptr %afmt to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %afmt, align 4
  %offset20 = getelementptr inbounds %struct.radeon_afmt, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %offset20 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %offset20, align 4
  %add21 = add i32 %30, 29348
  %31 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %32, i32 %add21)
  %cmp.i110 = icmp ugt i32 %32, %add21
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %add21)
  %cmp1.i111 = icmp ult i32 %add21, 65536
  %or.cond.i112 = or i1 %cmp1.i111, %cmp.i110
  br i1 %or.cond.i112, label %do.body.i115, label %if.else.i116

do.body.i115:                                     ; preds = %r100_mm_wreg.exit
  call void @__sanitizer_cov_trace_pc() #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !23
  tail call void @arm_heavy_mb() #3
  %rmmio.i113 = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 31
  %33 = ptrtoint ptr %rmmio.i113 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %rmmio.i113, align 4
  %add.ptr.i114 = getelementptr i8, ptr %34, i32 %add21
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i114, i32 16777216) #3, !srcloc !24
  br label %r100_mm_wreg.exit117

if.else.i116:                                     ; preds = %r100_mm_wreg.exit
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @r100_mm_wreg_slow(ptr noundef %3, i32 noundef %add21, i32 noundef 1) #3
  br label %r100_mm_wreg.exit117

r100_mm_wreg.exit117:                             ; preds = %if.else.i116, %do.body.i115
  %family = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 6
  %35 = ptrtoint ptr %family to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %family, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 50, i32 %36)
  %cmp = icmp ugt i32 %36, 50
  br i1 %cmp, label %r100_mm_wreg.exit117.if.end39_crit_edge, label %land.lhs.true22

r100_mm_wreg.exit117.if.end39_crit_edge:          ; preds = %r100_mm_wreg.exit117
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end39

land.lhs.true22:                                  ; preds = %r100_mm_wreg.exit117
  %con_priv = getelementptr inbounds %struct.radeon_connector, ptr %call10, i32 0, i32 7
  %37 = ptrtoint ptr %con_priv to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %con_priv, align 4
  %tobool23.not = icmp eq ptr %38, null
  br i1 %tobool23.not, label %land.lhs.true22.if.end39_crit_edge, label %if.then24

land.lhs.true22.if.end39_crit_edge:               ; preds = %land.lhs.true22
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end39

if.then24:                                        ; preds = %land.lhs.true22
  %39 = ptrtoint ptr %afmt to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %afmt, align 4
  %offset27 = getelementptr inbounds %struct.radeon_afmt, ptr %40, i32 0, i32 1
  %41 = ptrtoint ptr %offset27 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %offset27, align 4
  %add28 = add i32 %42, 29332
  %43 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %44, i32 %add28)
  %cmp.i119 = icmp ugt i32 %44, %add28
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %add28)
  %cmp1.i120 = icmp ult i32 %add28, 65536
  %or.cond.i121 = or i1 %cmp1.i120, %cmp.i119
  br i1 %or.cond.i121, label %if.then.i124, label %if.else.i126

if.then.i124:                                     ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #5
  %rmmio.i122 = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 31
  %45 = ptrtoint ptr %rmmio.i122 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %rmmio.i122, align 4
  %add.ptr.i123 = getelementptr i8, ptr %46, i32 %add28
  %47 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i123) #3, !srcloc !21
  %48 = tail call i32 @llvm.bswap.i32(i32 %47) #3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !22
  br label %r100_mm_rreg.exit128

if.else.i126:                                     ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #5
  %call3.i125 = tail call i32 @r100_mm_rreg_slow(ptr noundef %3, i32 noundef %add28) #3
  br label %r100_mm_rreg.exit128

r100_mm_rreg.exit128:                             ; preds = %if.else.i126, %if.then.i124
  %retval.0.i127 = phi i32 [ %call3.i125, %if.else.i126 ], [ %48, %if.then.i124 ]
  %and30 = and i32 %retval.0.i127, -251658241
  %dp_clock = getelementptr inbounds %struct.radeon_connector_atom_dig, ptr %38, i32 0, i32 3
  %49 = ptrtoint ptr %dp_clock to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %dp_clock, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 162000, i32 %50)
  %cmp31 = icmp eq i32 %50, 162000
  %val.0.v = select i1 %cmp31, i32 50331648, i32 83886080
  %val.0 = or i32 %val.0.v, %and30
  %51 = ptrtoint ptr %afmt to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %afmt, align 4
  %offset37 = getelementptr inbounds %struct.radeon_afmt, ptr %52, i32 0, i32 1
  %53 = ptrtoint ptr %offset37 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %offset37, align 4
  %add38 = add i32 %54, 29332
  %55 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %56, i32 %add38)
  %cmp.i130 = icmp ugt i32 %56, %add38
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %add38)
  %cmp1.i131 = icmp ult i32 %add38, 65536
  %or.cond.i132 = or i1 %cmp1.i131, %cmp.i130
  br i1 %or.cond.i132, label %do.body.i135, label %if.else.i136

do.body.i135:                                     ; preds = %r100_mm_rreg.exit128
  call void @__sanitizer_cov_trace_pc() #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !23
  tail call void @arm_heavy_mb() #3
  %57 = tail call i32 @llvm.bswap.i32(i32 %val.0) #3
  %rmmio.i133 = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 31
  %58 = ptrtoint ptr %rmmio.i133 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %rmmio.i133, align 4
  %add.ptr.i134 = getelementptr i8, ptr %59, i32 %add38
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i134, i32 %57) #3, !srcloc !24
  br label %if.end39

if.else.i136:                                     ; preds = %r100_mm_rreg.exit128
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @r100_mm_wreg_slow(ptr noundef %3, i32 noundef %add38, i32 noundef %val.0) #3
  br label %if.end39

if.end39:                                         ; preds = %if.else.i136, %do.body.i135, %land.lhs.true22.if.end39_crit_edge, %r100_mm_wreg.exit117.if.end39_crit_edge
  %60 = ptrtoint ptr %afmt to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %afmt, align 4
  %offset41 = getelementptr inbounds %struct.radeon_afmt, ptr %61, i32 0, i32 1
  %62 = ptrtoint ptr %offset41 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %offset41, align 4
  %add42 = add i32 %63, 29312
  %64 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %65, i32 %add42)
  %cmp.i139 = icmp ugt i32 %65, %add42
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %add42)
  %cmp1.i140 = icmp ult i32 %add42, 65536
  %or.cond.i141 = or i1 %cmp1.i140, %cmp.i139
  br i1 %or.cond.i141, label %do.body.i144, label %if.else.i145

do.body.i144:                                     ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !23
  tail call void @arm_heavy_mb() #3
  %rmmio.i142 = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 31
  %66 = ptrtoint ptr %rmmio.i142 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %rmmio.i142, align 4
  %add.ptr.i143 = getelementptr i8, ptr %67, i32 %add42
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i143, i32 286326784) #3, !srcloc !24
  br label %if.end60

if.else.i145:                                     ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @r100_mm_wreg_slow(ptr noundef %3, i32 noundef %add42, i32 noundef 4369) #3
  br label %if.end60

if.else43:                                        ; preds = %land.lhs.true5.if.else43_crit_edge, %if.end.if.else43_crit_edge
  %68 = ptrtoint ptr %afmt to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %afmt, align 4
  %offset45 = getelementptr inbounds %struct.radeon_afmt, ptr %69, i32 0, i32 1
  %70 = ptrtoint ptr %offset45 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %offset45, align 4
  %add46 = add i32 %71, 29312
  %rmmio_size.i147 = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 18
  %72 = ptrtoint ptr %rmmio_size.i147 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %rmmio_size.i147, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %73, i32 %add46)
  %cmp.i148 = icmp ugt i32 %73, %add46
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %add46)
  %cmp1.i149 = icmp ult i32 %add46, 65536
  %or.cond.i150 = or i1 %cmp1.i149, %cmp.i148
  br i1 %or.cond.i150, label %do.body.i153, label %if.else.i154

do.body.i153:                                     ; preds = %if.else43
  call void @__sanitizer_cov_trace_pc() #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !23
  tail call void @arm_heavy_mb() #3
  %rmmio.i151 = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 31
  %74 = ptrtoint ptr %rmmio.i151 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %rmmio.i151, align 4
  %add.ptr.i152 = getelementptr i8, ptr %75, i32 %add46
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i152, i32 0) #3, !srcloc !24
  br label %r100_mm_wreg.exit155

if.else.i154:                                     ; preds = %if.else43
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @r100_mm_wreg_slow(ptr noundef %3, i32 noundef %add46, i32 noundef 0) #3
  br label %r100_mm_wreg.exit155

r100_mm_wreg.exit155:                             ; preds = %if.else.i154, %do.body.i153
  %76 = ptrtoint ptr %afmt to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %afmt, align 4
  %offset50 = getelementptr inbounds %struct.radeon_afmt, ptr %77, i32 0, i32 1
  %78 = ptrtoint ptr %offset50 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %offset50, align 4
  %add51 = add i32 %79, 28972
  %80 = ptrtoint ptr %rmmio_size.i147 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %rmmio_size.i147, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %81, i32 %add51)
  %cmp.i157 = icmp ugt i32 %81, %add51
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %add51)
  %cmp1.i158 = icmp ult i32 %add51, 65536
  %or.cond.i159 = or i1 %cmp1.i158, %cmp.i157
  br i1 %or.cond.i159, label %if.then.i162, label %if.else.i164

if.then.i162:                                     ; preds = %r100_mm_wreg.exit155
  call void @__sanitizer_cov_trace_pc() #5
  %rmmio.i160 = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 31
  %82 = ptrtoint ptr %rmmio.i160 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %rmmio.i160, align 4
  %add.ptr.i161 = getelementptr i8, ptr %83, i32 %add51
  %84 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i161) #3, !srcloc !21
  %85 = tail call i32 @llvm.bswap.i32(i32 %84) #3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !22
  br label %r100_mm_rreg.exit166

if.else.i164:                                     ; preds = %r100_mm_wreg.exit155
  call void @__sanitizer_cov_trace_pc() #5
  %call3.i163 = tail call i32 @r100_mm_rreg_slow(ptr noundef %3, i32 noundef %add51) #3
  br label %r100_mm_rreg.exit166

r100_mm_rreg.exit166:                             ; preds = %if.else.i164, %if.then.i162
  %retval.0.i165 = phi i32 [ %call3.i163, %if.else.i164 ], [ %85, %if.then.i162 ]
  %and53 = and i32 %retval.0.i165, -2
  %86 = ptrtoint ptr %afmt to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %afmt, align 4
  %offset56 = getelementptr inbounds %struct.radeon_afmt, ptr %87, i32 0, i32 1
  %88 = ptrtoint ptr %offset56 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %offset56, align 4
  %add57 = add i32 %89, 28972
  %90 = ptrtoint ptr %rmmio_size.i147 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %rmmio_size.i147, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %91, i32 %add57)
  %cmp.i168 = icmp ugt i32 %91, %add57
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %add57)
  %cmp1.i169 = icmp ult i32 %add57, 65536
  %or.cond.i170 = or i1 %cmp1.i169, %cmp.i168
  br i1 %or.cond.i170, label %do.body.i173, label %if.else.i174

do.body.i173:                                     ; preds = %r100_mm_rreg.exit166
  call void @__sanitizer_cov_trace_pc() #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !23
  tail call void @arm_heavy_mb() #3
  %92 = tail call i32 @llvm.bswap.i32(i32 %and53) #3
  %rmmio.i171 = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 31
  %93 = ptrtoint ptr %rmmio.i171 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %rmmio.i171, align 4
  %add.ptr.i172 = getelementptr i8, ptr %94, i32 %add57
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i172, i32 %92) #3, !srcloc !24
  br label %if.end60

if.else.i174:                                     ; preds = %r100_mm_rreg.exit166
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @r100_mm_wreg_slow(ptr noundef %3, i32 noundef %add57, i32 noundef %and53) #3
  br label %if.end60

if.end60:                                         ; preds = %if.else.i174, %do.body.i173, %if.else.i145, %do.body.i144
  %95 = ptrtoint ptr %afmt to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %afmt, align 4
  %97 = ptrtoint ptr %96 to i32
  call void @__asan_store1_noabort(i32 %97)
  store i8 %frombool, ptr %96, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end60, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @r100_mm_rreg_slow(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @r100_mm_wreg_slow(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11}
!llvm.module.flags = !{!12, !13, !14, !15, !16, !17, !18, !19}
!llvm.ident = !{!20}

!0 = !{ptr @evergreen_hdmi_write_sad_regs.eld_reg_to_type, !1, !"eld_reg_to_type", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/radeon/evergreen_hdmi.c", i32 161, i32 19}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/radeon/evergreen_hdmi.c", i32 335, i32 4}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/radeon/evergreen_hdmi.c", i32 341, i32 4}
!6 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/radeon/evergreen_hdmi.c", i32 347, i32 4}
!8 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/radeon/evergreen_hdmi.c", i32 437, i32 2}
!10 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!12 = !{i32 1, !"wchar_size", i32 2}
!13 = !{i32 1, !"min_enum_size", i32 4}
!14 = !{i32 8, !"branch-target-enforcement", i32 0}
!15 = !{i32 8, !"sign-return-address", i32 0}
!16 = !{i32 8, !"sign-return-address-all", i32 0}
!17 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!18 = !{i32 7, !"uwtable", i32 1}
!19 = !{i32 7, !"frame-pointer", i32 2}
!20 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!21 = !{i64 6756171}
!22 = !{i64 2157463650}
!23 = !{i64 2157464057}
!24 = !{i64 6755753}
!25 = !{i8 0, i8 2}
