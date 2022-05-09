; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/radeon/radeon_audio.c_pt.bc'
source_filename = "../drivers/gpu/drm/radeon/radeon_audio.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.radeon_audio_basic_funcs = type { ptr, ptr, ptr }
%struct.radeon_audio_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.radeon_hdmi_acr = type { i32, i32, i32, i32, i32, i32, i32 }
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
%struct.radeon_encoder_atom_dig = type { i8, i8, i32, i32, i16, i32, %struct.drm_display_mode, ptr, i32, i8, i32, ptr, ptr, i32 }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }
%struct.radeon_encoder = type { %struct.drm_encoder, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.drm_display_mode, ptr, i32, i8, i16, ptr, i32, i8, i32, i8 }
%struct.drm_encoder = type { ptr, %struct.list_head, %struct.drm_mode_object, ptr, i32, i32, i32, i32, ptr, %struct.list_head, ptr, ptr }
%struct.drm_mode_object = type { i32, i32, ptr, %struct.kref, ptr }
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
%struct.radeon_afmt = type { i8, i32, i8, i32 }
%struct.radeon_crtc = type { %struct.drm_crtc, i32, i8, i8, i8, i32, ptr, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, %union.dfixed, %union.dfixed, %struct.drm_display_mode, i32, ptr, ptr, i32, %struct.radeon_atom_ss, i8, i32, i32, i32, i32, i32, ptr, ptr, i32, i32, i32, i32, %struct.drm_display_mode, i32 }
%struct.drm_crtc = type { ptr, ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, ptr, ptr, i32, i32, i32, i8, %struct.drm_display_mode, %struct.drm_display_mode, i32, i32, ptr, i32, ptr, ptr, %struct.drm_object_properties, ptr, ptr, %struct.list_head, %struct.spinlock, ptr, %struct.drm_crtc_crc, i32, %struct.spinlock, i32, [32 x i8], ptr }
%struct.drm_crtc_crc = type { %struct.spinlock, ptr, i8, i8, ptr, i32, i32, i32, %struct.wait_queue_head }
%struct.radeon_atom_ss = type { i16, i16, i8, i16, i8, i8, i8, i16, i16 }
%struct.hdmi_avi_infoframe = type { i32, i8, i8, i32, i32, i32, i32, i32, i8, i32, i32, i32, i8, i32, i32, i8, i16, i16, i16, i16 }

@radeon_audio = external dso_local local_unnamed_addr global i32, align 4
@pin_offsets = internal constant { [7 x i32], [36 x i8] } { [7 x i32] [i32 0, i32 24, i32 48, i32 72, i32 96, i32 120, i32 144], [36 x i8] zeroinitializer }, align 32
@dce6_funcs = internal global { %struct.radeon_audio_basic_funcs, [20 x i8] } { %struct.radeon_audio_basic_funcs { ptr @dce6_endpoint_rreg, ptr @dce6_endpoint_wreg, ptr @dce6_audio_enable }, [20 x i8] zeroinitializer }, align 32
@dce6_hdmi_funcs = internal global { %struct.radeon_audio_funcs, [40 x i8] } { %struct.radeon_audio_funcs { ptr @dce6_afmt_select_pin, ptr @dce6_audio_get_pin, ptr @dce6_afmt_write_latency_fields, ptr @dce6_afmt_write_sad_regs, ptr @dce6_afmt_hdmi_write_speaker_allocation, ptr @dce6_hdmi_audio_set_dto, ptr @evergreen_hdmi_update_acr, ptr @dce4_set_vbi_packet, ptr @dce4_hdmi_set_color_depth, ptr @evergreen_set_avi_packet, ptr @dce4_set_audio_packet, ptr @dce4_set_mute, ptr @radeon_audio_hdmi_mode_set, ptr @evergreen_hdmi_enable }, [40 x i8] zeroinitializer }, align 32
@dce6_dp_funcs = internal global { %struct.radeon_audio_funcs, [40 x i8] } { %struct.radeon_audio_funcs { ptr @dce6_afmt_select_pin, ptr @dce6_audio_get_pin, ptr @dce6_afmt_write_latency_fields, ptr @dce6_afmt_write_sad_regs, ptr @dce6_afmt_dp_write_speaker_allocation, ptr @dce6_dp_audio_set_dto, ptr null, ptr null, ptr null, ptr @evergreen_set_avi_packet, ptr @dce4_set_audio_packet, ptr null, ptr @radeon_audio_dp_mode_set, ptr @evergreen_dp_enable }, [40 x i8] zeroinitializer }, align 32
@dce4_funcs = internal global { %struct.radeon_audio_basic_funcs, [20 x i8] } { %struct.radeon_audio_basic_funcs { ptr @radeon_audio_rreg, ptr @radeon_audio_wreg, ptr @dce4_audio_enable }, [20 x i8] zeroinitializer }, align 32
@dce4_hdmi_funcs = internal global { %struct.radeon_audio_funcs, [40 x i8] } { %struct.radeon_audio_funcs { ptr null, ptr @r600_audio_get_pin, ptr @dce4_afmt_write_latency_fields, ptr @evergreen_hdmi_write_sad_regs, ptr @dce4_afmt_hdmi_write_speaker_allocation, ptr @dce4_hdmi_audio_set_dto, ptr @evergreen_hdmi_update_acr, ptr @dce4_set_vbi_packet, ptr @dce4_hdmi_set_color_depth, ptr @evergreen_set_avi_packet, ptr @dce4_set_audio_packet, ptr @dce4_set_mute, ptr @radeon_audio_hdmi_mode_set, ptr @evergreen_hdmi_enable }, [40 x i8] zeroinitializer }, align 32
@dce4_dp_funcs = internal global { %struct.radeon_audio_funcs, [40 x i8] } { %struct.radeon_audio_funcs { ptr null, ptr @r600_audio_get_pin, ptr @dce4_afmt_write_latency_fields, ptr @evergreen_hdmi_write_sad_regs, ptr @dce4_afmt_dp_write_speaker_allocation, ptr @dce4_dp_audio_set_dto, ptr null, ptr null, ptr null, ptr @evergreen_set_avi_packet, ptr @dce4_set_audio_packet, ptr null, ptr @radeon_audio_dp_mode_set, ptr @evergreen_dp_enable }, [40 x i8] zeroinitializer }, align 32
@dce32_funcs = internal global { %struct.radeon_audio_basic_funcs, [20 x i8] } { %struct.radeon_audio_basic_funcs { ptr @radeon_audio_rreg, ptr @radeon_audio_wreg, ptr @r600_audio_enable }, [20 x i8] zeroinitializer }, align 32
@dce32_hdmi_funcs = internal global { %struct.radeon_audio_funcs, [40 x i8] } { %struct.radeon_audio_funcs { ptr null, ptr @r600_audio_get_pin, ptr null, ptr @dce3_2_afmt_write_sad_regs, ptr @dce3_2_afmt_hdmi_write_speaker_allocation, ptr @dce3_2_audio_set_dto, ptr @dce3_2_hdmi_update_acr, ptr @r600_set_vbi_packet, ptr null, ptr @r600_set_avi_packet, ptr @dce3_2_set_audio_packet, ptr @dce3_2_set_mute, ptr @radeon_audio_hdmi_mode_set, ptr @r600_hdmi_enable }, [40 x i8] zeroinitializer }, align 32
@dce32_dp_funcs = internal global { %struct.radeon_audio_funcs, [40 x i8] } { %struct.radeon_audio_funcs { ptr null, ptr @r600_audio_get_pin, ptr null, ptr @dce3_2_afmt_write_sad_regs, ptr @dce3_2_afmt_dp_write_speaker_allocation, ptr @dce3_2_audio_set_dto, ptr null, ptr null, ptr null, ptr @r600_set_avi_packet, ptr @dce3_2_set_audio_packet, ptr null, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@r600_funcs = internal global { %struct.radeon_audio_basic_funcs, [20 x i8] } { %struct.radeon_audio_basic_funcs { ptr @radeon_audio_rreg, ptr @radeon_audio_wreg, ptr @r600_audio_enable }, [20 x i8] zeroinitializer }, align 32
@r600_hdmi_funcs = internal global { %struct.radeon_audio_funcs, [40 x i8] } { %struct.radeon_audio_funcs { ptr null, ptr @r600_audio_get_pin, ptr null, ptr null, ptr null, ptr @r600_hdmi_audio_set_dto, ptr @r600_hdmi_update_acr, ptr @r600_set_vbi_packet, ptr null, ptr @r600_set_avi_packet, ptr @r600_set_audio_packet, ptr @r600_set_mute, ptr @radeon_audio_hdmi_mode_set, ptr @r600_hdmi_enable }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"Couldn't read Speaker Allocation Data Block: %d\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Couldn't read SADs: %d\0A\00", [40 x i8] zeroinitializer }, align 32
@radeon_audio_acr.res = internal global { %struct.radeon_hdmi_acr, [36 x i8] } zeroinitializer, align 32
@radeon_audio_acr.hdmi_predefined_acr = internal constant { [10 x %struct.radeon_hdmi_acr], [72 x i8] } { [10 x %struct.radeon_hdmi_acr] [%struct.radeon_hdmi_acr { i32 25175, i32 4096, i32 25175, i32 28224, i32 125875, i32 6144, i32 25175 }, %struct.radeon_hdmi_acr { i32 25200, i32 4096, i32 25200, i32 6272, i32 28000, i32 6144, i32 25200 }, %struct.radeon_hdmi_acr { i32 27000, i32 4096, i32 27000, i32 6272, i32 30000, i32 6144, i32 27000 }, %struct.radeon_hdmi_acr { i32 27027, i32 4096, i32 27027, i32 6272, i32 30030, i32 6144, i32 27027 }, %struct.radeon_hdmi_acr { i32 54000, i32 4096, i32 54000, i32 6272, i32 60000, i32 6144, i32 54000 }, %struct.radeon_hdmi_acr { i32 54054, i32 4096, i32 54054, i32 6272, i32 60060, i32 6144, i32 54054 }, %struct.radeon_hdmi_acr { i32 74176, i32 4096, i32 74176, i32 5733, i32 75335, i32 6144, i32 74176 }, %struct.radeon_hdmi_acr { i32 74250, i32 4096, i32 74250, i32 6272, i32 82500, i32 6144, i32 74250 }, %struct.radeon_hdmi_acr { i32 148352, i32 4096, i32 148352, i32 5733, i32 150670, i32 6144, i32 148352 }, %struct.radeon_hdmi_acr { i32 148500, i32 4096, i32 148500, i32 6272, i32 165000, i32 6144, i32 148500 }], [72 x i8] zeroinitializer }, align 32
@radeon_audio_calc_cts._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 513, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [75 x i8], [53 x i8] } { [75 x i8] c"\014Calculated ACR N value is too small. You may experience audio problems.\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"radeon_audio_calc_cts\00", [42 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"drivers/gpu/drm/radeon/radeon_audio.c\00", [58 x i8] zeroinitializer }, align 32
@radeon_audio_calc_cts._entry_ptr = internal global ptr @radeon_audio_calc_cts._entry, section ".printk_index", align 4
@radeon_audio_calc_cts._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.3, ptr @.str.4, i32 515, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [75 x i8], [53 x i8] } { [75 x i8] c"\014Calculated ACR N value is too large. You may experience audio problems.\0A\00", [53 x i8] zeroinitializer }, align 32
@radeon_audio_calc_cts._entry_ptr.7 = internal global ptr @radeon_audio_calc_cts._entry.5, section ".printk_index", align 4
@.str.8 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"Calculated ACR timing N=%d CTS=%d for frequency %d\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"failed to setup AVI infoframe: %d\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"failed to pack AVI infoframe: %d\0A\00", [62 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 58, i64 59, i64 61]
@__sancov_gen_cov_switch_values.11 = internal global [4 x i64] [i64 2, i64 32, i64 64, i64 96]
@__sancov_gen_cov_switch_values.12 = internal global [12 x i64] [i64 10, i64 32, i64 25175, i64 25200, i64 27000, i64 27027, i64 54000, i64 54054, i64 74176, i64 74250, i64 148352, i64 148500]
@___asan_gen_.13 = private unnamed_addr constant [12 x i8] c"pin_offsets\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 44, i32 18 }
@___asan_gen_.16 = private unnamed_addr constant [11 x i8] c"dce6_funcs\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 84, i32 40 }
@___asan_gen_.19 = private unnamed_addr constant [16 x i8] c"dce6_hdmi_funcs\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 153, i32 34 }
@___asan_gen_.22 = private unnamed_addr constant [14 x i8] c"dce6_dp_funcs\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 170, i32 34 }
@___asan_gen_.25 = private unnamed_addr constant [11 x i8] c"dce4_funcs\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 78, i32 40 }
@___asan_gen_.28 = private unnamed_addr constant [16 x i8] c"dce4_hdmi_funcs\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 125, i32 34 }
@___asan_gen_.31 = private unnamed_addr constant [14 x i8] c"dce4_dp_funcs\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 141, i32 34 }
@___asan_gen_.34 = private unnamed_addr constant [12 x i8] c"dce32_funcs\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 72, i32 40 }
@___asan_gen_.37 = private unnamed_addr constant [17 x i8] c"dce32_hdmi_funcs\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 102, i32 34 }
@___asan_gen_.40 = private unnamed_addr constant [15 x i8] c"dce32_dp_funcs\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 116, i32 34 }
@___asan_gen_.43 = private unnamed_addr constant [11 x i8] c"r600_funcs\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 66, i32 40 }
@___asan_gen_.46 = private unnamed_addr constant [16 x i8] c"r600_hdmi_funcs\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 90, i32 34 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 333, i32 3 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 309, i32 3 }
@___asan_gen_.55 = private unnamed_addr constant [4 x i8] c"res\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 526, i32 32 }
@___asan_gen_.58 = private unnamed_addr constant [20 x i8] c"hdmi_predefined_acr\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 529, i32 38 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 513, i32 3 }
@___asan_gen_.73 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 515, i32 3 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 520, i32 2 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 459, i32 3 }
@___asan_gen_.85 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.86 = private constant [41 x i8] c"../drivers/gpu/drm/radeon/radeon_audio.c\00", align 1
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 472, i32 3 }
@llvm.compiler.used = appending global [27 x ptr] [ptr @radeon_audio_calc_cts._entry, ptr @radeon_audio_calc_cts._entry.5, ptr @radeon_audio_calc_cts._entry_ptr, ptr @radeon_audio_calc_cts._entry_ptr.7, ptr @pin_offsets, ptr @dce6_funcs, ptr @dce6_hdmi_funcs, ptr @dce6_dp_funcs, ptr @dce4_funcs, ptr @dce4_hdmi_funcs, ptr @dce4_dp_funcs, ptr @dce32_funcs, ptr @dce32_hdmi_funcs, ptr @dce32_dp_funcs, ptr @r600_funcs, ptr @r600_hdmi_funcs, ptr @.str, ptr @.str.1, ptr @radeon_audio_acr.res, ptr @radeon_audio_acr.hdmi_predefined_acr, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.8, ptr @.str.9, ptr @.str.10], section "llvm.metadata"
@0 = internal global [25 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pin_offsets to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dce6_funcs to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dce6_hdmi_funcs to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dce6_dp_funcs to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dce4_funcs to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dce4_hdmi_funcs to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dce4_dp_funcs to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dce32_funcs to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dce32_hdmi_funcs to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dce32_dp_funcs to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @r600_funcs to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @r600_hdmi_funcs to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radeon_audio_acr.res to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radeon_audio_acr.hdmi_predefined_acr to i32), i32 280, i32 352, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radeon_audio_calc_cts._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 75, i32 128, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radeon_audio_calc_cts._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 75, i32 128, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @radeon_audio_init(ptr noundef %rdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @radeon_audio to i32))
  %0 = load i32, ptr @radeon_audio, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %family.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 6
  %1 = ptrtoint ptr %family.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %family.i, align 4
  %.off.i = add i32 %2, -18
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.off.i)
  %switch.i = icmp ult i32 %.off.i, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 26, i32 %2)
  %cmp8.i = icmp ugt i32 %2, 26
  %or.cond.i = or i1 %cmp8.i, %switch.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 56, i32 %2)
  %cmp10.i = icmp ne i32 %2, 56
  %narrow.i = and i1 %cmp10.i, %or.cond.i
  br i1 %narrow.i, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %audio = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 95
  %3 = ptrtoint ptr %audio to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 1, ptr %audio, align 8
  %4 = zext i32 %2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %2, label %if.else12 [
    i32 59, label %if.end.if.end45_crit_edge
    i32 61, label %if.end.if.end45_crit_edge132
    i32 58, label %if.then9
  ]

if.end.if.end45_crit_edge132:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end45

if.end.if.end45_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end45

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end45

if.else12:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 56, i32 %2)
  %cmp14 = icmp ugt i32 %2, 56
  br i1 %cmp14, label %if.else12.if.end45_crit_edge, label %if.else18

if.else12.if.end45_crit_edge:                     ; preds = %if.else12
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end45

if.else18:                                        ; preds = %if.else12
  call void @__sanitizer_cov_trace_const_cmp4(i32 55, i32 %2)
  %cmp20 = icmp eq i32 %2, 55
  br i1 %cmp20, label %if.else18.if.end45_crit_edge, label %if.else24

if.else18.if.end45_crit_edge:                     ; preds = %if.else18
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end45

if.else24:                                        ; preds = %if.else18
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 50, i32 %2)
  %cmp26 = icmp ugt i32 %2, 50
  %. = select i1 %cmp26, i32 6, i32 1
  br label %if.end45

if.end45:                                         ; preds = %if.else24, %if.else18.if.end45_crit_edge, %if.else12.if.end45_crit_edge, %if.then9, %if.end.if.end45_crit_edge, %if.end.if.end45_crit_edge132
  %.sink = phi i32 [ 7, %if.then9 ], [ 3, %if.end.if.end45_crit_edge ], [ 3, %if.end.if.end45_crit_edge132 ], [ 7, %if.else12.if.end45_crit_edge ], [ 2, %if.else18.if.end45_crit_edge ], [ %., %if.else24 ]
  %num_pins36 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 95, i32 2
  %5 = ptrtoint ptr %num_pins36 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %.sink, ptr %num_pins36, align 8
  %num_pins47 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 95, i32 2
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end45
  %i.0129 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %if.end45 ]
  %arrayidx = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 95, i32 1, i32 %i.0129
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %arrayidx, align 4
  %rate = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 95, i32 1, i32 %i.0129, i32 1
  %7 = ptrtoint ptr %rate to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %rate, align 4
  %bits_per_sample = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 95, i32 1, i32 %i.0129, i32 2
  %8 = ptrtoint ptr %bits_per_sample to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %bits_per_sample, align 4
  %status_bits = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 95, i32 1, i32 %i.0129, i32 3
  %9 = ptrtoint ptr %status_bits to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %status_bits, align 4
  %category_code = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 95, i32 1, i32 %i.0129, i32 4
  %10 = ptrtoint ptr %category_code to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %category_code, align 1
  %connected = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 95, i32 1, i32 %i.0129, i32 6
  %11 = ptrtoint ptr %connected to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %connected, align 4
  %arrayidx65 = getelementptr [7 x i32], ptr @pin_offsets, i32 0, i32 %i.0129
  %12 = ptrtoint ptr %arrayidx65 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx65, align 4
  %offset = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 95, i32 1, i32 %i.0129, i32 5
  %14 = ptrtoint ptr %offset to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %offset, align 4
  %id = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 95, i32 1, i32 %i.0129, i32 7
  %15 = ptrtoint ptr %id to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %i.0129, ptr %id, align 4
  %inc = add nuw nsw i32 %i.0129, 1
  %16 = ptrtoint ptr %num_pins47 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %num_pins47, align 8
  %cmp48 = icmp slt i32 %inc, %17
  br i1 %cmp48, label %for.body.for.body_crit_edge, label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.body
  %18 = ptrtoint ptr %family.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %family.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 50, i32 %19)
  %cmp.i = icmp ugt i32 %19, 50
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  %funcs.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 95, i32 5
  %20 = ptrtoint ptr %funcs.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @dce6_funcs, ptr %funcs.i, align 4
  br label %radeon_audio_interface_init.exit

if.else.i:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 38, i32 %19)
  %cmp4.i = icmp ugt i32 %19, 38
  br i1 %cmp4.i, label %if.then5.i, label %if.else12.i

if.then5.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  %funcs7.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 95, i32 5
  %21 = ptrtoint ptr %funcs7.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @dce4_funcs, ptr %funcs7.i, align 4
  br label %radeon_audio_interface_init.exit

if.else12.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 35, i32 %19)
  %cmp14.i = icmp ugt i32 %19, 35
  %funcs17.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 95, i32 5
  br i1 %cmp14.i, label %if.then15.i, label %if.else22.i

if.then15.i:                                      ; preds = %if.else12.i
  call void @__sanitizer_cov_trace_pc() #9
  %22 = ptrtoint ptr %funcs17.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @dce32_funcs, ptr %funcs17.i, align 4
  br label %radeon_audio_interface_init.exit

if.else22.i:                                      ; preds = %if.else12.i
  call void @__sanitizer_cov_trace_pc() #9
  %23 = ptrtoint ptr %funcs17.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @r600_funcs, ptr %funcs17.i, align 4
  br label %radeon_audio_interface_init.exit

radeon_audio_interface_init.exit:                 ; preds = %if.else22.i, %if.then15.i, %if.then5.i, %if.then.i
  %dce4_hdmi_funcs.sink.i = phi ptr [ @dce4_hdmi_funcs, %if.then5.i ], [ @r600_hdmi_funcs, %if.else22.i ], [ @dce32_hdmi_funcs, %if.then15.i ], [ @dce6_hdmi_funcs, %if.then.i ]
  %dce4_dp_funcs.sink.i = phi ptr [ @dce4_dp_funcs, %if.then5.i ], [ null, %if.else22.i ], [ @dce32_dp_funcs, %if.then15.i ], [ @dce6_dp_funcs, %if.then.i ]
  %hdmi_funcs9.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 95, i32 3
  %24 = ptrtoint ptr %hdmi_funcs9.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %dce4_hdmi_funcs.sink.i, ptr %hdmi_funcs9.i, align 4
  %dp_funcs11.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 95, i32 4
  %25 = ptrtoint ptr %dp_funcs11.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %dce4_dp_funcs.sink.i, ptr %dp_funcs11.i, align 8
  %26 = ptrtoint ptr %num_pins47 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %num_pins47, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %cmp75130 = icmp sgt i32 %27, 0
  br i1 %cmp75130, label %for.body76.lr.ph, label %radeon_audio_interface_init.exit.cleanup_crit_edge

radeon_audio_interface_init.exit.cleanup_crit_edge: ; preds = %radeon_audio_interface_init.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body76.lr.ph:                                 ; preds = %radeon_audio_interface_init.exit
  %mode_config_initialized.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 44, i32 3
  %ddev.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 1
  %funcs.i127 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 95, i32 5
  br label %for.body76

for.body76:                                       ; preds = %radeon_audio_enable.exit.for.body76_crit_edge, %for.body76.lr.ph
  %i.1131 = phi i32 [ 0, %for.body76.lr.ph ], [ %inc81, %radeon_audio_enable.exit.for.body76_crit_edge ]
  %arrayidx79 = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 95, i32 1, i32 %i.1131
  %tobool.not.i = icmp eq ptr %arrayidx79, null
  br i1 %tobool.not.i, label %for.body76.radeon_audio_enable.exit_crit_edge, label %if.end.i

for.body76.radeon_audio_enable.exit_crit_edge:    ; preds = %for.body76
  call void @__sanitizer_cov_trace_pc() #9
  br label %radeon_audio_enable.exit

if.end.i:                                         ; preds = %for.body76
  %28 = ptrtoint ptr %mode_config_initialized.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %mode_config_initialized.i, align 4, !range !57
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool1.not.i = icmp eq i8 %29, 0
  br i1 %tobool1.not.i, label %if.end.i.if.end25.i_crit_edge, label %if.then2.i

if.end.i.if.end25.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end25.i

if.then2.i:                                       ; preds = %if.end.i
  %30 = ptrtoint ptr %ddev.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %ddev.i, align 4
  %encoder_list.i = getelementptr inbounds %struct.drm_device, ptr %31, i32 0, i32 30, i32 16
  %32 = ptrtoint ptr %encoder_list.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %.pn47.i = load ptr, ptr %encoder_list.i, align 4
  %cmp.not49.i = icmp eq ptr %.pn47.i, %encoder_list.i
  br i1 %cmp.not49.i, label %if.then2.i.if.end25.i_crit_edge, label %if.then2.i.for.body.i_crit_edge

if.then2.i.for.body.i_crit_edge:                  ; preds = %if.then2.i
  br label %for.body.i

if.then2.i.if.end25.i_crit_edge:                  ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end25.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.then2.i.for.body.i_crit_edge
  %.pn51.i = phi ptr [ %.pn.i, %for.inc.i.for.body.i_crit_edge ], [ %.pn47.i, %if.then2.i.for.body.i_crit_edge ]
  %pin_count.050.i = phi i32 [ %pin_count.1.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %if.then2.i.for.body.i_crit_edge ]
  %encoder.0.i = getelementptr i8, ptr %.pn51.i, i32 -4
  %call.i = tail call zeroext i1 @radeon_encoder_is_digital(ptr noundef %encoder.0.i) #7
  br i1 %call.i, label %if.then6.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

if.then6.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %enc_priv.i = getelementptr i8, ptr %.pn51.i, i32 220
  %33 = ptrtoint ptr %enc_priv.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %enc_priv.i, align 4
  %pin10.i = getelementptr inbounds %struct.radeon_encoder_atom_dig, ptr %34, i32 0, i32 12
  %35 = ptrtoint ptr %pin10.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %pin10.i, align 4
  %cmp11.i = icmp eq ptr %36, %arrayidx79
  %inc.i = zext i1 %cmp11.i to i32
  %spec.select.i = add i32 %pin_count.050.i, %inc.i
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then6.i, %for.body.i.for.inc.i_crit_edge
  %pin_count.1.i = phi i32 [ %pin_count.050.i, %for.body.i.for.inc.i_crit_edge ], [ %spec.select.i, %if.then6.i ]
  %37 = ptrtoint ptr %.pn51.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %.pn.i = load ptr, ptr %.pn51.i, align 4
  %38 = ptrtoint ptr %ddev.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %ddev.i, align 4
  %encoder_list5.i = getelementptr inbounds %struct.drm_device, ptr %39, i32 0, i32 30, i32 16
  %cmp.not.i = icmp eq ptr %.pn.i, %encoder_list5.i
  br i1 %cmp.not.i, label %for.end.i, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.end.i:                                        ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %pin_count.1.i)
  %cmp20.i = icmp sgt i32 %pin_count.1.i, 1
  br i1 %cmp20.i, label %for.end.i.radeon_audio_enable.exit_crit_edge, label %for.end.i.if.end25.i_crit_edge

for.end.i.if.end25.i_crit_edge:                   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end25.i

for.end.i.radeon_audio_enable.exit_crit_edge:     ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %radeon_audio_enable.exit

if.end25.i:                                       ; preds = %for.end.i.if.end25.i_crit_edge, %if.then2.i.if.end25.i_crit_edge, %if.end.i.if.end25.i_crit_edge
  %40 = ptrtoint ptr %funcs.i127 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %funcs.i127, align 4
  %enable.i = getelementptr inbounds %struct.radeon_audio_basic_funcs, ptr %41, i32 0, i32 2
  %42 = ptrtoint ptr %enable.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %enable.i, align 4
  %tobool26.not.i = icmp eq ptr %43, null
  br i1 %tobool26.not.i, label %if.end25.i.radeon_audio_enable.exit_crit_edge, label %if.then27.i

if.end25.i.radeon_audio_enable.exit_crit_edge:    ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %radeon_audio_enable.exit

if.then27.i:                                      ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void %43(ptr noundef %rdev, ptr noundef nonnull %arrayidx79, i8 noundef zeroext 0) #7
  br label %radeon_audio_enable.exit

radeon_audio_enable.exit:                         ; preds = %if.then27.i, %if.end25.i.radeon_audio_enable.exit_crit_edge, %for.end.i.radeon_audio_enable.exit_crit_edge, %for.body76.radeon_audio_enable.exit_crit_edge
  %inc81 = add nuw nsw i32 %i.1131, 1
  %44 = ptrtoint ptr %num_pins47 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %num_pins47, align 8
  %cmp75 = icmp slt i32 %inc81, %45
  br i1 %cmp75, label %radeon_audio_enable.exit.for.body76_crit_edge, label %radeon_audio_enable.exit.cleanup_crit_edge

radeon_audio_enable.exit.cleanup_crit_edge:       ; preds = %radeon_audio_enable.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

radeon_audio_enable.exit.for.body76_crit_edge:    ; preds = %radeon_audio_enable.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body76

cleanup:                                          ; preds = %radeon_audio_enable.exit.cleanup_crit_edge, %radeon_audio_interface_init.exit.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @radeon_audio_endpoint_rreg(ptr noundef %rdev, i32 noundef %offset, i32 noundef %reg) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %funcs = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 95, i32 5
  %0 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %funcs, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.then

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 %3(ptr noundef %rdev, i32 noundef %offset, i32 noundef %reg) #7
  br label %return

return:                                           ; preds = %if.then, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call, %if.then ], [ 0, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @radeon_audio_endpoint_wreg(ptr noundef %rdev, i32 noundef %offset, i32 noundef %reg, i32 noundef %v) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %funcs = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 95, i32 5
  %0 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %funcs, align 4
  %endpoint_wreg = getelementptr inbounds %struct.radeon_audio_basic_funcs, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %endpoint_wreg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %endpoint_wreg, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void %3(ptr noundef %rdev, i32 noundef %offset, i32 noundef %reg, i32 noundef %v) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @radeon_audio_get_pin(ptr nocapture noundef readonly %encoder) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %encoder to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %encoder, align 4
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_private, align 4
  %audio = getelementptr inbounds %struct.radeon_encoder, ptr %encoder, i32 0, i32 16
  %4 = ptrtoint ptr %audio to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %audio, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %land.lhs.true

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

land.lhs.true:                                    ; preds = %entry
  %get_pin = getelementptr inbounds %struct.radeon_audio_funcs, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %get_pin to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %get_pin, align 4
  %tobool2.not = icmp eq ptr %7, null
  br i1 %tobool2.not, label %land.lhs.true.cleanup_crit_edge, label %if.then

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call ptr %7(ptr noundef %3) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then, %land.lhs.true.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call, %if.then ], [ null, %land.lhs.true.cleanup_crit_edge ], [ null, %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @radeon_audio_detect(ptr noundef %connector, ptr noundef %encoder, i32 noundef %status) local_unnamed_addr #0 align 64 {
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
  %family.i = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %family.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %family.i, align 4
  %.off.i = add i32 %5, -18
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.off.i)
  %switch.i = icmp ult i32 %.off.i, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 26, i32 %5)
  %cmp8.i = icmp ugt i32 %5, 26
  %or.cond.i = or i1 %cmp8.i, %switch.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 56, i32 %5)
  %cmp10.i = icmp ne i32 %5, 56
  %narrow.i = and i1 %cmp10.i, %or.cond.i
  br i1 %narrow.i, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call zeroext i1 @radeon_encoder_is_digital(ptr noundef %encoder) #7
  br i1 %call2, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %enc_priv = getelementptr inbounds %struct.radeon_encoder, ptr %encoder, i32 0, i32 12
  %6 = ptrtoint ptr %enc_priv to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %enc_priv, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %status)
  %cmp = icmp eq i32 %status, 1
  br i1 %cmp, label %if.then5, label %if.else37

if.then5:                                         ; preds = %if.end4
  %connector_type = getelementptr inbounds %struct.drm_connector, ptr %connector, i32 0, i32 10
  %8 = ptrtoint ptr %connector_type to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %connector_type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %9)
  %cmp6 = icmp eq i32 %9, 10
  br i1 %cmp6, label %if.then7, label %if.else19

if.then7:                                         ; preds = %if.then5
  %call11 = tail call zeroext i8 @radeon_dp_getsinktype(ptr noundef %connector) #7
  call void @__sanitizer_cov_trace_const_cmp1(i8 19, i8 %call11)
  %cmp12 = icmp eq i8 %call11, 19
  br i1 %cmp12, label %if.then14, label %if.else

if.then14:                                        ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #9
  %dp_funcs = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 95, i32 4
  br label %if.end23

if.else:                                          ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #9
  %hdmi_funcs = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 95, i32 3
  br label %if.end23

if.else19:                                        ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #9
  %hdmi_funcs21 = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 95, i32 3
  br label %if.end23

if.end23:                                         ; preds = %if.else19, %if.else, %if.then14
  %.sink.in = phi ptr [ %dp_funcs, %if.then14 ], [ %hdmi_funcs, %if.else ], [ %hdmi_funcs21, %if.else19 ]
  %10 = ptrtoint ptr %.sink.in to i32
  call void @__asan_load4_noabort(i32 %10)
  %.sink = load ptr, ptr %.sink.in, align 4
  %audio15 = getelementptr inbounds %struct.radeon_encoder, ptr %encoder, i32 0, i32 16
  %11 = ptrtoint ptr %audio15 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %.sink, ptr %audio15, align 4
  %call24 = tail call ptr @radeon_connector_edid(ptr noundef %connector) #7
  %call25 = tail call zeroext i1 @drm_detect_monitor_audio(ptr noundef %call24) #7
  %pin = getelementptr inbounds %struct.radeon_encoder_atom_dig, ptr %7, i32 0, i32 12
  %12 = ptrtoint ptr %pin to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pin, align 4
  %tobool27.not = icmp eq ptr %13, null
  br i1 %call25, label %if.then26, label %if.else33

if.then26:                                        ; preds = %if.end23
  br i1 %tobool27.not, label %if.then28, label %if.then26.if.end.i_crit_edge

if.then26.if.end.i_crit_edge:                     ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

if.then28:                                        ; preds = %if.then26
  %14 = ptrtoint ptr %encoder to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %encoder, align 4
  %dev_private.i = getelementptr inbounds %struct.drm_device, ptr %15, i32 0, i32 5
  %16 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev_private.i, align 4
  %audio.i = getelementptr inbounds %struct.radeon_encoder, ptr %encoder, i32 0, i32 16
  %18 = ptrtoint ptr %audio.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %audio.i, align 4
  %tobool.not.i = icmp eq ptr %19, null
  br i1 %tobool.not.i, label %if.then28.if.end31.thread133_crit_edge, label %land.lhs.true.i

if.then28.if.end31.thread133_crit_edge:           ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end31.thread133

land.lhs.true.i:                                  ; preds = %if.then28
  %get_pin.i = getelementptr inbounds %struct.radeon_audio_funcs, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %get_pin.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %get_pin.i, align 4
  %tobool2.not.i = icmp eq ptr %21, null
  br i1 %tobool2.not.i, label %land.lhs.true.i.if.end31.thread133_crit_edge, label %if.end31

land.lhs.true.i.if.end31.thread133_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end31.thread133

if.end31.thread133:                               ; preds = %land.lhs.true.i.if.end31.thread133_crit_edge, %if.then28.if.end31.thread133_crit_edge
  %22 = ptrtoint ptr %pin to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr null, ptr %pin, align 4
  br label %cleanup

if.end31:                                         ; preds = %land.lhs.true.i
  %call.i = tail call ptr %21(ptr noundef %17) #7
  %23 = ptrtoint ptr %pin to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call.i, ptr %pin, align 4
  %tobool.not.i64 = icmp eq ptr %call.i, null
  br i1 %tobool.not.i64, label %if.end31.cleanup_crit_edge, label %if.end31.if.end.i_crit_edge

if.end31.if.end.i_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

if.end31.cleanup_crit_edge:                       ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i:                                         ; preds = %if.end31.if.end.i_crit_edge, %if.then26.if.end.i_crit_edge
  %24 = phi ptr [ %call.i, %if.end31.if.end.i_crit_edge ], [ %13, %if.then26.if.end.i_crit_edge ]
  %mode_config_initialized.i = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 44, i32 3
  %25 = ptrtoint ptr %mode_config_initialized.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %mode_config_initialized.i, align 4, !range !57
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool1.not.i = icmp eq i8 %26, 0
  br i1 %tobool1.not.i, label %if.end.i.if.end25.i_crit_edge, label %if.then2.i

if.end.i.if.end25.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end25.i

if.then2.i:                                       ; preds = %if.end.i
  %ddev.i = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 1
  %27 = ptrtoint ptr %ddev.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %ddev.i, align 4
  %encoder_list.i = getelementptr inbounds %struct.drm_device, ptr %28, i32 0, i32 30, i32 16
  %29 = ptrtoint ptr %encoder_list.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %.pn47.i = load ptr, ptr %encoder_list.i, align 4
  %cmp.not49.i = icmp eq ptr %.pn47.i, %encoder_list.i
  br i1 %cmp.not49.i, label %if.then2.i.if.end25.i_crit_edge, label %if.then2.i.for.body.i_crit_edge

if.then2.i.for.body.i_crit_edge:                  ; preds = %if.then2.i
  br label %for.body.i

if.then2.i.if.end25.i_crit_edge:                  ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end25.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.then2.i.for.body.i_crit_edge
  %.pn51.i = phi ptr [ %.pn.i, %for.body.i.for.body.i_crit_edge ], [ %.pn47.i, %if.then2.i.for.body.i_crit_edge ]
  %encoder.0.i = getelementptr i8, ptr %.pn51.i, i32 -4
  %call.i65 = tail call zeroext i1 @radeon_encoder_is_digital(ptr noundef %encoder.0.i) #7
  %30 = ptrtoint ptr %.pn51.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %.pn.i = load ptr, ptr %.pn51.i, align 4
  %31 = ptrtoint ptr %ddev.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %ddev.i, align 4
  %encoder_list5.i = getelementptr inbounds %struct.drm_device, ptr %32, i32 0, i32 30, i32 16
  %cmp.not.i = icmp eq ptr %.pn.i, %encoder_list5.i
  br i1 %cmp.not.i, label %for.body.i.if.end25.i_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.body.i.if.end25.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end25.i

if.end25.i:                                       ; preds = %for.body.i.if.end25.i_crit_edge, %if.then2.i.if.end25.i_crit_edge, %if.end.i.if.end25.i_crit_edge
  %funcs.i = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 95, i32 5
  %33 = ptrtoint ptr %funcs.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %funcs.i, align 4
  %enable.i = getelementptr inbounds %struct.radeon_audio_basic_funcs, ptr %34, i32 0, i32 2
  %35 = ptrtoint ptr %enable.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %enable.i, align 4
  %tobool26.not.i = icmp eq ptr %36, null
  br i1 %tobool26.not.i, label %if.end25.i.cleanup_crit_edge, label %if.then27.i

if.end25.i.cleanup_crit_edge:                     ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then27.i:                                      ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void %36(ptr noundef %3, ptr noundef nonnull %24, i8 noundef zeroext 15) #7
  br label %cleanup

if.else33:                                        ; preds = %if.end23
  br i1 %tobool27.not, label %if.else33.radeon_audio_enable.exit98_crit_edge, label %if.end.i69

if.else33.radeon_audio_enable.exit98_crit_edge:   ; preds = %if.else33
  call void @__sanitizer_cov_trace_pc() #9
  br label %radeon_audio_enable.exit98

if.end.i69:                                       ; preds = %if.else33
  %mode_config_initialized.i67 = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 44, i32 3
  %37 = ptrtoint ptr %mode_config_initialized.i67 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %mode_config_initialized.i67, align 4, !range !57
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %tobool1.not.i68 = icmp eq i8 %38, 0
  br i1 %tobool1.not.i68, label %if.end.i69.if.end25.i96_crit_edge, label %if.then2.i74

if.end.i69.if.end25.i96_crit_edge:                ; preds = %if.end.i69
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end25.i96

if.then2.i74:                                     ; preds = %if.end.i69
  %ddev.i70 = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 1
  %39 = ptrtoint ptr %ddev.i70 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %ddev.i70, align 4
  %encoder_list.i71 = getelementptr inbounds %struct.drm_device, ptr %40, i32 0, i32 30, i32 16
  %41 = ptrtoint ptr %encoder_list.i71 to i32
  call void @__asan_load4_noabort(i32 %41)
  %.pn47.i72 = load ptr, ptr %encoder_list.i71, align 4
  %cmp.not49.i73 = icmp eq ptr %.pn47.i72, %encoder_list.i71
  br i1 %cmp.not49.i73, label %if.then2.i74.if.end25.i96_crit_edge, label %if.then2.i74.for.body.i79_crit_edge

if.then2.i74.for.body.i79_crit_edge:              ; preds = %if.then2.i74
  br label %for.body.i79

if.then2.i74.if.end25.i96_crit_edge:              ; preds = %if.then2.i74
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end25.i96

for.body.i79:                                     ; preds = %for.inc.i90.for.body.i79_crit_edge, %if.then2.i74.for.body.i79_crit_edge
  %.pn51.i75 = phi ptr [ %.pn.i87, %for.inc.i90.for.body.i79_crit_edge ], [ %.pn47.i72, %if.then2.i74.for.body.i79_crit_edge ]
  %pin_count.050.i76 = phi i32 [ %pin_count.1.i86, %for.inc.i90.for.body.i79_crit_edge ], [ 0, %if.then2.i74.for.body.i79_crit_edge ]
  %encoder.0.i77 = getelementptr i8, ptr %.pn51.i75, i32 -4
  %call.i78 = tail call zeroext i1 @radeon_encoder_is_digital(ptr noundef %encoder.0.i77) #7
  br i1 %call.i78, label %if.then6.i85, label %for.body.i79.for.inc.i90_crit_edge

for.body.i79.for.inc.i90_crit_edge:               ; preds = %for.body.i79
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i90

if.then6.i85:                                     ; preds = %for.body.i79
  call void @__sanitizer_cov_trace_pc() #9
  %enc_priv.i80 = getelementptr i8, ptr %.pn51.i75, i32 220
  %42 = ptrtoint ptr %enc_priv.i80 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %enc_priv.i80, align 4
  %pin10.i81 = getelementptr inbounds %struct.radeon_encoder_atom_dig, ptr %43, i32 0, i32 12
  %44 = ptrtoint ptr %pin10.i81 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %pin10.i81, align 4
  %cmp11.i82 = icmp eq ptr %45, %13
  %inc.i83 = zext i1 %cmp11.i82 to i32
  %spec.select.i84 = add i32 %pin_count.050.i76, %inc.i83
  br label %for.inc.i90

for.inc.i90:                                      ; preds = %if.then6.i85, %for.body.i79.for.inc.i90_crit_edge
  %pin_count.1.i86 = phi i32 [ %pin_count.050.i76, %for.body.i79.for.inc.i90_crit_edge ], [ %spec.select.i84, %if.then6.i85 ]
  %46 = ptrtoint ptr %.pn51.i75 to i32
  call void @__asan_load4_noabort(i32 %46)
  %.pn.i87 = load ptr, ptr %.pn51.i75, align 4
  %47 = ptrtoint ptr %ddev.i70 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %ddev.i70, align 4
  %encoder_list5.i88 = getelementptr inbounds %struct.drm_device, ptr %48, i32 0, i32 30, i32 16
  %cmp.not.i89 = icmp eq ptr %.pn.i87, %encoder_list5.i88
  br i1 %cmp.not.i89, label %for.end.i92, label %for.inc.i90.for.body.i79_crit_edge

for.inc.i90.for.body.i79_crit_edge:               ; preds = %for.inc.i90
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i79

for.end.i92:                                      ; preds = %for.inc.i90
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %pin_count.1.i86)
  %cmp20.i91 = icmp sgt i32 %pin_count.1.i86, 1
  br i1 %cmp20.i91, label %for.end.i92.radeon_audio_enable.exit98_crit_edge, label %for.end.i92.if.end25.i96_crit_edge

for.end.i92.if.end25.i96_crit_edge:               ; preds = %for.end.i92
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end25.i96

for.end.i92.radeon_audio_enable.exit98_crit_edge: ; preds = %for.end.i92
  call void @__sanitizer_cov_trace_pc() #9
  br label %radeon_audio_enable.exit98

if.end25.i96:                                     ; preds = %for.end.i92.if.end25.i96_crit_edge, %if.then2.i74.if.end25.i96_crit_edge, %if.end.i69.if.end25.i96_crit_edge
  %funcs.i93 = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 95, i32 5
  %49 = ptrtoint ptr %funcs.i93 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %funcs.i93, align 4
  %enable.i94 = getelementptr inbounds %struct.radeon_audio_basic_funcs, ptr %50, i32 0, i32 2
  %51 = ptrtoint ptr %enable.i94 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %enable.i94, align 4
  %tobool26.not.i95 = icmp eq ptr %52, null
  br i1 %tobool26.not.i95, label %if.end25.i96.radeon_audio_enable.exit98_crit_edge, label %if.then27.i97

if.end25.i96.radeon_audio_enable.exit98_crit_edge: ; preds = %if.end25.i96
  call void @__sanitizer_cov_trace_pc() #9
  br label %radeon_audio_enable.exit98

if.then27.i97:                                    ; preds = %if.end25.i96
  call void @__sanitizer_cov_trace_pc() #9
  tail call void %52(ptr noundef %3, ptr noundef nonnull %13, i8 noundef zeroext 0) #7
  br label %radeon_audio_enable.exit98

radeon_audio_enable.exit98:                       ; preds = %if.then27.i97, %if.end25.i96.radeon_audio_enable.exit98_crit_edge, %for.end.i92.radeon_audio_enable.exit98_crit_edge, %if.else33.radeon_audio_enable.exit98_crit_edge
  %53 = ptrtoint ptr %pin to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr null, ptr %pin, align 4
  br label %cleanup

if.else37:                                        ; preds = %if.end4
  %pin38 = getelementptr inbounds %struct.radeon_encoder_atom_dig, ptr %7, i32 0, i32 12
  %54 = ptrtoint ptr %pin38 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %pin38, align 4
  %tobool.not.i99 = icmp eq ptr %55, null
  br i1 %tobool.not.i99, label %if.else37.radeon_audio_enable.exit131_crit_edge, label %if.end.i102

if.else37.radeon_audio_enable.exit131_crit_edge:  ; preds = %if.else37
  call void @__sanitizer_cov_trace_pc() #9
  br label %radeon_audio_enable.exit131

if.end.i102:                                      ; preds = %if.else37
  %mode_config_initialized.i100 = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 44, i32 3
  %56 = ptrtoint ptr %mode_config_initialized.i100 to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %mode_config_initialized.i100, align 4, !range !57
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %57)
  %tobool1.not.i101 = icmp eq i8 %57, 0
  br i1 %tobool1.not.i101, label %if.end.i102.if.end25.i129_crit_edge, label %if.then2.i107

if.end.i102.if.end25.i129_crit_edge:              ; preds = %if.end.i102
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end25.i129

if.then2.i107:                                    ; preds = %if.end.i102
  %ddev.i103 = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 1
  %58 = ptrtoint ptr %ddev.i103 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %ddev.i103, align 4
  %encoder_list.i104 = getelementptr inbounds %struct.drm_device, ptr %59, i32 0, i32 30, i32 16
  %60 = ptrtoint ptr %encoder_list.i104 to i32
  call void @__asan_load4_noabort(i32 %60)
  %.pn47.i105 = load ptr, ptr %encoder_list.i104, align 4
  %cmp.not49.i106 = icmp eq ptr %.pn47.i105, %encoder_list.i104
  br i1 %cmp.not49.i106, label %if.then2.i107.if.end25.i129_crit_edge, label %if.then2.i107.for.body.i112_crit_edge

if.then2.i107.for.body.i112_crit_edge:            ; preds = %if.then2.i107
  br label %for.body.i112

if.then2.i107.if.end25.i129_crit_edge:            ; preds = %if.then2.i107
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end25.i129

for.body.i112:                                    ; preds = %for.inc.i123.for.body.i112_crit_edge, %if.then2.i107.for.body.i112_crit_edge
  %.pn51.i108 = phi ptr [ %.pn.i120, %for.inc.i123.for.body.i112_crit_edge ], [ %.pn47.i105, %if.then2.i107.for.body.i112_crit_edge ]
  %pin_count.050.i109 = phi i32 [ %pin_count.1.i119, %for.inc.i123.for.body.i112_crit_edge ], [ 0, %if.then2.i107.for.body.i112_crit_edge ]
  %encoder.0.i110 = getelementptr i8, ptr %.pn51.i108, i32 -4
  %call.i111 = tail call zeroext i1 @radeon_encoder_is_digital(ptr noundef %encoder.0.i110) #7
  br i1 %call.i111, label %if.then6.i118, label %for.body.i112.for.inc.i123_crit_edge

for.body.i112.for.inc.i123_crit_edge:             ; preds = %for.body.i112
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i123

if.then6.i118:                                    ; preds = %for.body.i112
  call void @__sanitizer_cov_trace_pc() #9
  %enc_priv.i113 = getelementptr i8, ptr %.pn51.i108, i32 220
  %61 = ptrtoint ptr %enc_priv.i113 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %enc_priv.i113, align 4
  %pin10.i114 = getelementptr inbounds %struct.radeon_encoder_atom_dig, ptr %62, i32 0, i32 12
  %63 = ptrtoint ptr %pin10.i114 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %pin10.i114, align 4
  %cmp11.i115 = icmp eq ptr %64, %55
  %inc.i116 = zext i1 %cmp11.i115 to i32
  %spec.select.i117 = add i32 %pin_count.050.i109, %inc.i116
  br label %for.inc.i123

for.inc.i123:                                     ; preds = %if.then6.i118, %for.body.i112.for.inc.i123_crit_edge
  %pin_count.1.i119 = phi i32 [ %pin_count.050.i109, %for.body.i112.for.inc.i123_crit_edge ], [ %spec.select.i117, %if.then6.i118 ]
  %65 = ptrtoint ptr %.pn51.i108 to i32
  call void @__asan_load4_noabort(i32 %65)
  %.pn.i120 = load ptr, ptr %.pn51.i108, align 4
  %66 = ptrtoint ptr %ddev.i103 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %ddev.i103, align 4
  %encoder_list5.i121 = getelementptr inbounds %struct.drm_device, ptr %67, i32 0, i32 30, i32 16
  %cmp.not.i122 = icmp eq ptr %.pn.i120, %encoder_list5.i121
  br i1 %cmp.not.i122, label %for.end.i125, label %for.inc.i123.for.body.i112_crit_edge

for.inc.i123.for.body.i112_crit_edge:             ; preds = %for.inc.i123
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i112

for.end.i125:                                     ; preds = %for.inc.i123
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %pin_count.1.i119)
  %cmp20.i124 = icmp sgt i32 %pin_count.1.i119, 1
  br i1 %cmp20.i124, label %for.end.i125.radeon_audio_enable.exit131_crit_edge, label %for.end.i125.if.end25.i129_crit_edge

for.end.i125.if.end25.i129_crit_edge:             ; preds = %for.end.i125
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end25.i129

for.end.i125.radeon_audio_enable.exit131_crit_edge: ; preds = %for.end.i125
  call void @__sanitizer_cov_trace_pc() #9
  br label %radeon_audio_enable.exit131

if.end25.i129:                                    ; preds = %for.end.i125.if.end25.i129_crit_edge, %if.then2.i107.if.end25.i129_crit_edge, %if.end.i102.if.end25.i129_crit_edge
  %funcs.i126 = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 95, i32 5
  %68 = ptrtoint ptr %funcs.i126 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %funcs.i126, align 4
  %enable.i127 = getelementptr inbounds %struct.radeon_audio_basic_funcs, ptr %69, i32 0, i32 2
  %70 = ptrtoint ptr %enable.i127 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %enable.i127, align 4
  %tobool26.not.i128 = icmp eq ptr %71, null
  br i1 %tobool26.not.i128, label %if.end25.i129.radeon_audio_enable.exit131_crit_edge, label %if.then27.i130

if.end25.i129.radeon_audio_enable.exit131_crit_edge: ; preds = %if.end25.i129
  call void @__sanitizer_cov_trace_pc() #9
  br label %radeon_audio_enable.exit131

if.then27.i130:                                   ; preds = %if.end25.i129
  call void @__sanitizer_cov_trace_pc() #9
  tail call void %71(ptr noundef %3, ptr noundef nonnull %55, i8 noundef zeroext 0) #7
  br label %radeon_audio_enable.exit131

radeon_audio_enable.exit131:                      ; preds = %if.then27.i130, %if.end25.i129.radeon_audio_enable.exit131_crit_edge, %for.end.i125.radeon_audio_enable.exit131_crit_edge, %if.else37.radeon_audio_enable.exit131_crit_edge
  %72 = ptrtoint ptr %pin38 to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr null, ptr %pin38, align 4
  br label %cleanup

cleanup:                                          ; preds = %radeon_audio_enable.exit131, %radeon_audio_enable.exit98, %if.then27.i, %if.end25.i.cleanup_crit_edge, %if.end31.cleanup_crit_edge, %if.end31.thread133, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @radeon_encoder_is_digital(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @radeon_dp_getsinktype(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @drm_detect_monitor_audio(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @radeon_connector_edid(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @radeon_audio_fini(ptr noundef %rdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %audio = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 95
  %0 = ptrtoint ptr %audio to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %audio, align 8, !range !57
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %for.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %num_pins = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 95, i32 2
  %2 = ptrtoint ptr %num_pins to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_pins, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp11 = icmp sgt i32 %3, 0
  br i1 %cmp11, label %for.body.lr.ph, label %for.cond.preheader.for.end_crit_edge

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %mode_config_initialized.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 44, i32 3
  %ddev.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 1
  %funcs.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 95, i32 5
  br label %for.body

for.body:                                         ; preds = %radeon_audio_enable.exit.for.body_crit_edge, %for.body.lr.ph
  %i.012 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %radeon_audio_enable.exit.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 95, i32 1, i32 %i.012
  %tobool.not.i = icmp eq ptr %arrayidx, null
  br i1 %tobool.not.i, label %for.body.radeon_audio_enable.exit_crit_edge, label %if.end.i

for.body.radeon_audio_enable.exit_crit_edge:      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %radeon_audio_enable.exit

if.end.i:                                         ; preds = %for.body
  %4 = ptrtoint ptr %mode_config_initialized.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %mode_config_initialized.i, align 4, !range !57
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool1.not.i = icmp eq i8 %5, 0
  br i1 %tobool1.not.i, label %if.end.i.if.end25.i_crit_edge, label %if.then2.i

if.end.i.if.end25.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end25.i

if.then2.i:                                       ; preds = %if.end.i
  %6 = ptrtoint ptr %ddev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ddev.i, align 4
  %encoder_list.i = getelementptr inbounds %struct.drm_device, ptr %7, i32 0, i32 30, i32 16
  %8 = ptrtoint ptr %encoder_list.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %.pn47.i = load ptr, ptr %encoder_list.i, align 4
  %cmp.not49.i = icmp eq ptr %.pn47.i, %encoder_list.i
  br i1 %cmp.not49.i, label %if.then2.i.if.end25.i_crit_edge, label %if.then2.i.for.body.i_crit_edge

if.then2.i.for.body.i_crit_edge:                  ; preds = %if.then2.i
  br label %for.body.i

if.then2.i.if.end25.i_crit_edge:                  ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end25.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.then2.i.for.body.i_crit_edge
  %.pn51.i = phi ptr [ %.pn.i, %for.inc.i.for.body.i_crit_edge ], [ %.pn47.i, %if.then2.i.for.body.i_crit_edge ]
  %pin_count.050.i = phi i32 [ %pin_count.1.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %if.then2.i.for.body.i_crit_edge ]
  %encoder.0.i = getelementptr i8, ptr %.pn51.i, i32 -4
  %call.i = tail call zeroext i1 @radeon_encoder_is_digital(ptr noundef %encoder.0.i) #7
  br i1 %call.i, label %if.then6.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

if.then6.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %enc_priv.i = getelementptr i8, ptr %.pn51.i, i32 220
  %9 = ptrtoint ptr %enc_priv.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %enc_priv.i, align 4
  %pin10.i = getelementptr inbounds %struct.radeon_encoder_atom_dig, ptr %10, i32 0, i32 12
  %11 = ptrtoint ptr %pin10.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pin10.i, align 4
  %cmp11.i = icmp eq ptr %12, %arrayidx
  %inc.i = zext i1 %cmp11.i to i32
  %spec.select.i = add i32 %pin_count.050.i, %inc.i
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then6.i, %for.body.i.for.inc.i_crit_edge
  %pin_count.1.i = phi i32 [ %pin_count.050.i, %for.body.i.for.inc.i_crit_edge ], [ %spec.select.i, %if.then6.i ]
  %13 = ptrtoint ptr %.pn51.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %.pn.i = load ptr, ptr %.pn51.i, align 4
  %14 = ptrtoint ptr %ddev.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ddev.i, align 4
  %encoder_list5.i = getelementptr inbounds %struct.drm_device, ptr %15, i32 0, i32 30, i32 16
  %cmp.not.i = icmp eq ptr %.pn.i, %encoder_list5.i
  br i1 %cmp.not.i, label %for.end.i, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.end.i:                                        ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %pin_count.1.i)
  %cmp20.i = icmp sgt i32 %pin_count.1.i, 1
  br i1 %cmp20.i, label %for.end.i.radeon_audio_enable.exit_crit_edge, label %for.end.i.if.end25.i_crit_edge

for.end.i.if.end25.i_crit_edge:                   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end25.i

for.end.i.radeon_audio_enable.exit_crit_edge:     ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %radeon_audio_enable.exit

if.end25.i:                                       ; preds = %for.end.i.if.end25.i_crit_edge, %if.then2.i.if.end25.i_crit_edge, %if.end.i.if.end25.i_crit_edge
  %16 = ptrtoint ptr %funcs.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %funcs.i, align 4
  %enable.i = getelementptr inbounds %struct.radeon_audio_basic_funcs, ptr %17, i32 0, i32 2
  %18 = ptrtoint ptr %enable.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %enable.i, align 4
  %tobool26.not.i = icmp eq ptr %19, null
  br i1 %tobool26.not.i, label %if.end25.i.radeon_audio_enable.exit_crit_edge, label %if.then27.i

if.end25.i.radeon_audio_enable.exit_crit_edge:    ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %radeon_audio_enable.exit

if.then27.i:                                      ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void %19(ptr noundef %rdev, ptr noundef nonnull %arrayidx, i8 noundef zeroext 0) #7
  br label %radeon_audio_enable.exit

radeon_audio_enable.exit:                         ; preds = %if.then27.i, %if.end25.i.radeon_audio_enable.exit_crit_edge, %for.end.i.radeon_audio_enable.exit_crit_edge, %for.body.radeon_audio_enable.exit_crit_edge
  %inc = add nuw nsw i32 %i.012, 1
  %20 = ptrtoint ptr %num_pins to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %num_pins, align 8
  %cmp = icmp slt i32 %inc, %21
  br i1 %cmp, label %radeon_audio_enable.exit.for.body_crit_edge, label %radeon_audio_enable.exit.for.end_crit_edge

radeon_audio_enable.exit.for.end_crit_edge:       ; preds = %radeon_audio_enable.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

radeon_audio_enable.exit.for.body_crit_edge:      ; preds = %radeon_audio_enable.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %radeon_audio_enable.exit.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %22 = ptrtoint ptr %audio to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 0, ptr %audio, align 8
  br label %cleanup

cleanup:                                          ; preds = %for.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @radeon_audio_mode_set(ptr noundef %encoder, ptr noundef %mode) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %audio = getelementptr inbounds %struct.radeon_encoder, ptr %encoder, i32 0, i32 16
  %0 = ptrtoint ptr %audio to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %audio, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %mode_set = getelementptr inbounds %struct.radeon_audio_funcs, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %mode_set to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mode_set, align 4
  %tobool2.not = icmp eq ptr %3, null
  br i1 %tobool2.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  tail call void %3(ptr noundef %encoder, ptr noundef %mode) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @radeon_audio_dpms(ptr noundef %encoder, i32 noundef %mode) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %audio = getelementptr inbounds %struct.radeon_encoder, ptr %encoder, i32 0, i32 16
  %0 = ptrtoint ptr %audio to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %audio, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %dpms = getelementptr inbounds %struct.radeon_audio_funcs, ptr %1, i32 0, i32 13
  %2 = ptrtoint ptr %dpms to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dpms, align 4
  %tobool2.not = icmp eq ptr %3, null
  br i1 %tobool2.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mode)
  %cmp = icmp eq i32 %mode, 0
  tail call void %3(ptr noundef %encoder, i1 noundef zeroext %cmp) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @radeon_audio_decode_dfs_div(i32 noundef %div) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = add i32 %div, -8
  call void @__sanitizer_cov_trace_const_cmp4(i32 56, i32 %0)
  %1 = icmp ult i32 %0, 56
  br i1 %1, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %2 = mul nuw nsw i32 %div, 25
  br label %return

if.else:                                          ; preds = %entry
  %3 = and i32 %div, -32
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.11)
  switch i32 %3, label %if.else.return_crit_edge [
    i32 64, label %if.then5
    i32 96, label %if.then13
  ]

if.else.return_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.then5:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %5 = mul nuw nsw i32 %div, 50
  %add8 = add nsw i32 %5, -1600
  br label %return

if.then13:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %6 = mul nuw nsw i32 %div, 100
  %add16 = add nsw i32 %6, -6400
  br label %return

return:                                           ; preds = %if.then13, %if.then5, %if.else.return_crit_edge, %if.then
  %retval.0 = phi i32 [ %2, %if.then ], [ %add8, %if.then5 ], [ %add16, %if.then13 ], [ 0, %if.else.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dce6_endpoint_rreg(ptr noundef, i32 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dce6_endpoint_wreg(ptr noundef, i32 noundef, i32 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dce6_audio_enable(ptr noundef, ptr noundef, i8 noundef zeroext) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dce6_afmt_select_pin(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dce6_audio_get_pin(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dce6_afmt_write_latency_fields(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dce6_afmt_write_sad_regs(ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dce6_afmt_hdmi_write_speaker_allocation(ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dce6_hdmi_audio_set_dto(ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @evergreen_hdmi_update_acr(ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dce4_set_vbi_packet(ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dce4_hdmi_set_color_depth(ptr noundef, i32 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @evergreen_set_avi_packet(ptr noundef, i32 noundef, ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dce4_set_audio_packet(ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dce4_set_mute(ptr noundef, i32 noundef, i1 noundef zeroext) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @radeon_audio_hdmi_mode_set(ptr noundef %encoder, ptr noundef %mode) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %enc_priv = getelementptr inbounds %struct.radeon_encoder, ptr %encoder, i32 0, i32 12
  %0 = ptrtoint ptr %enc_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %enc_priv, align 4
  %call = tail call ptr @radeon_get_connector_for_encoder(ptr noundef %encoder) #7
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %afmt = getelementptr inbounds %struct.radeon_encoder_atom_dig, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %afmt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %afmt, align 4
  %tobool1.not = icmp eq ptr %3, null
  %tobool2.not = icmp eq ptr %call, null
  %or.cond = select i1 %tobool1.not, i1 true, i1 %tobool2.not
  br i1 %or.cond, label %lor.lhs.false.cleanup_crit_edge, label %if.end4

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end4:                                          ; preds = %lor.lhs.false
  %call5 = tail call ptr @radeon_connector_edid(ptr noundef nonnull %call) #7
  %call6 = tail call zeroext i1 @drm_detect_monitor_audio(ptr noundef %call5) #7
  %4 = ptrtoint ptr %enc_priv to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %enc_priv, align 4
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %call6, label %if.then7, label %if.else

if.then7:                                         ; preds = %if.end4
  br i1 %tobool.not.i, label %if.then7.radeon_audio_set_mute.exit_crit_edge, label %lor.lhs.false.i

if.then7.radeon_audio_set_mute.exit_crit_edge:    ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #9
  br label %radeon_audio_set_mute.exit

lor.lhs.false.i:                                  ; preds = %if.then7
  %afmt.i = getelementptr inbounds %struct.radeon_encoder_atom_dig, ptr %5, i32 0, i32 11
  %6 = ptrtoint ptr %afmt.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %afmt.i, align 4
  %tobool1.not.i = icmp eq ptr %7, null
  br i1 %tobool1.not.i, label %lor.lhs.false.i.radeon_audio_set_mute.exit_crit_edge, label %if.end.i

lor.lhs.false.i.radeon_audio_set_mute.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %radeon_audio_set_mute.exit

if.end.i:                                         ; preds = %lor.lhs.false.i
  %audio.i = getelementptr inbounds %struct.radeon_encoder, ptr %encoder, i32 0, i32 16
  %8 = ptrtoint ptr %audio.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %audio.i, align 4
  %tobool2.not.i = icmp eq ptr %9, null
  br i1 %tobool2.not.i, label %if.end.i.radeon_audio_set_mute.exit_crit_edge, label %land.lhs.true.i

if.end.i.radeon_audio_set_mute.exit_crit_edge:    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %radeon_audio_set_mute.exit

land.lhs.true.i:                                  ; preds = %if.end.i
  %set_mute.i = getelementptr inbounds %struct.radeon_audio_funcs, ptr %9, i32 0, i32 11
  %10 = ptrtoint ptr %set_mute.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %set_mute.i, align 4
  %tobool4.not.i = icmp eq ptr %11, null
  br i1 %tobool4.not.i, label %land.lhs.true.i.radeon_audio_set_mute.exit_crit_edge, label %if.then5.i

land.lhs.true.i.radeon_audio_set_mute.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %radeon_audio_set_mute.exit

if.then5.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  %offset.i = getelementptr inbounds %struct.radeon_afmt, ptr %7, i32 0, i32 1
  %12 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %offset.i, align 4
  tail call void %11(ptr noundef %encoder, i32 noundef %13, i1 noundef zeroext true) #7
  br label %radeon_audio_set_mute.exit

radeon_audio_set_mute.exit:                       ; preds = %if.then5.i, %land.lhs.true.i.radeon_audio_set_mute.exit_crit_edge, %if.end.i.radeon_audio_set_mute.exit_crit_edge, %lor.lhs.false.i.radeon_audio_set_mute.exit_crit_edge, %if.then7.radeon_audio_set_mute.exit_crit_edge
  tail call fastcc void @radeon_audio_write_speaker_allocation(ptr noundef %encoder)
  tail call fastcc void @radeon_audio_write_sad_regs(ptr noundef %encoder)
  %call.i = tail call ptr @radeon_get_connector_for_encoder(ptr noundef %encoder) #7
  %tobool.not.i40 = icmp eq ptr %call.i, null
  br i1 %tobool.not.i40, label %radeon_audio_set_mute.exit.radeon_audio_write_latency_fields.exit_crit_edge, label %if.end.i43

radeon_audio_set_mute.exit.radeon_audio_write_latency_fields.exit_crit_edge: ; preds = %radeon_audio_set_mute.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %radeon_audio_write_latency_fields.exit

if.end.i43:                                       ; preds = %radeon_audio_set_mute.exit
  %audio.i41 = getelementptr inbounds %struct.radeon_encoder, ptr %encoder, i32 0, i32 16
  %14 = ptrtoint ptr %audio.i41 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %audio.i41, align 4
  %tobool1.not.i42 = icmp eq ptr %15, null
  br i1 %tobool1.not.i42, label %if.end.i43.radeon_audio_write_latency_fields.exit_crit_edge, label %land.lhs.true.i44

if.end.i43.radeon_audio_write_latency_fields.exit_crit_edge: ; preds = %if.end.i43
  call void @__sanitizer_cov_trace_pc() #9
  br label %radeon_audio_write_latency_fields.exit

land.lhs.true.i44:                                ; preds = %if.end.i43
  %write_latency_fields.i = getelementptr inbounds %struct.radeon_audio_funcs, ptr %15, i32 0, i32 2
  %16 = ptrtoint ptr %write_latency_fields.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %write_latency_fields.i, align 4
  %tobool3.not.i = icmp eq ptr %17, null
  br i1 %tobool3.not.i, label %land.lhs.true.i44.radeon_audio_write_latency_fields.exit_crit_edge, label %if.then4.i

land.lhs.true.i44.radeon_audio_write_latency_fields.exit_crit_edge: ; preds = %land.lhs.true.i44
  call void @__sanitizer_cov_trace_pc() #9
  br label %radeon_audio_write_latency_fields.exit

if.then4.i:                                       ; preds = %land.lhs.true.i44
  call void @__sanitizer_cov_trace_pc() #9
  tail call void %17(ptr noundef %encoder, ptr noundef nonnull %call.i, ptr noundef %mode) #7
  br label %radeon_audio_write_latency_fields.exit

radeon_audio_write_latency_fields.exit:           ; preds = %if.then4.i, %land.lhs.true.i44.radeon_audio_write_latency_fields.exit_crit_edge, %if.end.i43.radeon_audio_write_latency_fields.exit_crit_edge, %radeon_audio_set_mute.exit.radeon_audio_write_latency_fields.exit_crit_edge
  %18 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %mode, align 4
  %20 = ptrtoint ptr %encoder to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %encoder, align 4
  %dev_private.i = getelementptr inbounds %struct.drm_device, ptr %21, i32 0, i32 5
  %22 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev_private.i, align 4
  %crtc2.i = getelementptr inbounds %struct.drm_encoder, ptr %encoder, i32 0, i32 8
  %24 = ptrtoint ptr %crtc2.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %crtc2.i, align 4
  %audio.i45 = getelementptr inbounds %struct.radeon_encoder, ptr %encoder, i32 0, i32 16
  %26 = ptrtoint ptr %audio.i45 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %audio.i45, align 4
  %tobool.not.i46 = icmp eq ptr %27, null
  br i1 %tobool.not.i46, label %radeon_audio_write_latency_fields.exit.radeon_audio_set_dto.exit_crit_edge, label %land.lhs.true.i47

radeon_audio_write_latency_fields.exit.radeon_audio_set_dto.exit_crit_edge: ; preds = %radeon_audio_write_latency_fields.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %radeon_audio_set_dto.exit

land.lhs.true.i47:                                ; preds = %radeon_audio_write_latency_fields.exit
  %set_dto.i = getelementptr inbounds %struct.radeon_audio_funcs, ptr %27, i32 0, i32 5
  %28 = ptrtoint ptr %set_dto.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %set_dto.i, align 4
  %tobool6.not.i = icmp eq ptr %29, null
  br i1 %tobool6.not.i, label %land.lhs.true.i47.radeon_audio_set_dto.exit_crit_edge, label %if.then.i

land.lhs.true.i47.radeon_audio_set_dto.exit_crit_edge: ; preds = %land.lhs.true.i47
  call void @__sanitizer_cov_trace_pc() #9
  br label %radeon_audio_set_dto.exit

if.then.i:                                        ; preds = %land.lhs.true.i47
  call void @__sanitizer_cov_trace_pc() #9
  tail call void %29(ptr noundef %23, ptr noundef %25, i32 noundef %19) #7
  br label %radeon_audio_set_dto.exit

radeon_audio_set_dto.exit:                        ; preds = %if.then.i, %land.lhs.true.i47.radeon_audio_set_dto.exit_crit_edge, %radeon_audio_write_latency_fields.exit.radeon_audio_set_dto.exit_crit_edge
  %30 = ptrtoint ptr %enc_priv to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %enc_priv, align 4
  %tobool.not.i50 = icmp eq ptr %31, null
  br i1 %tobool.not.i50, label %radeon_audio_set_dto.exit.radeon_hdmi_set_color_depth.exit_crit_edge, label %lor.lhs.false.i53

radeon_audio_set_dto.exit.radeon_hdmi_set_color_depth.exit_crit_edge: ; preds = %radeon_audio_set_dto.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %radeon_hdmi_set_color_depth.exit

lor.lhs.false.i53:                                ; preds = %radeon_audio_set_dto.exit
  %afmt.i51 = getelementptr inbounds %struct.radeon_encoder_atom_dig, ptr %31, i32 0, i32 11
  %32 = ptrtoint ptr %afmt.i51 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %afmt.i51, align 4
  %tobool1.not.i52 = icmp eq ptr %33, null
  br i1 %tobool1.not.i52, label %lor.lhs.false.i53.radeon_audio_set_vbi_packet.exit_crit_edge, label %if.end.i56

lor.lhs.false.i53.radeon_audio_set_vbi_packet.exit_crit_edge: ; preds = %lor.lhs.false.i53
  call void @__sanitizer_cov_trace_pc() #9
  br label %radeon_audio_set_vbi_packet.exit

if.end.i56:                                       ; preds = %lor.lhs.false.i53
  %34 = ptrtoint ptr %audio.i45 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %audio.i45, align 4
  %tobool2.not.i55 = icmp eq ptr %35, null
  br i1 %tobool2.not.i55, label %if.end.i56.radeon_audio_set_vbi_packet.exit_crit_edge, label %land.lhs.true.i58

if.end.i56.radeon_audio_set_vbi_packet.exit_crit_edge: ; preds = %if.end.i56
  call void @__sanitizer_cov_trace_pc() #9
  br label %radeon_audio_set_vbi_packet.exit

land.lhs.true.i58:                                ; preds = %if.end.i56
  %set_vbi_packet.i = getelementptr inbounds %struct.radeon_audio_funcs, ptr %35, i32 0, i32 7
  %36 = ptrtoint ptr %set_vbi_packet.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %set_vbi_packet.i, align 4
  %tobool4.not.i57 = icmp eq ptr %37, null
  br i1 %tobool4.not.i57, label %land.lhs.true.i58.radeon_audio_set_vbi_packet.exit_crit_edge, label %if.then5.i60

land.lhs.true.i58.radeon_audio_set_vbi_packet.exit_crit_edge: ; preds = %land.lhs.true.i58
  call void @__sanitizer_cov_trace_pc() #9
  br label %radeon_audio_set_vbi_packet.exit

if.then5.i60:                                     ; preds = %land.lhs.true.i58
  call void @__sanitizer_cov_trace_pc() #9
  %offset.i59 = getelementptr inbounds %struct.radeon_afmt, ptr %33, i32 0, i32 1
  %38 = ptrtoint ptr %offset.i59 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %offset.i59, align 4
  tail call void %37(ptr noundef %encoder, i32 noundef %39) #7
  br label %radeon_audio_set_vbi_packet.exit

radeon_audio_set_vbi_packet.exit:                 ; preds = %if.then5.i60, %land.lhs.true.i58.radeon_audio_set_vbi_packet.exit_crit_edge, %if.end.i56.radeon_audio_set_vbi_packet.exit_crit_edge, %lor.lhs.false.i53.radeon_audio_set_vbi_packet.exit_crit_edge
  %40 = ptrtoint ptr %enc_priv to i32
  call void @__asan_load4_noabort(i32 %40)
  %.pr = load ptr, ptr %enc_priv, align 4
  %tobool.not.i62 = icmp eq ptr %.pr, null
  br i1 %tobool.not.i62, label %radeon_audio_set_vbi_packet.exit.radeon_hdmi_set_color_depth.exit_crit_edge, label %lor.lhs.false.i65

radeon_audio_set_vbi_packet.exit.radeon_hdmi_set_color_depth.exit_crit_edge: ; preds = %radeon_audio_set_vbi_packet.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %radeon_hdmi_set_color_depth.exit

lor.lhs.false.i65:                                ; preds = %radeon_audio_set_vbi_packet.exit
  %afmt.i63 = getelementptr inbounds %struct.radeon_encoder_atom_dig, ptr %.pr, i32 0, i32 11
  %41 = ptrtoint ptr %afmt.i63 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %afmt.i63, align 4
  %tobool1.not.i64 = icmp eq ptr %42, null
  br i1 %tobool1.not.i64, label %lor.lhs.false.i65.radeon_hdmi_set_color_depth.exit_crit_edge, label %if.end.i67

lor.lhs.false.i65.radeon_hdmi_set_color_depth.exit_crit_edge: ; preds = %lor.lhs.false.i65
  call void @__sanitizer_cov_trace_pc() #9
  br label %radeon_hdmi_set_color_depth.exit

if.end.i67:                                       ; preds = %lor.lhs.false.i65
  %43 = ptrtoint ptr %crtc2.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %crtc2.i, align 4
  %tobool2.not.i66 = icmp eq ptr %44, null
  br i1 %tobool2.not.i66, label %if.end.i67.if.end9.i_crit_edge, label %if.then3.i

if.end.i67.if.end9.i_crit_edge:                   ; preds = %if.end.i67
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9.i

if.then3.i:                                       ; preds = %if.end.i67
  call void @__sanitizer_cov_trace_pc() #9
  %bpc8.i = getelementptr inbounds %struct.radeon_crtc, ptr %44, i32 0, i32 30
  %45 = ptrtoint ptr %bpc8.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %bpc8.i, align 4
  br label %if.end9.i

if.end9.i:                                        ; preds = %if.then3.i, %if.end.i67.if.end9.i_crit_edge
  %bpc.0.i = phi i32 [ %46, %if.then3.i ], [ 8, %if.end.i67.if.end9.i_crit_edge ]
  %47 = ptrtoint ptr %audio.i45 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %audio.i45, align 4
  %tobool10.not.i = icmp eq ptr %48, null
  br i1 %tobool10.not.i, label %if.end9.i.radeon_hdmi_set_color_depth.exit_crit_edge, label %land.lhs.true.i69

if.end9.i.radeon_hdmi_set_color_depth.exit_crit_edge: ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %radeon_hdmi_set_color_depth.exit

land.lhs.true.i69:                                ; preds = %if.end9.i
  %set_color_depth.i = getelementptr inbounds %struct.radeon_audio_funcs, ptr %48, i32 0, i32 8
  %49 = ptrtoint ptr %set_color_depth.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %set_color_depth.i, align 4
  %tobool12.not.i = icmp eq ptr %50, null
  br i1 %tobool12.not.i, label %land.lhs.true.i69.radeon_hdmi_set_color_depth.exit_crit_edge, label %if.then13.i

land.lhs.true.i69.radeon_hdmi_set_color_depth.exit_crit_edge: ; preds = %land.lhs.true.i69
  call void @__sanitizer_cov_trace_pc() #9
  br label %radeon_hdmi_set_color_depth.exit

if.then13.i:                                      ; preds = %land.lhs.true.i69
  call void @__sanitizer_cov_trace_pc() #9
  %offset.i70 = getelementptr inbounds %struct.radeon_afmt, ptr %42, i32 0, i32 1
  %51 = ptrtoint ptr %offset.i70 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %offset.i70, align 4
  tail call void %50(ptr noundef %encoder, i32 noundef %52, i32 noundef %bpc.0.i) #7
  br label %radeon_hdmi_set_color_depth.exit

radeon_hdmi_set_color_depth.exit:                 ; preds = %if.then13.i, %land.lhs.true.i69.radeon_hdmi_set_color_depth.exit_crit_edge, %if.end9.i.radeon_hdmi_set_color_depth.exit_crit_edge, %lor.lhs.false.i65.radeon_hdmi_set_color_depth.exit_crit_edge, %radeon_audio_set_vbi_packet.exit.radeon_hdmi_set_color_depth.exit_crit_edge, %radeon_audio_set_dto.exit.radeon_hdmi_set_color_depth.exit_crit_edge
  %53 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %mode, align 4
  %55 = zext i32 %54 to i64
  call void @__sanitizer_cov_trace_switch(i64 %55, ptr @__sancov_gen_cov_switch_values.12)
  switch i32 %54, label %for.cond.9.i.i [
    i32 25175, label %radeon_hdmi_set_color_depth.exit.radeon_audio_acr.exit.i_crit_edge
    i32 25200, label %cleanup.fold.split.i.i
    i32 27000, label %cleanup.fold.split53.i.i
    i32 27027, label %cleanup.fold.split54.i.i
    i32 54000, label %cleanup.fold.split55.i.i
    i32 54054, label %cleanup.fold.split56.i.i
    i32 74176, label %cleanup.fold.split57.i.i
    i32 74250, label %cleanup.fold.split58.i.i
    i32 148352, label %cleanup.fold.split59.i.i
    i32 148500, label %cleanup.fold.split60.i.i
  ]

radeon_hdmi_set_color_depth.exit.radeon_audio_acr.exit.i_crit_edge: ; preds = %radeon_hdmi_set_color_depth.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %radeon_audio_acr.exit.i

for.cond.9.i.i:                                   ; preds = %radeon_hdmi_set_color_depth.exit
  %mul2.i.i.i = mul i32 %54, 1000
  %call.i.i.i = tail call i32 @gcd(i32 noundef 4096000, i32 noundef %mul2.i.i.i) #10
  %div3.i.i.i = udiv i32 4096000, %call.i.i.i
  %add.i.i.i = add nuw nsw i32 %div3.i.i.i, 4095
  %div7.i48.i.i = udiv i32 %add.i.i.i, %div3.i.i.i
  %mul8.i.i.i = mul i32 %div7.i48.i.i, %div3.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2730, i32 %mul8.i.i.i)
  %cmp.i.i.i = icmp slt i32 %mul8.i.i.i, 2730
  br i1 %cmp.i.i.i, label %for.cond.9.i.i.radeon_audio_calc_cts.exit.sink.split.i.i_crit_edge, label %if.end.i.i.i

for.cond.9.i.i.radeon_audio_calc_cts.exit.sink.split.i.i_crit_edge: ; preds = %for.cond.9.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %radeon_audio_calc_cts.exit.sink.split.i.i

if.end.i.i.i:                                     ; preds = %for.cond.9.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 13653, i32 %mul8.i.i.i)
  %cmp15.i.i.i = icmp ugt i32 %mul8.i.i.i, 13653
  br i1 %cmp15.i.i.i, label %if.end.i.i.i.radeon_audio_calc_cts.exit.sink.split.i.i_crit_edge, label %if.end.i.i.i.radeon_audio_calc_cts.exit.i.i_crit_edge

if.end.i.i.i.radeon_audio_calc_cts.exit.i.i_crit_edge: ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %radeon_audio_calc_cts.exit.i.i

if.end.i.i.i.radeon_audio_calc_cts.exit.sink.split.i.i_crit_edge: ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %radeon_audio_calc_cts.exit.sink.split.i.i

radeon_audio_calc_cts.exit.sink.split.i.i:        ; preds = %if.end.i.i.i.radeon_audio_calc_cts.exit.sink.split.i.i_crit_edge, %for.cond.9.i.i.radeon_audio_calc_cts.exit.sink.split.i.i_crit_edge
  %.str.2.sink.i.i = phi ptr [ @.str.2, %for.cond.9.i.i.radeon_audio_calc_cts.exit.sink.split.i.i_crit_edge ], [ @.str.6, %if.end.i.i.i.radeon_audio_calc_cts.exit.sink.split.i.i_crit_edge ]
  %call12.i.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.2.sink.i.i) #11
  br label %radeon_audio_calc_cts.exit.i.i

radeon_audio_calc_cts.exit.i.i:                   ; preds = %radeon_audio_calc_cts.exit.sink.split.i.i, %if.end.i.i.i.radeon_audio_calc_cts.exit.i.i_crit_edge
  %div4.i.i.i = udiv i32 %mul2.i.i.i, %call.i.i.i
  %mul9.i.i.i = mul i32 %div4.i.i.i, %div7.i48.i.i
  store i32 %mul8.i.i.i, ptr getelementptr inbounds (%struct.radeon_hdmi_acr, ptr @radeon_audio_acr.res, i32 0, i32 1), align 4
  store i32 %mul9.i.i.i, ptr getelementptr inbounds (%struct.radeon_hdmi_acr, ptr @radeon_audio_acr.res, i32 0, i32 2), align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.8, i32 noundef %mul8.i.i.i, i32 noundef %mul9.i.i.i, i32 noundef 32000) #7
  %call.i14.i.i = tail call i32 @gcd(i32 noundef 5644800, i32 noundef %mul2.i.i.i) #10
  %div3.i15.i.i = udiv i32 5644800, %call.i14.i.i
  %add.i16.i.i = add nuw nsw i32 %div3.i15.i.i, 5643
  %div7.i1749.i.i = udiv i32 %add.i16.i.i, %div3.i15.i.i
  %mul8.i18.i.i = mul i32 %div7.i1749.i.i, %div3.i15.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 3763, i32 %mul8.i18.i.i)
  %cmp.i19.i.i = icmp slt i32 %mul8.i18.i.i, 3763
  br i1 %cmp.i19.i.i, label %radeon_audio_calc_cts.exit.i.i.radeon_audio_calc_cts.exit28.sink.split.i.i_crit_edge, label %if.end.i23.i.i

radeon_audio_calc_cts.exit.i.i.radeon_audio_calc_cts.exit28.sink.split.i.i_crit_edge: ; preds = %radeon_audio_calc_cts.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %radeon_audio_calc_cts.exit28.sink.split.i.i

if.end.i23.i.i:                                   ; preds = %radeon_audio_calc_cts.exit.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 18816, i32 %mul8.i18.i.i)
  %cmp15.i22.i.i = icmp ugt i32 %mul8.i18.i.i, 18816
  br i1 %cmp15.i22.i.i, label %if.end.i23.i.i.radeon_audio_calc_cts.exit28.sink.split.i.i_crit_edge, label %if.end.i23.i.i.radeon_audio_calc_cts.exit28.i.i_crit_edge

if.end.i23.i.i.radeon_audio_calc_cts.exit28.i.i_crit_edge: ; preds = %if.end.i23.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %radeon_audio_calc_cts.exit28.i.i

if.end.i23.i.i.radeon_audio_calc_cts.exit28.sink.split.i.i_crit_edge: ; preds = %if.end.i23.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %radeon_audio_calc_cts.exit28.sink.split.i.i

radeon_audio_calc_cts.exit28.sink.split.i.i:      ; preds = %if.end.i23.i.i.radeon_audio_calc_cts.exit28.sink.split.i.i_crit_edge, %radeon_audio_calc_cts.exit.i.i.radeon_audio_calc_cts.exit28.sink.split.i.i_crit_edge
  %.str.2.sink61.i.i = phi ptr [ @.str.2, %radeon_audio_calc_cts.exit.i.i.radeon_audio_calc_cts.exit28.sink.split.i.i_crit_edge ], [ @.str.6, %if.end.i23.i.i.radeon_audio_calc_cts.exit28.sink.split.i.i_crit_edge ]
  %call12.i20.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.2.sink61.i.i) #11
  br label %radeon_audio_calc_cts.exit28.i.i

radeon_audio_calc_cts.exit28.i.i:                 ; preds = %radeon_audio_calc_cts.exit28.sink.split.i.i, %if.end.i23.i.i.radeon_audio_calc_cts.exit28.i.i_crit_edge
  %div4.i26.i.i = udiv i32 %mul2.i.i.i, %call.i14.i.i
  %mul9.i27.i.i = mul i32 %div4.i26.i.i, %div7.i1749.i.i
  store i32 %mul8.i18.i.i, ptr getelementptr inbounds (%struct.radeon_hdmi_acr, ptr @radeon_audio_acr.res, i32 0, i32 3), align 4
  store i32 %mul9.i27.i.i, ptr getelementptr inbounds (%struct.radeon_hdmi_acr, ptr @radeon_audio_acr.res, i32 0, i32 4), align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.8, i32 noundef %mul8.i18.i.i, i32 noundef %mul9.i27.i.i, i32 noundef 44100) #7
  %call.i30.i.i = tail call i32 @gcd(i32 noundef 6144000, i32 noundef %mul2.i.i.i) #10
  %div3.i31.i.i = udiv i32 6144000, %call.i30.i.i
  %add.i32.i.i = add nuw nsw i32 %div3.i31.i.i, 6143
  %div7.i3350.i.i = udiv i32 %add.i32.i.i, %div3.i31.i.i
  %mul8.i34.i.i = mul i32 %div7.i3350.i.i, %div3.i31.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %mul8.i34.i.i)
  %cmp.i35.i.i = icmp slt i32 %mul8.i34.i.i, 4096
  br i1 %cmp.i35.i.i, label %radeon_audio_calc_cts.exit28.i.i.radeon_audio_calc_cts.exit44.sink.split.i.i_crit_edge, label %if.end.i39.i.i

radeon_audio_calc_cts.exit28.i.i.radeon_audio_calc_cts.exit44.sink.split.i.i_crit_edge: ; preds = %radeon_audio_calc_cts.exit28.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %radeon_audio_calc_cts.exit44.sink.split.i.i

if.end.i39.i.i:                                   ; preds = %radeon_audio_calc_cts.exit28.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 20480, i32 %mul8.i34.i.i)
  %cmp15.i38.i.i = icmp ugt i32 %mul8.i34.i.i, 20480
  br i1 %cmp15.i38.i.i, label %if.end.i39.i.i.radeon_audio_calc_cts.exit44.sink.split.i.i_crit_edge, label %if.end.i39.i.i.radeon_audio_calc_cts.exit44.i.i_crit_edge

if.end.i39.i.i.radeon_audio_calc_cts.exit44.i.i_crit_edge: ; preds = %if.end.i39.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %radeon_audio_calc_cts.exit44.i.i

if.end.i39.i.i.radeon_audio_calc_cts.exit44.sink.split.i.i_crit_edge: ; preds = %if.end.i39.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %radeon_audio_calc_cts.exit44.sink.split.i.i

radeon_audio_calc_cts.exit44.sink.split.i.i:      ; preds = %if.end.i39.i.i.radeon_audio_calc_cts.exit44.sink.split.i.i_crit_edge, %radeon_audio_calc_cts.exit28.i.i.radeon_audio_calc_cts.exit44.sink.split.i.i_crit_edge
  %.str.2.sink62.i.i = phi ptr [ @.str.2, %radeon_audio_calc_cts.exit28.i.i.radeon_audio_calc_cts.exit44.sink.split.i.i_crit_edge ], [ @.str.6, %if.end.i39.i.i.radeon_audio_calc_cts.exit44.sink.split.i.i_crit_edge ]
  %call12.i36.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.2.sink62.i.i) #11
  br label %radeon_audio_calc_cts.exit44.i.i

radeon_audio_calc_cts.exit44.i.i:                 ; preds = %radeon_audio_calc_cts.exit44.sink.split.i.i, %if.end.i39.i.i.radeon_audio_calc_cts.exit44.i.i_crit_edge
  %div4.i42.i.i = udiv i32 %mul2.i.i.i, %call.i30.i.i
  %mul9.i43.i.i = mul i32 %div4.i42.i.i, %div7.i3350.i.i
  store i32 %mul8.i34.i.i, ptr getelementptr inbounds (%struct.radeon_hdmi_acr, ptr @radeon_audio_acr.res, i32 0, i32 5), align 4
  store i32 %mul9.i43.i.i, ptr getelementptr inbounds (%struct.radeon_hdmi_acr, ptr @radeon_audio_acr.res, i32 0, i32 6), align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.8, i32 noundef %mul8.i34.i.i, i32 noundef %mul9.i43.i.i, i32 noundef 48000) #7
  br label %radeon_audio_acr.exit.i

cleanup.fold.split.i.i:                           ; preds = %radeon_hdmi_set_color_depth.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %radeon_audio_acr.exit.i

cleanup.fold.split53.i.i:                         ; preds = %radeon_hdmi_set_color_depth.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %radeon_audio_acr.exit.i

cleanup.fold.split54.i.i:                         ; preds = %radeon_hdmi_set_color_depth.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %radeon_audio_acr.exit.i

cleanup.fold.split55.i.i:                         ; preds = %radeon_hdmi_set_color_depth.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %radeon_audio_acr.exit.i

cleanup.fold.split56.i.i:                         ; preds = %radeon_hdmi_set_color_depth.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %radeon_audio_acr.exit.i

cleanup.fold.split57.i.i:                         ; preds = %radeon_hdmi_set_color_depth.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %radeon_audio_acr.exit.i

cleanup.fold.split58.i.i:                         ; preds = %radeon_hdmi_set_color_depth.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %radeon_audio_acr.exit.i

cleanup.fold.split59.i.i:                         ; preds = %radeon_hdmi_set_color_depth.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %radeon_audio_acr.exit.i

cleanup.fold.split60.i.i:                         ; preds = %radeon_hdmi_set_color_depth.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %radeon_audio_acr.exit.i

radeon_audio_acr.exit.i:                          ; preds = %cleanup.fold.split60.i.i, %cleanup.fold.split59.i.i, %cleanup.fold.split58.i.i, %cleanup.fold.split57.i.i, %cleanup.fold.split56.i.i, %cleanup.fold.split55.i.i, %cleanup.fold.split54.i.i, %cleanup.fold.split53.i.i, %cleanup.fold.split.i.i, %radeon_audio_calc_cts.exit44.i.i, %radeon_hdmi_set_color_depth.exit.radeon_audio_acr.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ @radeon_audio_acr.res, %radeon_audio_calc_cts.exit44.i.i ], [ @radeon_audio_acr.hdmi_predefined_acr, %radeon_hdmi_set_color_depth.exit.radeon_audio_acr.exit.i_crit_edge ], [ getelementptr inbounds ([10 x %struct.radeon_hdmi_acr], ptr @radeon_audio_acr.hdmi_predefined_acr, i32 0, i32 1), %cleanup.fold.split.i.i ], [ getelementptr inbounds ([10 x %struct.radeon_hdmi_acr], ptr @radeon_audio_acr.hdmi_predefined_acr, i32 0, i32 2), %cleanup.fold.split53.i.i ], [ getelementptr inbounds ([10 x %struct.radeon_hdmi_acr], ptr @radeon_audio_acr.hdmi_predefined_acr, i32 0, i32 3), %cleanup.fold.split54.i.i ], [ getelementptr inbounds ([10 x %struct.radeon_hdmi_acr], ptr @radeon_audio_acr.hdmi_predefined_acr, i32 0, i32 4), %cleanup.fold.split55.i.i ], [ getelementptr inbounds ([10 x %struct.radeon_hdmi_acr], ptr @radeon_audio_acr.hdmi_predefined_acr, i32 0, i32 5), %cleanup.fold.split56.i.i ], [ getelementptr inbounds ([10 x %struct.radeon_hdmi_acr], ptr @radeon_audio_acr.hdmi_predefined_acr, i32 0, i32 6), %cleanup.fold.split57.i.i ], [ getelementptr inbounds ([10 x %struct.radeon_hdmi_acr], ptr @radeon_audio_acr.hdmi_predefined_acr, i32 0, i32 7), %cleanup.fold.split58.i.i ], [ getelementptr inbounds ([10 x %struct.radeon_hdmi_acr], ptr @radeon_audio_acr.hdmi_predefined_acr, i32 0, i32 8), %cleanup.fold.split59.i.i ], [ getelementptr inbounds ([10 x %struct.radeon_hdmi_acr], ptr @radeon_audio_acr.hdmi_predefined_acr, i32 0, i32 9), %cleanup.fold.split60.i.i ]
  %56 = ptrtoint ptr %enc_priv to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %enc_priv, align 4
  %tobool.not.i72 = icmp eq ptr %57, null
  br i1 %tobool.not.i72, label %radeon_audio_acr.exit.i.radeon_audio_set_audio_packet.exit_crit_edge, label %lor.lhs.false.i75

radeon_audio_acr.exit.i.radeon_audio_set_audio_packet.exit_crit_edge: ; preds = %radeon_audio_acr.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %radeon_audio_set_audio_packet.exit

lor.lhs.false.i75:                                ; preds = %radeon_audio_acr.exit.i
  %afmt.i73 = getelementptr inbounds %struct.radeon_encoder_atom_dig, ptr %57, i32 0, i32 11
  %58 = ptrtoint ptr %afmt.i73 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %afmt.i73, align 4
  %tobool1.not.i74 = icmp eq ptr %59, null
  br i1 %tobool1.not.i74, label %lor.lhs.false.i75.radeon_audio_update_acr.exit_crit_edge, label %if.end.i78

lor.lhs.false.i75.radeon_audio_update_acr.exit_crit_edge: ; preds = %lor.lhs.false.i75
  call void @__sanitizer_cov_trace_pc() #9
  br label %radeon_audio_update_acr.exit

if.end.i78:                                       ; preds = %lor.lhs.false.i75
  %60 = ptrtoint ptr %audio.i45 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %audio.i45, align 4
  %tobool2.not.i77 = icmp eq ptr %61, null
  br i1 %tobool2.not.i77, label %if.end.i78.radeon_audio_update_acr.exit_crit_edge, label %land.lhs.true.i80

if.end.i78.radeon_audio_update_acr.exit_crit_edge: ; preds = %if.end.i78
  call void @__sanitizer_cov_trace_pc() #9
  br label %radeon_audio_update_acr.exit

land.lhs.true.i80:                                ; preds = %if.end.i78
  %update_acr.i = getelementptr inbounds %struct.radeon_audio_funcs, ptr %61, i32 0, i32 6
  %62 = ptrtoint ptr %update_acr.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %update_acr.i, align 4
  %tobool4.not.i79 = icmp eq ptr %63, null
  br i1 %tobool4.not.i79, label %land.lhs.true.i80.radeon_audio_update_acr.exit_crit_edge, label %if.then5.i82

land.lhs.true.i80.radeon_audio_update_acr.exit_crit_edge: ; preds = %land.lhs.true.i80
  call void @__sanitizer_cov_trace_pc() #9
  br label %radeon_audio_update_acr.exit

if.then5.i82:                                     ; preds = %land.lhs.true.i80
  call void @__sanitizer_cov_trace_pc() #9
  %offset.i81 = getelementptr inbounds %struct.radeon_afmt, ptr %59, i32 0, i32 1
  %64 = ptrtoint ptr %offset.i81 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %offset.i81, align 4
  tail call void %63(ptr noundef %encoder, i32 noundef %65, ptr noundef %retval.0.i.i) #7
  br label %radeon_audio_update_acr.exit

radeon_audio_update_acr.exit:                     ; preds = %if.then5.i82, %land.lhs.true.i80.radeon_audio_update_acr.exit_crit_edge, %if.end.i78.radeon_audio_update_acr.exit_crit_edge, %lor.lhs.false.i75.radeon_audio_update_acr.exit_crit_edge
  %66 = ptrtoint ptr %enc_priv to i32
  call void @__asan_load4_noabort(i32 %66)
  %.pr136 = load ptr, ptr %enc_priv, align 4
  %tobool.not.i84 = icmp eq ptr %.pr136, null
  br i1 %tobool.not.i84, label %radeon_audio_update_acr.exit.radeon_audio_set_audio_packet.exit_crit_edge, label %lor.lhs.false.i87

radeon_audio_update_acr.exit.radeon_audio_set_audio_packet.exit_crit_edge: ; preds = %radeon_audio_update_acr.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %radeon_audio_set_audio_packet.exit

lor.lhs.false.i87:                                ; preds = %radeon_audio_update_acr.exit
  %afmt.i85 = getelementptr inbounds %struct.radeon_encoder_atom_dig, ptr %.pr136, i32 0, i32 11
  %67 = ptrtoint ptr %afmt.i85 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %afmt.i85, align 4
  %tobool1.not.i86 = icmp eq ptr %68, null
  br i1 %tobool1.not.i86, label %lor.lhs.false.i87.radeon_audio_set_audio_packet.exit_crit_edge, label %if.end.i90

lor.lhs.false.i87.radeon_audio_set_audio_packet.exit_crit_edge: ; preds = %lor.lhs.false.i87
  call void @__sanitizer_cov_trace_pc() #9
  br label %radeon_audio_set_audio_packet.exit

if.end.i90:                                       ; preds = %lor.lhs.false.i87
  %69 = ptrtoint ptr %audio.i45 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %audio.i45, align 4
  %tobool2.not.i89 = icmp eq ptr %70, null
  br i1 %tobool2.not.i89, label %if.end.i90.radeon_audio_select_pin.exit_crit_edge, label %land.lhs.true.i92

if.end.i90.radeon_audio_select_pin.exit_crit_edge: ; preds = %if.end.i90
  call void @__sanitizer_cov_trace_pc() #9
  br label %radeon_audio_select_pin.exit

land.lhs.true.i92:                                ; preds = %if.end.i90
  %set_audio_packet.i = getelementptr inbounds %struct.radeon_audio_funcs, ptr %70, i32 0, i32 10
  %71 = ptrtoint ptr %set_audio_packet.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %set_audio_packet.i, align 4
  %tobool4.not.i91 = icmp eq ptr %72, null
  br i1 %tobool4.not.i91, label %land.lhs.true.i92.radeon_audio_set_audio_packet.exit_crit_edge, label %if.then5.i94

land.lhs.true.i92.radeon_audio_set_audio_packet.exit_crit_edge: ; preds = %land.lhs.true.i92
  call void @__sanitizer_cov_trace_pc() #9
  br label %radeon_audio_set_audio_packet.exit

if.then5.i94:                                     ; preds = %land.lhs.true.i92
  call void @__sanitizer_cov_trace_pc() #9
  %offset.i93 = getelementptr inbounds %struct.radeon_afmt, ptr %68, i32 0, i32 1
  %73 = ptrtoint ptr %offset.i93 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %offset.i93, align 4
  tail call void %72(ptr noundef %encoder, i32 noundef %74) #7
  br label %radeon_audio_set_audio_packet.exit

radeon_audio_set_audio_packet.exit:               ; preds = %if.then5.i94, %land.lhs.true.i92.radeon_audio_set_audio_packet.exit_crit_edge, %lor.lhs.false.i87.radeon_audio_set_audio_packet.exit_crit_edge, %radeon_audio_update_acr.exit.radeon_audio_set_audio_packet.exit_crit_edge, %radeon_audio_acr.exit.i.radeon_audio_set_audio_packet.exit_crit_edge
  %75 = ptrtoint ptr %audio.i45 to i32
  call void @__asan_load4_noabort(i32 %75)
  %.pr138 = load ptr, ptr %audio.i45, align 4
  %tobool.not.i96 = icmp eq ptr %.pr138, null
  br i1 %tobool.not.i96, label %radeon_audio_set_audio_packet.exit.radeon_audio_select_pin.exit_crit_edge, label %land.lhs.true.i98

radeon_audio_set_audio_packet.exit.radeon_audio_select_pin.exit_crit_edge: ; preds = %radeon_audio_set_audio_packet.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %radeon_audio_select_pin.exit

land.lhs.true.i98:                                ; preds = %radeon_audio_set_audio_packet.exit
  %76 = ptrtoint ptr %.pr138 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %.pr138, align 4
  %tobool2.not.i97 = icmp eq ptr %77, null
  br i1 %tobool2.not.i97, label %land.lhs.true.i98.radeon_audio_select_pin.exit_crit_edge, label %if.then.i99

land.lhs.true.i98.radeon_audio_select_pin.exit_crit_edge: ; preds = %land.lhs.true.i98
  call void @__sanitizer_cov_trace_pc() #9
  br label %radeon_audio_select_pin.exit

if.then.i99:                                      ; preds = %land.lhs.true.i98
  call void @__sanitizer_cov_trace_pc() #9
  tail call void %77(ptr noundef %encoder) #7
  br label %radeon_audio_select_pin.exit

radeon_audio_select_pin.exit:                     ; preds = %if.then.i99, %land.lhs.true.i98.radeon_audio_select_pin.exit_crit_edge, %radeon_audio_set_audio_packet.exit.radeon_audio_select_pin.exit_crit_edge, %if.end.i90.radeon_audio_select_pin.exit_crit_edge
  %call9 = tail call fastcc i32 @radeon_audio_set_avi_packet(ptr noundef %encoder, ptr noundef %mode)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %cmp = icmp slt i32 %call9, 0
  br i1 %cmp, label %radeon_audio_select_pin.exit.cleanup_crit_edge, label %if.end11

radeon_audio_select_pin.exit.cleanup_crit_edge:   ; preds = %radeon_audio_select_pin.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end11:                                         ; preds = %radeon_audio_select_pin.exit
  %78 = ptrtoint ptr %enc_priv to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %enc_priv, align 4
  %tobool.not.i102 = icmp eq ptr %79, null
  br i1 %tobool.not.i102, label %if.end11.cleanup_crit_edge, label %lor.lhs.false.i105

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false.i105:                               ; preds = %if.end11
  %afmt.i103 = getelementptr inbounds %struct.radeon_encoder_atom_dig, ptr %79, i32 0, i32 11
  %80 = ptrtoint ptr %afmt.i103 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %afmt.i103, align 4
  %tobool1.not.i104 = icmp eq ptr %81, null
  br i1 %tobool1.not.i104, label %lor.lhs.false.i105.cleanup_crit_edge, label %if.end.i108

lor.lhs.false.i105.cleanup_crit_edge:             ; preds = %lor.lhs.false.i105
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i108:                                      ; preds = %lor.lhs.false.i105
  %82 = ptrtoint ptr %audio.i45 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %audio.i45, align 4
  %tobool2.not.i107 = icmp eq ptr %83, null
  br i1 %tobool2.not.i107, label %if.end.i108.cleanup_crit_edge, label %land.lhs.true.i111

if.end.i108.cleanup_crit_edge:                    ; preds = %if.end.i108
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

land.lhs.true.i111:                               ; preds = %if.end.i108
  %set_mute.i109 = getelementptr inbounds %struct.radeon_audio_funcs, ptr %83, i32 0, i32 11
  %84 = ptrtoint ptr %set_mute.i109 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %set_mute.i109, align 4
  %tobool4.not.i110 = icmp eq ptr %85, null
  br i1 %tobool4.not.i110, label %land.lhs.true.i111.cleanup_crit_edge, label %if.then5.i113

land.lhs.true.i111.cleanup_crit_edge:             ; preds = %land.lhs.true.i111
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then5.i113:                                    ; preds = %land.lhs.true.i111
  call void @__sanitizer_cov_trace_pc() #9
  %offset.i112 = getelementptr inbounds %struct.radeon_afmt, ptr %81, i32 0, i32 1
  %86 = ptrtoint ptr %offset.i112 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %offset.i112, align 4
  tail call void %85(ptr noundef %encoder, i32 noundef %87, i1 noundef zeroext false) #7
  br label %cleanup

if.else:                                          ; preds = %if.end4
  br i1 %tobool.not.i, label %if.else.radeon_hdmi_set_color_depth.exit134_crit_edge, label %lor.lhs.false.i119

if.else.radeon_hdmi_set_color_depth.exit134_crit_edge: ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %radeon_hdmi_set_color_depth.exit134

lor.lhs.false.i119:                               ; preds = %if.else
  %afmt.i117 = getelementptr inbounds %struct.radeon_encoder_atom_dig, ptr %5, i32 0, i32 11
  %88 = ptrtoint ptr %afmt.i117 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %afmt.i117, align 4
  %tobool1.not.i118 = icmp eq ptr %89, null
  br i1 %tobool1.not.i118, label %lor.lhs.false.i119.radeon_hdmi_set_color_depth.exit134_crit_edge, label %if.end.i122

lor.lhs.false.i119.radeon_hdmi_set_color_depth.exit134_crit_edge: ; preds = %lor.lhs.false.i119
  call void @__sanitizer_cov_trace_pc() #9
  br label %radeon_hdmi_set_color_depth.exit134

if.end.i122:                                      ; preds = %lor.lhs.false.i119
  %crtc.i120 = getelementptr inbounds %struct.drm_encoder, ptr %encoder, i32 0, i32 8
  %90 = ptrtoint ptr %crtc.i120 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %crtc.i120, align 4
  %tobool2.not.i121 = icmp eq ptr %91, null
  br i1 %tobool2.not.i121, label %if.end.i122.if.end9.i128_crit_edge, label %if.then3.i124

if.end.i122.if.end9.i128_crit_edge:               ; preds = %if.end.i122
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9.i128

if.then3.i124:                                    ; preds = %if.end.i122
  call void @__sanitizer_cov_trace_pc() #9
  %bpc8.i123 = getelementptr inbounds %struct.radeon_crtc, ptr %91, i32 0, i32 30
  %92 = ptrtoint ptr %bpc8.i123 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %bpc8.i123, align 4
  br label %if.end9.i128

if.end9.i128:                                     ; preds = %if.then3.i124, %if.end.i122.if.end9.i128_crit_edge
  %bpc.0.i125 = phi i32 [ %93, %if.then3.i124 ], [ 8, %if.end.i122.if.end9.i128_crit_edge ]
  %audio.i126 = getelementptr inbounds %struct.radeon_encoder, ptr %encoder, i32 0, i32 16
  %94 = ptrtoint ptr %audio.i126 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %audio.i126, align 4
  %tobool10.not.i127 = icmp eq ptr %95, null
  br i1 %tobool10.not.i127, label %if.end9.i128.radeon_hdmi_set_color_depth.exit134_crit_edge, label %land.lhs.true.i131

if.end9.i128.radeon_hdmi_set_color_depth.exit134_crit_edge: ; preds = %if.end9.i128
  call void @__sanitizer_cov_trace_pc() #9
  br label %radeon_hdmi_set_color_depth.exit134

land.lhs.true.i131:                               ; preds = %if.end9.i128
  %set_color_depth.i129 = getelementptr inbounds %struct.radeon_audio_funcs, ptr %95, i32 0, i32 8
  %96 = ptrtoint ptr %set_color_depth.i129 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %set_color_depth.i129, align 4
  %tobool12.not.i130 = icmp eq ptr %97, null
  br i1 %tobool12.not.i130, label %land.lhs.true.i131.radeon_hdmi_set_color_depth.exit134_crit_edge, label %if.then13.i133

land.lhs.true.i131.radeon_hdmi_set_color_depth.exit134_crit_edge: ; preds = %land.lhs.true.i131
  call void @__sanitizer_cov_trace_pc() #9
  br label %radeon_hdmi_set_color_depth.exit134

if.then13.i133:                                   ; preds = %land.lhs.true.i131
  call void @__sanitizer_cov_trace_pc() #9
  %offset.i132 = getelementptr inbounds %struct.radeon_afmt, ptr %89, i32 0, i32 1
  %98 = ptrtoint ptr %offset.i132 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %offset.i132, align 4
  tail call void %97(ptr noundef %encoder, i32 noundef %99, i32 noundef %bpc.0.i125) #7
  br label %radeon_hdmi_set_color_depth.exit134

radeon_hdmi_set_color_depth.exit134:              ; preds = %if.then13.i133, %land.lhs.true.i131.radeon_hdmi_set_color_depth.exit134_crit_edge, %if.end9.i128.radeon_hdmi_set_color_depth.exit134_crit_edge, %lor.lhs.false.i119.radeon_hdmi_set_color_depth.exit134_crit_edge, %if.else.radeon_hdmi_set_color_depth.exit134_crit_edge
  %call12 = tail call fastcc i32 @radeon_audio_set_avi_packet(ptr noundef %encoder, ptr noundef %mode)
  br label %cleanup

cleanup:                                          ; preds = %radeon_hdmi_set_color_depth.exit134, %if.then5.i113, %land.lhs.true.i111.cleanup_crit_edge, %if.end.i108.cleanup_crit_edge, %lor.lhs.false.i105.cleanup_crit_edge, %if.end11.cleanup_crit_edge, %radeon_audio_select_pin.exit.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @evergreen_hdmi_enable(ptr noundef, i1 noundef zeroext) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @radeon_get_connector_for_encoder(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @radeon_audio_write_speaker_allocation(ptr noundef %encoder) unnamed_addr #0 align 64 {
entry:
  %sadb = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @radeon_get_connector_for_encoder(ptr noundef %encoder) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sadb) #7
  %0 = ptrtoint ptr %sadb to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %sadb, align 4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call ptr @radeon_connector_edid(ptr noundef nonnull %call) #7
  %call2 = call i32 @drm_edid_to_speaker_allocation(ptr noundef %call1, ptr noundef nonnull %sadb) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %if.then3, label %if.end.if.end4_crit_edge

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str, i32 noundef %call2) #7
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %if.end.if.end4_crit_edge
  %sad_count.0 = phi i32 [ 0, %if.then3 ], [ %call2, %if.end.if.end4_crit_edge ]
  %audio = getelementptr inbounds %struct.radeon_encoder, ptr %encoder, i32 0, i32 16
  %1 = ptrtoint ptr %audio to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %audio, align 4
  %tobool5.not = icmp eq ptr %2, null
  br i1 %tobool5.not, label %if.end4.if.end11_crit_edge, label %land.lhs.true

if.end4.if.end11_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11

land.lhs.true:                                    ; preds = %if.end4
  %write_speaker_allocation = getelementptr inbounds %struct.radeon_audio_funcs, ptr %2, i32 0, i32 4
  %3 = ptrtoint ptr %write_speaker_allocation to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %write_speaker_allocation, align 4
  %tobool7.not = icmp eq ptr %4, null
  br i1 %tobool7.not, label %land.lhs.true.if.end11_crit_edge, label %if.then8

land.lhs.true.if.end11_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11

if.then8:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %5 = ptrtoint ptr %sadb to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %sadb, align 4
  call void %4(ptr noundef %encoder, ptr noundef %6, i32 noundef %sad_count.0) #7
  br label %if.end11

if.end11:                                         ; preds = %if.then8, %land.lhs.true.if.end11_crit_edge, %if.end4.if.end11_crit_edge
  %7 = ptrtoint ptr %sadb to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %sadb, align 4
  call void @kfree(ptr noundef %8) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sadb) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @radeon_audio_write_sad_regs(ptr noundef %encoder) unnamed_addr #0 align 64 {
entry:
  %sads = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @radeon_get_connector_for_encoder(ptr noundef %encoder) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sads) #7
  %0 = ptrtoint ptr %sads to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %sads, align 4, !annotation !58
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call ptr @radeon_connector_edid(ptr noundef nonnull %call) #7
  %call2 = call i32 @drm_edid_to_sad(ptr noundef %call1, ptr noundef nonnull %sads) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %if.end4.thread, label %if.end4

if.end4.thread:                                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.1, i32 noundef %call2) #7
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp5 = icmp eq i32 %call2, 0
  br i1 %cmp5, label %if.end4.cleanup_crit_edge, label %do.body

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body:                                          ; preds = %if.end4
  %1 = ptrtoint ptr %sads to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %sads, align 4
  %tobool8.not = icmp eq ptr %2, null
  br i1 %tobool8.not, label %do.body13, label %do.end19, !prof !59

do.body13:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/radeon/radeon_audio.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 312, 0\0A.popsection", ""() #7, !srcloc !60
  unreachable

do.end19:                                         ; preds = %do.body
  %audio = getelementptr inbounds %struct.radeon_encoder, ptr %encoder, i32 0, i32 16
  %3 = ptrtoint ptr %audio to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %audio, align 4
  %tobool20.not = icmp eq ptr %4, null
  br i1 %tobool20.not, label %do.end19.if.end26_crit_edge, label %land.lhs.true

do.end19.if.end26_crit_edge:                      ; preds = %do.end19
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end26

land.lhs.true:                                    ; preds = %do.end19
  %write_sad_regs = getelementptr inbounds %struct.radeon_audio_funcs, ptr %4, i32 0, i32 3
  %5 = ptrtoint ptr %write_sad_regs to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %write_sad_regs, align 4
  %tobool22.not = icmp eq ptr %6, null
  br i1 %tobool22.not, label %land.lhs.true.if.end26_crit_edge, label %if.then23

land.lhs.true.if.end26_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end26

if.then23:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  call void %6(ptr noundef %encoder, ptr noundef nonnull %2, i32 noundef %call2) #7
  br label %if.end26

if.end26:                                         ; preds = %if.then23, %land.lhs.true.if.end26_crit_edge, %do.end19.if.end26_crit_edge
  %7 = ptrtoint ptr %sads to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %sads, align 4
  call void @kfree(ptr noundef %8) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end26, %if.end4.cleanup_crit_edge, %if.end4.thread, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sads) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @radeon_audio_set_avi_packet(ptr noundef %encoder, ptr noundef %mode) unnamed_addr #0 align 64 {
entry:
  %buffer = alloca [17 x i8], align 1
  %frame = alloca %struct.hdmi_avi_infoframe, align 4
  call void @__sanitizer_cov_trace_pc() #9
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
  %call = tail call ptr @radeon_get_connector_for_encoder(ptr noundef %encoder) #7
  call void @llvm.lifetime.start.p0(i64 17, ptr nonnull %buffer) #7
  %6 = call ptr @memset(ptr %buffer, i32 255, i32 17)
  call void @llvm.lifetime.start.p0(i64 68, ptr nonnull %frame) #7
  %7 = call ptr @memset(ptr %frame, i32 255, i32 68)
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = call i32 @drm_hdmi_avi_infoframe_from_display_mode(ptr noundef nonnull %frame, ptr noundef nonnull %call, ptr noundef %mode) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.9, i32 noundef %call1) #7
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %output_csc = getelementptr inbounds %struct.radeon_encoder, ptr %encoder, i32 0, i32 17
  %8 = ptrtoint ptr %output_csc to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %output_csc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp4.not = icmp eq i32 %9, 0
  br i1 %cmp4.not, label %if.end3.if.end8_crit_edge, label %if.then5

if.end3.if.end8_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8

if.then5:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %9)
  %cmp7 = icmp eq i32 %9, 1
  %cond = select i1 %cmp7, i32 1, i32 2
  call void @drm_hdmi_avi_infoframe_quant_range(ptr noundef nonnull %frame, ptr noundef nonnull %call, ptr noundef %mode, i32 noundef %cond) #7
  br label %if.end8

if.end8:                                          ; preds = %if.then5, %if.end3.if.end8_crit_edge
  %call9 = call i32 @hdmi_avi_infoframe_pack(ptr noundef nonnull %frame, ptr noundef nonnull %buffer, i32 noundef 17) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %cmp10 = icmp slt i32 %call9, 0
  br i1 %cmp10, label %if.then11, label %if.end12

if.then11:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.10, i32 noundef %call9) #7
  br label %cleanup

if.end12:                                         ; preds = %if.end8
  %tobool13.not = icmp eq ptr %5, null
  br i1 %tobool13.not, label %if.end12.cleanup_crit_edge, label %land.lhs.true

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

land.lhs.true:                                    ; preds = %if.end12
  %afmt = getelementptr inbounds %struct.radeon_encoder_atom_dig, ptr %5, i32 0, i32 11
  %10 = ptrtoint ptr %afmt to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %afmt, align 4
  %tobool14.not = icmp eq ptr %11, null
  br i1 %tobool14.not, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true15

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

land.lhs.true15:                                  ; preds = %land.lhs.true
  %audio = getelementptr inbounds %struct.radeon_encoder, ptr %encoder, i32 0, i32 16
  %12 = ptrtoint ptr %audio to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %audio, align 4
  %tobool16.not = icmp eq ptr %13, null
  br i1 %tobool16.not, label %land.lhs.true15.cleanup_crit_edge, label %land.lhs.true17

land.lhs.true15.cleanup_crit_edge:                ; preds = %land.lhs.true15
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

land.lhs.true17:                                  ; preds = %land.lhs.true15
  %set_avi_packet = getelementptr inbounds %struct.radeon_audio_funcs, ptr %13, i32 0, i32 9
  %14 = ptrtoint ptr %set_avi_packet to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %set_avi_packet, align 4
  %tobool19.not = icmp eq ptr %15, null
  br i1 %tobool19.not, label %land.lhs.true17.cleanup_crit_edge, label %if.then20

land.lhs.true17.cleanup_crit_edge:                ; preds = %land.lhs.true17
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then20:                                        ; preds = %land.lhs.true17
  call void @__sanitizer_cov_trace_pc() #9
  %offset = getelementptr inbounds %struct.radeon_afmt, ptr %11, i32 0, i32 1
  %16 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %offset, align 4
  call void %15(ptr noundef %3, i32 noundef %17, ptr noundef nonnull %buffer, i32 noundef 17) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then20, %land.lhs.true17.cleanup_crit_edge, %land.lhs.true15.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %if.end12.cleanup_crit_edge, %if.then11, %if.then2, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.then2 ], [ %call9, %if.then11 ], [ -22, %entry.cleanup_crit_edge ], [ 0, %if.then20 ], [ 0, %land.lhs.true17.cleanup_crit_edge ], [ 0, %land.lhs.true15.cleanup_crit_edge ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ 0, %if.end12.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 68, ptr nonnull %frame) #7
  call void @llvm.lifetime.end.p0(i64 17, ptr nonnull %buffer) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_edid_to_speaker_allocation(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_edid_to_sad(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_err(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn
declare dso_local i32 @gcd(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_hdmi_avi_infoframe_from_display_mode(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_hdmi_avi_infoframe_quant_range(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hdmi_avi_infoframe_pack(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dce6_afmt_dp_write_speaker_allocation(ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dce6_dp_audio_set_dto(ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @radeon_audio_dp_mode_set(ptr noundef %encoder, ptr noundef %mode) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
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
  %call = tail call ptr @radeon_get_connector_for_encoder(ptr noundef %encoder) #7
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %afmt = getelementptr inbounds %struct.radeon_encoder_atom_dig, ptr %5, i32 0, i32 11
  %6 = ptrtoint ptr %afmt to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %afmt, align 4
  %tobool2.not = icmp eq ptr %7, null
  %tobool3.not = icmp eq ptr %call, null
  %or.cond = select i1 %tobool2.not, i1 true, i1 %tobool3.not
  br i1 %or.cond, label %lor.lhs.false.cleanup_crit_edge, label %if.end5

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end5:                                          ; preds = %lor.lhs.false
  %call6 = tail call ptr @radeon_connector_edid(ptr noundef nonnull %call) #7
  %call7 = tail call zeroext i1 @drm_detect_monitor_audio(ptr noundef %call6) #7
  br i1 %call7, label %if.then8, label %if.end5.cleanup_crit_edge

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then8:                                         ; preds = %if.end5
  tail call fastcc void @radeon_audio_write_speaker_allocation(ptr noundef %encoder)
  tail call fastcc void @radeon_audio_write_sad_regs(ptr noundef %encoder)
  %call.i = tail call ptr @radeon_get_connector_for_encoder(ptr noundef %encoder) #7
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.then8.radeon_audio_write_latency_fields.exit_crit_edge, label %if.end.i

if.then8.radeon_audio_write_latency_fields.exit_crit_edge: ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #9
  br label %radeon_audio_write_latency_fields.exit

if.end.i:                                         ; preds = %if.then8
  %audio.i = getelementptr inbounds %struct.radeon_encoder, ptr %encoder, i32 0, i32 16
  %8 = ptrtoint ptr %audio.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %audio.i, align 4
  %tobool1.not.i = icmp eq ptr %9, null
  br i1 %tobool1.not.i, label %if.end.i.radeon_audio_write_latency_fields.exit_crit_edge, label %land.lhs.true.i

if.end.i.radeon_audio_write_latency_fields.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %radeon_audio_write_latency_fields.exit

land.lhs.true.i:                                  ; preds = %if.end.i
  %write_latency_fields.i = getelementptr inbounds %struct.radeon_audio_funcs, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %write_latency_fields.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %write_latency_fields.i, align 4
  %tobool3.not.i = icmp eq ptr %11, null
  br i1 %tobool3.not.i, label %land.lhs.true.i.radeon_audio_write_latency_fields.exit_crit_edge, label %if.then4.i

land.lhs.true.i.radeon_audio_write_latency_fields.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %radeon_audio_write_latency_fields.exit

if.then4.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void %11(ptr noundef %encoder, ptr noundef nonnull %call.i, ptr noundef %mode) #7
  br label %radeon_audio_write_latency_fields.exit

radeon_audio_write_latency_fields.exit:           ; preds = %if.then4.i, %land.lhs.true.i.radeon_audio_write_latency_fields.exit_crit_edge, %if.end.i.radeon_audio_write_latency_fields.exit_crit_edge, %if.then8.radeon_audio_write_latency_fields.exit_crit_edge
  %vco_freq = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 41, i32 11
  %12 = ptrtoint ptr %vco_freq to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %vco_freq, align 4
  %mul = mul i32 %13, 10
  %14 = ptrtoint ptr %encoder to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %encoder, align 4
  %dev_private.i = getelementptr inbounds %struct.drm_device, ptr %15, i32 0, i32 5
  %16 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev_private.i, align 4
  %crtc2.i = getelementptr inbounds %struct.drm_encoder, ptr %encoder, i32 0, i32 8
  %18 = ptrtoint ptr %crtc2.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %crtc2.i, align 4
  %audio.i29 = getelementptr inbounds %struct.radeon_encoder, ptr %encoder, i32 0, i32 16
  %20 = ptrtoint ptr %audio.i29 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %audio.i29, align 4
  %tobool.not.i30 = icmp eq ptr %21, null
  br i1 %tobool.not.i30, label %radeon_audio_write_latency_fields.exit.radeon_audio_set_dto.exit_crit_edge, label %land.lhs.true.i31

radeon_audio_write_latency_fields.exit.radeon_audio_set_dto.exit_crit_edge: ; preds = %radeon_audio_write_latency_fields.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %radeon_audio_set_dto.exit

land.lhs.true.i31:                                ; preds = %radeon_audio_write_latency_fields.exit
  %set_dto.i = getelementptr inbounds %struct.radeon_audio_funcs, ptr %21, i32 0, i32 5
  %22 = ptrtoint ptr %set_dto.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %set_dto.i, align 4
  %tobool6.not.i = icmp eq ptr %23, null
  br i1 %tobool6.not.i, label %land.lhs.true.i31.radeon_audio_set_dto.exit_crit_edge, label %if.then.i

land.lhs.true.i31.radeon_audio_set_dto.exit_crit_edge: ; preds = %land.lhs.true.i31
  call void @__sanitizer_cov_trace_pc() #9
  br label %radeon_audio_set_dto.exit

if.then.i:                                        ; preds = %land.lhs.true.i31
  call void @__sanitizer_cov_trace_pc() #9
  tail call void %23(ptr noundef %17, ptr noundef %19, i32 noundef %mul) #7
  br label %radeon_audio_set_dto.exit

radeon_audio_set_dto.exit:                        ; preds = %if.then.i, %land.lhs.true.i31.radeon_audio_set_dto.exit_crit_edge, %radeon_audio_write_latency_fields.exit.radeon_audio_set_dto.exit_crit_edge
  %24 = ptrtoint ptr %enc_priv to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %enc_priv, align 4
  %tobool.not.i33 = icmp eq ptr %25, null
  br i1 %tobool.not.i33, label %radeon_audio_set_dto.exit.radeon_audio_set_audio_packet.exit_crit_edge, label %lor.lhs.false.i

radeon_audio_set_dto.exit.radeon_audio_set_audio_packet.exit_crit_edge: ; preds = %radeon_audio_set_dto.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %radeon_audio_set_audio_packet.exit

lor.lhs.false.i:                                  ; preds = %radeon_audio_set_dto.exit
  %afmt.i = getelementptr inbounds %struct.radeon_encoder_atom_dig, ptr %25, i32 0, i32 11
  %26 = ptrtoint ptr %afmt.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %afmt.i, align 4
  %tobool1.not.i34 = icmp eq ptr %27, null
  br i1 %tobool1.not.i34, label %lor.lhs.false.i.radeon_audio_set_audio_packet.exit_crit_edge, label %if.end.i36

lor.lhs.false.i.radeon_audio_set_audio_packet.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %radeon_audio_set_audio_packet.exit

if.end.i36:                                       ; preds = %lor.lhs.false.i
  %28 = ptrtoint ptr %audio.i29 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %audio.i29, align 4
  %tobool2.not.i = icmp eq ptr %29, null
  br i1 %tobool2.not.i, label %if.end.i36.radeon_audio_select_pin.exit_crit_edge, label %land.lhs.true.i37

if.end.i36.radeon_audio_select_pin.exit_crit_edge: ; preds = %if.end.i36
  call void @__sanitizer_cov_trace_pc() #9
  br label %radeon_audio_select_pin.exit

land.lhs.true.i37:                                ; preds = %if.end.i36
  %set_audio_packet.i = getelementptr inbounds %struct.radeon_audio_funcs, ptr %29, i32 0, i32 10
  %30 = ptrtoint ptr %set_audio_packet.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %set_audio_packet.i, align 4
  %tobool4.not.i = icmp eq ptr %31, null
  br i1 %tobool4.not.i, label %land.lhs.true.i37.radeon_audio_set_audio_packet.exit_crit_edge, label %if.then5.i

land.lhs.true.i37.radeon_audio_set_audio_packet.exit_crit_edge: ; preds = %land.lhs.true.i37
  call void @__sanitizer_cov_trace_pc() #9
  br label %radeon_audio_set_audio_packet.exit

if.then5.i:                                       ; preds = %land.lhs.true.i37
  call void @__sanitizer_cov_trace_pc() #9
  %offset.i = getelementptr inbounds %struct.radeon_afmt, ptr %27, i32 0, i32 1
  %32 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %offset.i, align 4
  tail call void %31(ptr noundef %encoder, i32 noundef %33) #7
  br label %radeon_audio_set_audio_packet.exit

radeon_audio_set_audio_packet.exit:               ; preds = %if.then5.i, %land.lhs.true.i37.radeon_audio_set_audio_packet.exit_crit_edge, %lor.lhs.false.i.radeon_audio_set_audio_packet.exit_crit_edge, %radeon_audio_set_dto.exit.radeon_audio_set_audio_packet.exit_crit_edge
  %34 = ptrtoint ptr %audio.i29 to i32
  call void @__asan_load4_noabort(i32 %34)
  %.pr = load ptr, ptr %audio.i29, align 4
  %tobool.not.i39 = icmp eq ptr %.pr, null
  br i1 %tobool.not.i39, label %radeon_audio_set_audio_packet.exit.radeon_audio_select_pin.exit_crit_edge, label %land.lhs.true.i41

radeon_audio_set_audio_packet.exit.radeon_audio_select_pin.exit_crit_edge: ; preds = %radeon_audio_set_audio_packet.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %radeon_audio_select_pin.exit

land.lhs.true.i41:                                ; preds = %radeon_audio_set_audio_packet.exit
  %35 = ptrtoint ptr %.pr to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %.pr, align 4
  %tobool2.not.i40 = icmp eq ptr %36, null
  br i1 %tobool2.not.i40, label %land.lhs.true.i41.radeon_audio_select_pin.exit_crit_edge, label %if.then.i42

land.lhs.true.i41.radeon_audio_select_pin.exit_crit_edge: ; preds = %land.lhs.true.i41
  call void @__sanitizer_cov_trace_pc() #9
  br label %radeon_audio_select_pin.exit

if.then.i42:                                      ; preds = %land.lhs.true.i41
  call void @__sanitizer_cov_trace_pc() #9
  tail call void %36(ptr noundef %encoder) #7
  br label %radeon_audio_select_pin.exit

radeon_audio_select_pin.exit:                     ; preds = %if.then.i42, %land.lhs.true.i41.radeon_audio_select_pin.exit_crit_edge, %radeon_audio_set_audio_packet.exit.radeon_audio_select_pin.exit_crit_edge, %if.end.i36.radeon_audio_select_pin.exit_crit_edge
  %call9 = tail call fastcc i32 @radeon_audio_set_avi_packet(ptr noundef %encoder, ptr noundef %mode)
  br label %cleanup

cleanup:                                          ; preds = %radeon_audio_select_pin.exit, %if.end5.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @evergreen_dp_enable(ptr noundef, i1 noundef zeroext) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @radeon_audio_rreg(ptr noundef %rdev, i32 noundef %offset, i32 noundef %reg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %rmmio_size.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 18
  %0 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %reg)
  %cmp.i = icmp ugt i32 %1, %reg
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %reg)
  %cmp1.i = icmp ult i32 %reg, 65536
  %or.cond.i = or i1 %cmp1.i, %cmp.i
  br i1 %or.cond.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %rmmio.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %2 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 %reg
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !61
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !62
  br label %r100_mm_rreg.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call3.i = tail call i32 @r100_mm_rreg_slow(ptr noundef %rdev, i32 noundef %reg) #7
  br label %r100_mm_rreg.exit

r100_mm_rreg.exit:                                ; preds = %if.else.i, %if.then.i
  %retval.0.i = phi i32 [ %call3.i, %if.else.i ], [ %5, %if.then.i ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @radeon_audio_wreg(ptr noundef %rdev, i32 noundef %offset, i32 noundef %reg, i32 noundef %v) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %rmmio_size.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 18
  %0 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %reg)
  %cmp.i = icmp ugt i32 %1, %reg
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %reg)
  %cmp1.i = icmp ult i32 %reg, 65536
  %or.cond.i = or i1 %cmp1.i, %cmp.i
  br i1 %or.cond.i, label %do.body.i, label %if.else.i

do.body.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !63
  tail call void @arm_heavy_mb() #7
  %2 = tail call i32 @llvm.bswap.i32(i32 %v) #7
  %rmmio.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %3 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %4, i32 %reg
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %2) #7, !srcloc !64
  br label %r100_mm_wreg.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @r100_mm_wreg_slow(ptr noundef %rdev, i32 noundef %reg, i32 noundef %v) #7
  br label %r100_mm_wreg.exit

r100_mm_wreg.exit:                                ; preds = %if.else.i, %do.body.i
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dce4_audio_enable(ptr noundef, ptr noundef, i8 noundef zeroext) #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @r100_mm_rreg_slow(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @r100_mm_wreg_slow(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @r600_audio_get_pin(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dce4_afmt_write_latency_fields(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @evergreen_hdmi_write_sad_regs(ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dce4_afmt_hdmi_write_speaker_allocation(ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dce4_hdmi_audio_set_dto(ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dce4_afmt_dp_write_speaker_allocation(ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dce4_dp_audio_set_dto(ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @r600_audio_enable(ptr noundef, ptr noundef, i8 noundef zeroext) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dce3_2_afmt_write_sad_regs(ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dce3_2_afmt_hdmi_write_speaker_allocation(ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dce3_2_audio_set_dto(ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dce3_2_hdmi_update_acr(ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @r600_set_vbi_packet(ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @r600_set_avi_packet(ptr noundef, i32 noundef, ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dce3_2_set_audio_packet(ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dce3_2_set_mute(ptr noundef, i32 noundef, i1 noundef zeroext) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @r600_hdmi_enable(ptr noundef, i1 noundef zeroext) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dce3_2_afmt_dp_write_speaker_allocation(ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @r600_hdmi_audio_set_dto(ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @r600_hdmi_update_acr(ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @r600_set_audio_packet(ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @r600_set_mute(ptr noundef, i32 noundef, i1 noundef zeroext) #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 25)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 25)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nounwind readnone willreturn }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !17, !18, !19, !20, !22, !23, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46}
!llvm.module.flags = !{!48, !49, !50, !51, !52, !53, !54, !55}
!llvm.ident = !{!56}

!0 = !{ptr @pin_offsets, !1, !"pin_offsets", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/radeon/radeon_audio.c", i32 44, i32 18}
!2 = !{ptr @dce6_funcs, !3, !"dce6_funcs", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/radeon/radeon_audio.c", i32 84, i32 40}
!4 = !{ptr @dce6_hdmi_funcs, !5, !"dce6_hdmi_funcs", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/radeon/radeon_audio.c", i32 153, i32 34}
!6 = !{ptr @.str, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/radeon/radeon_audio.c", i32 333, i32 3}
!8 = !{ptr @.str.1, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/radeon/radeon_audio.c", i32 309, i32 3}
!10 = !{ptr @radeon_audio_acr.res, !11, !"res", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/radeon/radeon_audio.c", i32 526, i32 32}
!12 = !{ptr @radeon_audio_acr.hdmi_predefined_acr, !13, !"hdmi_predefined_acr", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/radeon/radeon_audio.c", i32 529, i32 38}
!14 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/radeon/radeon_audio.c", i32 513, i32 3}
!16 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @radeon_audio_calc_cts._entry, !15, !"_entry", i1 false, i1 false}
!19 = !{ptr @radeon_audio_calc_cts._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.6, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/gpu/drm/radeon/radeon_audio.c", i32 515, i32 3}
!22 = !{ptr @radeon_audio_calc_cts._entry.5, !21, !"_entry", i1 false, i1 false}
!23 = !{ptr @radeon_audio_calc_cts._entry_ptr.7, !21, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.8, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/gpu/drm/radeon/radeon_audio.c", i32 520, i32 2}
!26 = !{ptr @.str.9, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/gpu/drm/radeon/radeon_audio.c", i32 459, i32 3}
!28 = !{ptr @.str.10, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/gpu/drm/radeon/radeon_audio.c", i32 472, i32 3}
!30 = !{ptr @dce6_dp_funcs, !31, !"dce6_dp_funcs", i1 false, i1 false}
!31 = !{!"../drivers/gpu/drm/radeon/radeon_audio.c", i32 170, i32 34}
!32 = !{ptr @dce4_funcs, !33, !"dce4_funcs", i1 false, i1 false}
!33 = !{!"../drivers/gpu/drm/radeon/radeon_audio.c", i32 78, i32 40}
!34 = !{ptr @dce4_hdmi_funcs, !35, !"dce4_hdmi_funcs", i1 false, i1 false}
!35 = !{!"../drivers/gpu/drm/radeon/radeon_audio.c", i32 125, i32 34}
!36 = !{ptr @dce4_dp_funcs, !37, !"dce4_dp_funcs", i1 false, i1 false}
!37 = !{!"../drivers/gpu/drm/radeon/radeon_audio.c", i32 141, i32 34}
!38 = !{ptr @dce32_funcs, !39, !"dce32_funcs", i1 false, i1 false}
!39 = !{!"../drivers/gpu/drm/radeon/radeon_audio.c", i32 72, i32 40}
!40 = !{ptr @dce32_hdmi_funcs, !41, !"dce32_hdmi_funcs", i1 false, i1 false}
!41 = !{!"../drivers/gpu/drm/radeon/radeon_audio.c", i32 102, i32 34}
!42 = !{ptr @dce32_dp_funcs, !43, !"dce32_dp_funcs", i1 false, i1 false}
!43 = !{!"../drivers/gpu/drm/radeon/radeon_audio.c", i32 116, i32 34}
!44 = !{ptr @r600_funcs, !45, !"r600_funcs", i1 false, i1 false}
!45 = !{!"../drivers/gpu/drm/radeon/radeon_audio.c", i32 66, i32 40}
!46 = !{ptr @r600_hdmi_funcs, !47, !"r600_hdmi_funcs", i1 false, i1 false}
!47 = !{!"../drivers/gpu/drm/radeon/radeon_audio.c", i32 90, i32 34}
!48 = !{i32 1, !"wchar_size", i32 2}
!49 = !{i32 1, !"min_enum_size", i32 4}
!50 = !{i32 8, !"branch-target-enforcement", i32 0}
!51 = !{i32 8, !"sign-return-address", i32 0}
!52 = !{i32 8, !"sign-return-address-all", i32 0}
!53 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!54 = !{i32 7, !"uwtable", i32 1}
!55 = !{i32 7, !"frame-pointer", i32 2}
!56 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!57 = !{i8 0, i8 2}
!58 = !{!"auto-init"}
!59 = !{!"branch_weights", i32 1, i32 2000}
!60 = !{i64 2158075511, i64 2158076013, i64 2158075548, i64 2158075604, i64 2158075638, i64 2158075662, i64 2158075703, i64 2158075724, i64 2158075752, i64 2158075786}
!61 = !{i64 6889956}
!62 = !{i64 2157432721}
!63 = !{i64 2157433128}
!64 = !{i64 6889538}
