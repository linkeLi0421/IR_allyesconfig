; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/radeon/atombios_crtc.c_pt.bc'
source_filename = "../drivers/gpu/drm/radeon/atombios_crtc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.drm_crtc_helper_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct._ENABLE_CRTC_PARAMETERS = type { i8, i8, [2 x i8] }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.78, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.89, ptr, i32, ptr, i8, i32 }
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
%struct.anon.89 = type { i32, ptr }
%struct.radeon_crtc = type { %struct.drm_crtc, i32, i8, i8, i8, i32, ptr, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, %union.dfixed, %union.dfixed, %struct.drm_display_mode, i32, ptr, ptr, i32, %struct.radeon_atom_ss, i8, i32, i32, i32, i32, i32, ptr, ptr, i32, i32, i32, i32, %struct.drm_display_mode, i32 }
%struct.drm_crtc = type { ptr, ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, ptr, ptr, i32, i32, i32, i8, %struct.drm_display_mode, %struct.drm_display_mode, i32, i32, ptr, i32, ptr, ptr, %struct.drm_object_properties, ptr, ptr, %struct.list_head, %struct.spinlock, ptr, %struct.drm_crtc_crc, i32, %struct.spinlock, i32, [32 x i8], ptr }
%struct.drm_mode_object = type { i32, i32, ptr, %struct.kref, ptr }
%struct.drm_object_properties = type { i32, [24 x ptr], [24 x i64] }
%struct.drm_crtc_crc = type { %struct.spinlock, ptr, i8, i8, ptr, i32, i32, i32, %struct.wait_queue_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%union.dfixed = type { i32 }
%struct.radeon_atom_ss = type { i16, i16, i8, i16, i8, i8, i8, i16, i16 }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }
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
%struct.ttm_pool = type { ptr, i8, i8, [3 x %struct.anon.92] }
%struct.anon.92 = type { [12 x %struct.ttm_pool_type] }
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
%struct._BLANK_CRTC_PARAMETERS = type { i8, i8, i16, i16, i16 }
%struct.drm_plane = type { ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, i32, ptr, i32, i8, ptr, i32, ptr, ptr, ptr, ptr, %struct.drm_object_properties, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_framebuffer = type { ptr, %struct.list_head, %struct.drm_mode_object, [16 x i8], ptr, ptr, [4 x i32], [4 x i32], i64, i32, i32, i32, i32, i32, %struct.list_head, [4 x ptr] }
%struct.ttm_resource = type { i32, i32, i32, i32, %struct.ttm_bus_placement }
%struct.ttm_bus_placement = type { ptr, i32, i8, i32 }
%struct.drm_format_info = type { i32, i8, i8, %union.anon.83, [4 x i8], [4 x i8], i8, i8, i8, i8 }
%union.anon.83 = type { [4 x i8] }
%struct.radeon_asic = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.anon.98, %struct.anon.99, [8 x ptr], %struct.anon.100, %struct.anon.101, %struct.anon.102, %struct.anon.103, %struct.anon.104, %struct.anon.105, %struct.anon.106, %struct.anon.107 }
%struct.anon.98 = type { ptr, ptr, ptr }
%struct.anon.99 = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.anon.100 = type { ptr, ptr }
%struct.anon.101 = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.anon.102 = type { ptr, i32, ptr, i32, ptr, i32 }
%struct.anon.103 = type { ptr, ptr }
%struct.anon.104 = type { ptr, ptr, ptr, ptr }
%struct.anon.105 = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.anon.106 = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.anon.107 = type { ptr, ptr }
%union.set_pixel_clock = type { %struct._PIXEL_CLOCK_PARAMETERS_V5, [4 x i8] }
%struct._PIXEL_CLOCK_PARAMETERS_V5 = type { i8, %union.anon.111, i16, i16, i8, i8, i8, i8, i8, i8, i32 }
%union.anon.111 = type { i8 }
%union.atom_enable_ss = type { %struct._ENABLE_LVDS_SS_PARAMETERS }
%struct._ENABLE_LVDS_SS_PARAMETERS = type { i16, i8, i8, i8, [3 x i8] }
%struct._ENABLE_SCALER_PARAMETERS = type { i8, i8, i8, [1 x i8] }
%struct._SET_CRTC_OVERSCAN_PARAMETERS = type { i16, i16, i16, i16, i8, [3 x i8] }
%struct._SET_CRTC_TIMING_PARAMETERS = type { i16, i16, i16, i16, i16, i16, i16, i16, %union._ATOM_MODE_MISC_INFO_ACCESS, i8, i8, i8, i8, i8, i8 }
%union._ATOM_MODE_MISC_INFO_ACCESS = type { %struct._ATOM_MODE_MISC_INFO }
%struct._ATOM_MODE_MISC_INFO = type { i16 }
%struct.radeon_encoder = type { %struct.drm_encoder, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.drm_display_mode, ptr, i32, i8, i16, ptr, i32, i8, i32, i8 }
%struct.drm_encoder = type { ptr, %struct.list_head, %struct.drm_mode_object, ptr, i32, i32, i32, i32, ptr, %struct.list_head, ptr, ptr }
%struct._SET_CRTC_USING_DTD_TIMING_PARAMETERS = type { i16, i16, i16, i16, i16, i16, i16, i16, %union._ATOM_MODE_MISC_INFO_ACCESS, i8, i8, i8, [3 x i8] }
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
%struct.seqcount_ww_mutex = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.ttm_bo_kmap_obj = type { ptr, ptr, i32, ptr }
%struct.mmu_interval_notifier = type { %struct.interval_tree_node, ptr, ptr, %struct.hlist_node, i32 }
%struct.interval_tree_node = type { %struct.rb_node, i32, i32, i32 }
%struct._ENABLE_DISP_POWER_GATING_PARAMETERS_V2_1 = type { i8, i8, [2 x i8] }
%union.adjust_pixel_clock = type { %struct._ADJUST_DISPLAY_PLL_PS_ALLOCATION_V3 }
%struct._ADJUST_DISPLAY_PLL_PS_ALLOCATION_V3 = type { %union.anon.114 }
%union.anon.114 = type { %struct._ADJUST_DISPLAY_PLL_OUTPUT_PARAMETERS_V3 }
%struct._ADJUST_DISPLAY_PLL_OUTPUT_PARAMETERS_V3 = type { i32, i8, i8, [2 x i8] }
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
%struct.radeon_connector_atom_dig = type { i32, [15 x i8], i8, i32, i32, i8, i8 }
%struct.radeon_encoder_atom_dig = type { i8, i8, i32, i32, i16, i32, %struct.drm_display_mode, ptr, i32, i8, i32, ptr, ptr, i32 }
%struct.radeon_encoder_mst = type { i32, ptr, ptr, ptr, i32, i32, i8, i8 }
%struct._ADJUST_DISPLAY_PLL_PARAMETERS = type { i16, i8, i8, %union.anon.113, [3 x i8] }
%union.anon.113 = type { i8 }
%struct._ADJUST_DISPLAY_PLL_INPUT_PARAMETERS_V3 = type { i16, i8, i8, i8, i8, [2 x i8] }

@atombios_helper_funcs = internal constant { %struct.drm_crtc_helper_funcs, [32 x i8] } { %struct.drm_crtc_helper_funcs { ptr @atombios_crtc_dpms, ptr @atombios_crtc_prepare, ptr @atombios_crtc_commit, ptr null, ptr @atombios_crtc_mode_fixup, ptr @atombios_crtc_mode_set, ptr null, ptr @atombios_crtc_set_base, ptr @atombios_crtc_set_base_atomic, ptr @atombios_crtc_disable, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @radeon_get_crtc_scanout_position }, [32 x i8] zeroinitializer }, align 32
@vga_control_regs = internal constant { [6 x i32], [40 x i8] } { [6 x i32] [i32 816, i32 824, i32 992, i32 996, i32 1000, i32 1004], [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"No FB bound\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Unsupported screen format %p4cc\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Wrong screen bpp (%u) or tile split (%u)\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"Bypassing hardware LUT due to 10 bit fb scanout.\0A\00", [46 x i8] zeroinitializer }, align 32
@radeon_bo_reserve._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.6, i32 71, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"%p reserve failed\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"radeon_bo_reserve\00", [46 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"drivers/gpu/drm/radeon/radeon_object.h\00", [57 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@radeon_bo_reserve._entry_ptr = internal global ptr @radeon_bo_reserve._entry, section ".printk_index", align 4
@.str.10 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Unknown table version %d %d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"unable to allocate a PPLL\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"failed to reserve rbo before unpin\0A\00", [60 x i8] zeroinitializer }, align 32
@switch.table.atombios_crtc_mode_set = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"\03\04\07\02\03\08\05", [25 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.13 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294966784]
@__sancov_gen_cov_switch_values.14 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.15 = internal global [18 x i64] [i64 16, i64 32, i64 538982467, i64 808665410, i64 808669761, i64 808669784, i64 808671298, i64 842093121, i64 842093144, i64 875708993, i64 875709016, i64 875713089, i64 875713112, i64 892420418, i64 892424769, i64 892424792, i64 892426306, i64 909199186]
@__sancov_gen_cov_switch_values.16 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@__sancov_gen_cov_switch_values.17 = internal global [7 x i64] [i64 5, i64 32, i64 52, i64 53, i64 54, i64 55, i64 56]
@__sancov_gen_cov_switch_values.18 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5]
@__sancov_gen_cov_switch_values.19 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294966784]
@__sancov_gen_cov_switch_values.20 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294966784]
@__sancov_gen_cov_switch_values.21 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.22 = internal global [13 x i64] [i64 11, i64 32, i64 538982467, i64 808669761, i64 808669784, i64 842093121, i64 842093144, i64 875708993, i64 875709016, i64 875713089, i64 875713112, i64 892424792, i64 909199186]
@__sancov_gen_cov_switch_values.23 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294966784]
@__sancov_gen_cov_switch_values.24 = internal global [4 x i64] [i64 2, i64 8, i64 5, i64 6]
@__sancov_gen_cov_switch_values.25 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 255]
@__sancov_gen_cov_switch_values.26 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 255]
@__sancov_gen_cov_switch_values.27 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.28 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.29 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.30 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.31 = internal global [7 x i64] [i64 5, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5]
@__sancov_gen_cov_switch_values.32 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.33 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.34 = internal global [7 x i64] [i64 5, i64 8, i64 1, i64 2, i64 3, i64 5, i64 6]
@__sancov_gen_cov_switch_values.35 = internal global [4 x i64] [i64 2, i64 32, i64 10, i64 12]
@__sancov_gen_cov_switch_values.36 = internal global [5 x i64] [i64 3, i64 32, i64 10, i64 12, i64 16]
@__sancov_gen_cov_switch_values.37 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 3, i64 5]
@__sancov_gen_cov_switch_values.38 = internal global [5 x i64] [i64 3, i64 32, i64 10, i64 12, i64 16]
@__sancov_gen_cov_switch_values.39 = internal global [5 x i64] [i64 3, i64 8, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.40 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 5]
@__sancov_gen_cov_switch_values.41 = internal global [4 x i64] [i64 2, i64 32, i64 59, i64 61]
@__sancov_gen_cov_switch_values.42 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294966784]
@__sancov_gen_cov_switch_values.43 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@___asan_gen_.44 = private unnamed_addr constant [22 x i8] c"atombios_helper_funcs\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 2222, i32 43 }
@___asan_gen_.47 = private unnamed_addr constant [17 x i8] c"vga_control_regs\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 216, i32 18 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 1163, i32 3 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 1269, i32 3 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 1293, i32 6 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 1415, i32 3 }
@___asan_gen_.62 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.78 = private unnamed_addr constant [42 x i8] c"../drivers/gpu/drm/radeon/radeon_object.h\00", align 1
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 71, i32 4 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 811, i32 4 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 1907, i32 4 }
@___asan_gen_.86 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.87 = private constant [42 x i8] c"../drivers/gpu/drm/radeon/atombios_crtc.c\00", align 1
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 2169, i32 4 }
@___asan_gen_.89 = private unnamed_addr constant [36 x i8] c"switch.table.atombios_crtc_mode_set\00", align 1
@llvm.compiler.used = appending global [17 x ptr] [ptr @radeon_bo_reserve._entry, ptr @radeon_bo_reserve._entry_ptr, ptr @atombios_helper_funcs, ptr @vga_control_regs, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @switch.table.atombios_crtc_mode_set], section "llvm.metadata"
@0 = internal global [16 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atombios_helper_funcs to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vga_control_regs to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radeon_bo_reserve._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.atombios_crtc_mode_set to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @atombios_crtc_dpms(ptr noundef %crtc, i32 noundef %mode) #0 align 64 {
entry:
  %args.i58 = alloca %struct._ENABLE_CRTC_PARAMETERS, align 4
  %args.i52 = alloca %struct._ENABLE_CRTC_PARAMETERS, align 4
  %args.i46 = alloca %struct._ENABLE_CRTC_PARAMETERS, align 4
  %args.i = alloca %struct._ENABLE_CRTC_PARAMETERS, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %crtc, align 8
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_private, align 4
  %4 = zext i32 %mode to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %mode, label %entry.sw.epilog_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %entry.sw.bb7_crit_edge
    i32 2, label %entry.sw.bb7_crit_edge64
    i32 3, label %entry.sw.bb7_crit_edge65
  ]

entry.sw.bb7_crit_edge65:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb7

entry.sw.bb7_crit_edge64:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb7

entry.sw.bb7_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb7

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  %enabled = getelementptr inbounds %struct.radeon_crtc, ptr %crtc, i32 0, i32 2
  %5 = ptrtoint ptr %enabled to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 1, ptr %enabled, align 4
  %6 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev_private, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %args.i) #7
  %8 = ptrtoint ptr %args.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 65536, ptr %args.i, align 4
  %crtc_id.i = getelementptr inbounds %struct.radeon_crtc, ptr %crtc, i32 0, i32 1
  %9 = ptrtoint ptr %crtc_id.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %crtc_id.i, align 8
  %conv.i = trunc i32 %10 to i8
  store i8 %conv.i, ptr %args.i, align 4
  %mode_info.i = getelementptr inbounds %struct.radeon_device, ptr %7, i32 0, i32 44
  %11 = ptrtoint ptr %mode_info.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %mode_info.i, align 4
  %call.i = call i32 @atom_execute_table(ptr noundef %12, i32 noundef 35, ptr noundef nonnull %args.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %args.i) #7
  %family = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 6
  %13 = ptrtoint ptr %family to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %family, align 4
  %15 = add i32 %14, -51
  call void @__sanitizer_cov_trace_const_cmp4(i32 -20, i32 %15)
  %16 = icmp ult i32 %15, -20
  br i1 %16, label %sw.bb.if.end_crit_edge, label %if.then

sw.bb.if.end_crit_edge:                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  %17 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %crtc, align 8
  %dev_private.i47 = getelementptr inbounds %struct.drm_device, ptr %18, i32 0, i32 5
  %19 = ptrtoint ptr %dev_private.i47 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev_private.i47, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %args.i46) #7
  %21 = ptrtoint ptr %args.i46 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 65536, ptr %args.i46, align 4
  %22 = ptrtoint ptr %crtc_id.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %crtc_id.i, align 8
  %conv.i49 = trunc i32 %23 to i8
  store i8 %conv.i49, ptr %args.i46, align 4
  %mode_info.i50 = getelementptr inbounds %struct.radeon_device, ptr %20, i32 0, i32 44
  %24 = ptrtoint ptr %mode_info.i50 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %mode_info.i50, align 4
  %call.i51 = call i32 @atom_execute_table(ptr noundef %25, i32 noundef 6, ptr noundef nonnull %args.i46) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %args.i46) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.bb.if.end_crit_edge
  call fastcc void @atombios_blank_crtc(ptr noundef %crtc, i32 noundef 0)
  %num_crtcs = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 29
  %26 = ptrtoint ptr %num_crtcs to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %num_crtcs, align 4
  %28 = ptrtoint ptr %crtc_id.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %crtc_id.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %27, i32 %29)
  %cmp4 = icmp ugt i32 %27, %29
  br i1 %cmp4, label %if.then5, label %if.end.if.end6_crit_edge

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  call void @drm_crtc_vblank_on(ptr noundef %crtc) #7
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %if.end.if.end6_crit_edge
  call void @radeon_crtc_load_lut(ptr noundef %crtc) #7
  br label %sw.epilog

sw.bb7:                                           ; preds = %entry.sw.bb7_crit_edge, %entry.sw.bb7_crit_edge64, %entry.sw.bb7_crit_edge65
  %num_crtcs8 = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 29
  %30 = ptrtoint ptr %num_crtcs8 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %num_crtcs8, align 4
  %crtc_id9 = getelementptr inbounds %struct.radeon_crtc, ptr %crtc, i32 0, i32 1
  %32 = ptrtoint ptr %crtc_id9 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %crtc_id9, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %31, i32 %33)
  %cmp10 = icmp ugt i32 %31, %33
  br i1 %cmp10, label %if.then11, label %sw.bb7.if.end12_crit_edge

sw.bb7.if.end12_crit_edge:                        ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end12

if.then11:                                        ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @drm_crtc_vblank_off(ptr noundef %crtc) #7
  br label %if.end12

if.end12:                                         ; preds = %if.then11, %sw.bb7.if.end12_crit_edge
  %enabled13 = getelementptr inbounds %struct.radeon_crtc, ptr %crtc, i32 0, i32 2
  %34 = ptrtoint ptr %enabled13 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %enabled13, align 4, !range !37
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %tobool.not = icmp eq i8 %35, 0
  br i1 %tobool.not, label %if.end12.if.end15_crit_edge, label %if.then14

if.end12.if.end15_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15

if.then14:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @atombios_blank_crtc(ptr noundef %crtc, i32 noundef 1)
  br label %if.end15

if.end15:                                         ; preds = %if.then14, %if.end12.if.end15_crit_edge
  %family16 = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 6
  %36 = ptrtoint ptr %family16 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %family16, align 4
  %38 = add i32 %37, -51
  call void @__sanitizer_cov_trace_const_cmp4(i32 -20, i32 %38)
  %39 = icmp ult i32 %38, -20
  br i1 %39, label %if.end15.if.end22_crit_edge, label %if.then21

if.end15.if.end22_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end22

if.then21:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  %40 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %crtc, align 8
  %dev_private.i53 = getelementptr inbounds %struct.drm_device, ptr %41, i32 0, i32 5
  %42 = ptrtoint ptr %dev_private.i53 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %dev_private.i53, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %args.i52) #7
  %44 = ptrtoint ptr %args.i52 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 0, ptr %args.i52, align 4
  %45 = ptrtoint ptr %crtc_id9 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %crtc_id9, align 8
  %conv.i55 = trunc i32 %46 to i8
  store i8 %conv.i55, ptr %args.i52, align 4
  %mode_info.i56 = getelementptr inbounds %struct.radeon_device, ptr %43, i32 0, i32 44
  %47 = ptrtoint ptr %mode_info.i56 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %mode_info.i56, align 4
  %call.i57 = call i32 @atom_execute_table(ptr noundef %48, i32 noundef 6, ptr noundef nonnull %args.i52) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %args.i52) #7
  br label %if.end22

if.end22:                                         ; preds = %if.then21, %if.end15.if.end22_crit_edge
  %49 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %crtc, align 8
  %dev_private.i59 = getelementptr inbounds %struct.drm_device, ptr %50, i32 0, i32 5
  %51 = ptrtoint ptr %dev_private.i59 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %dev_private.i59, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %args.i58) #7
  %53 = ptrtoint ptr %args.i58 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 0, ptr %args.i58, align 4
  %54 = ptrtoint ptr %crtc_id9 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %crtc_id9, align 8
  %conv.i61 = trunc i32 %55 to i8
  store i8 %conv.i61, ptr %args.i58, align 4
  %mode_info.i62 = getelementptr inbounds %struct.radeon_device, ptr %52, i32 0, i32 44
  %56 = ptrtoint ptr %mode_info.i62 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %mode_info.i62, align 4
  %call.i63 = call i32 @atom_execute_table(ptr noundef %57, i32 noundef 35, ptr noundef nonnull %args.i58) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %args.i58) #7
  %58 = ptrtoint ptr %enabled13 to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 0, ptr %enabled13, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end22, %if.end6, %entry.sw.epilog_crit_edge
  call void @radeon_pm_compute_clocks(ptr noundef %3) #7
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @atombios_blank_crtc(ptr nocapture noundef readonly %crtc, i32 noundef %state) unnamed_addr #0 align 64 {
entry:
  %args = alloca %struct._BLANK_CRTC_PARAMETERS, align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %crtc, align 8
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_private, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %args) #7
  %4 = getelementptr inbounds %struct._BLANK_CRTC_PARAMETERS, ptr %args, i32 0, i32 1
  %5 = ptrtoint ptr %args to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 0, ptr %args, align 8
  %family = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 6
  %6 = ptrtoint ptr %family to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %family, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 56, i32 %7)
  %cmp = icmp ugt i32 %7, 56
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %crtc_id = getelementptr inbounds %struct.radeon_crtc, ptr %crtc, i32 0, i32 1
  %8 = ptrtoint ptr %crtc_id to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %crtc_id, align 8
  %arrayidx = getelementptr [6 x i32], ptr @vga_control_regs, i32 0, i32 %9
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx, align 4
  %rmmio.i = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 31
  %12 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %13, i32 %11
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !38
  %15 = tail call i32 @llvm.bswap.i32(i32 %14) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !39
  %or = or i32 %15, 1
  %16 = ptrtoint ptr %crtc_id to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %crtc_id, align 8
  %arrayidx3 = getelementptr [6 x i32], ptr @vga_control_regs, i32 0, i32 %17
  %18 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx3, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !40
  tail call void @arm_heavy_mb() #7
  %20 = tail call i32 @llvm.bswap.i32(i32 %or) #7
  %21 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i29 = getelementptr i8, ptr %22, i32 %19
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i29, i32 %20) #7, !srcloc !41
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %vga_control.0 = phi i32 [ 0, %entry.if.end_crit_edge ], [ %15, %if.then ]
  %crtc_id4 = getelementptr inbounds %struct.radeon_crtc, ptr %crtc, i32 0, i32 1
  %23 = ptrtoint ptr %crtc_id4 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %crtc_id4, align 8
  %conv = trunc i32 %24 to i8
  %25 = ptrtoint ptr %args to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %conv, ptr %args, align 8
  %conv5 = trunc i32 %state to i8
  %26 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %conv5, ptr %4, align 1
  %mode_info = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 44
  %27 = ptrtoint ptr %mode_info to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %mode_info, align 4
  %call6 = call i32 @atom_execute_table(ptr noundef %28, i32 noundef 34, ptr noundef nonnull %args) #7
  %29 = ptrtoint ptr %family to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %family, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 56, i32 %30)
  %cmp8 = icmp ugt i32 %30, 56
  br i1 %cmp8, label %do.body.i37, label %if.end.if.end13_crit_edge

if.end.if.end13_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end13

do.body.i37:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %31 = ptrtoint ptr %crtc_id4 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %crtc_id4, align 8
  %arrayidx12 = getelementptr [6 x i32], ptr @vga_control_regs, i32 0, i32 %32
  %33 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx12, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !40
  call void @arm_heavy_mb() #7
  %35 = call i32 @llvm.bswap.i32(i32 %vga_control.0) #7
  %rmmio.i35 = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 31
  %36 = ptrtoint ptr %rmmio.i35 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %rmmio.i35, align 4
  %add.ptr.i36 = getelementptr i8, ptr %37, i32 %34
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i36, i32 %35) #7, !srcloc !41
  br label %if.end13

if.end13:                                         ; preds = %do.body.i37, %if.end.if.end13_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %args) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_crtc_vblank_on(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @radeon_crtc_load_lut(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_crtc_vblank_off(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @radeon_pm_compute_clocks(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @atombios_crtc_set_base(ptr noundef %crtc, i32 noundef %x, i32 noundef %y, ptr noundef %old_fb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %crtc, align 8
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_private, align 4
  %family = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %family to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %family, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 38, i32 %5)
  %cmp = icmp ugt i32 %5, 38
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call fastcc i32 @dce4_crtc_do_set_base(ptr noundef %crtc, ptr noundef %old_fb, i32 noundef %x, i32 noundef %y, i32 noundef 0)
  br label %cleanup

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %5)
  %cmp3 = icmp ugt i32 %5, 17
  br i1 %cmp3, label %if.then4, label %if.else6

if.then4:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %call5 = tail call fastcc i32 @avivo_crtc_do_set_base(ptr noundef %crtc, ptr noundef %old_fb, i32 noundef %x, i32 noundef %y, i32 noundef 0)
  br label %cleanup

if.else6:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %call7 = tail call i32 @radeon_crtc_do_set_base(ptr noundef %crtc, ptr noundef %old_fb, i32 noundef %x, i32 noundef %y, i32 noundef 0) #7
  br label %cleanup

cleanup:                                          ; preds = %if.else6, %if.then4, %if.then
  %retval.0 = phi i32 [ %call, %if.then ], [ %call5, %if.then4 ], [ %call7, %if.else6 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @dce4_crtc_do_set_base(ptr noundef readonly %crtc, ptr noundef readonly %fb, i32 noundef %x, i32 noundef %y, i32 noundef %atomic) unnamed_addr #0 align 64 {
entry:
  %fb_location = alloca i64, align 8
  %tiling_flags = alloca i32, align 4
  %bankw = alloca i32, align 4
  %bankh = alloca i32, align 4
  %mtaspect = alloca i32, align 4
  %tile_split = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %crtc, align 8
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_private, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %fb_location) #7
  %4 = ptrtoint ptr %fb_location to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 -1, ptr %fb_location, align 8, !annotation !42
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tiling_flags) #7
  %5 = ptrtoint ptr %tiling_flags to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %tiling_flags, align 4, !annotation !42
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bankw) #7
  %6 = ptrtoint ptr %bankw to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %bankw, align 4, !annotation !42
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bankh) #7
  %7 = ptrtoint ptr %bankh to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %bankh, align 4, !annotation !42
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mtaspect) #7
  %8 = ptrtoint ptr %mtaspect to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %mtaspect, align 4, !annotation !42
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tile_split) #7
  %9 = ptrtoint ptr %tile_split to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -1, ptr %tile_split, align 4, !annotation !42
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %atomic)
  %tobool.not = icmp eq i32 %atomic, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.if.end9_crit_edge

entry.if.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9

land.lhs.true:                                    ; preds = %entry
  %primary = getelementptr inbounds %struct.drm_crtc, ptr %crtc, i32 0, i32 6
  %10 = ptrtoint ptr %primary to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %primary, align 4
  %fb3 = getelementptr inbounds %struct.drm_plane, ptr %11, i32 0, i32 12
  %12 = ptrtoint ptr %fb3 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %fb3, align 4
  %tobool4.not = icmp eq ptr %13, null
  br i1 %tobool4.not, label %if.then, label %land.lhs.true.if.end9_crit_edge

land.lhs.true.if.end9_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str) #7
  br label %cleanup306

if.end9:                                          ; preds = %land.lhs.true.if.end9_crit_edge, %entry.if.end9_crit_edge
  %target_fb.0 = phi ptr [ %fb, %entry.if.end9_crit_edge ], [ %13, %land.lhs.true.if.end9_crit_edge ]
  %obj10 = getelementptr inbounds %struct.drm_framebuffer, ptr %target_fb.0, i32 0, i32 15
  %14 = ptrtoint ptr %obj10 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %obj10, align 4
  %add.ptr13 = getelementptr i8, ptr %15, i32 -96
  %resv32.i.i = getelementptr i8, ptr %15, i32 200
  %16 = ptrtoint ptr %resv32.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %resv32.i.i, align 8
  %call.i.i.i = tail call i32 @ww_mutex_lock_interruptible(ptr noundef %17, ptr noundef null) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -4, i32 %call.i.i.i)
  %cmp.i.i = icmp eq i32 %call.i.i.i, -4
  %retval.1.i.i = select i1 %cmp.i.i, i32 -512, i32 %call.i.i.i
  %18 = zext i32 %retval.1.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.13)
  switch i32 %retval.1.i.i, label %do.end.i [
    i32 0, label %if.end17
    i32 -512, label %if.end9.cleanup306_crit_edge
  ], !prof !43

if.end9.cleanup306_crit_edge:                     ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup306

do.end.i:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  %rdev.i = getelementptr i8, ptr %15, i32 464
  %19 = ptrtoint ptr %rdev.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %rdev.i, align 8
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %20, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %22, ptr noundef nonnull @.str.4, ptr noundef %add.ptr13) #10
  br label %cleanup306

if.end17:                                         ; preds = %if.end9
  br i1 %tobool.not, label %if.else21, label %if.then19

if.then19:                                        ; preds = %if.end17
  %bdev.i = getelementptr i8, ptr %15, i32 352
  %23 = ptrtoint ptr %bdev.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %bdev.i, align 8
  %call.i = tail call ptr @radeon_get_rdev(ptr noundef %24) #7
  %resource.i = getelementptr i8, ptr %15, i32 372
  %25 = ptrtoint ptr %resource.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %resource.i, align 4
  %mem_type.i = getelementptr inbounds %struct.ttm_resource, ptr %26, i32 0, i32 2
  %27 = ptrtoint ptr %mem_type.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %mem_type.i, align 4
  %29 = zext i32 %28 to i64
  call void @__sanitizer_cov_trace_switch(i64 %29, ptr @__sancov_gen_cov_switch_values.14)
  switch i32 %28, label %if.then19.radeon_bo_gpu_offset.exit_crit_edge [
    i32 1, label %sw.bb.i
    i32 2, label %sw.bb2.i
  ]

if.then19.radeon_bo_gpu_offset.exit_crit_edge:    ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #9
  br label %radeon_bo_gpu_offset.exit

sw.bb.i:                                          ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #9
  %gtt_start.i = getelementptr inbounds %struct.radeon_device, ptr %call.i, i32 0, i32 42, i32 6
  br label %sw.epilog.sink.split.i

sw.bb2.i:                                         ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #9
  %vram_start.i = getelementptr inbounds %struct.radeon_device, ptr %call.i, i32 0, i32 42, i32 8
  br label %sw.epilog.sink.split.i

sw.epilog.sink.split.i:                           ; preds = %sw.bb2.i, %sw.bb.i
  %vram_start.sink.i = phi ptr [ %vram_start.i, %sw.bb2.i ], [ %gtt_start.i, %sw.bb.i ]
  %30 = ptrtoint ptr %vram_start.sink.i to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %vram_start.sink.i, align 8
  br label %radeon_bo_gpu_offset.exit

radeon_bo_gpu_offset.exit:                        ; preds = %sw.epilog.sink.split.i, %if.then19.radeon_bo_gpu_offset.exit_crit_edge
  %start.0.i = phi i64 [ 0, %if.then19.radeon_bo_gpu_offset.exit_crit_edge ], [ %31, %sw.epilog.sink.split.i ]
  %32 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %26, align 4
  %shl.i = shl i32 %33, 12
  %conv.i = zext i32 %shl.i to i64
  %add.i = add i64 %start.0.i, %conv.i
  %34 = ptrtoint ptr %fb_location to i32
  call void @__asan_store8_noabort(i32 %34)
  store i64 %add.i, ptr %fb_location, align 8
  br label %if.end32

if.else21:                                        ; preds = %if.end17
  %call22 = call i32 @radeon_bo_pin(ptr noundef %add.ptr13, i32 noundef 4, ptr noundef nonnull %fb_location) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %cmp23.not = icmp eq i32 %call22, 0
  br i1 %cmp23.not, label %if.else21.if.end32_crit_edge, label %if.then30, !prof !44

if.else21.if.end32_crit_edge:                     ; preds = %if.else21
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end32

if.then30:                                        ; preds = %if.else21
  call void @__sanitizer_cov_trace_pc() #9
  call fastcc void @radeon_bo_unreserve(ptr noundef %add.ptr13)
  br label %cleanup306

if.end32:                                         ; preds = %if.else21.if.end32_crit_edge, %radeon_bo_gpu_offset.exit
  call void @radeon_bo_get_tiling_flags(ptr noundef %add.ptr13, ptr noundef nonnull %tiling_flags, ptr noundef null) #7
  %bdev.i.i.i = getelementptr i8, ptr %15, i32 352
  %35 = ptrtoint ptr %bdev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %bdev.i.i.i, align 8
  %lru_lock.i.i.i = getelementptr inbounds %struct.ttm_device, ptr %36, i32 0, i32 6
  call void @_raw_spin_lock(ptr noundef %lru_lock.i.i.i) #7
  %resource.i.i.i = getelementptr i8, ptr %15, i32 372
  %37 = ptrtoint ptr %resource.i.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %resource.i.i.i, align 4
  call void @ttm_bo_move_to_lru_tail(ptr noundef %15, ptr noundef %38, ptr noundef null) #7
  %39 = ptrtoint ptr %bdev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %bdev.i.i.i, align 8
  %lru_lock2.i.i.i = getelementptr inbounds %struct.ttm_device, ptr %40, i32 0, i32 6
  call void @_raw_spin_unlock(ptr noundef %lru_lock2.i.i.i) #7
  %41 = ptrtoint ptr %resv32.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %resv32.i.i, align 8
  call void @dma_resv_reset_shared_max(ptr noundef %42) #7
  call void @ww_mutex_unlock(ptr noundef %42) #7
  %format = getelementptr inbounds %struct.drm_framebuffer, ptr %target_fb.0, i32 0, i32 4
  %43 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %format, align 8
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %44, align 4
  %47 = zext i32 %46 to i64
  call void @__sanitizer_cov_trace_switch(i64 %47, ptr @__sancov_gen_cov_switch_values.15)
  switch i32 %46, label %sw.default [
    i32 538982467, label %if.end32.sw.epilog_crit_edge
    i32 842093144, label %if.end32.sw.bb34_crit_edge
    i32 842093121, label %if.end32.sw.bb34_crit_edge699
    i32 892424792, label %if.end32.sw.bb35_crit_edge
    i32 892424769, label %if.end32.sw.bb35_crit_edge700
    i32 892426306, label %if.end32.sw.bb36_crit_edge
    i32 892420418, label %if.end32.sw.bb36_crit_edge701
    i32 909199186, label %sw.bb37
    i32 875713112, label %if.end32.sw.bb38_crit_edge
    i32 875713089, label %if.end32.sw.bb38_crit_edge702
    i32 808669784, label %if.end32.sw.bb39_crit_edge
    i32 808669761, label %if.end32.sw.bb39_crit_edge703
    i32 808671298, label %if.end32.sw.bb40_crit_edge
    i32 808665410, label %if.end32.sw.bb40_crit_edge704
    i32 875709016, label %if.end32.sw.bb41_crit_edge
    i32 875708993, label %if.end32.sw.bb41_crit_edge705
  ]

if.end32.sw.bb41_crit_edge705:                    ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb41

if.end32.sw.bb41_crit_edge:                       ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb41

if.end32.sw.bb40_crit_edge704:                    ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb40

if.end32.sw.bb40_crit_edge:                       ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb40

if.end32.sw.bb39_crit_edge703:                    ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb39

if.end32.sw.bb39_crit_edge:                       ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb39

if.end32.sw.bb38_crit_edge702:                    ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb38

if.end32.sw.bb38_crit_edge:                       ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb38

if.end32.sw.bb36_crit_edge701:                    ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb36

if.end32.sw.bb36_crit_edge:                       ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb36

if.end32.sw.bb35_crit_edge700:                    ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb35

if.end32.sw.bb35_crit_edge:                       ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb35

if.end32.sw.bb34_crit_edge699:                    ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb34

if.end32.sw.bb34_crit_edge:                       ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb34

if.end32.sw.epilog_crit_edge:                     ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb34:                                          ; preds = %if.end32.sw.bb34_crit_edge, %if.end32.sw.bb34_crit_edge699
  br label %sw.epilog

sw.bb35:                                          ; preds = %if.end32.sw.bb35_crit_edge, %if.end32.sw.bb35_crit_edge700
  br label %sw.epilog

sw.bb36:                                          ; preds = %if.end32.sw.bb36_crit_edge, %if.end32.sw.bb36_crit_edge701
  br label %sw.epilog

sw.bb37:                                          ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb38:                                          ; preds = %if.end32.sw.bb38_crit_edge, %if.end32.sw.bb38_crit_edge702
  br label %sw.epilog

sw.bb39:                                          ; preds = %if.end32.sw.bb39_crit_edge, %if.end32.sw.bb39_crit_edge703
  br label %sw.epilog

sw.bb40:                                          ; preds = %if.end32.sw.bb40_crit_edge, %if.end32.sw.bb40_crit_edge704
  br label %sw.epilog

sw.bb41:                                          ; preds = %if.end32.sw.bb41_crit_edge, %if.end32.sw.bb41_crit_edge705
  br label %sw.epilog

sw.default:                                       ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.1, ptr noundef %44) #7
  br label %cleanup306

sw.epilog:                                        ; preds = %sw.bb41, %sw.bb40, %sw.bb39, %sw.bb38, %sw.bb37, %sw.bb36, %sw.bb35, %sw.bb34, %if.end32.sw.epilog_crit_edge
  %fb_format.0 = phi i32 [ 2, %sw.bb41 ], [ 1026, %sw.bb40 ], [ 258, %sw.bb39 ], [ 2, %sw.bb38 ], [ 257, %sw.bb37 ], [ 1281, %sw.bb36 ], [ 1, %sw.bb35 ], [ 513, %sw.bb34 ], [ 0, %if.end32.sw.epilog_crit_edge ]
  %fb_swap.0 = phi i32 [ 546, %sw.bb41 ], [ 2, %sw.bb40 ], [ 2, %sw.bb39 ], [ 2, %sw.bb38 ], [ 1, %sw.bb37 ], [ 1, %sw.bb36 ], [ 1, %sw.bb35 ], [ 1, %sw.bb34 ], [ 0, %if.end32.sw.epilog_crit_edge ]
  %bypass_lut.0.off0 = phi i1 [ false, %sw.bb41 ], [ true, %sw.bb40 ], [ true, %sw.bb39 ], [ false, %sw.bb38 ], [ false, %sw.bb37 ], [ false, %sw.bb36 ], [ false, %sw.bb35 ], [ false, %sw.bb34 ], [ false, %if.end32.sw.epilog_crit_edge ]
  %48 = ptrtoint ptr %tiling_flags to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %tiling_flags, align 4
  %and = and i32 %49, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool44.not = icmp eq i32 %and, 0
  br i1 %tobool44.not, label %if.else132, label %if.then45

if.then45:                                        ; preds = %sw.epilog
  call void @evergreen_tiling_fields(i32 noundef %49, ptr noundef nonnull %bankw, ptr noundef nonnull %bankh, ptr noundef nonnull %mtaspect, ptr noundef nonnull %tile_split) #7
  %family = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 6
  %50 = ptrtoint ptr %family to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %family, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 51, i32 %51)
  %cmp46 = icmp ugt i32 %51, 51
  br i1 %cmp46, label %if.then47, label %if.else92

if.then47:                                        ; preds = %if.then45
  call void @__sanitizer_cov_trace_const_cmp4(i32 56, i32 %51)
  %cmp49 = icmp ugt i32 %51, 56
  br i1 %cmp49, label %if.then50, label %if.else70

if.then50:                                        ; preds = %if.then47
  %52 = ptrtoint ptr %tile_split to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %tile_split, align 4
  %shl = shl i32 64, %53
  %54 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %format, align 8
  %56 = getelementptr inbounds %struct.drm_format_info, ptr %55, i32 0, i32 3
  %57 = ptrtoint ptr %56 to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %56, align 2
  %conv = zext i8 %58 to i32
  %mul = shl nuw nsw i32 %conv, 6
  %59 = call i32 @llvm.umin.i32(i32 %shl, i32 %mul)
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %59)
  %cmp56692 = icmp ugt i32 %59, 64
  br i1 %cmp56692, label %if.then50.for.body_crit_edge, label %if.then50.cleanup_crit_edge

if.then50.cleanup_crit_edge:                      ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then50.for.body_crit_edge:                     ; preds = %if.then50
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.then50.for.body_crit_edge
  %tileb.0694 = phi i32 [ %shr, %for.body.for.body_crit_edge ], [ %59, %if.then50.for.body_crit_edge ]
  %index.0693 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %if.then50.for.body_crit_edge ]
  %shr = lshr i32 %tileb.0694, 1
  %inc = add nuw nsw i32 %index.0693, 1
  %cmp56 = icmp ugt i32 %tileb.0694, 129
  br i1 %cmp56, label %for.body.for.body_crit_edge, label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %index.0693)
  %cmp58 = icmp ugt i32 %index.0693, 14
  br i1 %cmp58, label %cleanup88, label %for.end.cleanup_crit_edge

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup:                                          ; preds = %for.end.cleanup_crit_edge, %if.then50.cleanup_crit_edge
  %index.0.lcssa697 = phi i32 [ %inc, %for.end.cleanup_crit_edge ], [ 0, %if.then50.cleanup_crit_edge ]
  %arrayidx66 = getelementptr %struct.radeon_device, ptr %3, i32 0, i32 5, i32 0, i32 25, i32 %index.0.lcssa697
  br label %cleanup88.thread

if.else70:                                        ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #9
  %60 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %format, align 8
  %62 = getelementptr inbounds %struct.drm_format_info, ptr %61, i32 0, i32 3
  %63 = ptrtoint ptr %62 to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %62, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %64)
  %switch.selectcmp = icmp eq i8 %64, 2
  %switch.select = select i1 %switch.selectcmp, i32 11, i32 12
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %64)
  %switch.selectcmp462 = icmp eq i8 %64, 1
  %switch.select463 = select i1 %switch.selectcmp462, i32 10, i32 %switch.select
  %arrayidx81 = getelementptr %struct.radeon_device, ptr %3, i32 0, i32 5, i32 0, i32 24, i32 %switch.select463
  br label %cleanup88.thread

cleanup88.thread:                                 ; preds = %if.else70, %cleanup
  %arrayidx81.sink = phi ptr [ %arrayidx81, %if.else70 ], [ %arrayidx66, %cleanup ]
  %.sink698 = phi i32 [ 20, %if.else70 ], [ 6, %cleanup ]
  %65 = ptrtoint ptr %arrayidx81.sink to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %arrayidx81.sink, align 4
  %shr82 = lshr i32 %66, %.sink698
  %num_banks.1 = shl nuw nsw i32 %shr82, 2
  %and85 = and i32 %num_banks.1, 12
  %or87 = or i32 %and85, %fb_format.0
  br label %if.end112

cleanup88:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  %mul64 = shl nuw nsw i32 %conv, 3
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.2, i32 noundef %mul64, i32 noundef %53) #7
  br label %cleanup306

if.else92:                                        ; preds = %if.then45
  call void @__sanitizer_cov_trace_const_cmp4(i32 49, i32 %51)
  %cmp94 = icmp ugt i32 %51, 49
  %tile_config = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 5, i32 0, i32 24, i32 8
  %tile_config100 = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 5, i32 0, i32 21
  %tmp2.0.in = select i1 %cmp94, ptr %tile_config, ptr %tile_config100
  %67 = ptrtoint ptr %tmp2.0.in to i32
  call void @__asan_load4_noabort(i32 %67)
  %tmp2.0 = load i32, ptr %tmp2.0.in, align 4
  %and102 = lshr i32 %tmp2.0, 4
  %shr103 = and i32 %and102, 15
  %68 = zext i32 %shr103 to i64
  call void @__sanitizer_cov_trace_switch(i64 %68, ptr @__sancov_gen_cov_switch_values.16)
  switch i32 %shr103, label %sw.default107 [
    i32 0, label %sw.bb104
    i32 2, label %sw.bb109
  ]

sw.bb104:                                         ; preds = %if.else92
  call void @__sanitizer_cov_trace_pc() #9
  %or105 = or i32 %fb_format.0, 4
  br label %if.end112

sw.default107:                                    ; preds = %if.else92
  call void @__sanitizer_cov_trace_pc() #9
  %or108 = or i32 %fb_format.0, 8
  br label %if.end112

sw.bb109:                                         ; preds = %if.else92
  call void @__sanitizer_cov_trace_pc() #9
  %or110 = or i32 %fb_format.0, 12
  br label %if.end112

if.end112:                                        ; preds = %sw.bb109, %sw.default107, %sw.bb104, %cleanup88.thread
  %fb_format.2 = phi i32 [ %or108, %sw.default107 ], [ %or110, %sw.bb109 ], [ %or105, %sw.bb104 ], [ %or87, %cleanup88.thread ]
  %69 = ptrtoint ptr %tile_split to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %tile_split, align 4
  %and114 = shl i32 %70, 13
  %shl115 = and i32 %and114, 57344
  %71 = ptrtoint ptr %bankw to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %bankw, align 4
  %and117 = shl i32 %72, 6
  %shl118 = and i32 %and117, 192
  %73 = ptrtoint ptr %bankh to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %bankh, align 4
  %and120 = shl i32 %74, 11
  %shl121 = and i32 %and120, 6144
  %75 = ptrtoint ptr %mtaspect to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %mtaspect, align 4
  %and123 = shl i32 %76, 18
  %shl124 = and i32 %and123, 786432
  %or113 = or i32 %fb_format.2, %shl115
  %or116 = or i32 %or113, %shl118
  %or119 = or i32 %or116, %shl121
  %or122 = or i32 %or119, %shl124
  %or125 = or i32 %or122, 4194304
  br label %if.end138

if.else132:                                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  %and133 = shl i32 %49, 20
  %77 = and i32 %and133, 2097152
  %78 = or i32 %77, %fb_format.0
  br label %if.end138

if.end138:                                        ; preds = %if.else132, %if.end112
  %fb_format.3 = phi i32 [ %or125, %if.end112 ], [ %78, %if.else132 ]
  %family139 = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 6
  %79 = ptrtoint ptr %family139 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %family139, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 56, i32 %80)
  %cmp140 = icmp ugt i32 %80, 56
  br i1 %cmp140, label %if.then142, label %if.else151

if.then142:                                       ; preds = %if.end138
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx145 = getelementptr %struct.radeon_device, ptr %3, i32 0, i32 5, i32 0, i32 24, i32 10
  %81 = ptrtoint ptr %arrayidx145 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %arrayidx145, align 8
  %83 = shl i32 %82, 18
  %shl149 = and i32 %83, 520093696
  %or150 = or i32 %shl149, %fb_format.3
  br label %if.end176

if.else151:                                       ; preds = %if.end138
  %84 = zext i32 %80 to i64
  call void @__sanitizer_cov_trace_switch(i64 %84, ptr @__sancov_gen_cov_switch_values.17)
  switch i32 %80, label %if.else151.if.end176_crit_edge [
    i32 52, label %if.else151.if.then158_crit_edge
    i32 53, label %if.else151.if.then158_crit_edge706
    i32 54, label %if.else151.if.then172_crit_edge
    i32 55, label %if.else151.if.then172_crit_edge707
    i32 56, label %if.else151.if.then172_crit_edge708
  ]

if.else151.if.then172_crit_edge708:               ; preds = %if.else151
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then172

if.else151.if.then172_crit_edge707:               ; preds = %if.else151
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then172

if.else151.if.then172_crit_edge:                  ; preds = %if.else151
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then172

if.else151.if.then158_crit_edge706:               ; preds = %if.else151
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then158

if.else151.if.then158_crit_edge:                  ; preds = %if.else151
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then158

if.else151.if.end176_crit_edge:                   ; preds = %if.else151
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end176

if.then158:                                       ; preds = %if.else151.if.then158_crit_edge, %if.else151.if.then158_crit_edge706
  %or159 = or i32 %fb_format.3, 167772160
  br label %if.end176

if.then172:                                       ; preds = %if.else151.if.then172_crit_edge, %if.else151.if.then172_crit_edge707, %if.else151.if.then172_crit_edge708
  %or173 = or i32 %fb_format.3, 67108864
  br label %if.end176

if.end176:                                        ; preds = %if.then172, %if.then158, %if.else151.if.end176_crit_edge, %if.then142
  %fb_format.4 = phi i32 [ %or150, %if.then142 ], [ %or159, %if.then158 ], [ %or173, %if.then172 ], [ %fb_format.3, %if.else151.if.end176_crit_edge ]
  %crtc_id = getelementptr inbounds %struct.radeon_crtc, ptr %crtc, i32 0, i32 1
  %85 = ptrtoint ptr %crtc_id to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %crtc_id, align 8
  %87 = zext i32 %86 to i64
  call void @__sanitizer_cov_trace_switch(i64 %87, ptr @__sancov_gen_cov_switch_values.18)
  switch i32 %86, label %if.end176.sw.epilog184_crit_edge [
    i32 0, label %sw.bb177
    i32 1, label %sw.bb178
    i32 2, label %sw.bb179
    i32 3, label %sw.bb180
    i32 4, label %sw.bb181
    i32 5, label %sw.bb182
  ]

if.end176.sw.epilog184_crit_edge:                 ; preds = %if.end176
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog184

sw.bb177:                                         ; preds = %if.end176
  call void @__sanitizer_cov_trace_pc() #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !40
  call void @arm_heavy_mb() #7
  %rmmio.i = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 31
  %88 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %89, i32 816
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #7, !srcloc !41
  br label %sw.epilog184

sw.bb178:                                         ; preds = %if.end176
  call void @__sanitizer_cov_trace_pc() #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !40
  call void @arm_heavy_mb() #7
  %rmmio.i467 = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 31
  %90 = ptrtoint ptr %rmmio.i467 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %rmmio.i467, align 4
  %add.ptr.i468 = getelementptr i8, ptr %91, i32 824
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i468, i32 0) #7, !srcloc !41
  br label %sw.epilog184

sw.bb179:                                         ; preds = %if.end176
  call void @__sanitizer_cov_trace_pc() #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !40
  call void @arm_heavy_mb() #7
  %rmmio.i471 = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 31
  %92 = ptrtoint ptr %rmmio.i471 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %rmmio.i471, align 4
  %add.ptr.i472 = getelementptr i8, ptr %93, i32 992
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i472, i32 0) #7, !srcloc !41
  br label %sw.epilog184

sw.bb180:                                         ; preds = %if.end176
  call void @__sanitizer_cov_trace_pc() #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !40
  call void @arm_heavy_mb() #7
  %rmmio.i475 = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 31
  %94 = ptrtoint ptr %rmmio.i475 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %rmmio.i475, align 4
  %add.ptr.i476 = getelementptr i8, ptr %95, i32 996
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i476, i32 0) #7, !srcloc !41
  br label %sw.epilog184

sw.bb181:                                         ; preds = %if.end176
  call void @__sanitizer_cov_trace_pc() #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !40
  call void @arm_heavy_mb() #7
  %rmmio.i479 = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 31
  %96 = ptrtoint ptr %rmmio.i479 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %rmmio.i479, align 4
  %add.ptr.i480 = getelementptr i8, ptr %97, i32 1000
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i480, i32 0) #7, !srcloc !41
  br label %sw.epilog184

sw.bb182:                                         ; preds = %if.end176
  call void @__sanitizer_cov_trace_pc() #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !40
  call void @arm_heavy_mb() #7
  %rmmio.i483 = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 31
  %98 = ptrtoint ptr %rmmio.i483 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %rmmio.i483, align 4
  %add.ptr.i484 = getelementptr i8, ptr %99, i32 1004
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i484, i32 0) #7, !srcloc !41
  br label %sw.epilog184

sw.epilog184:                                     ; preds = %sw.bb182, %sw.bb181, %sw.bb180, %sw.bb179, %sw.bb178, %sw.bb177, %if.end176.sw.epilog184_crit_edge
  %crtc_offset = getelementptr inbounds %struct.radeon_crtc, ptr %crtc, i32 0, i32 5
  %100 = ptrtoint ptr %crtc_offset to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %crtc_offset, align 8
  %add = add i32 %101, 26696
  %rmmio_size.i485 = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 18
  %102 = ptrtoint ptr %rmmio_size.i485 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %rmmio_size.i485, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %103, i32 %add)
  %cmp.i486 = icmp ugt i32 %103, %add
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %add)
  %cmp1.i = icmp ult i32 %add, 65536
  %or.cond.i = or i1 %cmp1.i, %cmp.i486
  br i1 %or.cond.i, label %do.body.i, label %if.else.i

do.body.i:                                        ; preds = %sw.epilog184
  call void @__sanitizer_cov_trace_pc() #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !40
  call void @arm_heavy_mb() #7
  %rmmio.i487 = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 31
  %104 = ptrtoint ptr %rmmio.i487 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %rmmio.i487, align 4
  %add.ptr.i488 = getelementptr i8, ptr %105, i32 %add
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i488, i32 0) #7, !srcloc !41
  br label %r100_mm_wreg.exit

if.else.i:                                        ; preds = %sw.epilog184
  call void @__sanitizer_cov_trace_pc() #9
  call void @r100_mm_wreg_slow(ptr noundef %3, i32 noundef %add, i32 noundef 0) #7
  br label %r100_mm_wreg.exit

r100_mm_wreg.exit:                                ; preds = %if.else.i, %do.body.i
  %106 = ptrtoint ptr %crtc_offset to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %crtc_offset, align 8
  %add186 = add i32 %107, 26652
  %108 = ptrtoint ptr %fb_location to i32
  call void @__asan_load8_noabort(i32 %108)
  %109 = load i64, ptr %fb_location, align 8
  %shr187 = lshr i64 %109, 32
  %conv189 = trunc i64 %shr187 to i32
  %110 = ptrtoint ptr %rmmio_size.i485 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %rmmio_size.i485, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %111, i32 %add186)
  %cmp.i490 = icmp ugt i32 %111, %add186
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %add186)
  %cmp1.i491 = icmp ult i32 %add186, 65536
  %or.cond.i492 = or i1 %cmp1.i491, %cmp.i490
  br i1 %or.cond.i492, label %do.body.i495, label %if.else.i496

do.body.i495:                                     ; preds = %r100_mm_wreg.exit
  call void @__sanitizer_cov_trace_pc() #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !40
  call void @arm_heavy_mb() #7
  %112 = call i32 @llvm.bswap.i32(i32 %conv189) #7
  %rmmio.i493 = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 31
  %113 = ptrtoint ptr %rmmio.i493 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %rmmio.i493, align 4
  %add.ptr.i494 = getelementptr i8, ptr %114, i32 %add186
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i494, i32 %112) #7, !srcloc !41
  br label %r100_mm_wreg.exit497

if.else.i496:                                     ; preds = %r100_mm_wreg.exit
  call void @__sanitizer_cov_trace_pc() #9
  call void @r100_mm_wreg_slow(ptr noundef %3, i32 noundef %add186, i32 noundef %conv189) #7
  br label %r100_mm_wreg.exit497

r100_mm_wreg.exit497:                             ; preds = %if.else.i496, %do.body.i495
  %115 = ptrtoint ptr %crtc_offset to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %crtc_offset, align 8
  %add191 = add i32 %116, 26656
  %117 = ptrtoint ptr %fb_location to i32
  call void @__asan_load8_noabort(i32 %117)
  %118 = load i64, ptr %fb_location, align 8
  %shr192 = lshr i64 %118, 32
  %conv194 = trunc i64 %shr192 to i32
  %119 = ptrtoint ptr %rmmio_size.i485 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %rmmio_size.i485, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %120, i32 %add191)
  %cmp.i499 = icmp ugt i32 %120, %add191
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %add191)
  %cmp1.i500 = icmp ult i32 %add191, 65536
  %or.cond.i501 = or i1 %cmp1.i500, %cmp.i499
  br i1 %or.cond.i501, label %do.body.i504, label %if.else.i505

do.body.i504:                                     ; preds = %r100_mm_wreg.exit497
  call void @__sanitizer_cov_trace_pc() #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !40
  call void @arm_heavy_mb() #7
  %121 = call i32 @llvm.bswap.i32(i32 %conv194) #7
  %rmmio.i502 = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 31
  %122 = ptrtoint ptr %rmmio.i502 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %rmmio.i502, align 4
  %add.ptr.i503 = getelementptr i8, ptr %123, i32 %add191
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i503, i32 %121) #7, !srcloc !41
  br label %r100_mm_wreg.exit506

if.else.i505:                                     ; preds = %r100_mm_wreg.exit497
  call void @__sanitizer_cov_trace_pc() #9
  call void @r100_mm_wreg_slow(ptr noundef %3, i32 noundef %add191, i32 noundef %conv194) #7
  br label %r100_mm_wreg.exit506

r100_mm_wreg.exit506:                             ; preds = %if.else.i505, %do.body.i504
  %124 = ptrtoint ptr %crtc_offset to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %crtc_offset, align 8
  %add196 = add i32 %125, 26640
  %126 = ptrtoint ptr %fb_location to i32
  call void @__asan_load8_noabort(i32 %126)
  %127 = load i64, ptr %fb_location, align 8
  %conv197 = trunc i64 %127 to i32
  %and198 = and i32 %conv197, -256
  %128 = ptrtoint ptr %rmmio_size.i485 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %rmmio_size.i485, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %129, i32 %add196)
  %cmp.i508 = icmp ugt i32 %129, %add196
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %add196)
  %cmp1.i509 = icmp ult i32 %add196, 65536
  %or.cond.i510 = or i1 %cmp1.i509, %cmp.i508
  br i1 %or.cond.i510, label %do.body.i513, label %if.else.i514

do.body.i513:                                     ; preds = %r100_mm_wreg.exit506
  call void @__sanitizer_cov_trace_pc() #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !40
  call void @arm_heavy_mb() #7
  %130 = call i32 @llvm.bswap.i32(i32 %and198) #7
  %rmmio.i511 = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 31
  %131 = ptrtoint ptr %rmmio.i511 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %rmmio.i511, align 4
  %add.ptr.i512 = getelementptr i8, ptr %132, i32 %add196
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i512, i32 %130) #7, !srcloc !41
  br label %r100_mm_wreg.exit515

if.else.i514:                                     ; preds = %r100_mm_wreg.exit506
  call void @__sanitizer_cov_trace_pc() #9
  call void @r100_mm_wreg_slow(ptr noundef %3, i32 noundef %add196, i32 noundef %and198) #7
  br label %r100_mm_wreg.exit515

r100_mm_wreg.exit515:                             ; preds = %if.else.i514, %do.body.i513
  %133 = ptrtoint ptr %crtc_offset to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %crtc_offset, align 8
  %add200 = add i32 %134, 26644
  %135 = ptrtoint ptr %fb_location to i32
  call void @__asan_load8_noabort(i32 %135)
  %136 = load i64, ptr %fb_location, align 8
  %conv201 = trunc i64 %136 to i32
  %and202 = and i32 %conv201, -256
  %137 = ptrtoint ptr %rmmio_size.i485 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %rmmio_size.i485, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %138, i32 %add200)
  %cmp.i517 = icmp ugt i32 %138, %add200
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %add200)
  %cmp1.i518 = icmp ult i32 %add200, 65536
  %or.cond.i519 = or i1 %cmp1.i518, %cmp.i517
  br i1 %or.cond.i519, label %do.body.i522, label %if.else.i523

do.body.i522:                                     ; preds = %r100_mm_wreg.exit515
  call void @__sanitizer_cov_trace_pc() #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !40
  call void @arm_heavy_mb() #7
  %139 = call i32 @llvm.bswap.i32(i32 %and202) #7
  %rmmio.i520 = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 31
  %140 = ptrtoint ptr %rmmio.i520 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %rmmio.i520, align 4
  %add.ptr.i521 = getelementptr i8, ptr %141, i32 %add200
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i521, i32 %139) #7, !srcloc !41
  br label %r100_mm_wreg.exit524

if.else.i523:                                     ; preds = %r100_mm_wreg.exit515
  call void @__sanitizer_cov_trace_pc() #9
  call void @r100_mm_wreg_slow(ptr noundef %3, i32 noundef %add200, i32 noundef %and202) #7
  br label %r100_mm_wreg.exit524

r100_mm_wreg.exit524:                             ; preds = %if.else.i523, %do.body.i522
  %142 = ptrtoint ptr %crtc_offset to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %crtc_offset, align 8
  %add204 = add i32 %143, 26628
  %144 = ptrtoint ptr %rmmio_size.i485 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %rmmio_size.i485, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %145, i32 %add204)
  %cmp.i526 = icmp ugt i32 %145, %add204
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %add204)
  %cmp1.i527 = icmp ult i32 %add204, 65536
  %or.cond.i528 = or i1 %cmp1.i527, %cmp.i526
  br i1 %or.cond.i528, label %do.body.i531, label %if.else.i532

do.body.i531:                                     ; preds = %r100_mm_wreg.exit524
  call void @__sanitizer_cov_trace_pc() #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !40
  call void @arm_heavy_mb() #7
  %146 = call i32 @llvm.bswap.i32(i32 %fb_format.4) #7
  %rmmio.i529 = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 31
  %147 = ptrtoint ptr %rmmio.i529 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %rmmio.i529, align 4
  %add.ptr.i530 = getelementptr i8, ptr %148, i32 %add204
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i530, i32 %146) #7, !srcloc !41
  br label %r100_mm_wreg.exit533

if.else.i532:                                     ; preds = %r100_mm_wreg.exit524
  call void @__sanitizer_cov_trace_pc() #9
  call void @r100_mm_wreg_slow(ptr noundef %3, i32 noundef %add204, i32 noundef %fb_format.4) #7
  br label %r100_mm_wreg.exit533

r100_mm_wreg.exit533:                             ; preds = %if.else.i532, %do.body.i531
  %149 = ptrtoint ptr %crtc_offset to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %crtc_offset, align 8
  %add206 = add i32 %150, 26636
  %151 = ptrtoint ptr %rmmio_size.i485 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %rmmio_size.i485, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %152, i32 %add206)
  %cmp.i535 = icmp ugt i32 %152, %add206
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %add206)
  %cmp1.i536 = icmp ult i32 %add206, 65536
  %or.cond.i537 = or i1 %cmp1.i536, %cmp.i535
  br i1 %or.cond.i537, label %do.body.i540, label %if.else.i541

do.body.i540:                                     ; preds = %r100_mm_wreg.exit533
  call void @__sanitizer_cov_trace_pc() #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !40
  call void @arm_heavy_mb() #7
  %153 = call i32 @llvm.bswap.i32(i32 %fb_swap.0) #7
  %rmmio.i538 = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 31
  %154 = ptrtoint ptr %rmmio.i538 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %rmmio.i538, align 4
  %add.ptr.i539 = getelementptr i8, ptr %155, i32 %add206
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i539, i32 %153) #7, !srcloc !41
  br label %r100_mm_wreg.exit542

if.else.i541:                                     ; preds = %r100_mm_wreg.exit533
  call void @__sanitizer_cov_trace_pc() #9
  call void @r100_mm_wreg_slow(ptr noundef %3, i32 noundef %add206, i32 noundef %fb_swap.0) #7
  br label %r100_mm_wreg.exit542

r100_mm_wreg.exit542:                             ; preds = %if.else.i541, %do.body.i540
  %156 = ptrtoint ptr %crtc_offset to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %crtc_offset, align 8
  %add208 = add i32 %157, 26632
  %158 = ptrtoint ptr %rmmio_size.i485 to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %rmmio_size.i485, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %159, i32 %add208)
  %cmp.i544 = icmp ugt i32 %159, %add208
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %add208)
  %cmp1.i545 = icmp ult i32 %add208, 65536
  %or.cond.i546 = or i1 %cmp1.i545, %cmp.i544
  br i1 %or.cond.i546, label %if.then.i, label %if.else.i549

if.then.i:                                        ; preds = %r100_mm_wreg.exit542
  call void @__sanitizer_cov_trace_pc() #9
  %rmmio.i547 = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 31
  %160 = ptrtoint ptr %rmmio.i547 to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %rmmio.i547, align 4
  %add.ptr.i548 = getelementptr i8, ptr %161, i32 %add208
  %162 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i548) #7, !srcloc !38
  %163 = call i32 @llvm.bswap.i32(i32 %162) #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !39
  br label %r100_mm_rreg.exit

if.else.i549:                                     ; preds = %r100_mm_wreg.exit542
  call void @__sanitizer_cov_trace_pc() #9
  %call3.i = call i32 @r100_mm_rreg_slow(ptr noundef %3, i32 noundef %add208) #7
  br label %r100_mm_rreg.exit

r100_mm_rreg.exit:                                ; preds = %if.else.i549, %if.then.i
  %retval.0.i = phi i32 [ %call3.i, %if.else.i549 ], [ %163, %if.then.i ]
  %and210 = and i32 %retval.0.i, -257
  %cond213 = select i1 %bypass_lut.0.off0, i32 256, i32 0
  %or215 = or i32 %and210, %cond213
  %164 = ptrtoint ptr %crtc_offset to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %crtc_offset, align 8
  %add217 = add i32 %165, 26632
  %166 = ptrtoint ptr %rmmio_size.i485 to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load i32, ptr %rmmio_size.i485, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %167, i32 %add217)
  %cmp.i551 = icmp ugt i32 %167, %add217
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %add217)
  %cmp1.i552 = icmp ult i32 %add217, 65536
  %or.cond.i553 = or i1 %cmp1.i552, %cmp.i551
  br i1 %or.cond.i553, label %do.body.i556, label %if.else.i557

do.body.i556:                                     ; preds = %r100_mm_rreg.exit
  call void @__sanitizer_cov_trace_pc() #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !40
  call void @arm_heavy_mb() #7
  %168 = call i32 @llvm.bswap.i32(i32 %or215) #7
  %rmmio.i554 = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 31
  %169 = ptrtoint ptr %rmmio.i554 to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %rmmio.i554, align 4
  %add.ptr.i555 = getelementptr i8, ptr %170, i32 %add217
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i555, i32 %168) #7, !srcloc !41
  br label %r100_mm_wreg.exit558

if.else.i557:                                     ; preds = %r100_mm_rreg.exit
  call void @__sanitizer_cov_trace_pc() #9
  call void @r100_mm_wreg_slow(ptr noundef %3, i32 noundef %add217, i32 noundef %or215) #7
  br label %r100_mm_wreg.exit558

r100_mm_wreg.exit558:                             ; preds = %if.else.i557, %do.body.i556
  br i1 %bypass_lut.0.off0, label %if.then219, label %r100_mm_wreg.exit558.if.end220_crit_edge

r100_mm_wreg.exit558.if.end220_crit_edge:         ; preds = %r100_mm_wreg.exit558
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end220

if.then219:                                       ; preds = %r100_mm_wreg.exit558
  call void @__sanitizer_cov_trace_pc() #9
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.3) #7
  br label %if.end220

if.end220:                                        ; preds = %if.then219, %r100_mm_wreg.exit558.if.end220_crit_edge
  %171 = ptrtoint ptr %crtc_offset to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load i32, ptr %crtc_offset, align 8
  %add222 = add i32 %172, 26660
  %173 = ptrtoint ptr %rmmio_size.i485 to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load i32, ptr %rmmio_size.i485, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %174, i32 %add222)
  %cmp.i560 = icmp ugt i32 %174, %add222
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %add222)
  %cmp1.i561 = icmp ult i32 %add222, 65536
  %or.cond.i562 = or i1 %cmp1.i561, %cmp.i560
  br i1 %or.cond.i562, label %do.body.i565, label %if.else.i566

do.body.i565:                                     ; preds = %if.end220
  call void @__sanitizer_cov_trace_pc() #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !40
  call void @arm_heavy_mb() #7
  %rmmio.i563 = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 31
  %175 = ptrtoint ptr %rmmio.i563 to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %rmmio.i563, align 4
  %add.ptr.i564 = getelementptr i8, ptr %176, i32 %add222
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i564, i32 0) #7, !srcloc !41
  br label %r100_mm_wreg.exit567

if.else.i566:                                     ; preds = %if.end220
  call void @__sanitizer_cov_trace_pc() #9
  call void @r100_mm_wreg_slow(ptr noundef %3, i32 noundef %add222, i32 noundef 0) #7
  br label %r100_mm_wreg.exit567

r100_mm_wreg.exit567:                             ; preds = %if.else.i566, %do.body.i565
  %177 = ptrtoint ptr %crtc_offset to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load i32, ptr %crtc_offset, align 8
  %add224 = add i32 %178, 26664
  %179 = ptrtoint ptr %rmmio_size.i485 to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load i32, ptr %rmmio_size.i485, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %180, i32 %add224)
  %cmp.i569 = icmp ugt i32 %180, %add224
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %add224)
  %cmp1.i570 = icmp ult i32 %add224, 65536
  %or.cond.i571 = or i1 %cmp1.i570, %cmp.i569
  br i1 %or.cond.i571, label %do.body.i574, label %if.else.i575

do.body.i574:                                     ; preds = %r100_mm_wreg.exit567
  call void @__sanitizer_cov_trace_pc() #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !40
  call void @arm_heavy_mb() #7
  %rmmio.i572 = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 31
  %181 = ptrtoint ptr %rmmio.i572 to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %rmmio.i572, align 4
  %add.ptr.i573 = getelementptr i8, ptr %182, i32 %add224
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i573, i32 0) #7, !srcloc !41
  br label %r100_mm_wreg.exit576

if.else.i575:                                     ; preds = %r100_mm_wreg.exit567
  call void @__sanitizer_cov_trace_pc() #9
  call void @r100_mm_wreg_slow(ptr noundef %3, i32 noundef %add224, i32 noundef 0) #7
  br label %r100_mm_wreg.exit576

r100_mm_wreg.exit576:                             ; preds = %if.else.i575, %do.body.i574
  %183 = ptrtoint ptr %crtc_offset to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load i32, ptr %crtc_offset, align 8
  %add226 = add i32 %184, 26668
  %185 = ptrtoint ptr %rmmio_size.i485 to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load i32, ptr %rmmio_size.i485, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %186, i32 %add226)
  %cmp.i578 = icmp ugt i32 %186, %add226
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %add226)
  %cmp1.i579 = icmp ult i32 %add226, 65536
  %or.cond.i580 = or i1 %cmp1.i579, %cmp.i578
  br i1 %or.cond.i580, label %do.body.i583, label %if.else.i584

do.body.i583:                                     ; preds = %r100_mm_wreg.exit576
  call void @__sanitizer_cov_trace_pc() #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !40
  call void @arm_heavy_mb() #7
  %rmmio.i581 = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 31
  %187 = ptrtoint ptr %rmmio.i581 to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %rmmio.i581, align 4
  %add.ptr.i582 = getelementptr i8, ptr %188, i32 %add226
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i582, i32 0) #7, !srcloc !41
  br label %r100_mm_wreg.exit585

if.else.i584:                                     ; preds = %r100_mm_wreg.exit576
  call void @__sanitizer_cov_trace_pc() #9
  call void @r100_mm_wreg_slow(ptr noundef %3, i32 noundef %add226, i32 noundef 0) #7
  br label %r100_mm_wreg.exit585

r100_mm_wreg.exit585:                             ; preds = %if.else.i584, %do.body.i583
  %189 = ptrtoint ptr %crtc_offset to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load i32, ptr %crtc_offset, align 8
  %add228 = add i32 %190, 26672
  %191 = ptrtoint ptr %rmmio_size.i485 to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load i32, ptr %rmmio_size.i485, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %192, i32 %add228)
  %cmp.i587 = icmp ugt i32 %192, %add228
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %add228)
  %cmp1.i588 = icmp ult i32 %add228, 65536
  %or.cond.i589 = or i1 %cmp1.i588, %cmp.i587
  br i1 %or.cond.i589, label %do.body.i592, label %if.else.i593

do.body.i592:                                     ; preds = %r100_mm_wreg.exit585
  call void @__sanitizer_cov_trace_pc() #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !40
  call void @arm_heavy_mb() #7
  %rmmio.i590 = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 31
  %193 = ptrtoint ptr %rmmio.i590 to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %rmmio.i590, align 4
  %add.ptr.i591 = getelementptr i8, ptr %194, i32 %add228
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i591, i32 0) #7, !srcloc !41
  br label %r100_mm_wreg.exit594

if.else.i593:                                     ; preds = %r100_mm_wreg.exit585
  call void @__sanitizer_cov_trace_pc() #9
  call void @r100_mm_wreg_slow(ptr noundef %3, i32 noundef %add228, i32 noundef 0) #7
  br label %r100_mm_wreg.exit594

r100_mm_wreg.exit594:                             ; preds = %if.else.i593, %do.body.i592
  %195 = ptrtoint ptr %crtc_offset to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load i32, ptr %crtc_offset, align 8
  %add230 = add i32 %196, 26676
  %width = getelementptr inbounds %struct.drm_framebuffer, ptr %target_fb.0, i32 0, i32 9
  %197 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load i32, ptr %width, align 8
  %199 = ptrtoint ptr %rmmio_size.i485 to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load i32, ptr %rmmio_size.i485, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %200, i32 %add230)
  %cmp.i596 = icmp ugt i32 %200, %add230
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %add230)
  %cmp1.i597 = icmp ult i32 %add230, 65536
  %or.cond.i598 = or i1 %cmp1.i597, %cmp.i596
  br i1 %or.cond.i598, label %do.body.i601, label %if.else.i602

do.body.i601:                                     ; preds = %r100_mm_wreg.exit594
  call void @__sanitizer_cov_trace_pc() #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !40
  call void @arm_heavy_mb() #7
  %201 = call i32 @llvm.bswap.i32(i32 %198) #7
  %rmmio.i599 = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 31
  %202 = ptrtoint ptr %rmmio.i599 to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %rmmio.i599, align 4
  %add.ptr.i600 = getelementptr i8, ptr %203, i32 %add230
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i600, i32 %201) #7, !srcloc !41
  br label %r100_mm_wreg.exit603

if.else.i602:                                     ; preds = %r100_mm_wreg.exit594
  call void @__sanitizer_cov_trace_pc() #9
  call void @r100_mm_wreg_slow(ptr noundef %3, i32 noundef %add230, i32 noundef %198) #7
  br label %r100_mm_wreg.exit603

r100_mm_wreg.exit603:                             ; preds = %if.else.i602, %do.body.i601
  %204 = ptrtoint ptr %crtc_offset to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load i32, ptr %crtc_offset, align 8
  %add232 = add i32 %205, 26680
  %height = getelementptr inbounds %struct.drm_framebuffer, ptr %target_fb.0, i32 0, i32 10
  %206 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load i32, ptr %height, align 4
  %208 = ptrtoint ptr %rmmio_size.i485 to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load i32, ptr %rmmio_size.i485, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %209, i32 %add232)
  %cmp.i605 = icmp ugt i32 %209, %add232
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %add232)
  %cmp1.i606 = icmp ult i32 %add232, 65536
  %or.cond.i607 = or i1 %cmp1.i606, %cmp.i605
  br i1 %or.cond.i607, label %do.body.i610, label %if.else.i611

do.body.i610:                                     ; preds = %r100_mm_wreg.exit603
  call void @__sanitizer_cov_trace_pc() #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !40
  call void @arm_heavy_mb() #7
  %210 = call i32 @llvm.bswap.i32(i32 %207) #7
  %rmmio.i608 = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 31
  %211 = ptrtoint ptr %rmmio.i608 to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load ptr, ptr %rmmio.i608, align 4
  %add.ptr.i609 = getelementptr i8, ptr %212, i32 %add232
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i609, i32 %210) #7, !srcloc !41
  br label %r100_mm_wreg.exit612

if.else.i611:                                     ; preds = %r100_mm_wreg.exit603
  call void @__sanitizer_cov_trace_pc() #9
  call void @r100_mm_wreg_slow(ptr noundef %3, i32 noundef %add232, i32 noundef %207) #7
  br label %r100_mm_wreg.exit612

r100_mm_wreg.exit612:                             ; preds = %if.else.i611, %do.body.i610
  %pitches = getelementptr inbounds %struct.drm_framebuffer, ptr %target_fb.0, i32 0, i32 6
  %213 = ptrtoint ptr %pitches to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load i32, ptr %pitches, align 8
  %215 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load ptr, ptr %format, align 8
  %217 = getelementptr inbounds %struct.drm_format_info, ptr %216, i32 0, i32 3
  %218 = ptrtoint ptr %217 to i32
  call void @__asan_load1_noabort(i32 %218)
  %219 = load i8, ptr %217, align 2
  %conv236 = zext i8 %219 to i32
  %div = udiv i32 %214, %conv236
  %220 = ptrtoint ptr %crtc_offset to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load i32, ptr %crtc_offset, align 8
  %add238 = add i32 %221, 26648
  %222 = ptrtoint ptr %rmmio_size.i485 to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load i32, ptr %rmmio_size.i485, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %223, i32 %add238)
  %cmp.i614 = icmp ugt i32 %223, %add238
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %add238)
  %cmp1.i615 = icmp ult i32 %add238, 65536
  %or.cond.i616 = or i1 %cmp1.i615, %cmp.i614
  br i1 %or.cond.i616, label %do.body.i619, label %if.else.i620

do.body.i619:                                     ; preds = %r100_mm_wreg.exit612
  call void @__sanitizer_cov_trace_pc() #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !40
  call void @arm_heavy_mb() #7
  %224 = call i32 @llvm.bswap.i32(i32 %div) #7
  %rmmio.i617 = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 31
  %225 = ptrtoint ptr %rmmio.i617 to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load ptr, ptr %rmmio.i617, align 4
  %add.ptr.i618 = getelementptr i8, ptr %226, i32 %add238
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i618, i32 %224) #7, !srcloc !41
  br label %r100_mm_wreg.exit621

if.else.i620:                                     ; preds = %r100_mm_wreg.exit612
  call void @__sanitizer_cov_trace_pc() #9
  call void @r100_mm_wreg_slow(ptr noundef %3, i32 noundef %add238, i32 noundef %div) #7
  br label %r100_mm_wreg.exit621

r100_mm_wreg.exit621:                             ; preds = %if.else.i620, %do.body.i619
  %227 = ptrtoint ptr %crtc_offset to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load i32, ptr %crtc_offset, align 8
  %add240 = add i32 %228, 26624
  %229 = ptrtoint ptr %rmmio_size.i485 to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load i32, ptr %rmmio_size.i485, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %230, i32 %add240)
  %cmp.i623 = icmp ugt i32 %230, %add240
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %add240)
  %cmp1.i624 = icmp ult i32 %add240, 65536
  %or.cond.i625 = or i1 %cmp1.i624, %cmp.i623
  br i1 %or.cond.i625, label %do.body.i628, label %if.else.i629

do.body.i628:                                     ; preds = %r100_mm_wreg.exit621
  call void @__sanitizer_cov_trace_pc() #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !40
  call void @arm_heavy_mb() #7
  %rmmio.i626 = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 31
  %231 = ptrtoint ptr %rmmio.i626 to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load ptr, ptr %rmmio.i626, align 4
  %add.ptr.i627 = getelementptr i8, ptr %232, i32 %add240
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i627, i32 16777216) #7, !srcloc !41
  br label %r100_mm_wreg.exit630

if.else.i629:                                     ; preds = %r100_mm_wreg.exit621
  call void @__sanitizer_cov_trace_pc() #9
  call void @r100_mm_wreg_slow(ptr noundef %3, i32 noundef %add240, i32 noundef 1) #7
  br label %r100_mm_wreg.exit630

r100_mm_wreg.exit630:                             ; preds = %if.else.i629, %do.body.i628
  %233 = ptrtoint ptr %family139 to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load i32, ptr %family139, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 56, i32 %234)
  %cmp242 = icmp ugt i32 %234, 56
  %235 = ptrtoint ptr %crtc_offset to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load i32, ptr %crtc_offset, align 8
  br i1 %cmp242, label %if.then244, label %if.else248

if.then244:                                       ; preds = %r100_mm_wreg.exit630
  %add246 = add i32 %236, 27404
  %237 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load i32, ptr %height, align 4
  %239 = ptrtoint ptr %rmmio_size.i485 to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load i32, ptr %rmmio_size.i485, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %240, i32 %add246)
  %cmp.i632 = icmp ugt i32 %240, %add246
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %add246)
  %cmp1.i633 = icmp ult i32 %add246, 65536
  %or.cond.i634 = or i1 %cmp1.i633, %cmp.i632
  br i1 %or.cond.i634, label %do.body.i637, label %if.else.i638

do.body.i637:                                     ; preds = %if.then244
  call void @__sanitizer_cov_trace_pc() #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !40
  call void @arm_heavy_mb() #7
  %241 = call i32 @llvm.bswap.i32(i32 %238) #7
  %rmmio.i635 = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 31
  %242 = ptrtoint ptr %rmmio.i635 to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load ptr, ptr %rmmio.i635, align 4
  %add.ptr.i636 = getelementptr i8, ptr %243, i32 %add246
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i636, i32 %241) #7, !srcloc !41
  br label %if.end252

if.else.i638:                                     ; preds = %if.then244
  call void @__sanitizer_cov_trace_pc() #9
  call void @r100_mm_wreg_slow(ptr noundef %3, i32 noundef %add246, i32 noundef %238) #7
  br label %if.end252

if.else248:                                       ; preds = %r100_mm_wreg.exit630
  %add250 = add i32 %236, 27396
  %244 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load i32, ptr %height, align 4
  %246 = ptrtoint ptr %rmmio_size.i485 to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load i32, ptr %rmmio_size.i485, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %247, i32 %add250)
  %cmp.i641 = icmp ugt i32 %247, %add250
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %add250)
  %cmp1.i642 = icmp ult i32 %add250, 65536
  %or.cond.i643 = or i1 %cmp1.i642, %cmp.i641
  br i1 %or.cond.i643, label %do.body.i646, label %if.else.i647

do.body.i646:                                     ; preds = %if.else248
  call void @__sanitizer_cov_trace_pc() #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !40
  call void @arm_heavy_mb() #7
  %248 = call i32 @llvm.bswap.i32(i32 %245) #7
  %rmmio.i644 = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 31
  %249 = ptrtoint ptr %rmmio.i644 to i32
  call void @__asan_load4_noabort(i32 %249)
  %250 = load ptr, ptr %rmmio.i644, align 4
  %add.ptr.i645 = getelementptr i8, ptr %250, i32 %add250
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i645, i32 %248) #7, !srcloc !41
  br label %if.end252

if.else.i647:                                     ; preds = %if.else248
  call void @__sanitizer_cov_trace_pc() #9
  call void @r100_mm_wreg_slow(ptr noundef %3, i32 noundef %add250, i32 noundef %245) #7
  br label %if.end252

if.end252:                                        ; preds = %if.else.i647, %do.body.i646, %if.else.i638, %do.body.i637
  %and254 = and i32 %y, -2
  %251 = ptrtoint ptr %crtc_offset to i32
  call void @__asan_load4_noabort(i32 %251)
  %252 = load i32, ptr %crtc_offset, align 8
  %add256 = add i32 %252, 28016
  %and253 = shl i32 %x, 16
  %shl257 = and i32 %and253, -262144
  %or258 = or i32 %shl257, %and254
  %253 = ptrtoint ptr %rmmio_size.i485 to i32
  call void @__asan_load4_noabort(i32 %253)
  %254 = load i32, ptr %rmmio_size.i485, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %254, i32 %add256)
  %cmp.i650 = icmp ugt i32 %254, %add256
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %add256)
  %cmp1.i651 = icmp ult i32 %add256, 65536
  %or.cond.i652 = or i1 %cmp1.i651, %cmp.i650
  br i1 %or.cond.i652, label %do.body.i655, label %if.else.i656

do.body.i655:                                     ; preds = %if.end252
  call void @__sanitizer_cov_trace_pc() #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !40
  call void @arm_heavy_mb() #7
  %255 = call i32 @llvm.bswap.i32(i32 %or258) #7
  %rmmio.i653 = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 31
  %256 = ptrtoint ptr %rmmio.i653 to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load ptr, ptr %rmmio.i653, align 4
  %add.ptr.i654 = getelementptr i8, ptr %257, i32 %add256
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i654, i32 %255) #7, !srcloc !41
  br label %r100_mm_wreg.exit657

if.else.i656:                                     ; preds = %if.end252
  call void @__sanitizer_cov_trace_pc() #9
  call void @r100_mm_wreg_slow(ptr noundef %3, i32 noundef %add256, i32 noundef %or258) #7
  br label %r100_mm_wreg.exit657

r100_mm_wreg.exit657:                             ; preds = %if.else.i656, %do.body.i655
  %hdisplay = getelementptr inbounds %struct.drm_crtc, ptr %crtc, i32 0, i32 12, i32 1
  %258 = ptrtoint ptr %hdisplay to i32
  call void @__asan_load2_noabort(i32 %258)
  %259 = load i16, ptr %hdisplay, align 4
  %conv259 = zext i16 %259 to i32
  %vdisplay = getelementptr inbounds %struct.drm_crtc, ptr %crtc, i32 0, i32 12, i32 6
  %260 = ptrtoint ptr %vdisplay to i32
  call void @__asan_load2_noabort(i32 %260)
  %261 = load i16, ptr %vdisplay, align 2
  %conv261 = zext i16 %261 to i32
  %add262 = add nuw nsw i32 %conv261, 1
  %and263 = and i32 %add262, 131070
  %262 = ptrtoint ptr %family139 to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load i32, ptr %family139, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 56, i32 %263)
  %cmp265 = icmp ugt i32 %263, 56
  br i1 %cmp265, label %land.lhs.true267, label %r100_mm_wreg.exit657.if.end273_crit_edge

r100_mm_wreg.exit657.if.end273_crit_edge:         ; preds = %r100_mm_wreg.exit657
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end273

land.lhs.true267:                                 ; preds = %r100_mm_wreg.exit657
  call void @__sanitizer_cov_trace_pc() #9
  %flags = getelementptr inbounds %struct.drm_crtc, ptr %crtc, i32 0, i32 12, i32 11
  %264 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %264)
  %265 = load i32, ptr %flags, align 4
  %and269 = lshr i32 %265, 4
  %and269.lobit = and i32 %and269, 1
  %spec.select464 = shl nuw nsw i32 %and263, %and269.lobit
  br label %if.end273

if.end273:                                        ; preds = %land.lhs.true267, %r100_mm_wreg.exit657.if.end273_crit_edge
  %viewport_h.0 = phi i32 [ %and263, %r100_mm_wreg.exit657.if.end273_crit_edge ], [ %spec.select464, %land.lhs.true267 ]
  %266 = ptrtoint ptr %crtc_offset to i32
  call void @__asan_load4_noabort(i32 %266)
  %267 = load i32, ptr %crtc_offset, align 8
  %add275 = add i32 %267, 28020
  %shl276 = shl nuw i32 %conv259, 16
  %or277 = or i32 %viewport_h.0, %shl276
  %268 = ptrtoint ptr %rmmio_size.i485 to i32
  call void @__asan_load4_noabort(i32 %268)
  %269 = load i32, ptr %rmmio_size.i485, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %269, i32 %add275)
  %cmp.i659 = icmp ugt i32 %269, %add275
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %add275)
  %cmp1.i660 = icmp ult i32 %add275, 65536
  %or.cond.i661 = or i1 %cmp1.i660, %cmp.i659
  br i1 %or.cond.i661, label %do.body.i664, label %if.else.i665

do.body.i664:                                     ; preds = %if.end273
  call void @__sanitizer_cov_trace_pc() #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !40
  call void @arm_heavy_mb() #7
  %270 = call i32 @llvm.bswap.i32(i32 %or277) #7
  %rmmio.i662 = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 31
  %271 = ptrtoint ptr %rmmio.i662 to i32
  call void @__asan_load4_noabort(i32 %271)
  %272 = load ptr, ptr %rmmio.i662, align 4
  %add.ptr.i663 = getelementptr i8, ptr %272, i32 %add275
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i663, i32 %270) #7, !srcloc !41
  br label %r100_mm_wreg.exit666

if.else.i665:                                     ; preds = %if.end273
  call void @__sanitizer_cov_trace_pc() #9
  call void @r100_mm_wreg_slow(ptr noundef %3, i32 noundef %add275, i32 noundef %or277) #7
  br label %r100_mm_wreg.exit666

r100_mm_wreg.exit666:                             ; preds = %if.else.i665, %do.body.i664
  %273 = ptrtoint ptr %crtc_offset to i32
  call void @__asan_load4_noabort(i32 %273)
  %274 = load i32, ptr %crtc_offset, align 8
  %add279 = add i32 %274, 28408
  %275 = ptrtoint ptr %rmmio_size.i485 to i32
  call void @__asan_load4_noabort(i32 %275)
  %276 = load i32, ptr %rmmio_size.i485, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %276, i32 %add279)
  %cmp.i668 = icmp ugt i32 %276, %add279
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %add279)
  %cmp1.i669 = icmp ult i32 %add279, 65536
  %or.cond.i670 = or i1 %cmp1.i669, %cmp.i668
  br i1 %or.cond.i670, label %do.body.i673, label %if.else.i674

do.body.i673:                                     ; preds = %r100_mm_wreg.exit666
  call void @__sanitizer_cov_trace_pc() #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !40
  call void @arm_heavy_mb() #7
  %rmmio.i671 = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 31
  %277 = ptrtoint ptr %rmmio.i671 to i32
  call void @__asan_load4_noabort(i32 %277)
  %278 = load ptr, ptr %rmmio.i671, align 4
  %add.ptr.i672 = getelementptr i8, ptr %278, i32 %add279
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i672, i32 0) #7, !srcloc !41
  br label %r100_mm_wreg.exit675

if.else.i674:                                     ; preds = %r100_mm_wreg.exit666
  call void @__sanitizer_cov_trace_pc() #9
  call void @r100_mm_wreg_slow(ptr noundef %3, i32 noundef %add279, i32 noundef 0) #7
  br label %r100_mm_wreg.exit675

r100_mm_wreg.exit675:                             ; preds = %if.else.i674, %do.body.i673
  %tobool282.not = icmp ne ptr %fb, null
  %279 = and i1 %tobool282.not, %tobool.not
  br i1 %279, label %land.lhs.true283, label %r100_mm_wreg.exit675.if.end305_crit_edge

r100_mm_wreg.exit675.if.end305_crit_edge:         ; preds = %r100_mm_wreg.exit675
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end305

land.lhs.true283:                                 ; preds = %r100_mm_wreg.exit675
  %primary284 = getelementptr inbounds %struct.drm_crtc, ptr %crtc, i32 0, i32 6
  %280 = ptrtoint ptr %primary284 to i32
  call void @__asan_load4_noabort(i32 %280)
  %281 = load ptr, ptr %primary284, align 4
  %fb285 = getelementptr inbounds %struct.drm_plane, ptr %281, i32 0, i32 12
  %282 = ptrtoint ptr %fb285 to i32
  call void @__asan_load4_noabort(i32 %282)
  %283 = load ptr, ptr %fb285, align 4
  %cmp286.not = icmp eq ptr %283, %fb
  br i1 %cmp286.not, label %land.lhs.true283.if.end305_crit_edge, label %if.then288

land.lhs.true283.if.end305_crit_edge:             ; preds = %land.lhs.true283
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end305

if.then288:                                       ; preds = %land.lhs.true283
  %obj290 = getelementptr inbounds %struct.drm_framebuffer, ptr %fb, i32 0, i32 15
  %284 = ptrtoint ptr %obj290 to i32
  call void @__asan_load4_noabort(i32 %284)
  %285 = load ptr, ptr %obj290, align 4
  %add.ptr293 = getelementptr i8, ptr %285, i32 -96
  %resv32.i.i676 = getelementptr i8, ptr %285, i32 200
  %286 = ptrtoint ptr %resv32.i.i676 to i32
  call void @__asan_load4_noabort(i32 %286)
  %287 = load ptr, ptr %resv32.i.i676, align 8
  %call.i.i.i677 = call i32 @ww_mutex_lock_interruptible(ptr noundef %287, ptr noundef null) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -4, i32 %call.i.i.i677)
  %cmp.i.i678 = icmp eq i32 %call.i.i.i677, -4
  %retval.1.i.i679 = select i1 %cmp.i.i678, i32 -512, i32 %call.i.i.i677
  %288 = zext i32 %retval.1.i.i679 to i64
  call void @__sanitizer_cov_trace_switch(i64 %288, ptr @__sancov_gen_cov_switch_values.19)
  switch i32 %retval.1.i.i679, label %do.end.i681 [
    i32 0, label %if.end304
    i32 -512, label %if.then288.cleanup306_crit_edge
  ], !prof !43

if.then288.cleanup306_crit_edge:                  ; preds = %if.then288
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup306

do.end.i681:                                      ; preds = %if.then288
  call void @__sanitizer_cov_trace_pc() #9
  %rdev.i680 = getelementptr i8, ptr %285, i32 464
  %289 = ptrtoint ptr %rdev.i680 to i32
  call void @__asan_load4_noabort(i32 %289)
  %290 = load ptr, ptr %rdev.i680, align 8
  %291 = ptrtoint ptr %290 to i32
  call void @__asan_load4_noabort(i32 %291)
  %292 = load ptr, ptr %290, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %292, ptr noundef nonnull @.str.4, ptr noundef %add.ptr293) #10
  br label %cleanup306

if.end304:                                        ; preds = %if.then288
  call void @__sanitizer_cov_trace_pc() #9
  call void @radeon_bo_unpin(ptr noundef %add.ptr293) #7
  %bdev.i.i.i684 = getelementptr i8, ptr %285, i32 352
  %293 = ptrtoint ptr %bdev.i.i.i684 to i32
  call void @__asan_load4_noabort(i32 %293)
  %294 = load ptr, ptr %bdev.i.i.i684, align 8
  %lru_lock.i.i.i685 = getelementptr inbounds %struct.ttm_device, ptr %294, i32 0, i32 6
  call void @_raw_spin_lock(ptr noundef %lru_lock.i.i.i685) #7
  %resource.i.i.i686 = getelementptr i8, ptr %285, i32 372
  %295 = ptrtoint ptr %resource.i.i.i686 to i32
  call void @__asan_load4_noabort(i32 %295)
  %296 = load ptr, ptr %resource.i.i.i686, align 4
  call void @ttm_bo_move_to_lru_tail(ptr noundef %285, ptr noundef %296, ptr noundef null) #7
  %297 = ptrtoint ptr %bdev.i.i.i684 to i32
  call void @__asan_load4_noabort(i32 %297)
  %298 = load ptr, ptr %bdev.i.i.i684, align 8
  %lru_lock2.i.i.i687 = getelementptr inbounds %struct.ttm_device, ptr %298, i32 0, i32 6
  call void @_raw_spin_unlock(ptr noundef %lru_lock2.i.i.i687) #7
  %299 = ptrtoint ptr %resv32.i.i676 to i32
  call void @__asan_load4_noabort(i32 %299)
  %300 = load ptr, ptr %resv32.i.i676, align 8
  call void @dma_resv_reset_shared_max(ptr noundef %300) #7
  call void @ww_mutex_unlock(ptr noundef %300) #7
  br label %if.end305

if.end305:                                        ; preds = %if.end304, %land.lhs.true283.if.end305_crit_edge, %r100_mm_wreg.exit675.if.end305_crit_edge
  %asic = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 56
  %301 = ptrtoint ptr %asic to i32
  call void @__asan_load4_noabort(i32 %301)
  %302 = load ptr, ptr %asic, align 8
  %display = getelementptr inbounds %struct.radeon_asic, ptr %302, i32 0, i32 16
  %303 = ptrtoint ptr %display to i32
  call void @__asan_load4_noabort(i32 %303)
  %304 = load ptr, ptr %display, align 4
  call void %304(ptr noundef %3) #7
  br label %cleanup306

cleanup306:                                       ; preds = %if.end305, %do.end.i681, %if.then288.cleanup306_crit_edge, %cleanup88, %sw.default, %if.then30, %do.end.i, %if.end9.cleanup306_crit_edge, %if.then
  %retval.3 = phi i32 [ -22, %sw.default ], [ 0, %if.end305 ], [ -22, %cleanup88 ], [ -22, %if.then30 ], [ 0, %if.then ], [ %retval.1.i.i, %do.end.i ], [ %retval.1.i.i679, %do.end.i681 ], [ %retval.1.i.i, %if.end9.cleanup306_crit_edge ], [ %retval.1.i.i679, %if.then288.cleanup306_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tile_split) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mtaspect) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bankh) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bankw) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tiling_flags) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %fb_location) #7
  ret i32 %retval.3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @avivo_crtc_do_set_base(ptr nocapture noundef readonly %crtc, ptr noundef readonly %fb, i32 noundef %x, i32 noundef %y, i32 noundef %atomic) unnamed_addr #0 align 64 {
entry:
  %fb_location = alloca i64, align 8
  %tiling_flags = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %crtc, align 8
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_private, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %fb_location) #7
  %4 = ptrtoint ptr %fb_location to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 -1, ptr %fb_location, align 8, !annotation !42
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tiling_flags) #7
  %5 = ptrtoint ptr %tiling_flags to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %tiling_flags, align 4, !annotation !42
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %atomic)
  %tobool.not = icmp eq i32 %atomic, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.if.end8_crit_edge

entry.if.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8

land.lhs.true:                                    ; preds = %entry
  %primary = getelementptr inbounds %struct.drm_crtc, ptr %crtc, i32 0, i32 6
  %6 = ptrtoint ptr %primary to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %primary, align 4
  %fb2 = getelementptr inbounds %struct.drm_plane, ptr %7, i32 0, i32 12
  %8 = ptrtoint ptr %fb2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %fb2, align 4
  %tobool3.not = icmp eq ptr %9, null
  br i1 %tobool3.not, label %if.then, label %land.lhs.true.if.end8_crit_edge

land.lhs.true.if.end8_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str) #7
  br label %cleanup

if.end8:                                          ; preds = %land.lhs.true.if.end8_crit_edge, %entry.if.end8_crit_edge
  %target_fb.0 = phi ptr [ %fb, %entry.if.end8_crit_edge ], [ %9, %land.lhs.true.if.end8_crit_edge ]
  %obj9 = getelementptr inbounds %struct.drm_framebuffer, ptr %target_fb.0, i32 0, i32 15
  %10 = ptrtoint ptr %obj9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %obj9, align 4
  %add.ptr12 = getelementptr i8, ptr %11, i32 -96
  %resv32.i.i = getelementptr i8, ptr %11, i32 200
  %12 = ptrtoint ptr %resv32.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %resv32.i.i, align 8
  %call.i.i.i = tail call i32 @ww_mutex_lock_interruptible(ptr noundef %13, ptr noundef null) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -4, i32 %call.i.i.i)
  %cmp.i.i = icmp eq i32 %call.i.i.i, -4
  %retval.1.i.i = select i1 %cmp.i.i, i32 -512, i32 %call.i.i.i
  %14 = zext i32 %retval.1.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.20)
  switch i32 %retval.1.i.i, label %do.end.i [
    i32 0, label %if.end16
    i32 -512, label %if.end8.cleanup_crit_edge
  ], !prof !43

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end.i:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  %rdev.i = getelementptr i8, ptr %11, i32 464
  %15 = ptrtoint ptr %rdev.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %rdev.i, align 8
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %16, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %18, ptr noundef nonnull @.str.4, ptr noundef %add.ptr12) #10
  br label %cleanup

if.end16:                                         ; preds = %if.end8
  br i1 %tobool.not, label %if.else20, label %if.then18

if.then18:                                        ; preds = %if.end16
  %bdev.i = getelementptr i8, ptr %11, i32 352
  %19 = ptrtoint ptr %bdev.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %bdev.i, align 8
  %call.i = tail call ptr @radeon_get_rdev(ptr noundef %20) #7
  %resource.i = getelementptr i8, ptr %11, i32 372
  %21 = ptrtoint ptr %resource.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %resource.i, align 4
  %mem_type.i = getelementptr inbounds %struct.ttm_resource, ptr %22, i32 0, i32 2
  %23 = ptrtoint ptr %mem_type.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %mem_type.i, align 4
  %25 = zext i32 %24 to i64
  call void @__sanitizer_cov_trace_switch(i64 %25, ptr @__sancov_gen_cov_switch_values.21)
  switch i32 %24, label %if.then18.radeon_bo_gpu_offset.exit_crit_edge [
    i32 1, label %sw.bb.i
    i32 2, label %sw.bb2.i
  ]

if.then18.radeon_bo_gpu_offset.exit_crit_edge:    ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #9
  br label %radeon_bo_gpu_offset.exit

sw.bb.i:                                          ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #9
  %gtt_start.i = getelementptr inbounds %struct.radeon_device, ptr %call.i, i32 0, i32 42, i32 6
  br label %sw.epilog.sink.split.i

sw.bb2.i:                                         ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #9
  %vram_start.i = getelementptr inbounds %struct.radeon_device, ptr %call.i, i32 0, i32 42, i32 8
  br label %sw.epilog.sink.split.i

sw.epilog.sink.split.i:                           ; preds = %sw.bb2.i, %sw.bb.i
  %vram_start.sink.i = phi ptr [ %vram_start.i, %sw.bb2.i ], [ %gtt_start.i, %sw.bb.i ]
  %26 = ptrtoint ptr %vram_start.sink.i to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %vram_start.sink.i, align 8
  br label %radeon_bo_gpu_offset.exit

radeon_bo_gpu_offset.exit:                        ; preds = %sw.epilog.sink.split.i, %if.then18.radeon_bo_gpu_offset.exit_crit_edge
  %start.0.i = phi i64 [ 0, %if.then18.radeon_bo_gpu_offset.exit_crit_edge ], [ %27, %sw.epilog.sink.split.i ]
  %28 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %22, align 4
  %shl.i = shl i32 %29, 12
  %conv.i = zext i32 %shl.i to i64
  %add.i = add i64 %start.0.i, %conv.i
  %30 = ptrtoint ptr %fb_location to i32
  call void @__asan_store8_noabort(i32 %30)
  store i64 %add.i, ptr %fb_location, align 8
  br label %if.end31

if.else20:                                        ; preds = %if.end16
  %call21 = call i32 @radeon_bo_pin(ptr noundef %add.ptr12, i32 noundef 4, ptr noundef nonnull %fb_location) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %cmp22.not = icmp eq i32 %call21, 0
  br i1 %cmp22.not, label %if.else20.if.end31_crit_edge, label %if.then29, !prof !44

if.else20.if.end31_crit_edge:                     ; preds = %if.else20
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end31

if.then29:                                        ; preds = %if.else20
  call void @__sanitizer_cov_trace_pc() #9
  call fastcc void @radeon_bo_unreserve(ptr noundef %add.ptr12)
  br label %cleanup

if.end31:                                         ; preds = %if.else20.if.end31_crit_edge, %radeon_bo_gpu_offset.exit
  call void @radeon_bo_get_tiling_flags(ptr noundef %add.ptr12, ptr noundef nonnull %tiling_flags, ptr noundef null) #7
  %bdev.i.i.i = getelementptr i8, ptr %11, i32 352
  %31 = ptrtoint ptr %bdev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %bdev.i.i.i, align 8
  %lru_lock.i.i.i = getelementptr inbounds %struct.ttm_device, ptr %32, i32 0, i32 6
  call void @_raw_spin_lock(ptr noundef %lru_lock.i.i.i) #7
  %resource.i.i.i = getelementptr i8, ptr %11, i32 372
  %33 = ptrtoint ptr %resource.i.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %resource.i.i.i, align 4
  call void @ttm_bo_move_to_lru_tail(ptr noundef %11, ptr noundef %34, ptr noundef null) #7
  %35 = ptrtoint ptr %bdev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %bdev.i.i.i, align 8
  %lru_lock2.i.i.i = getelementptr inbounds %struct.ttm_device, ptr %36, i32 0, i32 6
  call void @_raw_spin_unlock(ptr noundef %lru_lock2.i.i.i) #7
  %37 = ptrtoint ptr %resv32.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %resv32.i.i, align 8
  call void @dma_resv_reset_shared_max(ptr noundef %38) #7
  call void @ww_mutex_unlock(ptr noundef %38) #7
  %format = getelementptr inbounds %struct.drm_framebuffer, ptr %target_fb.0, i32 0, i32 4
  %39 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %format, align 8
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %40, align 4
  %43 = zext i32 %42 to i64
  call void @__sanitizer_cov_trace_switch(i64 %43, ptr @__sancov_gen_cov_switch_values.22)
  switch i32 %42, label %sw.default [
    i32 538982467, label %if.end31.sw.epilog_crit_edge
    i32 842093144, label %if.end31.sw.bb33_crit_edge
    i32 842093121, label %if.end31.sw.bb33_crit_edge497
    i32 892424792, label %sw.bb34
    i32 909199186, label %sw.bb35
    i32 875713112, label %if.end31.sw.bb36_crit_edge
    i32 875713089, label %if.end31.sw.bb36_crit_edge498
    i32 808669784, label %if.end31.sw.bb37_crit_edge
    i32 808669761, label %if.end31.sw.bb37_crit_edge499
    i32 875709016, label %if.end31.sw.bb38_crit_edge
    i32 875708993, label %if.end31.sw.bb38_crit_edge500
  ]

if.end31.sw.bb38_crit_edge500:                    ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb38

if.end31.sw.bb38_crit_edge:                       ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb38

if.end31.sw.bb37_crit_edge499:                    ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb37

if.end31.sw.bb37_crit_edge:                       ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb37

if.end31.sw.bb36_crit_edge498:                    ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb36

if.end31.sw.bb36_crit_edge:                       ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb36

if.end31.sw.bb33_crit_edge497:                    ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb33

if.end31.sw.bb33_crit_edge:                       ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb33

if.end31.sw.epilog_crit_edge:                     ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb33:                                          ; preds = %if.end31.sw.bb33_crit_edge, %if.end31.sw.bb33_crit_edge497
  br label %sw.epilog

sw.bb34:                                          ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb35:                                          ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb36:                                          ; preds = %if.end31.sw.bb36_crit_edge, %if.end31.sw.bb36_crit_edge498
  br label %sw.epilog

sw.bb37:                                          ; preds = %if.end31.sw.bb37_crit_edge, %if.end31.sw.bb37_crit_edge499
  br label %sw.epilog

sw.bb38:                                          ; preds = %if.end31.sw.bb38_crit_edge, %if.end31.sw.bb38_crit_edge500
  %family = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 6
  %44 = ptrtoint ptr %family to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %family, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 26, i32 %45)
  %cmp39 = icmp ugt i32 %45, 26
  %. = select i1 %cmp39, i32 2, i32 65538
  %.293 = select i1 %cmp39, i32 546, i32 2
  br label %sw.epilog

sw.default:                                       ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.1, ptr noundef %40) #7
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb38, %sw.bb37, %sw.bb36, %sw.bb35, %sw.bb34, %sw.bb33, %if.end31.sw.epilog_crit_edge
  %fb_format.1 = phi i32 [ %., %sw.bb38 ], [ 258, %sw.bb37 ], [ 2, %sw.bb36 ], [ 257, %sw.bb35 ], [ 1, %sw.bb34 ], [ 513, %sw.bb33 ], [ 0, %if.end31.sw.epilog_crit_edge ]
  %fb_swap.1 = phi i32 [ %.293, %sw.bb38 ], [ 2, %sw.bb37 ], [ 2, %sw.bb36 ], [ 1, %sw.bb35 ], [ 1, %sw.bb34 ], [ 1, %sw.bb33 ], [ 0, %if.end31.sw.epilog_crit_edge ]
  %bypass_lut.0.off0 = phi i1 [ false, %sw.bb38 ], [ true, %sw.bb37 ], [ false, %sw.bb36 ], [ false, %sw.bb35 ], [ false, %sw.bb34 ], [ false, %sw.bb33 ], [ false, %if.end31.sw.epilog_crit_edge ]
  %family46 = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 6
  %46 = ptrtoint ptr %family46 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %family46, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 26, i32 %47)
  %cmp47 = icmp ugt i32 %47, 26
  %48 = ptrtoint ptr %tiling_flags to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %tiling_flags, align 4
  br i1 %cmp47, label %if.then48, label %if.else59

if.then48:                                        ; preds = %sw.epilog
  %and = and i32 %49, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool49.not = icmp eq i32 %and, 0
  br i1 %tobool49.not, label %if.else52, label %if.then50

if.then50:                                        ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #9
  %or51 = or i32 %fb_format.1, 4194304
  br label %if.end70

if.else52:                                        ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #9
  %and53 = shl i32 %49, 20
  %50 = and i32 %and53, 2097152
  %51 = or i32 %50, %fb_format.1
  br label %if.end70

if.else59:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  %and60 = shl i32 %49, 21
  %52 = and i32 %and60, 2097152
  %53 = or i32 %52, %fb_format.1
  %and65 = shl i32 %49, 19
  %54 = and i32 %and65, 1048576
  %55 = or i32 %53, %54
  br label %if.end70

if.end70:                                         ; preds = %if.else59, %if.else52, %if.then50
  %fb_format.3 = phi i32 [ %or51, %if.then50 ], [ %51, %if.else52 ], [ %55, %if.else59 ]
  %crtc_id = getelementptr inbounds %struct.radeon_crtc, ptr %crtc, i32 0, i32 1
  %56 = ptrtoint ptr %crtc_id to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %crtc_id, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %cmp71 = icmp eq i32 %57, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7
  call void @arm_heavy_mb() #7
  %rmmio.i = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 31
  %58 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %rmmio.i, align 4
  br i1 %cmp71, label %if.then72, label %if.else73

if.then72:                                        ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i = getelementptr i8, ptr %59, i32 816
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #7, !srcloc !41
  br label %if.end74

if.else73:                                        ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i299 = getelementptr i8, ptr %59, i32 824
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i299, i32 0) #7, !srcloc !41
  br label %if.end74

if.end74:                                         ; preds = %if.else73, %if.then72
  %crtc_offset = getelementptr inbounds %struct.radeon_crtc, ptr %crtc, i32 0, i32 5
  %60 = ptrtoint ptr %crtc_offset to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %crtc_offset, align 8
  %add = add i32 %61, 24904
  %rmmio_size.i300 = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 18
  %62 = ptrtoint ptr %rmmio_size.i300 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %rmmio_size.i300, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %63, i32 %add)
  %cmp.i301 = icmp ugt i32 %63, %add
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %add)
  %cmp1.i = icmp ult i32 %add, 65536
  %or.cond.i = or i1 %cmp1.i, %cmp.i301
  br i1 %or.cond.i, label %do.body.i, label %if.else.i

do.body.i:                                        ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !40
  call void @arm_heavy_mb() #7
  %rmmio.i302 = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 31
  %64 = ptrtoint ptr %rmmio.i302 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %rmmio.i302, align 4
  %add.ptr.i303 = getelementptr i8, ptr %65, i32 %add
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i303, i32 0) #7, !srcloc !41
  br label %r100_mm_wreg.exit

if.else.i:                                        ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #9
  call void @r100_mm_wreg_slow(ptr noundef %3, i32 noundef %add, i32 noundef 0) #7
  br label %r100_mm_wreg.exit

r100_mm_wreg.exit:                                ; preds = %if.else.i, %do.body.i
  %66 = ptrtoint ptr %family46 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %family46, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 34, i32 %67)
  %cmp76 = icmp ugt i32 %67, 34
  br i1 %cmp76, label %if.then77, label %r100_mm_wreg.exit.if.end93_crit_edge

r100_mm_wreg.exit.if.end93_crit_edge:             ; preds = %r100_mm_wreg.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end93

if.then77:                                        ; preds = %r100_mm_wreg.exit
  %68 = ptrtoint ptr %crtc_id to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %crtc_id, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %69)
  %tobool79.not = icmp eq i32 %69, 0
  %70 = ptrtoint ptr %fb_location to i32
  call void @__asan_load8_noabort(i32 %70)
  %71 = load i64, ptr %fb_location, align 8
  %shr86 = lshr i64 %71, 32
  %conv88 = trunc i64 %shr86 to i32
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7
  call void @arm_heavy_mb() #7
  %72 = call i32 @llvm.bswap.i32(i32 %conv88) #7
  %rmmio.i316 = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 31
  %73 = ptrtoint ptr %rmmio.i316 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %rmmio.i316, align 4
  br i1 %tobool79.not, label %if.else85, label %if.then80

if.then80:                                        ; preds = %if.then77
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i307 = getelementptr i8, ptr %74, i32 24852
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i307, i32 %72) #7, !srcloc !41
  %75 = ptrtoint ptr %fb_location to i32
  call void @__asan_load8_noabort(i32 %75)
  %76 = load i64, ptr %fb_location, align 8
  %shr82 = lshr i64 %76, 32
  %conv84 = trunc i64 %shr82 to i32
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !40
  call void @arm_heavy_mb() #7
  %77 = call i32 @llvm.bswap.i32(i32 %conv84) #7
  %78 = ptrtoint ptr %rmmio.i316 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %rmmio.i316, align 4
  %add.ptr.i312 = getelementptr i8, ptr %79, i32 24860
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i312, i32 %77) #7, !srcloc !41
  br label %if.end93

if.else85:                                        ; preds = %if.then77
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i317 = getelementptr i8, ptr %74, i32 26900
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i317, i32 %72) #7, !srcloc !41
  %80 = ptrtoint ptr %fb_location to i32
  call void @__asan_load8_noabort(i32 %80)
  %81 = load i64, ptr %fb_location, align 8
  %shr89 = lshr i64 %81, 32
  %conv91 = trunc i64 %shr89 to i32
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !40
  call void @arm_heavy_mb() #7
  %82 = call i32 @llvm.bswap.i32(i32 %conv91) #7
  %83 = ptrtoint ptr %rmmio.i316 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %rmmio.i316, align 4
  %add.ptr.i322 = getelementptr i8, ptr %84, i32 26908
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i322, i32 %82) #7, !srcloc !41
  br label %if.end93

if.end93:                                         ; preds = %if.else85, %if.then80, %r100_mm_wreg.exit.if.end93_crit_edge
  %85 = ptrtoint ptr %crtc_offset to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %crtc_offset, align 8
  %add95 = add i32 %86, 24848
  %87 = ptrtoint ptr %fb_location to i32
  call void @__asan_load8_noabort(i32 %87)
  %88 = load i64, ptr %fb_location, align 8
  %conv96 = trunc i64 %88 to i32
  %89 = ptrtoint ptr %rmmio_size.i300 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %rmmio_size.i300, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %90, i32 %add95)
  %cmp.i325 = icmp ugt i32 %90, %add95
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %add95)
  %cmp1.i326 = icmp ult i32 %add95, 65536
  %or.cond.i327 = or i1 %cmp1.i326, %cmp.i325
  br i1 %or.cond.i327, label %do.body.i330, label %if.else.i331

do.body.i330:                                     ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !40
  call void @arm_heavy_mb() #7
  %91 = call i32 @llvm.bswap.i32(i32 %conv96) #7
  %rmmio.i328 = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 31
  %92 = ptrtoint ptr %rmmio.i328 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %rmmio.i328, align 4
  %add.ptr.i329 = getelementptr i8, ptr %93, i32 %add95
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i329, i32 %91) #7, !srcloc !41
  br label %r100_mm_wreg.exit332

if.else.i331:                                     ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #9
  call void @r100_mm_wreg_slow(ptr noundef %3, i32 noundef %add95, i32 noundef %conv96) #7
  br label %r100_mm_wreg.exit332

r100_mm_wreg.exit332:                             ; preds = %if.else.i331, %do.body.i330
  %94 = ptrtoint ptr %crtc_offset to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %crtc_offset, align 8
  %add98 = add i32 %95, 24856
  %96 = ptrtoint ptr %fb_location to i32
  call void @__asan_load8_noabort(i32 %96)
  %97 = load i64, ptr %fb_location, align 8
  %conv99 = trunc i64 %97 to i32
  %98 = ptrtoint ptr %rmmio_size.i300 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %rmmio_size.i300, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %99, i32 %add98)
  %cmp.i334 = icmp ugt i32 %99, %add98
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %add98)
  %cmp1.i335 = icmp ult i32 %add98, 65536
  %or.cond.i336 = or i1 %cmp1.i335, %cmp.i334
  br i1 %or.cond.i336, label %do.body.i339, label %if.else.i340

do.body.i339:                                     ; preds = %r100_mm_wreg.exit332
  call void @__sanitizer_cov_trace_pc() #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !40
  call void @arm_heavy_mb() #7
  %100 = call i32 @llvm.bswap.i32(i32 %conv99) #7
  %rmmio.i337 = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 31
  %101 = ptrtoint ptr %rmmio.i337 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %rmmio.i337, align 4
  %add.ptr.i338 = getelementptr i8, ptr %102, i32 %add98
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i338, i32 %100) #7, !srcloc !41
  br label %r100_mm_wreg.exit341

if.else.i340:                                     ; preds = %r100_mm_wreg.exit332
  call void @__sanitizer_cov_trace_pc() #9
  call void @r100_mm_wreg_slow(ptr noundef %3, i32 noundef %add98, i32 noundef %conv99) #7
  br label %r100_mm_wreg.exit341

r100_mm_wreg.exit341:                             ; preds = %if.else.i340, %do.body.i339
  %103 = ptrtoint ptr %crtc_offset to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %crtc_offset, align 8
  %add101 = add i32 %104, 24836
  %105 = ptrtoint ptr %rmmio_size.i300 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %rmmio_size.i300, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %106, i32 %add101)
  %cmp.i343 = icmp ugt i32 %106, %add101
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %add101)
  %cmp1.i344 = icmp ult i32 %add101, 65536
  %or.cond.i345 = or i1 %cmp1.i344, %cmp.i343
  br i1 %or.cond.i345, label %do.body.i348, label %if.else.i349

do.body.i348:                                     ; preds = %r100_mm_wreg.exit341
  call void @__sanitizer_cov_trace_pc() #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !40
  call void @arm_heavy_mb() #7
  %107 = call i32 @llvm.bswap.i32(i32 %fb_format.3) #7
  %rmmio.i346 = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 31
  %108 = ptrtoint ptr %rmmio.i346 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %rmmio.i346, align 4
  %add.ptr.i347 = getelementptr i8, ptr %109, i32 %add101
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i347, i32 %107) #7, !srcloc !41
  br label %r100_mm_wreg.exit350

if.else.i349:                                     ; preds = %r100_mm_wreg.exit341
  call void @__sanitizer_cov_trace_pc() #9
  call void @r100_mm_wreg_slow(ptr noundef %3, i32 noundef %add101, i32 noundef %fb_format.3) #7
  br label %r100_mm_wreg.exit350

r100_mm_wreg.exit350:                             ; preds = %if.else.i349, %do.body.i348
  %110 = ptrtoint ptr %family46 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %family46, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 26, i32 %111)
  %cmp103 = icmp ugt i32 %111, 26
  br i1 %cmp103, label %if.then105, label %r100_mm_wreg.exit350.do.body_crit_edge

r100_mm_wreg.exit350.do.body_crit_edge:           ; preds = %r100_mm_wreg.exit350
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

if.then105:                                       ; preds = %r100_mm_wreg.exit350
  %112 = ptrtoint ptr %crtc_offset to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %crtc_offset, align 8
  %add107 = add i32 %113, 24844
  %114 = ptrtoint ptr %rmmio_size.i300 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %rmmio_size.i300, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %115, i32 %add107)
  %cmp.i352 = icmp ugt i32 %115, %add107
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %add107)
  %cmp1.i353 = icmp ult i32 %add107, 65536
  %or.cond.i354 = or i1 %cmp1.i353, %cmp.i352
  br i1 %or.cond.i354, label %do.body.i357, label %if.else.i358

do.body.i357:                                     ; preds = %if.then105
  call void @__sanitizer_cov_trace_pc() #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !40
  call void @arm_heavy_mb() #7
  %116 = call i32 @llvm.bswap.i32(i32 %fb_swap.1) #7
  %rmmio.i355 = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 31
  %117 = ptrtoint ptr %rmmio.i355 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %rmmio.i355, align 4
  %add.ptr.i356 = getelementptr i8, ptr %118, i32 %add107
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i356, i32 %116) #7, !srcloc !41
  br label %do.body

if.else.i358:                                     ; preds = %if.then105
  call void @__sanitizer_cov_trace_pc() #9
  call void @r100_mm_wreg_slow(ptr noundef %3, i32 noundef %add107, i32 noundef %fb_swap.1) #7
  br label %do.body

do.body:                                          ; preds = %if.else.i358, %do.body.i357, %r100_mm_wreg.exit350.do.body_crit_edge
  %119 = ptrtoint ptr %crtc_offset to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %crtc_offset, align 8
  %add110 = add i32 %120, 24840
  %121 = ptrtoint ptr %rmmio_size.i300 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %rmmio_size.i300, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %122, i32 %add110)
  %cmp.i361 = icmp ugt i32 %122, %add110
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %add110)
  %cmp1.i362 = icmp ult i32 %add110, 65536
  %or.cond.i363 = or i1 %cmp1.i362, %cmp.i361
  br i1 %or.cond.i363, label %if.then.i, label %if.else.i366

if.then.i:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %rmmio.i364 = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 31
  %123 = ptrtoint ptr %rmmio.i364 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %rmmio.i364, align 4
  %add.ptr.i365 = getelementptr i8, ptr %124, i32 %add110
  %125 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i365) #7, !srcloc !38
  %126 = call i32 @llvm.bswap.i32(i32 %125) #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !39
  br label %r100_mm_rreg.exit

if.else.i366:                                     ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %call3.i = call i32 @r100_mm_rreg_slow(ptr noundef %3, i32 noundef %add110) #7
  br label %r100_mm_rreg.exit

r100_mm_rreg.exit:                                ; preds = %if.else.i366, %if.then.i
  %retval.0.i = phi i32 [ %call3.i, %if.else.i366 ], [ %126, %if.then.i ]
  %and112 = and i32 %retval.0.i, -257
  %cond = select i1 %bypass_lut.0.off0, i32 256, i32 0
  %or116 = or i32 %and112, %cond
  %127 = ptrtoint ptr %crtc_offset to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %crtc_offset, align 8
  %add118 = add i32 %128, 24840
  %129 = ptrtoint ptr %rmmio_size.i300 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %rmmio_size.i300, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %130, i32 %add118)
  %cmp.i368 = icmp ugt i32 %130, %add118
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %add118)
  %cmp1.i369 = icmp ult i32 %add118, 65536
  %or.cond.i370 = or i1 %cmp1.i369, %cmp.i368
  br i1 %or.cond.i370, label %do.body.i373, label %if.else.i374

do.body.i373:                                     ; preds = %r100_mm_rreg.exit
  call void @__sanitizer_cov_trace_pc() #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !40
  call void @arm_heavy_mb() #7
  %131 = call i32 @llvm.bswap.i32(i32 %or116) #7
  %rmmio.i371 = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 31
  %132 = ptrtoint ptr %rmmio.i371 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %rmmio.i371, align 4
  %add.ptr.i372 = getelementptr i8, ptr %133, i32 %add118
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i372, i32 %131) #7, !srcloc !41
  br label %r100_mm_wreg.exit375

if.else.i374:                                     ; preds = %r100_mm_rreg.exit
  call void @__sanitizer_cov_trace_pc() #9
  call void @r100_mm_wreg_slow(ptr noundef %3, i32 noundef %add118, i32 noundef %or116) #7
  br label %r100_mm_wreg.exit375

r100_mm_wreg.exit375:                             ; preds = %if.else.i374, %do.body.i373
  br i1 %bypass_lut.0.off0, label %if.then120, label %r100_mm_wreg.exit375.if.end121_crit_edge

r100_mm_wreg.exit375.if.end121_crit_edge:         ; preds = %r100_mm_wreg.exit375
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end121

if.then120:                                       ; preds = %r100_mm_wreg.exit375
  call void @__sanitizer_cov_trace_pc() #9
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.3) #7
  br label %if.end121

if.end121:                                        ; preds = %if.then120, %r100_mm_wreg.exit375.if.end121_crit_edge
  %134 = ptrtoint ptr %crtc_offset to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %crtc_offset, align 8
  %add123 = add i32 %135, 24868
  %136 = ptrtoint ptr %rmmio_size.i300 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %rmmio_size.i300, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %137, i32 %add123)
  %cmp.i377 = icmp ugt i32 %137, %add123
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %add123)
  %cmp1.i378 = icmp ult i32 %add123, 65536
  %or.cond.i379 = or i1 %cmp1.i378, %cmp.i377
  br i1 %or.cond.i379, label %do.body.i382, label %if.else.i383

do.body.i382:                                     ; preds = %if.end121
  call void @__sanitizer_cov_trace_pc() #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !40
  call void @arm_heavy_mb() #7
  %rmmio.i380 = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 31
  %138 = ptrtoint ptr %rmmio.i380 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %rmmio.i380, align 4
  %add.ptr.i381 = getelementptr i8, ptr %139, i32 %add123
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i381, i32 0) #7, !srcloc !41
  br label %r100_mm_wreg.exit384

if.else.i383:                                     ; preds = %if.end121
  call void @__sanitizer_cov_trace_pc() #9
  call void @r100_mm_wreg_slow(ptr noundef %3, i32 noundef %add123, i32 noundef 0) #7
  br label %r100_mm_wreg.exit384

r100_mm_wreg.exit384:                             ; preds = %if.else.i383, %do.body.i382
  %140 = ptrtoint ptr %crtc_offset to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %crtc_offset, align 8
  %add125 = add i32 %141, 24872
  %142 = ptrtoint ptr %rmmio_size.i300 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %rmmio_size.i300, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %143, i32 %add125)
  %cmp.i386 = icmp ugt i32 %143, %add125
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %add125)
  %cmp1.i387 = icmp ult i32 %add125, 65536
  %or.cond.i388 = or i1 %cmp1.i387, %cmp.i386
  br i1 %or.cond.i388, label %do.body.i391, label %if.else.i392

do.body.i391:                                     ; preds = %r100_mm_wreg.exit384
  call void @__sanitizer_cov_trace_pc() #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !40
  call void @arm_heavy_mb() #7
  %rmmio.i389 = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 31
  %144 = ptrtoint ptr %rmmio.i389 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %rmmio.i389, align 4
  %add.ptr.i390 = getelementptr i8, ptr %145, i32 %add125
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i390, i32 0) #7, !srcloc !41
  br label %r100_mm_wreg.exit393

if.else.i392:                                     ; preds = %r100_mm_wreg.exit384
  call void @__sanitizer_cov_trace_pc() #9
  call void @r100_mm_wreg_slow(ptr noundef %3, i32 noundef %add125, i32 noundef 0) #7
  br label %r100_mm_wreg.exit393

r100_mm_wreg.exit393:                             ; preds = %if.else.i392, %do.body.i391
  %146 = ptrtoint ptr %crtc_offset to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %crtc_offset, align 8
  %add127 = add i32 %147, 24876
  %148 = ptrtoint ptr %rmmio_size.i300 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %rmmio_size.i300, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %149, i32 %add127)
  %cmp.i395 = icmp ugt i32 %149, %add127
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %add127)
  %cmp1.i396 = icmp ult i32 %add127, 65536
  %or.cond.i397 = or i1 %cmp1.i396, %cmp.i395
  br i1 %or.cond.i397, label %do.body.i400, label %if.else.i401

do.body.i400:                                     ; preds = %r100_mm_wreg.exit393
  call void @__sanitizer_cov_trace_pc() #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !40
  call void @arm_heavy_mb() #7
  %rmmio.i398 = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 31
  %150 = ptrtoint ptr %rmmio.i398 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %rmmio.i398, align 4
  %add.ptr.i399 = getelementptr i8, ptr %151, i32 %add127
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i399, i32 0) #7, !srcloc !41
  br label %r100_mm_wreg.exit402

if.else.i401:                                     ; preds = %r100_mm_wreg.exit393
  call void @__sanitizer_cov_trace_pc() #9
  call void @r100_mm_wreg_slow(ptr noundef %3, i32 noundef %add127, i32 noundef 0) #7
  br label %r100_mm_wreg.exit402

r100_mm_wreg.exit402:                             ; preds = %if.else.i401, %do.body.i400
  %152 = ptrtoint ptr %crtc_offset to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %crtc_offset, align 8
  %add129 = add i32 %153, 24880
  %154 = ptrtoint ptr %rmmio_size.i300 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %rmmio_size.i300, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %155, i32 %add129)
  %cmp.i404 = icmp ugt i32 %155, %add129
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %add129)
  %cmp1.i405 = icmp ult i32 %add129, 65536
  %or.cond.i406 = or i1 %cmp1.i405, %cmp.i404
  br i1 %or.cond.i406, label %do.body.i409, label %if.else.i410

do.body.i409:                                     ; preds = %r100_mm_wreg.exit402
  call void @__sanitizer_cov_trace_pc() #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !40
  call void @arm_heavy_mb() #7
  %rmmio.i407 = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 31
  %156 = ptrtoint ptr %rmmio.i407 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %rmmio.i407, align 4
  %add.ptr.i408 = getelementptr i8, ptr %157, i32 %add129
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i408, i32 0) #7, !srcloc !41
  br label %r100_mm_wreg.exit411

if.else.i410:                                     ; preds = %r100_mm_wreg.exit402
  call void @__sanitizer_cov_trace_pc() #9
  call void @r100_mm_wreg_slow(ptr noundef %3, i32 noundef %add129, i32 noundef 0) #7
  br label %r100_mm_wreg.exit411

r100_mm_wreg.exit411:                             ; preds = %if.else.i410, %do.body.i409
  %158 = ptrtoint ptr %crtc_offset to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %crtc_offset, align 8
  %add131 = add i32 %159, 24884
  %width = getelementptr inbounds %struct.drm_framebuffer, ptr %target_fb.0, i32 0, i32 9
  %160 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %width, align 8
  %162 = ptrtoint ptr %rmmio_size.i300 to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %rmmio_size.i300, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %163, i32 %add131)
  %cmp.i413 = icmp ugt i32 %163, %add131
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %add131)
  %cmp1.i414 = icmp ult i32 %add131, 65536
  %or.cond.i415 = or i1 %cmp1.i414, %cmp.i413
  br i1 %or.cond.i415, label %do.body.i418, label %if.else.i419

do.body.i418:                                     ; preds = %r100_mm_wreg.exit411
  call void @__sanitizer_cov_trace_pc() #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !40
  call void @arm_heavy_mb() #7
  %164 = call i32 @llvm.bswap.i32(i32 %161) #7
  %rmmio.i416 = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 31
  %165 = ptrtoint ptr %rmmio.i416 to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %rmmio.i416, align 4
  %add.ptr.i417 = getelementptr i8, ptr %166, i32 %add131
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i417, i32 %164) #7, !srcloc !41
  br label %r100_mm_wreg.exit420

if.else.i419:                                     ; preds = %r100_mm_wreg.exit411
  call void @__sanitizer_cov_trace_pc() #9
  call void @r100_mm_wreg_slow(ptr noundef %3, i32 noundef %add131, i32 noundef %161) #7
  br label %r100_mm_wreg.exit420

r100_mm_wreg.exit420:                             ; preds = %if.else.i419, %do.body.i418
  %167 = ptrtoint ptr %crtc_offset to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load i32, ptr %crtc_offset, align 8
  %add133 = add i32 %168, 24888
  %height = getelementptr inbounds %struct.drm_framebuffer, ptr %target_fb.0, i32 0, i32 10
  %169 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load i32, ptr %height, align 4
  %171 = ptrtoint ptr %rmmio_size.i300 to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load i32, ptr %rmmio_size.i300, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %172, i32 %add133)
  %cmp.i422 = icmp ugt i32 %172, %add133
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %add133)
  %cmp1.i423 = icmp ult i32 %add133, 65536
  %or.cond.i424 = or i1 %cmp1.i423, %cmp.i422
  br i1 %or.cond.i424, label %do.body.i427, label %if.else.i428

do.body.i427:                                     ; preds = %r100_mm_wreg.exit420
  call void @__sanitizer_cov_trace_pc() #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !40
  call void @arm_heavy_mb() #7
  %173 = call i32 @llvm.bswap.i32(i32 %170) #7
  %rmmio.i425 = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 31
  %174 = ptrtoint ptr %rmmio.i425 to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %rmmio.i425, align 4
  %add.ptr.i426 = getelementptr i8, ptr %175, i32 %add133
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i426, i32 %173) #7, !srcloc !41
  br label %r100_mm_wreg.exit429

if.else.i428:                                     ; preds = %r100_mm_wreg.exit420
  call void @__sanitizer_cov_trace_pc() #9
  call void @r100_mm_wreg_slow(ptr noundef %3, i32 noundef %add133, i32 noundef %170) #7
  br label %r100_mm_wreg.exit429

r100_mm_wreg.exit429:                             ; preds = %if.else.i428, %do.body.i427
  %pitches = getelementptr inbounds %struct.drm_framebuffer, ptr %target_fb.0, i32 0, i32 6
  %176 = ptrtoint ptr %pitches to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load i32, ptr %pitches, align 8
  %178 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %format, align 8
  %180 = getelementptr inbounds %struct.drm_format_info, ptr %179, i32 0, i32 3
  %181 = ptrtoint ptr %180 to i32
  call void @__asan_load1_noabort(i32 %181)
  %182 = load i8, ptr %180, align 2
  %conv137 = zext i8 %182 to i32
  %div = udiv i32 %177, %conv137
  %183 = ptrtoint ptr %crtc_offset to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load i32, ptr %crtc_offset, align 8
  %add139 = add i32 %184, 24864
  %185 = ptrtoint ptr %rmmio_size.i300 to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load i32, ptr %rmmio_size.i300, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %186, i32 %add139)
  %cmp.i431 = icmp ugt i32 %186, %add139
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %add139)
  %cmp1.i432 = icmp ult i32 %add139, 65536
  %or.cond.i433 = or i1 %cmp1.i432, %cmp.i431
  br i1 %or.cond.i433, label %do.body.i436, label %if.else.i437

do.body.i436:                                     ; preds = %r100_mm_wreg.exit429
  call void @__sanitizer_cov_trace_pc() #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !40
  call void @arm_heavy_mb() #7
  %187 = call i32 @llvm.bswap.i32(i32 %div) #7
  %rmmio.i434 = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 31
  %188 = ptrtoint ptr %rmmio.i434 to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %rmmio.i434, align 4
  %add.ptr.i435 = getelementptr i8, ptr %189, i32 %add139
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i435, i32 %187) #7, !srcloc !41
  br label %r100_mm_wreg.exit438

if.else.i437:                                     ; preds = %r100_mm_wreg.exit429
  call void @__sanitizer_cov_trace_pc() #9
  call void @r100_mm_wreg_slow(ptr noundef %3, i32 noundef %add139, i32 noundef %div) #7
  br label %r100_mm_wreg.exit438

r100_mm_wreg.exit438:                             ; preds = %if.else.i437, %do.body.i436
  %190 = ptrtoint ptr %crtc_offset to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load i32, ptr %crtc_offset, align 8
  %add141 = add i32 %191, 24832
  %192 = ptrtoint ptr %rmmio_size.i300 to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load i32, ptr %rmmio_size.i300, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %193, i32 %add141)
  %cmp.i440 = icmp ugt i32 %193, %add141
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %add141)
  %cmp1.i441 = icmp ult i32 %add141, 65536
  %or.cond.i442 = or i1 %cmp1.i441, %cmp.i440
  br i1 %or.cond.i442, label %do.body.i445, label %if.else.i446

do.body.i445:                                     ; preds = %r100_mm_wreg.exit438
  call void @__sanitizer_cov_trace_pc() #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !40
  call void @arm_heavy_mb() #7
  %rmmio.i443 = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 31
  %194 = ptrtoint ptr %rmmio.i443 to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %rmmio.i443, align 4
  %add.ptr.i444 = getelementptr i8, ptr %195, i32 %add141
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i444, i32 16777216) #7, !srcloc !41
  br label %r100_mm_wreg.exit447

if.else.i446:                                     ; preds = %r100_mm_wreg.exit438
  call void @__sanitizer_cov_trace_pc() #9
  call void @r100_mm_wreg_slow(ptr noundef %3, i32 noundef %add141, i32 noundef 1) #7
  br label %r100_mm_wreg.exit447

r100_mm_wreg.exit447:                             ; preds = %if.else.i446, %do.body.i445
  %196 = ptrtoint ptr %crtc_offset to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load i32, ptr %crtc_offset, align 8
  %add143 = add i32 %197, 25900
  %198 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load i32, ptr %height, align 4
  %200 = ptrtoint ptr %rmmio_size.i300 to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load i32, ptr %rmmio_size.i300, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %201, i32 %add143)
  %cmp.i449 = icmp ugt i32 %201, %add143
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %add143)
  %cmp1.i450 = icmp ult i32 %add143, 65536
  %or.cond.i451 = or i1 %cmp1.i450, %cmp.i449
  br i1 %or.cond.i451, label %do.body.i454, label %if.else.i455

do.body.i454:                                     ; preds = %r100_mm_wreg.exit447
  call void @__sanitizer_cov_trace_pc() #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !40
  call void @arm_heavy_mb() #7
  %202 = call i32 @llvm.bswap.i32(i32 %199) #7
  %rmmio.i452 = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 31
  %203 = ptrtoint ptr %rmmio.i452 to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load ptr, ptr %rmmio.i452, align 4
  %add.ptr.i453 = getelementptr i8, ptr %204, i32 %add143
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i453, i32 %202) #7, !srcloc !41
  br label %r100_mm_wreg.exit456

if.else.i455:                                     ; preds = %r100_mm_wreg.exit447
  call void @__sanitizer_cov_trace_pc() #9
  call void @r100_mm_wreg_slow(ptr noundef %3, i32 noundef %add143, i32 noundef %199) #7
  br label %r100_mm_wreg.exit456

r100_mm_wreg.exit456:                             ; preds = %if.else.i455, %do.body.i454
  %and146 = and i32 %y, -2
  %205 = ptrtoint ptr %crtc_offset to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load i32, ptr %crtc_offset, align 8
  %add148 = add i32 %206, 25984
  %and145 = shl i32 %x, 16
  %shl = and i32 %and145, -262144
  %or149 = or i32 %shl, %and146
  %207 = ptrtoint ptr %rmmio_size.i300 to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load i32, ptr %rmmio_size.i300, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %208, i32 %add148)
  %cmp.i458 = icmp ugt i32 %208, %add148
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %add148)
  %cmp1.i459 = icmp ult i32 %add148, 65536
  %or.cond.i460 = or i1 %cmp1.i459, %cmp.i458
  br i1 %or.cond.i460, label %do.body.i463, label %if.else.i464

do.body.i463:                                     ; preds = %r100_mm_wreg.exit456
  call void @__sanitizer_cov_trace_pc() #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !40
  call void @arm_heavy_mb() #7
  %209 = call i32 @llvm.bswap.i32(i32 %or149) #7
  %rmmio.i461 = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 31
  %210 = ptrtoint ptr %rmmio.i461 to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load ptr, ptr %rmmio.i461, align 4
  %add.ptr.i462 = getelementptr i8, ptr %211, i32 %add148
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i462, i32 %209) #7, !srcloc !41
  br label %r100_mm_wreg.exit465

if.else.i464:                                     ; preds = %r100_mm_wreg.exit456
  call void @__sanitizer_cov_trace_pc() #9
  call void @r100_mm_wreg_slow(ptr noundef %3, i32 noundef %add148, i32 noundef %or149) #7
  br label %r100_mm_wreg.exit465

r100_mm_wreg.exit465:                             ; preds = %if.else.i464, %do.body.i463
  %hdisplay = getelementptr inbounds %struct.drm_crtc, ptr %crtc, i32 0, i32 12, i32 1
  %212 = ptrtoint ptr %hdisplay to i32
  call void @__asan_load2_noabort(i32 %212)
  %213 = load i16, ptr %hdisplay, align 4
  %conv150 = zext i16 %213 to i32
  %vdisplay = getelementptr inbounds %struct.drm_crtc, ptr %crtc, i32 0, i32 12, i32 6
  %214 = ptrtoint ptr %vdisplay to i32
  call void @__asan_load2_noabort(i32 %214)
  %215 = load i16, ptr %vdisplay, align 2
  %conv152 = zext i16 %215 to i32
  %add153 = add nuw nsw i32 %conv152, 1
  %and154 = and i32 %add153, 131070
  %216 = ptrtoint ptr %crtc_offset to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load i32, ptr %crtc_offset, align 8
  %add156 = add i32 %217, 25988
  %shl157 = shl nuw i32 %conv150, 16
  %or158 = or i32 %and154, %shl157
  %218 = ptrtoint ptr %rmmio_size.i300 to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load i32, ptr %rmmio_size.i300, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %219, i32 %add156)
  %cmp.i467 = icmp ugt i32 %219, %add156
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %add156)
  %cmp1.i468 = icmp ult i32 %add156, 65536
  %or.cond.i469 = or i1 %cmp1.i468, %cmp.i467
  br i1 %or.cond.i469, label %do.body.i472, label %if.else.i473

do.body.i472:                                     ; preds = %r100_mm_wreg.exit465
  call void @__sanitizer_cov_trace_pc() #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !40
  call void @arm_heavy_mb() #7
  %220 = call i32 @llvm.bswap.i32(i32 %or158) #7
  %rmmio.i470 = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 31
  %221 = ptrtoint ptr %rmmio.i470 to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load ptr, ptr %rmmio.i470, align 4
  %add.ptr.i471 = getelementptr i8, ptr %222, i32 %add156
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i471, i32 %220) #7, !srcloc !41
  br label %r100_mm_wreg.exit474

if.else.i473:                                     ; preds = %r100_mm_wreg.exit465
  call void @__sanitizer_cov_trace_pc() #9
  call void @r100_mm_wreg_slow(ptr noundef %3, i32 noundef %add156, i32 noundef %or158) #7
  br label %r100_mm_wreg.exit474

r100_mm_wreg.exit474:                             ; preds = %if.else.i473, %do.body.i472
  %223 = ptrtoint ptr %crtc_offset to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load i32, ptr %crtc_offset, align 8
  %add160 = add i32 %224, 24804
  %225 = ptrtoint ptr %rmmio_size.i300 to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load i32, ptr %rmmio_size.i300, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %226, i32 %add160)
  %cmp.i476 = icmp ugt i32 %226, %add160
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %add160)
  %cmp1.i477 = icmp ult i32 %add160, 65536
  %or.cond.i478 = or i1 %cmp1.i477, %cmp.i476
  br i1 %or.cond.i478, label %do.body.i481, label %if.else.i482

do.body.i481:                                     ; preds = %r100_mm_wreg.exit474
  call void @__sanitizer_cov_trace_pc() #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !40
  call void @arm_heavy_mb() #7
  %rmmio.i479 = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 31
  %227 = ptrtoint ptr %rmmio.i479 to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load ptr, ptr %rmmio.i479, align 4
  %add.ptr.i480 = getelementptr i8, ptr %228, i32 %add160
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i480, i32 50331648) #7, !srcloc !41
  br label %r100_mm_wreg.exit483

if.else.i482:                                     ; preds = %r100_mm_wreg.exit474
  call void @__sanitizer_cov_trace_pc() #9
  call void @r100_mm_wreg_slow(ptr noundef %3, i32 noundef %add160, i32 noundef 3) #7
  br label %r100_mm_wreg.exit483

r100_mm_wreg.exit483:                             ; preds = %if.else.i482, %do.body.i481
  %tobool163.not = icmp ne ptr %fb, null
  %229 = and i1 %tobool163.not, %tobool.not
  br i1 %229, label %land.lhs.true164, label %r100_mm_wreg.exit483.if.end186_crit_edge

r100_mm_wreg.exit483.if.end186_crit_edge:         ; preds = %r100_mm_wreg.exit483
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end186

land.lhs.true164:                                 ; preds = %r100_mm_wreg.exit483
  %primary165 = getelementptr inbounds %struct.drm_crtc, ptr %crtc, i32 0, i32 6
  %230 = ptrtoint ptr %primary165 to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load ptr, ptr %primary165, align 4
  %fb166 = getelementptr inbounds %struct.drm_plane, ptr %231, i32 0, i32 12
  %232 = ptrtoint ptr %fb166 to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load ptr, ptr %fb166, align 4
  %cmp167.not = icmp eq ptr %233, %fb
  br i1 %cmp167.not, label %land.lhs.true164.if.end186_crit_edge, label %if.then169

land.lhs.true164.if.end186_crit_edge:             ; preds = %land.lhs.true164
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end186

if.then169:                                       ; preds = %land.lhs.true164
  %obj171 = getelementptr inbounds %struct.drm_framebuffer, ptr %fb, i32 0, i32 15
  %234 = ptrtoint ptr %obj171 to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load ptr, ptr %obj171, align 4
  %add.ptr174 = getelementptr i8, ptr %235, i32 -96
  %resv32.i.i484 = getelementptr i8, ptr %235, i32 200
  %236 = ptrtoint ptr %resv32.i.i484 to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load ptr, ptr %resv32.i.i484, align 8
  %call.i.i.i485 = call i32 @ww_mutex_lock_interruptible(ptr noundef %237, ptr noundef null) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -4, i32 %call.i.i.i485)
  %cmp.i.i486 = icmp eq i32 %call.i.i.i485, -4
  %retval.1.i.i487 = select i1 %cmp.i.i486, i32 -512, i32 %call.i.i.i485
  %238 = zext i32 %retval.1.i.i487 to i64
  call void @__sanitizer_cov_trace_switch(i64 %238, ptr @__sancov_gen_cov_switch_values.23)
  switch i32 %retval.1.i.i487, label %do.end.i489 [
    i32 0, label %if.end185
    i32 -512, label %if.then169.cleanup_crit_edge
  ], !prof !43

if.then169.cleanup_crit_edge:                     ; preds = %if.then169
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end.i489:                                      ; preds = %if.then169
  call void @__sanitizer_cov_trace_pc() #9
  %rdev.i488 = getelementptr i8, ptr %235, i32 464
  %239 = ptrtoint ptr %rdev.i488 to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load ptr, ptr %rdev.i488, align 8
  %241 = ptrtoint ptr %240 to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load ptr, ptr %240, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %242, ptr noundef nonnull @.str.4, ptr noundef %add.ptr174) #10
  br label %cleanup

if.end185:                                        ; preds = %if.then169
  call void @__sanitizer_cov_trace_pc() #9
  call void @radeon_bo_unpin(ptr noundef %add.ptr174) #7
  %bdev.i.i.i492 = getelementptr i8, ptr %235, i32 352
  %243 = ptrtoint ptr %bdev.i.i.i492 to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load ptr, ptr %bdev.i.i.i492, align 8
  %lru_lock.i.i.i493 = getelementptr inbounds %struct.ttm_device, ptr %244, i32 0, i32 6
  call void @_raw_spin_lock(ptr noundef %lru_lock.i.i.i493) #7
  %resource.i.i.i494 = getelementptr i8, ptr %235, i32 372
  %245 = ptrtoint ptr %resource.i.i.i494 to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load ptr, ptr %resource.i.i.i494, align 4
  call void @ttm_bo_move_to_lru_tail(ptr noundef %235, ptr noundef %246, ptr noundef null) #7
  %247 = ptrtoint ptr %bdev.i.i.i492 to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load ptr, ptr %bdev.i.i.i492, align 8
  %lru_lock2.i.i.i495 = getelementptr inbounds %struct.ttm_device, ptr %248, i32 0, i32 6
  call void @_raw_spin_unlock(ptr noundef %lru_lock2.i.i.i495) #7
  %249 = ptrtoint ptr %resv32.i.i484 to i32
  call void @__asan_load4_noabort(i32 %249)
  %250 = load ptr, ptr %resv32.i.i484, align 8
  call void @dma_resv_reset_shared_max(ptr noundef %250) #7
  call void @ww_mutex_unlock(ptr noundef %250) #7
  br label %if.end186

if.end186:                                        ; preds = %if.end185, %land.lhs.true164.if.end186_crit_edge, %r100_mm_wreg.exit483.if.end186_crit_edge
  %asic = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 56
  %251 = ptrtoint ptr %asic to i32
  call void @__asan_load4_noabort(i32 %251)
  %252 = load ptr, ptr %asic, align 8
  %display = getelementptr inbounds %struct.radeon_asic, ptr %252, i32 0, i32 16
  %253 = ptrtoint ptr %display to i32
  call void @__asan_load4_noabort(i32 %253)
  %254 = load ptr, ptr %display, align 4
  call void %254(ptr noundef %3) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end186, %do.end.i489, %if.then169.cleanup_crit_edge, %sw.default, %if.then29, %do.end.i, %if.end8.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ -22, %sw.default ], [ 0, %if.end186 ], [ -22, %if.then29 ], [ 0, %if.then ], [ %retval.1.i.i, %do.end.i ], [ %retval.1.i.i487, %do.end.i489 ], [ %retval.1.i.i, %if.end8.cleanup_crit_edge ], [ %retval.1.i.i487, %if.then169.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tiling_flags) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %fb_location) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @radeon_crtc_do_set_base(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @atombios_crtc_set_base_atomic(ptr noundef %crtc, ptr noundef %fb, i32 noundef %x, i32 noundef %y, i32 %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %crtc, align 8
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_private, align 4
  %family = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %family to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %family, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 38, i32 %5)
  %cmp = icmp ugt i32 %5, 38
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call fastcc i32 @dce4_crtc_do_set_base(ptr noundef %crtc, ptr noundef %fb, i32 noundef %x, i32 noundef %y, i32 noundef 1)
  br label %cleanup

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %5)
  %cmp3 = icmp ugt i32 %5, 17
  br i1 %cmp3, label %if.then4, label %if.else6

if.then4:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %call5 = tail call fastcc i32 @avivo_crtc_do_set_base(ptr noundef %crtc, ptr noundef %fb, i32 noundef %x, i32 noundef %y, i32 noundef 1)
  br label %cleanup

if.else6:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %call7 = tail call i32 @radeon_crtc_do_set_base(ptr noundef %crtc, ptr noundef %fb, i32 noundef %x, i32 noundef %y, i32 noundef 1) #7
  br label %cleanup

cleanup:                                          ; preds = %if.else6, %if.then4, %if.then
  %retval.0 = phi i32 [ %call, %if.then ], [ %call5, %if.then4 ], [ %call7, %if.else6 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @radeon_atom_disp_eng_pll_init(ptr noundef %rdev) local_unnamed_addr #0 align 64 {
entry:
  %ss = alloca %struct.radeon_atom_ss, align 2
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %family = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 6
  %0 = ptrtoint ptr %family to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %family, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 50, i32 %1)
  %cmp = icmp ugt i32 %1, 50
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %default_dispclk = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 41, i32 7
  %2 = ptrtoint ptr %default_dispclk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %default_dispclk, align 4
  tail call fastcc void @atombios_crtc_set_disp_eng_pll(ptr noundef %rdev, i32 noundef %3)
  br label %if.end13

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 38, i32 %1)
  %cmp2 = icmp ugt i32 %1, 38
  br i1 %cmp2, label %if.then3, label %if.else.if.end13_crit_edge

if.else.if.end13_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end13

if.then3:                                         ; preds = %if.else
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %ss) #7
  %4 = call ptr @memset(ptr %ss, i32 255, i32 16)
  %default_dispclk5 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 41, i32 7
  %5 = ptrtoint ptr %default_dispclk5 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %default_dispclk5, align 4
  %call = call zeroext i1 @radeon_atombios_get_asic_ss_info(ptr noundef %rdev, ptr noundef nonnull %ss, i32 noundef 8, i32 noundef %6) #7
  br i1 %call, label %if.then6, label %if.end11.critedge

if.then6:                                         ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #9
  call fastcc void @atombios_crtc_program_ss(ptr noundef %rdev, i32 noundef 0, i32 noundef 2, i32 noundef -1, ptr noundef nonnull %ss)
  %7 = ptrtoint ptr %default_dispclk5 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %default_dispclk5, align 4
  call fastcc void @atombios_crtc_set_disp_eng_pll(ptr noundef %rdev, i32 noundef %8)
  call fastcc void @atombios_crtc_program_ss(ptr noundef %rdev, i32 noundef 1, i32 noundef 2, i32 noundef -1, ptr noundef nonnull %ss)
  br label %if.end11

if.end11.critedge:                                ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #9
  %9 = ptrtoint ptr %default_dispclk5 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %default_dispclk5, align 4
  call fastcc void @atombios_crtc_set_disp_eng_pll(ptr noundef %rdev, i32 noundef %10)
  br label %if.end11

if.end11:                                         ; preds = %if.end11.critedge, %if.then6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %ss) #7
  br label %if.end13

if.end13:                                         ; preds = %if.end11, %if.else.if.end13_crit_edge, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @atombios_crtc_set_disp_eng_pll(ptr nocapture noundef readonly %rdev, i32 noundef %dispclk) unnamed_addr #0 align 64 {
entry:
  %frev = alloca i8, align 1
  %crev = alloca i8, align 1
  %args = alloca %union.set_pixel_clock, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %frev) #7
  %0 = ptrtoint ptr %frev to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %frev, align 1, !annotation !42
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %crev) #7
  %1 = ptrtoint ptr %crev to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 -1, ptr %crev, align 1, !annotation !42
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %args) #7
  %2 = getelementptr inbounds %struct._PIXEL_CLOCK_PARAMETERS_V5, ptr %args, i32 0, i32 2
  %3 = getelementptr inbounds %struct._PIXEL_CLOCK_PARAMETERS_V5, ptr %args, i32 0, i32 6
  %4 = call ptr @memset(ptr %args, i32 0, i32 20)
  %mode_info = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 44
  %5 = ptrtoint ptr %mode_info to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %mode_info, align 4
  %call = call zeroext i1 @atom_parse_cmd_header(ptr noundef %6, i32 noundef 12, ptr noundef nonnull %frev, ptr noundef nonnull %crev) #7
  br i1 %call, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %7 = ptrtoint ptr %frev to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %frev, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %8)
  %cond = icmp eq i8 %8, 1
  br i1 %cond, label %sw.bb, label %sw.default22

sw.bb:                                            ; preds = %if.end
  %9 = ptrtoint ptr %crev to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %crev, align 1
  %11 = zext i8 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.24)
  switch i8 %10, label %sw.default [
    i8 5, label %sw.bb2
    i8 6, label %sw.bb4
  ]

sw.bb2:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  %12 = ptrtoint ptr %args to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 -1, ptr %args, align 4
  %conv3 = trunc i32 %dispclk to i16
  %13 = call i16 @llvm.bswap.i16(i16 %conv3)
  %14 = ptrtoint ptr %2 to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %13, ptr %2, align 2
  br label %sw.epilog25

sw.bb4:                                           ; preds = %sw.bb
  %15 = call i32 @llvm.bswap.i32(i32 %dispclk)
  %16 = ptrtoint ptr %args to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %args, align 4
  %family = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 6
  %17 = ptrtoint ptr %family to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %family, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 50, i32 %18)
  %cmp = icmp ugt i32 %18, 50
  br i1 %cmp, label %land.lhs.true, label %sw.bb4.sw.epilog25_crit_edge

sw.bb4.sw.epilog25_crit_edge:                     ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog25

land.lhs.true:                                    ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #9
  %flags = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 7
  %19 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %flags, align 8
  %and = and i32 %20, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp ne i32 %and, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 56, i32 %18)
  %cmp7 = icmp ugt i32 %18, 56
  %or.cond = select i1 %tobool.not, i1 true, i1 %cmp7
  %. = select i1 %or.cond, i8 8, i8 2
  br label %sw.epilog25

sw.default:                                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  %conv1 = zext i8 %10 to i32
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.10, i32 noundef 1, i32 noundef %conv1) #7
  br label %cleanup

sw.default22:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %conv = zext i8 %8 to i32
  %21 = ptrtoint ptr %crev to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %crev, align 1
  %conv24 = zext i8 %22 to i32
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.10, i32 noundef %conv, i32 noundef %conv24) #7
  br label %cleanup

sw.epilog25:                                      ; preds = %land.lhs.true, %sw.bb4.sw.epilog25_crit_edge, %sw.bb2
  %.sink = phi i8 [ 2, %sw.bb2 ], [ %., %land.lhs.true ], [ 2, %sw.bb4.sw.epilog25_crit_edge ]
  %23 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %.sink, ptr %3, align 4
  %24 = ptrtoint ptr %mode_info to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %mode_info, align 4
  %call28 = call i32 @atom_execute_table(ptr noundef %25, i32 noundef 12, ptr noundef nonnull %args) #7
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog25, %sw.default22, %sw.default, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %args) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %crev) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %frev) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @radeon_atombios_get_asic_ss_info(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @atombios_crtc_program_ss(ptr nocapture noundef readonly %rdev, i32 noundef %enable, i32 noundef %pll_id, i32 noundef %crtc_id, ptr noundef readonly %ss) unnamed_addr #0 align 64 {
entry:
  %args = alloca %union.atom_enable_ss, align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %args) #7
  %0 = getelementptr inbounds %struct._ENABLE_LVDS_SS_PARAMETERS, ptr %args, i32 0, i32 1
  %1 = getelementptr inbounds %struct._ENABLE_LVDS_SS_PARAMETERS, ptr %args, i32 0, i32 2
  %2 = getelementptr inbounds %struct._ENABLE_LVDS_SS_PARAMETERS, ptr %args, i32 0, i32 3
  %3 = getelementptr inbounds %struct._ENABLE_LVDS_SS_PARAMETERS, ptr %args, i32 0, i32 4
  %4 = getelementptr inbounds %struct._ENABLE_LVDS_SS_PARAMETERS, ptr %args, i32 0, i32 4, i32 1
  %5 = getelementptr inbounds %struct._ENABLE_LVDS_SS_PARAMETERS, ptr %args, i32 0, i32 4, i32 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %enable)
  %tobool.not = icmp eq i32 %enable, 0
  br i1 %tobool.not, label %for.cond.preheader, label %if.then

for.cond.preheader:                               ; preds = %entry
  %num_crtc = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 91
  %6 = ptrtoint ptr %num_crtc to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num_crtc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp7221.not = icmp eq i32 %7, 0
  br i1 %cmp7221.not, label %for.cond.preheader.if.end27_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.if.end27_crit_edge:            ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end27

if.then:                                          ; preds = %entry
  %8 = ptrtoint ptr %ss to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %ss, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %9)
  %cmp = icmp eq i16 %9, 0
  br i1 %cmp, label %if.then.cleanup_crit_edge, label %if.end

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %if.then
  %type = getelementptr inbounds %struct.radeon_atom_ss, ptr %ss, i32 0, i32 2
  %10 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %type, align 2
  %12 = and i8 %11, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool4.not = icmp eq i8 %12, 0
  br i1 %tobool4.not, label %if.end.if.end27_crit_edge, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.if.end27_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end27

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.0222 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 44, i32 4, i32 %i.0222
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx, align 4
  %tobool9.not = icmp eq ptr %14, null
  br i1 %tobool9.not, label %for.body.for.inc_crit_edge, label %land.lhs.true

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %enabled = getelementptr inbounds %struct.radeon_crtc, ptr %14, i32 0, i32 2
  %15 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %enabled, align 4, !range !37
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool13.not = icmp eq i8 %16, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0222, i32 %crtc_id)
  %cmp16.not = icmp eq i32 %i.0222, %crtc_id
  %or.cond = select i1 %tobool13.not, i1 true, i1 %cmp16.not
  br i1 %or.cond, label %land.lhs.true.for.inc_crit_edge, label %land.lhs.true18

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

land.lhs.true18:                                  ; preds = %land.lhs.true
  %pll_id22 = getelementptr inbounds %struct.radeon_crtc, ptr %14, i32 0, i32 23
  %17 = ptrtoint ptr %pll_id22 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %pll_id22, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %pll_id)
  %cmp23 = icmp eq i32 %18, %pll_id
  br i1 %cmp23, label %land.lhs.true18.cleanup_crit_edge, label %land.lhs.true18.for.inc_crit_edge

land.lhs.true18.for.inc_crit_edge:                ; preds = %land.lhs.true18
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

land.lhs.true18.cleanup_crit_edge:                ; preds = %land.lhs.true18
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.inc:                                          ; preds = %land.lhs.true18.for.inc_crit_edge, %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw i32 %i.0222, 1
  %exitcond.not = icmp eq i32 %inc, %7
  br i1 %exitcond.not, label %for.inc.if.end27_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc.if.end27_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end27

if.end27:                                         ; preds = %for.inc.if.end27_crit_edge, %if.end.if.end27_crit_edge, %for.cond.preheader.if.end27_crit_edge
  %19 = ptrtoint ptr %args to i32
  call void @__asan_store8_noabort(i32 %19)
  store i64 0, ptr %args, align 8
  %family = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 6
  %20 = ptrtoint ptr %family to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %family, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 46, i32 %21)
  %cmp28 = icmp ugt i32 %21, 46
  br i1 %cmp28, label %if.then30, label %if.else50

if.then30:                                        ; preds = %if.end27
  %22 = ptrtoint ptr %args to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 0, ptr %args, align 8
  %type31 = getelementptr inbounds %struct.radeon_atom_ss, ptr %ss, i32 0, i32 2
  %23 = ptrtoint ptr %type31 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %type31, align 2
  %25 = and i8 %24, 1
  %26 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %25, ptr %0, align 2
  %27 = zext i32 %pll_id to i64
  call void @__sanitizer_cov_trace_switch(i64 %27, ptr @__sancov_gen_cov_switch_values.25)
  switch i32 %pll_id, label %if.then30.sw.epilog_crit_edge [
    i32 255, label %if.then30.cleanup_crit_edge
    i32 1, label %if.then30.sw.epilog.sink.split_crit_edge
    i32 2, label %sw.bb43
  ]

if.then30.sw.epilog.sink.split_crit_edge:         ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.sink.split

if.then30.cleanup_crit_edge:                      ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then30.sw.epilog_crit_edge:                    ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb43:                                          ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %sw.bb43, %if.then30.sw.epilog.sink.split_crit_edge
  %.sink224 = phi i8 [ 8, %sw.bb43 ], [ 4, %if.then30.sw.epilog.sink.split_crit_edge ]
  %28 = or i8 %25, %.sink224
  %29 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %28, ptr %0, align 2
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %if.then30.sw.epilog_crit_edge
  %amount = getelementptr inbounds %struct.radeon_atom_ss, ptr %ss, i32 0, i32 8
  %30 = ptrtoint ptr %amount to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %amount, align 2
  %32 = tail call i16 @llvm.bswap.i16(i16 %31)
  %33 = ptrtoint ptr %2 to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 %32, ptr %2, align 4
  %step = getelementptr inbounds %struct.radeon_atom_ss, ptr %ss, i32 0, i32 3
  %34 = ptrtoint ptr %step to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %step, align 2
  %36 = tail call i16 @llvm.bswap.i16(i16 %35)
  %37 = ptrtoint ptr %4 to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 %36, ptr %4, align 2
  %conv49 = trunc i32 %enable to i8
  %38 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %conv49, ptr %1, align 1
  br label %if.end164

if.else50:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_const_cmp4(i32 38, i32 %21)
  %cmp52 = icmp ugt i32 %21, 38
  br i1 %cmp52, label %if.then54, label %if.else84

if.then54:                                        ; preds = %if.else50
  %39 = ptrtoint ptr %ss to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %ss, align 2
  %41 = tail call i16 @llvm.bswap.i16(i16 %40)
  %42 = ptrtoint ptr %args to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 %41, ptr %args, align 8
  %type56 = getelementptr inbounds %struct.radeon_atom_ss, ptr %ss, i32 0, i32 2
  %43 = ptrtoint ptr %type56 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %type56, align 2
  %45 = and i8 %44, 1
  %46 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 %45, ptr %0, align 2
  %47 = zext i32 %pll_id to i64
  call void @__sanitizer_cov_trace_switch(i64 %47, ptr @__sancov_gen_cov_switch_values.26)
  switch i32 %pll_id, label %if.then54.sw.epilog77_crit_edge [
    i32 255, label %if.then54.cleanup_crit_edge
    i32 1, label %if.then54.sw.epilog77.sink.split_crit_edge
    i32 2, label %sw.bb71
  ]

if.then54.sw.epilog77.sink.split_crit_edge:       ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog77.sink.split

if.then54.cleanup_crit_edge:                      ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then54.sw.epilog77_crit_edge:                  ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog77

sw.bb71:                                          ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog77.sink.split

sw.epilog77.sink.split:                           ; preds = %sw.bb71, %if.then54.sw.epilog77.sink.split_crit_edge
  %.sink225 = phi i8 [ 8, %sw.bb71 ], [ 4, %if.then54.sw.epilog77.sink.split_crit_edge ]
  %48 = or i8 %45, %.sink225
  %49 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 %48, ptr %0, align 2
  br label %sw.epilog77

sw.epilog77:                                      ; preds = %sw.epilog77.sink.split, %if.then54.sw.epilog77_crit_edge
  %amount78 = getelementptr inbounds %struct.radeon_atom_ss, ptr %ss, i32 0, i32 8
  %50 = ptrtoint ptr %amount78 to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %amount78, align 2
  %52 = tail call i16 @llvm.bswap.i16(i16 %51)
  %53 = ptrtoint ptr %2 to i32
  call void @__asan_store2_noabort(i32 %53)
  store i16 %52, ptr %2, align 4
  %step80 = getelementptr inbounds %struct.radeon_atom_ss, ptr %ss, i32 0, i32 3
  %54 = ptrtoint ptr %step80 to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %step80, align 2
  %56 = tail call i16 @llvm.bswap.i16(i16 %55)
  %57 = ptrtoint ptr %4 to i32
  call void @__asan_store2_noabort(i32 %57)
  store i16 %56, ptr %4, align 2
  %conv82 = trunc i32 %enable to i8
  %58 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 %conv82, ptr %1, align 1
  br label %if.end164

if.else84:                                        ; preds = %if.else50
  call void @__sanitizer_cov_trace_const_cmp4(i32 30, i32 %21)
  %cmp86 = icmp ugt i32 %21, 30
  br i1 %cmp86, label %if.then88, label %if.else101

if.then88:                                        ; preds = %if.else84
  call void @__sanitizer_cov_trace_pc() #9
  %59 = ptrtoint ptr %ss to i32
  call void @__asan_load2_noabort(i32 %59)
  %60 = load i16, ptr %ss, align 2
  %61 = tail call i16 @llvm.bswap.i16(i16 %60)
  %62 = ptrtoint ptr %args to i32
  call void @__asan_store2_noabort(i32 %62)
  store i16 %61, ptr %args, align 8
  %type91 = getelementptr inbounds %struct.radeon_atom_ss, ptr %ss, i32 0, i32 2
  %63 = ptrtoint ptr %type91 to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %type91, align 2
  %65 = and i8 %64, 1
  %66 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 %65, ptr %0, align 2
  %step96 = getelementptr inbounds %struct.radeon_atom_ss, ptr %ss, i32 0, i32 3
  %67 = ptrtoint ptr %step96 to i32
  call void @__asan_load2_noabort(i32 %67)
  %68 = load i16, ptr %step96, align 2
  %conv97 = trunc i16 %68 to i8
  %69 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 %conv97, ptr %1, align 1
  %delay = getelementptr inbounds %struct.radeon_atom_ss, ptr %ss, i32 0, i32 4
  %70 = ptrtoint ptr %delay to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %delay, align 2
  %72 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 %71, ptr %3, align 1
  %range = getelementptr inbounds %struct.radeon_atom_ss, ptr %ss, i32 0, i32 5
  %73 = ptrtoint ptr %range to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %range, align 1
  %75 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 %74, ptr %4, align 2
  %conv98 = trunc i32 %pll_id to i8
  %76 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 %conv98, ptr %5, align 1
  %conv99 = trunc i32 %enable to i8
  %77 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 %conv99, ptr %2, align 4
  br label %if.end164

if.else101:                                       ; preds = %if.else84
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %21)
  %cmp103 = icmp ugt i32 %21, 17
  br i1 %cmp103, label %if.then105, label %if.else135

if.then105:                                       ; preds = %if.else101
  br i1 %tobool.not, label %if.then105.if.then117_crit_edge, label %lor.lhs.false

if.then105.if.then117_crit_edge:                  ; preds = %if.then105
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then117

lor.lhs.false:                                    ; preds = %if.then105
  %78 = ptrtoint ptr %ss to i32
  call void @__asan_load2_noabort(i32 %78)
  %79 = load i16, ptr %ss, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %79)
  %cmp110 = icmp eq i16 %79, 0
  br i1 %cmp110, label %lor.lhs.false.if.then117_crit_edge, label %lor.lhs.false112

lor.lhs.false.if.then117_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then117

lor.lhs.false112:                                 ; preds = %lor.lhs.false
  %type113 = getelementptr inbounds %struct.radeon_atom_ss, ptr %ss, i32 0, i32 2
  %80 = ptrtoint ptr %type113 to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %type113, align 2
  %82 = and i8 %81, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %82)
  %tobool116.not = icmp eq i8 %82, 0
  br i1 %tobool116.not, label %if.end118, label %lor.lhs.false112.if.then117_crit_edge

lor.lhs.false112.if.then117_crit_edge:            ; preds = %lor.lhs.false112
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then117

if.then117:                                       ; preds = %lor.lhs.false112.if.then117_crit_edge, %lor.lhs.false.if.then117_crit_edge, %if.then105.if.then117_crit_edge
  tail call fastcc void @atombios_disable_ss(ptr noundef %rdev, i32 noundef %pll_id)
  br label %cleanup

if.end118:                                        ; preds = %lor.lhs.false112
  call void @__sanitizer_cov_trace_pc() #9
  %83 = tail call i16 @llvm.bswap.i16(i16 %79)
  %84 = ptrtoint ptr %args to i32
  call void @__asan_store2_noabort(i32 %84)
  store i16 %83, ptr %args, align 8
  %85 = and i8 %81, 1
  %86 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %86)
  store i8 %85, ptr %0, align 2
  %step126 = getelementptr inbounds %struct.radeon_atom_ss, ptr %ss, i32 0, i32 3
  %87 = ptrtoint ptr %step126 to i32
  call void @__asan_load2_noabort(i32 %87)
  %88 = load i16, ptr %step126, align 2
  %conv127 = trunc i16 %88 to i8
  %89 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %89)
  store i8 %conv127, ptr %1, align 1
  %delay129 = getelementptr inbounds %struct.radeon_atom_ss, ptr %ss, i32 0, i32 4
  %90 = ptrtoint ptr %delay129 to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %delay129, align 2
  %92 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %92)
  store i8 %91, ptr %3, align 1
  %range131 = getelementptr inbounds %struct.radeon_atom_ss, ptr %ss, i32 0, i32 5
  %93 = ptrtoint ptr %range131 to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %range131, align 1
  %95 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %95)
  store i8 %94, ptr %4, align 2
  %96 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %96)
  store i8 1, ptr %2, align 4
  br label %if.end164

if.else135:                                       ; preds = %if.else101
  br i1 %tobool.not, label %if.then138, label %if.end139

if.then138:                                       ; preds = %if.else135
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @atombios_disable_ss(ptr noundef %rdev, i32 noundef %pll_id)
  br label %cleanup

if.end139:                                        ; preds = %if.else135
  call void @__sanitizer_cov_trace_pc() #9
  %97 = ptrtoint ptr %ss to i32
  call void @__asan_load2_noabort(i32 %97)
  %98 = load i16, ptr %ss, align 2
  %99 = tail call i16 @llvm.bswap.i16(i16 %98)
  %100 = ptrtoint ptr %args to i32
  call void @__asan_store2_noabort(i32 %100)
  store i16 %99, ptr %args, align 8
  %type142 = getelementptr inbounds %struct.radeon_atom_ss, ptr %ss, i32 0, i32 2
  %101 = ptrtoint ptr %type142 to i32
  call void @__asan_load1_noabort(i32 %101)
  %102 = load i8, ptr %type142, align 2
  %103 = and i8 %102, 1
  %104 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %104)
  store i8 %103, ptr %0, align 2
  %step147 = getelementptr inbounds %struct.radeon_atom_ss, ptr %ss, i32 0, i32 3
  %105 = ptrtoint ptr %step147 to i32
  call void @__asan_load2_noabort(i32 %105)
  %106 = load i16, ptr %step147, align 2
  %.tr = trunc i16 %106 to i8
  %107 = shl i8 %.tr, 2
  %conv150 = and i8 %107, 12
  %delay151 = getelementptr inbounds %struct.radeon_atom_ss, ptr %ss, i32 0, i32 4
  %108 = ptrtoint ptr %delay151 to i32
  call void @__asan_load1_noabort(i32 %108)
  %109 = load i8, ptr %delay151, align 2
  %110 = shl i8 %109, 4
  %111 = and i8 %110, 112
  %or157220 = or i8 %111, %conv150
  %112 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %112)
  store i8 %or157220, ptr %1, align 1
  %113 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %113)
  store i8 1, ptr %2, align 4
  br label %if.end164

if.end164:                                        ; preds = %if.end139, %if.end118, %if.then88, %sw.epilog77, %sw.epilog
  %mode_info165 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 44
  %114 = ptrtoint ptr %mode_info165 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %mode_info165, align 4
  %call = call i32 @atom_execute_table(ptr noundef %115, i32 noundef 65, ptr noundef nonnull %args) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end164, %if.then138, %if.then117, %if.then54.cleanup_crit_edge, %if.then30.cleanup_crit_edge, %land.lhs.true18.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %args) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @atombios_crtc_mode_set(ptr noundef %crtc, ptr nocapture noundef readonly %mode, ptr noundef readonly %adjusted_mode, i32 noundef %x, i32 noundef %y, ptr noundef %old_fb) #0 align 64 {
entry:
  %args.i106 = alloca %struct._ENABLE_SCALER_PARAMETERS, align 4
  %args.i86 = alloca %struct._SET_CRTC_OVERSCAN_PARAMETERS, align 2
  %args.i54 = alloca %struct._SET_CRTC_TIMING_PARAMETERS, align 2
  %args.i = alloca %struct._SET_CRTC_TIMING_PARAMETERS, align 2
  %pll_clock.i = alloca i32, align 4
  %ref_div.i = alloca i32, align 4
  %fb_div.i = alloca i32, align 4
  %frac_fb_div.i = alloca i32, align 4
  %post_div.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %encoder = getelementptr inbounds %struct.radeon_crtc, ptr %crtc, i32 0, i32 34
  %0 = ptrtoint ptr %encoder to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %encoder, align 4
  %active_device = getelementptr inbounds %struct.radeon_encoder, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %active_device to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %active_device, align 4
  %and = and i32 %3, 260
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not.not = icmp eq i32 %and, 0
  %adjusted_clock = getelementptr inbounds %struct.radeon_crtc, ptr %crtc, i32 0, i32 29
  %4 = ptrtoint ptr %adjusted_clock to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %adjusted_clock, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool5.not = icmp eq i32 %5, 0
  br i1 %tobool5.not, label %entry.cleanup_crit_edge, label %if.end7

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end7:                                          ; preds = %entry
  %6 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %crtc, align 8
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %7, i32 0, i32 5
  %8 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev_private, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pll_clock.i) #7
  %10 = ptrtoint ptr %adjusted_mode to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %adjusted_mode, align 4
  %12 = ptrtoint ptr %pll_clock.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %pll_clock.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ref_div.i) #7
  %13 = ptrtoint ptr %ref_div.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %ref_div.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fb_div.i) #7
  %14 = ptrtoint ptr %fb_div.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %fb_div.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %frac_fb_div.i) #7
  %15 = ptrtoint ptr %frac_fb_div.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %frac_fb_div.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %post_div.i) #7
  %16 = ptrtoint ptr %post_div.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %post_div.i, align 4
  %call.i = tail call i32 @atombios_get_encoder_mode(ptr noundef %1) #7
  %family.i = getelementptr inbounds %struct.radeon_device, ptr %9, i32 0, i32 6
  %17 = ptrtoint ptr %family.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %family.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 46, i32 %18)
  %cmp.i = icmp ugt i32 %18, 46
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call.i)
  %cmp8.i = icmp eq i32 %call.i, 3
  %or.cond.i = select i1 %cmp.i, i1 %cmp8.i, i1 false
  br i1 %or.cond.i, label %land.lhs.true9.i, label %if.end7.if.end.i_crit_edge

if.end7.if.end.i_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

land.lhs.true9.i:                                 ; preds = %if.end7
  %bpc.i = getelementptr inbounds %struct.radeon_crtc, ptr %crtc, i32 0, i32 30
  %19 = ptrtoint ptr %bpc.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %bpc.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %20)
  %cmp10.i = icmp sgt i32 %20, 8
  br i1 %cmp10.i, label %if.then.i, label %land.lhs.true9.i.if.end.i_crit_edge

land.lhs.true9.i.if.end.i_crit_edge:              ; preds = %land.lhs.true9.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

if.then.i:                                        ; preds = %land.lhs.true9.i
  call void @__sanitizer_cov_trace_pc() #9
  %21 = ptrtoint ptr %adjusted_clock to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %adjusted_clock, align 8
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %land.lhs.true9.i.if.end.i_crit_edge, %if.end7.if.end.i_crit_edge
  %clock5.0.i = phi i32 [ %22, %if.then.i ], [ %11, %land.lhs.true9.i.if.end.i_crit_edge ], [ %11, %if.end7.if.end.i_crit_edge ]
  %pll_id.i = getelementptr inbounds %struct.radeon_crtc, ptr %crtc, i32 0, i32 23
  %23 = ptrtoint ptr %pll_id.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %pll_id.i, align 4
  %25 = zext i32 %24 to i64
  call void @__sanitizer_cov_trace_switch(i64 %25, ptr @__sancov_gen_cov_switch_values.27)
  switch i32 %24, label %sw.default.i [
    i32 0, label %sw.bb.i
    i32 1, label %sw.bb12.i
  ]

sw.bb.i:                                          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %clock11.i = getelementptr inbounds %struct.radeon_device, ptr %9, i32 0, i32 41
  br label %sw.epilog.i

sw.bb12.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %p2pll.i = getelementptr inbounds %struct.radeon_device, ptr %9, i32 0, i32 41, i32 1
  br label %sw.epilog.i

sw.default.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %dcpll.i = getelementptr inbounds %struct.radeon_device, ptr %9, i32 0, i32 41, i32 2
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.default.i, %sw.bb12.i, %sw.bb.i
  %pll.0.i = phi ptr [ %dcpll.i, %sw.default.i ], [ %p2pll.i, %sw.bb12.i ], [ %clock11.i, %sw.bb.i ]
  %pll_flags.i = getelementptr inbounds %struct.radeon_crtc, ptr %crtc, i32 0, i32 33
  %26 = ptrtoint ptr %pll_flags.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %pll_flags.i, align 8
  %flags.i = getelementptr inbounds %struct.radeon_pll, ptr %pll.0.i, i32 0, i32 18
  %28 = ptrtoint ptr %flags.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %flags.i, align 4
  %pll_reference_div.i = getelementptr inbounds %struct.radeon_crtc, ptr %crtc, i32 0, i32 31
  %29 = ptrtoint ptr %pll_reference_div.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %pll_reference_div.i, align 8
  %reference_div.i = getelementptr inbounds %struct.radeon_pll, ptr %pll.0.i, i32 0, i32 1
  %31 = ptrtoint ptr %reference_div.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %reference_div.i, align 4
  %pll_post_div.i = getelementptr inbounds %struct.radeon_crtc, ptr %crtc, i32 0, i32 32
  %32 = ptrtoint ptr %pll_post_div.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %pll_post_div.i, align 4
  %post_div16.i = getelementptr inbounds %struct.radeon_pll, ptr %pll.0.i, i32 0, i32 2
  %34 = ptrtoint ptr %post_div16.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %post_div16.i, align 4
  %35 = ptrtoint ptr %active_device to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %active_device, align 4
  %and.i = and i32 %36, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then17.i

if.then17.i:                                      ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #9
  %37 = ptrtoint ptr %adjusted_clock to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %adjusted_clock, align 8
  %conv.i = zext i32 %38 to i64
  call void @radeon_compute_pll_legacy(ptr noundef %pll.0.i, i64 noundef %conv.i, ptr noundef nonnull %pll_clock.i, ptr noundef nonnull %fb_div.i, ptr noundef nonnull %frac_fb_div.i, ptr noundef nonnull %ref_div.i, ptr noundef nonnull %post_div.i) #7
  br label %if.end28.i

if.else.i:                                        ; preds = %sw.epilog.i
  %39 = ptrtoint ptr %family.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %family.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %40)
  %cmp20.i = icmp ugt i32 %40, 17
  %41 = ptrtoint ptr %adjusted_clock to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %adjusted_clock, align 8
  br i1 %cmp20.i, label %if.then22.i, label %if.else24.i

if.then22.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @radeon_compute_pll_avivo(ptr noundef %pll.0.i, i32 noundef %42, ptr noundef nonnull %pll_clock.i, ptr noundef nonnull %fb_div.i, ptr noundef nonnull %frac_fb_div.i, ptr noundef nonnull %ref_div.i, ptr noundef nonnull %post_div.i) #7
  br label %if.end28.i

if.else24.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv26.i = zext i32 %42 to i64
  call void @radeon_compute_pll_legacy(ptr noundef %pll.0.i, i64 noundef %conv26.i, ptr noundef nonnull %pll_clock.i, ptr noundef nonnull %fb_div.i, ptr noundef nonnull %frac_fb_div.i, ptr noundef nonnull %ref_div.i, ptr noundef nonnull %post_div.i) #7
  br label %if.end28.i

if.end28.i:                                       ; preds = %if.else24.i, %if.then22.i, %if.then17.i
  %43 = ptrtoint ptr %pll_id.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %pll_id.i, align 4
  %crtc_id.i = getelementptr inbounds %struct.radeon_crtc, ptr %crtc, i32 0, i32 1
  %45 = ptrtoint ptr %crtc_id.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %crtc_id.i, align 8
  %ss.i = getelementptr inbounds %struct.radeon_crtc, ptr %crtc, i32 0, i32 27
  call fastcc void @atombios_crtc_program_ss(ptr noundef %9, i32 noundef 0, i32 noundef %44, i32 noundef %46, ptr noundef %ss.i) #7
  %47 = ptrtoint ptr %crtc_id.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %crtc_id.i, align 8
  %49 = ptrtoint ptr %pll_id.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %pll_id.i, align 4
  %encoder_id.i = getelementptr inbounds %struct.radeon_encoder, ptr %1, i32 0, i32 2
  %51 = ptrtoint ptr %encoder_id.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %encoder_id.i, align 4
  %53 = ptrtoint ptr %ref_div.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %ref_div.i, align 4
  %55 = ptrtoint ptr %fb_div.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %fb_div.i, align 4
  %57 = ptrtoint ptr %frac_fb_div.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %frac_fb_div.i, align 4
  %59 = ptrtoint ptr %post_div.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %post_div.i, align 4
  %bpc32.i = getelementptr inbounds %struct.radeon_crtc, ptr %crtc, i32 0, i32 30
  %61 = ptrtoint ptr %bpc32.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %bpc32.i, align 4
  %ss_enabled.i = getelementptr inbounds %struct.radeon_crtc, ptr %crtc, i32 0, i32 28
  %63 = ptrtoint ptr %ss_enabled.i to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %ss_enabled.i, align 4, !range !37
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %64)
  %tobool33.i = icmp ne i8 %64, 0
  call fastcc void @atombios_crtc_program_pll(ptr noundef %crtc, i32 noundef %48, i32 noundef %50, i32 noundef %call.i, i32 noundef %52, i32 noundef %clock5.0.i, i32 noundef %54, i32 noundef %56, i32 noundef %58, i32 noundef %60, i32 noundef %62, i1 noundef zeroext %tobool33.i, ptr noundef %ss.i) #7
  %65 = ptrtoint ptr %ss_enabled.i to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %ss_enabled.i, align 4, !range !37
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %66)
  %tobool36.not.i = icmp eq i8 %66, 0
  br i1 %tobool36.not.i, label %if.end28.i.atombios_crtc_set_pll.exit_crit_edge, label %if.then37.i

if.end28.i.atombios_crtc_set_pll.exit_crit_edge:  ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %atombios_crtc_set_pll.exit

if.then37.i:                                      ; preds = %if.end28.i
  %67 = ptrtoint ptr %family.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %family.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 38, i32 %68)
  %cmp39.i = icmp ugt i32 %68, 38
  br i1 %cmp39.i, label %if.then41.i, label %if.then37.i.if.end88.i_crit_edge

if.then37.i.if.end88.i_crit_edge:                 ; preds = %if.then37.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end88.i

if.then41.i:                                      ; preds = %if.then37.i
  call void @__sanitizer_cov_trace_pc() #9
  %69 = ptrtoint ptr %fb_div.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %fb_div.i, align 4
  %mul.i = mul i32 %70, 10
  %71 = ptrtoint ptr %frac_fb_div.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %frac_fb_div.i, align 4
  %add.i = add i32 %mul.i, %72
  %73 = ptrtoint ptr %ss.i to i32
  call void @__asan_load2_noabort(i32 %73)
  %74 = load i16, ptr %ss.i, align 4
  %conv43.i = zext i16 %74 to i32
  %mul44.i = mul i32 %add.i, %conv43.i
  %percentage_divider.i = getelementptr inbounds %struct.radeon_crtc, ptr %crtc, i32 0, i32 27, i32 1
  %75 = ptrtoint ptr %percentage_divider.i to i32
  call void @__asan_load2_noabort(i32 %75)
  %76 = load i16, ptr %percentage_divider.i, align 2
  %conv46.i = zext i16 %76 to i32
  %mul47.i = mul nuw nsw i32 %conv46.i, 100
  %div.i = udiv i32 %mul44.i, %mul47.i
  %div48.i = udiv i32 %div.i, 10
  %conv50.i = and i32 %div48.i, 255
  %amount52.i = getelementptr inbounds %struct.radeon_crtc, ptr %crtc, i32 0, i32 27, i32 8
  %sub.i = sub i32 %div.i, %div48.i
  %shl.i = shl i32 %sub.i, 8
  %and54.i = and i32 %shl.i, 3840
  %or.i = or i32 %and54.i, %conv50.i
  %conv58.i = trunc i32 %or.i to i16
  %77 = ptrtoint ptr %amount52.i to i32
  call void @__asan_store2_noabort(i32 %77)
  store i16 %conv58.i, ptr %amount52.i, align 2
  %type.i = getelementptr inbounds %struct.radeon_crtc, ptr %crtc, i32 0, i32 27, i32 2
  %78 = ptrtoint ptr %type.i to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %type.i, align 4
  %80 = and i8 %79, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %80)
  %tobool62.not.i = icmp eq i8 %80, 0
  %81 = ptrtoint ptr %ref_div.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %ref_div.i, align 4
  %rate77.i = getelementptr inbounds %struct.radeon_crtc, ptr %crtc, i32 0, i32 27, i32 7
  %83 = ptrtoint ptr %rate77.i to i32
  call void @__asan_load2_noabort(i32 %83)
  %84 = load i16, ptr %rate77.i, align 4
  %conv78.i = zext i16 %84 to i32
  %..i = select i1 %tobool62.not.i, i32 12, i32 13
  %mul74.i = shl i32 %div.i, %..i
  %mul75.i = mul i32 %82, %conv78.i
  %mul80.i = mul i32 %mul75.i, %mul74.i
  %85 = ptrtoint ptr %pll.0.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %pll.0.i, align 4
  %mul82.i = mul i32 %86, 3125
  %div83.i = udiv i32 %mul82.i, 100
  %div84.i = udiv i32 %mul80.i, %div83.i
  %conv86.i = trunc i32 %div84.i to i16
  %step.i = getelementptr inbounds %struct.radeon_crtc, ptr %crtc, i32 0, i32 27, i32 3
  %87 = ptrtoint ptr %step.i to i32
  call void @__asan_store2_noabort(i32 %87)
  store i16 %conv86.i, ptr %step.i, align 2
  br label %if.end88.i

if.end88.i:                                       ; preds = %if.then41.i, %if.then37.i.if.end88.i_crit_edge
  %88 = ptrtoint ptr %pll_id.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %pll_id.i, align 4
  %90 = ptrtoint ptr %crtc_id.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %crtc_id.i, align 8
  call fastcc void @atombios_crtc_program_ss(ptr noundef %9, i32 noundef 1, i32 noundef %89, i32 noundef %91, ptr noundef %ss.i) #7
  br label %atombios_crtc_set_pll.exit

atombios_crtc_set_pll.exit:                       ; preds = %if.end88.i, %if.end28.i.atombios_crtc_set_pll.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %post_div.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %frac_fb_div.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fb_div.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ref_div.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pll_clock.i) #7
  %92 = ptrtoint ptr %family.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %family.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 38, i32 %93)
  %cmp = icmp ugt i32 %93, 38
  br i1 %cmp, label %if.then8, label %if.else

if.then8:                                         ; preds = %atombios_crtc_set_pll.exit
  call void @__sanitizer_cov_trace_pc() #9
  call fastcc void @atombios_set_crtc_dtd_timing(ptr noundef %crtc, ptr noundef %adjusted_mode)
  br label %if.end21

if.else:                                          ; preds = %atombios_crtc_set_pll.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %93)
  %cmp10 = icmp ugt i32 %93, 17
  br i1 %cmp10, label %if.then11, label %if.else16

if.then11:                                        ; preds = %if.else
  br i1 %tobool.not.not, label %if.else14, label %if.then13

if.then13:                                        ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #9
  %94 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %crtc, align 8
  %dev_private.i49 = getelementptr inbounds %struct.drm_device, ptr %95, i32 0, i32 5
  %96 = ptrtoint ptr %dev_private.i49 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %dev_private.i49, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %args.i) #7
  %98 = getelementptr inbounds %struct._SET_CRTC_TIMING_PARAMETERS, ptr %args.i, i32 0, i32 1
  %99 = getelementptr inbounds %struct._SET_CRTC_TIMING_PARAMETERS, ptr %args.i, i32 0, i32 2
  %100 = getelementptr inbounds %struct._SET_CRTC_TIMING_PARAMETERS, ptr %args.i, i32 0, i32 3
  %101 = getelementptr inbounds %struct._SET_CRTC_TIMING_PARAMETERS, ptr %args.i, i32 0, i32 4
  %102 = getelementptr inbounds %struct._SET_CRTC_TIMING_PARAMETERS, ptr %args.i, i32 0, i32 5
  %103 = getelementptr inbounds %struct._SET_CRTC_TIMING_PARAMETERS, ptr %args.i, i32 0, i32 6
  %104 = getelementptr inbounds %struct._SET_CRTC_TIMING_PARAMETERS, ptr %args.i, i32 0, i32 7
  %105 = getelementptr inbounds %struct._SET_CRTC_TIMING_PARAMETERS, ptr %args.i, i32 0, i32 8
  %106 = getelementptr inbounds %struct._SET_CRTC_TIMING_PARAMETERS, ptr %args.i, i32 0, i32 9
  %107 = getelementptr inbounds %struct._SET_CRTC_TIMING_PARAMETERS, ptr %args.i, i32 0, i32 10
  %108 = getelementptr inbounds %struct._SET_CRTC_TIMING_PARAMETERS, ptr %args.i, i32 0, i32 11
  %109 = getelementptr inbounds %struct._SET_CRTC_TIMING_PARAMETERS, ptr %args.i, i32 0, i32 12
  %110 = getelementptr inbounds %struct._SET_CRTC_TIMING_PARAMETERS, ptr %args.i, i32 0, i32 13
  %111 = ptrtoint ptr %110 to i32
  call void @__asan_store2_noabort(i32 %111)
  store i16 0, ptr %110, align 2
  %crtc_htotal.i = getelementptr inbounds %struct.drm_display_mode, ptr %adjusted_mode, i32 0, i32 18
  %112 = ptrtoint ptr %crtc_htotal.i to i32
  call void @__asan_load2_noabort(i32 %112)
  %113 = load i16, ptr %crtc_htotal.i, align 2
  %114 = call i16 @llvm.bswap.i16(i16 %113) #7
  %115 = ptrtoint ptr %args.i to i32
  call void @__asan_store2_noabort(i32 %115)
  store i16 %114, ptr %args.i, align 2
  %crtc_hdisplay.i = getelementptr inbounds %struct.drm_display_mode, ptr %adjusted_mode, i32 0, i32 13
  %116 = ptrtoint ptr %crtc_hdisplay.i to i32
  call void @__asan_load2_noabort(i32 %116)
  %117 = load i16, ptr %crtc_hdisplay.i, align 4
  %118 = call i16 @llvm.bswap.i16(i16 %117) #7
  %119 = ptrtoint ptr %98 to i32
  call void @__asan_store2_noabort(i32 %119)
  store i16 %118, ptr %98, align 2
  %crtc_hsync_start.i = getelementptr inbounds %struct.drm_display_mode, ptr %adjusted_mode, i32 0, i32 16
  %120 = ptrtoint ptr %crtc_hsync_start.i to i32
  call void @__asan_load2_noabort(i32 %120)
  %121 = load i16, ptr %crtc_hsync_start.i, align 2
  %122 = call i16 @llvm.bswap.i16(i16 %121) #7
  %123 = ptrtoint ptr %99 to i32
  call void @__asan_store2_noabort(i32 %123)
  store i16 %122, ptr %99, align 2
  %crtc_hsync_end.i = getelementptr inbounds %struct.drm_display_mode, ptr %adjusted_mode, i32 0, i32 17
  %124 = ptrtoint ptr %crtc_hsync_end.i to i32
  call void @__asan_load2_noabort(i32 %124)
  %125 = load i16, ptr %crtc_hsync_end.i, align 4
  %sub.i50 = sub i16 %125, %121
  %126 = call i16 @llvm.bswap.i16(i16 %sub.i50) #7
  %127 = ptrtoint ptr %100 to i32
  call void @__asan_store2_noabort(i32 %127)
  store i16 %126, ptr %100, align 2
  %crtc_vtotal.i = getelementptr inbounds %struct.drm_display_mode, ptr %adjusted_mode, i32 0, i32 25
  %128 = ptrtoint ptr %crtc_vtotal.i to i32
  call void @__asan_load2_noabort(i32 %128)
  %129 = load i16, ptr %crtc_vtotal.i, align 4
  %130 = call i16 @llvm.bswap.i16(i16 %129) #7
  %131 = ptrtoint ptr %101 to i32
  call void @__asan_store2_noabort(i32 %131)
  store i16 %130, ptr %101, align 2
  %crtc_vdisplay.i = getelementptr inbounds %struct.drm_display_mode, ptr %adjusted_mode, i32 0, i32 20
  %132 = ptrtoint ptr %crtc_vdisplay.i to i32
  call void @__asan_load2_noabort(i32 %132)
  %133 = load i16, ptr %crtc_vdisplay.i, align 2
  %134 = call i16 @llvm.bswap.i16(i16 %133) #7
  %135 = ptrtoint ptr %102 to i32
  call void @__asan_store2_noabort(i32 %135)
  store i16 %134, ptr %102, align 2
  %crtc_vsync_start.i = getelementptr inbounds %struct.drm_display_mode, ptr %adjusted_mode, i32 0, i32 23
  %136 = ptrtoint ptr %crtc_vsync_start.i to i32
  call void @__asan_load2_noabort(i32 %136)
  %137 = load i16, ptr %crtc_vsync_start.i, align 4
  %138 = call i16 @llvm.bswap.i16(i16 %137) #7
  %139 = ptrtoint ptr %103 to i32
  call void @__asan_store2_noabort(i32 %139)
  store i16 %138, ptr %103, align 2
  %crtc_vsync_end.i = getelementptr inbounds %struct.drm_display_mode, ptr %adjusted_mode, i32 0, i32 24
  %140 = ptrtoint ptr %crtc_vsync_end.i to i32
  call void @__asan_load2_noabort(i32 %140)
  %141 = load i16, ptr %crtc_vsync_end.i, align 2
  %sub8.i = sub i16 %141, %137
  %142 = call i16 @llvm.bswap.i16(i16 %sub8.i) #7
  %143 = ptrtoint ptr %104 to i32
  call void @__asan_store2_noabort(i32 %143)
  store i16 %142, ptr %104, align 2
  %h_border.i = getelementptr inbounds %struct.radeon_crtc, ptr %crtc, i32 0, i32 18
  %144 = ptrtoint ptr %h_border.i to i32
  call void @__asan_load1_noabort(i32 %144)
  %145 = load i8, ptr %h_border.i, align 8
  %146 = ptrtoint ptr %107 to i32
  call void @__asan_store1_noabort(i32 %146)
  store i8 %145, ptr %107, align 1
  %147 = ptrtoint ptr %108 to i32
  call void @__asan_store1_noabort(i32 %147)
  store i8 %145, ptr %108, align 2
  %v_border.i = getelementptr inbounds %struct.radeon_crtc, ptr %crtc, i32 0, i32 19
  %148 = ptrtoint ptr %v_border.i to i32
  call void @__asan_load1_noabort(i32 %148)
  %149 = load i8, ptr %v_border.i, align 1
  %150 = ptrtoint ptr %109 to i32
  call void @__asan_store1_noabort(i32 %150)
  store i8 %149, ptr %109, align 1
  %151 = ptrtoint ptr %110 to i32
  call void @__asan_store1_noabort(i32 %151)
  store i8 %149, ptr %110, align 2
  %flags.i51 = getelementptr inbounds %struct.drm_display_mode, ptr %adjusted_mode, i32 0, i32 11
  %152 = ptrtoint ptr %flags.i51 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %flags.i51, align 4
  %154 = trunc i32 %153 to i16
  %155 = lshr i16 %154, 1
  %156 = and i16 %155, 4
  %157 = shl i16 %154, 3
  %158 = and i16 %157, 128
  %159 = lshr i16 %154, 4
  %160 = and i16 %159, 256
  %161 = and i16 %154, 66
  %162 = or i16 %156, %161
  %163 = or i16 %162, %158
  %164 = or i16 %163, %160
  %and47.i = and i32 %153, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and47.i)
  %tobool48.not.i = icmp eq i32 %and47.i, 0
  %165 = or i16 %164, 48
  %misc.5.i = select i1 %tobool48.not.i, i16 %164, i16 %165
  %166 = call i16 @llvm.bswap.i16(i16 %misc.5.i) #7
  %167 = ptrtoint ptr %105 to i32
  call void @__asan_store2_noabort(i32 %167)
  store i16 %166, ptr %105, align 2
  %168 = ptrtoint ptr %crtc_id.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load i32, ptr %crtc_id.i, align 8
  %conv54.i = trunc i32 %169 to i8
  %170 = ptrtoint ptr %106 to i32
  call void @__asan_store1_noabort(i32 %170)
  store i8 %conv54.i, ptr %106, align 2
  %mode_info.i = getelementptr inbounds %struct.radeon_device, ptr %97, i32 0, i32 44
  %171 = ptrtoint ptr %mode_info.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %mode_info.i, align 4
  %call.i53 = call i32 @atom_execute_table(ptr noundef %172, i32 noundef 39, ptr noundef nonnull %args.i) #7
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %args.i) #7
  br label %if.end21

if.else14:                                        ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #9
  call fastcc void @atombios_set_crtc_dtd_timing(ptr noundef %crtc, ptr noundef %adjusted_mode)
  br label %if.end21

if.else16:                                        ; preds = %if.else
  %173 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %crtc, align 8
  %dev_private.i55 = getelementptr inbounds %struct.drm_device, ptr %174, i32 0, i32 5
  %175 = ptrtoint ptr %dev_private.i55 to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %dev_private.i55, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %args.i54) #7
  %177 = getelementptr inbounds %struct._SET_CRTC_TIMING_PARAMETERS, ptr %args.i54, i32 0, i32 1
  %178 = getelementptr inbounds %struct._SET_CRTC_TIMING_PARAMETERS, ptr %args.i54, i32 0, i32 2
  %179 = getelementptr inbounds %struct._SET_CRTC_TIMING_PARAMETERS, ptr %args.i54, i32 0, i32 3
  %180 = getelementptr inbounds %struct._SET_CRTC_TIMING_PARAMETERS, ptr %args.i54, i32 0, i32 4
  %181 = getelementptr inbounds %struct._SET_CRTC_TIMING_PARAMETERS, ptr %args.i54, i32 0, i32 5
  %182 = getelementptr inbounds %struct._SET_CRTC_TIMING_PARAMETERS, ptr %args.i54, i32 0, i32 6
  %183 = getelementptr inbounds %struct._SET_CRTC_TIMING_PARAMETERS, ptr %args.i54, i32 0, i32 7
  %184 = getelementptr inbounds %struct._SET_CRTC_TIMING_PARAMETERS, ptr %args.i54, i32 0, i32 8
  %185 = getelementptr inbounds %struct._SET_CRTC_TIMING_PARAMETERS, ptr %args.i54, i32 0, i32 9
  %186 = getelementptr inbounds %struct._SET_CRTC_TIMING_PARAMETERS, ptr %args.i54, i32 0, i32 10
  %187 = getelementptr inbounds %struct._SET_CRTC_TIMING_PARAMETERS, ptr %args.i54, i32 0, i32 11
  %188 = getelementptr inbounds %struct._SET_CRTC_TIMING_PARAMETERS, ptr %args.i54, i32 0, i32 12
  %189 = getelementptr inbounds %struct._SET_CRTC_TIMING_PARAMETERS, ptr %args.i54, i32 0, i32 13
  %190 = ptrtoint ptr %189 to i32
  call void @__asan_store2_noabort(i32 %190)
  store i16 0, ptr %189, align 2
  %crtc_htotal.i56 = getelementptr inbounds %struct.drm_display_mode, ptr %adjusted_mode, i32 0, i32 18
  %191 = ptrtoint ptr %crtc_htotal.i56 to i32
  call void @__asan_load2_noabort(i32 %191)
  %192 = load i16, ptr %crtc_htotal.i56, align 2
  %193 = call i16 @llvm.bswap.i16(i16 %192) #7
  %194 = ptrtoint ptr %args.i54 to i32
  call void @__asan_store2_noabort(i32 %194)
  store i16 %193, ptr %args.i54, align 2
  %crtc_hdisplay.i57 = getelementptr inbounds %struct.drm_display_mode, ptr %adjusted_mode, i32 0, i32 13
  %195 = ptrtoint ptr %crtc_hdisplay.i57 to i32
  call void @__asan_load2_noabort(i32 %195)
  %196 = load i16, ptr %crtc_hdisplay.i57, align 4
  %197 = call i16 @llvm.bswap.i16(i16 %196) #7
  %198 = ptrtoint ptr %177 to i32
  call void @__asan_store2_noabort(i32 %198)
  store i16 %197, ptr %177, align 2
  %crtc_hsync_start.i58 = getelementptr inbounds %struct.drm_display_mode, ptr %adjusted_mode, i32 0, i32 16
  %199 = ptrtoint ptr %crtc_hsync_start.i58 to i32
  call void @__asan_load2_noabort(i32 %199)
  %200 = load i16, ptr %crtc_hsync_start.i58, align 2
  %201 = call i16 @llvm.bswap.i16(i16 %200) #7
  %202 = ptrtoint ptr %178 to i32
  call void @__asan_store2_noabort(i32 %202)
  store i16 %201, ptr %178, align 2
  %crtc_hsync_end.i59 = getelementptr inbounds %struct.drm_display_mode, ptr %adjusted_mode, i32 0, i32 17
  %203 = ptrtoint ptr %crtc_hsync_end.i59 to i32
  call void @__asan_load2_noabort(i32 %203)
  %204 = load i16, ptr %crtc_hsync_end.i59, align 4
  %sub.i60 = sub i16 %204, %200
  %205 = call i16 @llvm.bswap.i16(i16 %sub.i60) #7
  %206 = ptrtoint ptr %179 to i32
  call void @__asan_store2_noabort(i32 %206)
  store i16 %205, ptr %179, align 2
  %crtc_vtotal.i61 = getelementptr inbounds %struct.drm_display_mode, ptr %adjusted_mode, i32 0, i32 25
  %207 = ptrtoint ptr %crtc_vtotal.i61 to i32
  call void @__asan_load2_noabort(i32 %207)
  %208 = load i16, ptr %crtc_vtotal.i61, align 4
  %209 = call i16 @llvm.bswap.i16(i16 %208) #7
  %210 = ptrtoint ptr %180 to i32
  call void @__asan_store2_noabort(i32 %210)
  store i16 %209, ptr %180, align 2
  %crtc_vdisplay.i62 = getelementptr inbounds %struct.drm_display_mode, ptr %adjusted_mode, i32 0, i32 20
  %211 = ptrtoint ptr %crtc_vdisplay.i62 to i32
  call void @__asan_load2_noabort(i32 %211)
  %212 = load i16, ptr %crtc_vdisplay.i62, align 2
  %213 = call i16 @llvm.bswap.i16(i16 %212) #7
  %214 = ptrtoint ptr %181 to i32
  call void @__asan_store2_noabort(i32 %214)
  store i16 %213, ptr %181, align 2
  %crtc_vsync_start.i63 = getelementptr inbounds %struct.drm_display_mode, ptr %adjusted_mode, i32 0, i32 23
  %215 = ptrtoint ptr %crtc_vsync_start.i63 to i32
  call void @__asan_load2_noabort(i32 %215)
  %216 = load i16, ptr %crtc_vsync_start.i63, align 4
  %217 = call i16 @llvm.bswap.i16(i16 %216) #7
  %218 = ptrtoint ptr %182 to i32
  call void @__asan_store2_noabort(i32 %218)
  store i16 %217, ptr %182, align 2
  %crtc_vsync_end.i64 = getelementptr inbounds %struct.drm_display_mode, ptr %adjusted_mode, i32 0, i32 24
  %219 = ptrtoint ptr %crtc_vsync_end.i64 to i32
  call void @__asan_load2_noabort(i32 %219)
  %220 = load i16, ptr %crtc_vsync_end.i64, align 2
  %sub8.i65 = sub i16 %220, %216
  %221 = call i16 @llvm.bswap.i16(i16 %sub8.i65) #7
  %222 = ptrtoint ptr %183 to i32
  call void @__asan_store2_noabort(i32 %222)
  store i16 %221, ptr %183, align 2
  %h_border.i66 = getelementptr inbounds %struct.radeon_crtc, ptr %crtc, i32 0, i32 18
  %223 = ptrtoint ptr %h_border.i66 to i32
  call void @__asan_load1_noabort(i32 %223)
  %224 = load i8, ptr %h_border.i66, align 8
  %225 = ptrtoint ptr %186 to i32
  call void @__asan_store1_noabort(i32 %225)
  store i8 %224, ptr %186, align 1
  %226 = ptrtoint ptr %187 to i32
  call void @__asan_store1_noabort(i32 %226)
  store i8 %224, ptr %187, align 2
  %v_border.i67 = getelementptr inbounds %struct.radeon_crtc, ptr %crtc, i32 0, i32 19
  %227 = ptrtoint ptr %v_border.i67 to i32
  call void @__asan_load1_noabort(i32 %227)
  %228 = load i8, ptr %v_border.i67, align 1
  %229 = ptrtoint ptr %188 to i32
  call void @__asan_store1_noabort(i32 %229)
  store i8 %228, ptr %188, align 1
  %230 = ptrtoint ptr %189 to i32
  call void @__asan_store1_noabort(i32 %230)
  store i8 %228, ptr %189, align 2
  %flags.i68 = getelementptr inbounds %struct.drm_display_mode, ptr %adjusted_mode, i32 0, i32 11
  %231 = ptrtoint ptr %flags.i68 to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load i32, ptr %flags.i68, align 4
  %233 = trunc i32 %232 to i16
  %234 = lshr i16 %233, 1
  %235 = and i16 %234, 4
  %236 = shl i16 %233, 3
  %237 = and i16 %236, 128
  %238 = lshr i16 %233, 4
  %239 = and i16 %238, 256
  %240 = and i16 %233, 66
  %241 = or i16 %235, %240
  %242 = or i16 %241, %237
  %243 = or i16 %242, %239
  %and47.i69 = and i32 %232, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and47.i69)
  %tobool48.not.i70 = icmp eq i32 %and47.i69, 0
  %244 = or i16 %243, 48
  %misc.5.i71 = select i1 %tobool48.not.i70, i16 %243, i16 %244
  %245 = call i16 @llvm.bswap.i16(i16 %misc.5.i71) #7
  %246 = ptrtoint ptr %184 to i32
  call void @__asan_store2_noabort(i32 %246)
  store i16 %245, ptr %184, align 2
  %247 = ptrtoint ptr %crtc_id.i to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load i32, ptr %crtc_id.i, align 8
  %conv54.i73 = trunc i32 %248 to i8
  %249 = ptrtoint ptr %185 to i32
  call void @__asan_store1_noabort(i32 %249)
  store i8 %conv54.i73, ptr %185, align 2
  %mode_info.i74 = getelementptr inbounds %struct.radeon_device, ptr %176, i32 0, i32 44
  %250 = ptrtoint ptr %mode_info.i74 to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load ptr, ptr %mode_info.i74, align 4
  %call.i75 = call i32 @atom_execute_table(ptr noundef %251, i32 noundef 39, ptr noundef nonnull %args.i54) #7
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %args.i54) #7
  %252 = ptrtoint ptr %crtc_id.i to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load i32, ptr %crtc_id.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %253)
  %cmp17 = icmp eq i32 %253, 0
  br i1 %cmp17, label %if.then18, label %if.else16.if.end19_crit_edge

if.else16.if.end19_crit_edge:                     ; preds = %if.else16
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end19

if.then18:                                        ; preds = %if.else16
  call void @__sanitizer_cov_trace_pc() #9
  call fastcc void @atombios_set_crtc_dtd_timing(ptr noundef %crtc, ptr noundef %adjusted_mode)
  %254 = ptrtoint ptr %crtc_id.i to i32
  call void @__asan_load4_noabort(i32 %254)
  %.pr = load i32, ptr %crtc_id.i, align 8
  br label %if.end19

if.end19:                                         ; preds = %if.then18, %if.else16.if.end19_crit_edge
  %255 = phi i32 [ %.pr, %if.then18 ], [ %253, %if.else16.if.end19_crit_edge ]
  %256 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load ptr, ptr %crtc, align 8
  %dev_private.i76 = getelementptr inbounds %struct.drm_device, ptr %257, i32 0, i32 5
  %258 = ptrtoint ptr %dev_private.i76 to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load ptr, ptr %dev_private.i76, align 4
  %260 = zext i32 %255 to i64
  call void @__sanitizer_cov_trace_switch(i64 %260, ptr @__sancov_gen_cov_switch_values.28)
  switch i32 %255, label %if.end19.if.end21_crit_edge [
    i32 0, label %sw.bb.i78
    i32 1, label %sw.bb2.i
  ]

if.end19.if.end21_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end21

sw.bb.i78:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #9
  %rmmio.i.i = getelementptr inbounds %struct.radeon_device, ptr %259, i32 0, i32 31
  %261 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %261)
  %262 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %262, i32 3424
  %263 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #7, !srcloc !38
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !39
  %264 = and i32 %263, -65537
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !40
  call void @arm_heavy_mb() #7
  %265 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %265)
  %266 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i21.i = getelementptr i8, ptr %266, i32 3424
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i21.i, i32 %264) #7, !srcloc !41
  br label %if.end21

sw.bb2.i:                                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #9
  %rmmio.i24.i = getelementptr inbounds %struct.radeon_device, ptr %259, i32 0, i32 31
  %267 = ptrtoint ptr %rmmio.i24.i to i32
  call void @__asan_load4_noabort(i32 %267)
  %268 = load ptr, ptr %rmmio.i24.i, align 4
  %add.ptr.i25.i = getelementptr i8, ptr %268, i32 3432
  %269 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i25.i) #7, !srcloc !38
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !39
  %270 = and i32 %269, -65537
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !40
  call void @arm_heavy_mb() #7
  %271 = ptrtoint ptr %rmmio.i24.i to i32
  call void @__asan_load4_noabort(i32 %271)
  %272 = load ptr, ptr %rmmio.i24.i, align 4
  %add.ptr.i29.i = getelementptr i8, ptr %272, i32 3432
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i29.i, i32 %270) #7, !srcloc !41
  %273 = ptrtoint ptr %rmmio.i24.i to i32
  call void @__asan_load4_noabort(i32 %273)
  %274 = load ptr, ptr %rmmio.i24.i, align 4
  %add.ptr.i33.i = getelementptr i8, ptr %274, i32 772
  %275 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i33.i) #7, !srcloc !38
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !39
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !40
  call void @arm_heavy_mb() #7
  %276 = ptrtoint ptr %rmmio.i24.i to i32
  call void @__asan_load4_noabort(i32 %276)
  %277 = load ptr, ptr %rmmio.i24.i, align 4
  %add.ptr.i37.i = getelementptr i8, ptr %277, i32 964
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i37.i, i32 %275) #7, !srcloc !41
  %278 = ptrtoint ptr %rmmio.i24.i to i32
  call void @__asan_load4_noabort(i32 %278)
  %279 = load ptr, ptr %rmmio.i24.i, align 4
  %add.ptr.i41.i = getelementptr i8, ptr %279, i32 780
  %280 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i41.i) #7, !srcloc !38
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !39
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !40
  call void @arm_heavy_mb() #7
  %281 = ptrtoint ptr %rmmio.i24.i to i32
  call void @__asan_load4_noabort(i32 %281)
  %282 = load ptr, ptr %rmmio.i24.i, align 4
  %add.ptr.i45.i = getelementptr i8, ptr %282, i32 968
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i45.i, i32 %280) #7, !srcloc !41
  br label %if.end21

if.end21:                                         ; preds = %sw.bb2.i, %sw.bb.i78, %if.end19.if.end21_crit_edge, %if.else14, %if.then13, %if.then8
  %283 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %283)
  %284 = load ptr, ptr %crtc, align 8
  %dev_private.i80 = getelementptr inbounds %struct.drm_device, ptr %284, i32 0, i32 5
  %285 = ptrtoint ptr %dev_private.i80 to i32
  call void @__asan_load4_noabort(i32 %285)
  %286 = load ptr, ptr %dev_private.i80, align 4
  %family.i81 = getelementptr inbounds %struct.radeon_device, ptr %286, i32 0, i32 6
  %287 = ptrtoint ptr %family.i81 to i32
  call void @__asan_load4_noabort(i32 %287)
  %288 = load i32, ptr %family.i81, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 38, i32 %288)
  %cmp.i82 = icmp ugt i32 %288, 38
  br i1 %cmp.i82, label %if.then.i84, label %if.else.i85

if.then.i84:                                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #9
  %call.i83 = call fastcc i32 @dce4_crtc_do_set_base(ptr noundef %crtc, ptr noundef %old_fb, i32 noundef %x, i32 noundef %y, i32 noundef 0) #7
  br label %atombios_crtc_set_base.exit

if.else.i85:                                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %288)
  %cmp3.i = icmp ugt i32 %288, 17
  br i1 %cmp3.i, label %if.then4.i, label %if.else6.i

if.then4.i:                                       ; preds = %if.else.i85
  call void @__sanitizer_cov_trace_pc() #9
  %call5.i = call fastcc i32 @avivo_crtc_do_set_base(ptr noundef %crtc, ptr noundef %old_fb, i32 noundef %x, i32 noundef %y, i32 noundef 0) #7
  br label %atombios_crtc_set_base.exit

if.else6.i:                                       ; preds = %if.else.i85
  call void @__sanitizer_cov_trace_pc() #9
  %call7.i = call i32 @radeon_crtc_do_set_base(ptr noundef %crtc, ptr noundef %old_fb, i32 noundef %x, i32 noundef %y, i32 noundef 0) #7
  br label %atombios_crtc_set_base.exit

atombios_crtc_set_base.exit:                      ; preds = %if.else6.i, %if.then4.i, %if.then.i84
  %289 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %289)
  %290 = load ptr, ptr %crtc, align 8
  %dev_private.i87 = getelementptr inbounds %struct.drm_device, ptr %290, i32 0, i32 5
  %291 = ptrtoint ptr %dev_private.i87 to i32
  call void @__asan_load4_noabort(i32 %291)
  %292 = load ptr, ptr %dev_private.i87, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %args.i86) #7
  %293 = getelementptr inbounds %struct._SET_CRTC_OVERSCAN_PARAMETERS, ptr %args.i86, i32 0, i32 1
  %294 = getelementptr inbounds %struct._SET_CRTC_OVERSCAN_PARAMETERS, ptr %args.i86, i32 0, i32 2
  %295 = getelementptr inbounds %struct._SET_CRTC_OVERSCAN_PARAMETERS, ptr %args.i86, i32 0, i32 3
  %296 = getelementptr inbounds %struct._SET_CRTC_OVERSCAN_PARAMETERS, ptr %args.i86, i32 0, i32 4
  %297 = call ptr @memset(ptr %args.i86, i32 0, i32 12)
  %298 = ptrtoint ptr %crtc_id.i to i32
  call void @__asan_load4_noabort(i32 %298)
  %299 = load i32, ptr %crtc_id.i, align 8
  %conv.i89 = trunc i32 %299 to i8
  %300 = ptrtoint ptr %296 to i32
  call void @__asan_store1_noabort(i32 %300)
  store i8 %conv.i89, ptr %296, align 2
  %rmx_type.i = getelementptr inbounds %struct.radeon_crtc, ptr %crtc, i32 0, i32 17
  %301 = ptrtoint ptr %rmx_type.i to i32
  call void @__asan_load4_noabort(i32 %301)
  %302 = load i32, ptr %rmx_type.i, align 4
  %303 = zext i32 %302 to i64
  call void @__sanitizer_cov_trace_switch(i64 %303, ptr @__sancov_gen_cov_switch_values.29)
  switch i32 %302, label %sw.default.i102 [
    i32 2, label %sw.bb.i94
    i32 3, label %sw.bb26.i
  ]

sw.bb.i94:                                        ; preds = %atombios_crtc_set_base.exit
  call void @__sanitizer_cov_trace_pc() #9
  %crtc_vdisplay.i90 = getelementptr inbounds %struct.drm_display_mode, ptr %adjusted_mode, i32 0, i32 20
  %304 = ptrtoint ptr %crtc_vdisplay.i90 to i32
  call void @__asan_load2_noabort(i32 %304)
  %305 = load i16, ptr %crtc_vdisplay.i90, align 2
  %conv2.i = zext i16 %305 to i32
  %crtc_vdisplay3.i = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 20
  %306 = ptrtoint ptr %crtc_vdisplay3.i to i32
  call void @__asan_load2_noabort(i32 %306)
  %307 = load i16, ptr %crtc_vdisplay3.i, align 2
  %conv4.i = zext i16 %307 to i32
  %sub.i91 = sub nsw i32 %conv2.i, %conv4.i
  %div.i92 = sdiv i32 %sub.i91, 2
  %conv5.i = trunc i32 %div.i92 to i16
  %308 = call i16 @llvm.bswap.i16(i16 %conv5.i) #7
  %309 = ptrtoint ptr %295 to i32
  call void @__asan_store2_noabort(i32 %309)
  store i16 %308, ptr %295, align 2
  %310 = ptrtoint ptr %294 to i32
  call void @__asan_store2_noabort(i32 %310)
  store i16 %308, ptr %294, align 2
  %crtc_hdisplay.i93 = getelementptr inbounds %struct.drm_display_mode, ptr %adjusted_mode, i32 0, i32 13
  %311 = ptrtoint ptr %crtc_hdisplay.i93 to i32
  call void @__asan_load2_noabort(i32 %311)
  %312 = load i16, ptr %crtc_hdisplay.i93, align 4
  %conv13.i = zext i16 %312 to i32
  %crtc_hdisplay14.i = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 13
  %313 = ptrtoint ptr %crtc_hdisplay14.i to i32
  call void @__asan_load2_noabort(i32 %313)
  %314 = load i16, ptr %crtc_hdisplay14.i, align 4
  %conv15.i = zext i16 %314 to i32
  %sub16.i = sub nsw i32 %conv13.i, %conv15.i
  %div17.i = sdiv i32 %sub16.i, 2
  %conv18.i = trunc i32 %div17.i to i16
  %315 = call i16 @llvm.bswap.i16(i16 %conv18.i) #7
  %316 = ptrtoint ptr %293 to i32
  call void @__asan_store2_noabort(i32 %316)
  store i16 %315, ptr %293, align 2
  %317 = ptrtoint ptr %args.i86 to i32
  call void @__asan_store2_noabort(i32 %317)
  store i16 %315, ptr %args.i86, align 2
  br label %atombios_overscan_setup.exit

sw.bb26.i:                                        ; preds = %atombios_crtc_set_base.exit
  %crtc_vdisplay27.i = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 20
  %318 = ptrtoint ptr %crtc_vdisplay27.i to i32
  call void @__asan_load2_noabort(i32 %318)
  %319 = load i16, ptr %crtc_vdisplay27.i, align 2
  %conv28.i = zext i16 %319 to i32
  %crtc_hdisplay29.i = getelementptr inbounds %struct.drm_display_mode, ptr %adjusted_mode, i32 0, i32 13
  %320 = ptrtoint ptr %crtc_hdisplay29.i to i32
  call void @__asan_load2_noabort(i32 %320)
  %321 = load i16, ptr %crtc_hdisplay29.i, align 4
  %conv30.i = zext i16 %321 to i32
  %mul.i95 = mul nuw i32 %conv30.i, %conv28.i
  %crtc_vdisplay31.i = getelementptr inbounds %struct.drm_display_mode, ptr %adjusted_mode, i32 0, i32 20
  %322 = ptrtoint ptr %crtc_vdisplay31.i to i32
  call void @__asan_load2_noabort(i32 %322)
  %323 = load i16, ptr %crtc_vdisplay31.i, align 2
  %conv32.i = zext i16 %323 to i32
  %crtc_hdisplay33.i = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 13
  %324 = ptrtoint ptr %crtc_hdisplay33.i to i32
  call void @__asan_load2_noabort(i32 %324)
  %325 = load i16, ptr %crtc_hdisplay33.i, align 4
  %conv34.i = zext i16 %325 to i32
  %mul35.i = mul nuw i32 %conv34.i, %conv32.i
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.i95, i32 %mul35.i)
  %cmp.i96 = icmp sgt i32 %mul.i95, %mul35.i
  br i1 %cmp.i96, label %if.then.i97, label %if.else.i98

if.then.i97:                                      ; preds = %sw.bb26.i
  call void @__sanitizer_cov_trace_pc() #9
  %div41.i = sdiv i32 %mul35.i, %conv28.i
  %sub42.i = sub i32 %conv30.i, %div41.i
  %div43.i = sdiv i32 %sub42.i, 2
  %conv44.i = trunc i32 %div43.i to i16
  %326 = call i16 @llvm.bswap.i16(i16 %conv44.i) #7
  %327 = ptrtoint ptr %293 to i32
  call void @__asan_store2_noabort(i32 %327)
  store i16 %326, ptr %293, align 2
  %328 = ptrtoint ptr %args.i86 to i32
  call void @__asan_store2_noabort(i32 %328)
  store i16 %326, ptr %args.i86, align 2
  br label %atombios_overscan_setup.exit

if.else.i98:                                      ; preds = %sw.bb26.i
  call void @__sanitizer_cov_trace_cmp4(i32 %mul35.i, i32 %mul.i95)
  %cmp55.i = icmp sgt i32 %mul35.i, %mul.i95
  br i1 %cmp55.i, label %if.then57.i, label %if.else.i98.atombios_overscan_setup.exit_crit_edge

if.else.i98.atombios_overscan_setup.exit_crit_edge: ; preds = %if.else.i98
  call void @__sanitizer_cov_trace_pc() #9
  br label %atombios_overscan_setup.exit

if.then57.i:                                      ; preds = %if.else.i98
  call void @__sanitizer_cov_trace_pc() #9
  %div62.i = sdiv i32 %mul.i95, %conv34.i
  %sub63.i = sub i32 %conv32.i, %div62.i
  %div64.i = sdiv i32 %sub63.i, 2
  %conv65.i = trunc i32 %div64.i to i16
  %329 = call i16 @llvm.bswap.i16(i16 %conv65.i) #7
  %330 = ptrtoint ptr %295 to i32
  call void @__asan_store2_noabort(i32 %330)
  store i16 %329, ptr %295, align 2
  %331 = ptrtoint ptr %294 to i32
  call void @__asan_store2_noabort(i32 %331)
  store i16 %329, ptr %294, align 2
  br label %atombios_overscan_setup.exit

sw.default.i102:                                  ; preds = %atombios_crtc_set_base.exit
  call void @__sanitizer_cov_trace_pc() #9
  %h_border.i99 = getelementptr inbounds %struct.radeon_crtc, ptr %crtc, i32 0, i32 18
  %332 = ptrtoint ptr %h_border.i99 to i32
  call void @__asan_load1_noabort(i32 %332)
  %333 = load i8, ptr %h_border.i99, align 8
  %conv78.i100 = zext i8 %333 to i16
  %334 = shl nuw i16 %conv78.i100, 8
  %335 = ptrtoint ptr %args.i86 to i32
  call void @__asan_store2_noabort(i32 %335)
  store i16 %334, ptr %args.i86, align 2
  %336 = ptrtoint ptr %293 to i32
  call void @__asan_store2_noabort(i32 %336)
  store i16 %334, ptr %293, align 2
  %v_border.i101 = getelementptr inbounds %struct.radeon_crtc, ptr %crtc, i32 0, i32 19
  %337 = ptrtoint ptr %v_border.i101 to i32
  call void @__asan_load1_noabort(i32 %337)
  %338 = load i8, ptr %v_border.i101, align 1
  %conv83.i = zext i8 %338 to i16
  %339 = shl nuw i16 %conv83.i, 8
  %340 = ptrtoint ptr %294 to i32
  call void @__asan_store2_noabort(i32 %340)
  store i16 %339, ptr %294, align 2
  %341 = ptrtoint ptr %295 to i32
  call void @__asan_store2_noabort(i32 %341)
  store i16 %339, ptr %295, align 2
  br label %atombios_overscan_setup.exit

atombios_overscan_setup.exit:                     ; preds = %sw.default.i102, %if.then57.i, %if.else.i98.atombios_overscan_setup.exit_crit_edge, %if.then.i97, %sw.bb.i94
  %mode_info.i103 = getelementptr inbounds %struct.radeon_device, ptr %292, i32 0, i32 44
  %342 = ptrtoint ptr %mode_info.i103 to i32
  call void @__asan_load4_noabort(i32 %342)
  %343 = load ptr, ptr %mode_info.i103, align 4
  %call.i104 = call i32 @atom_execute_table(ptr noundef %343, i32 noundef 40, ptr noundef nonnull %args.i86) #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %args.i86) #7
  %344 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %344)
  %345 = load ptr, ptr %crtc, align 8
  %dev_private.i107 = getelementptr inbounds %struct.drm_device, ptr %345, i32 0, i32 5
  %346 = ptrtoint ptr %dev_private.i107 to i32
  call void @__asan_load4_noabort(i32 %346)
  %347 = load ptr, ptr %dev_private.i107, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %args.i106) #7
  %348 = getelementptr inbounds %struct._ENABLE_SCALER_PARAMETERS, ptr %args.i106, i32 0, i32 1
  %349 = getelementptr inbounds %struct._ENABLE_SCALER_PARAMETERS, ptr %args.i106, i32 0, i32 2
  %350 = ptrtoint ptr %args.i106 to i32
  call void @__asan_store4_noabort(i32 %350)
  store i32 -1, ptr %args.i106, align 4
  %351 = ptrtoint ptr %encoder to i32
  call void @__asan_load4_noabort(i32 %351)
  %352 = load ptr, ptr %encoder, align 4
  %family.i109 = getelementptr inbounds %struct.radeon_device, ptr %347, i32 0, i32 6
  %353 = ptrtoint ptr %family.i109 to i32
  call void @__asan_load4_noabort(i32 %353)
  %354 = load i32, ptr %family.i109, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %354)
  %cmp.i110 = icmp ugt i32 %354, 17
  br i1 %cmp.i110, label %atombios_overscan_setup.exit.if.end.i115_crit_edge, label %land.lhs.true.i

atombios_overscan_setup.exit.if.end.i115_crit_edge: ; preds = %atombios_overscan_setup.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i115

land.lhs.true.i:                                  ; preds = %atombios_overscan_setup.exit
  %355 = ptrtoint ptr %crtc_id.i to i32
  call void @__asan_load4_noabort(i32 %355)
  %356 = load i32, ptr %crtc_id.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %356)
  %tobool.not.i112 = icmp eq i32 %356, 0
  br i1 %tobool.not.i112, label %land.lhs.true.i.if.end.i115_crit_edge, label %land.lhs.true.i.atombios_scaler_setup.exit_crit_edge

land.lhs.true.i.atombios_scaler_setup.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %atombios_scaler_setup.exit

land.lhs.true.i.if.end.i115_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i115

if.end.i115:                                      ; preds = %land.lhs.true.i.if.end.i115_crit_edge, %atombios_overscan_setup.exit.if.end.i115_crit_edge
  %active_device.i113 = getelementptr inbounds %struct.radeon_encoder, ptr %352, i32 0, i32 4
  %357 = ptrtoint ptr %active_device.i113 to i32
  call void @__asan_load4_noabort(i32 %357)
  %358 = load i32, ptr %active_device.i113, align 4
  %and.i114 = and i32 %358, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i114)
  %tobool5.not.i = icmp eq i32 %and.i114, 0
  br i1 %tobool5.not.i, label %if.else30.i, label %if.then11.i

if.then11.i:                                      ; preds = %if.end.i115
  %enc_priv.i = getelementptr inbounds %struct.radeon_encoder, ptr %352, i32 0, i32 12
  %359 = ptrtoint ptr %enc_priv.i to i32
  call void @__asan_load4_noabort(i32 %359)
  %360 = load ptr, ptr %enc_priv.i, align 4
  %361 = ptrtoint ptr %360 to i32
  call void @__asan_load4_noabort(i32 %361)
  %362 = load i32, ptr %360, align 4
  %363 = ptrtoint ptr %args.i106 to i32
  call void @__asan_store4_noabort(i32 %363)
  store i32 196608, ptr %args.i106, align 4
  %364 = ptrtoint ptr %crtc_id.i to i32
  call void @__asan_load4_noabort(i32 %364)
  %365 = load i32, ptr %crtc_id.i, align 8
  %conv.i116 = trunc i32 %365 to i8
  store i8 %conv.i116, ptr %args.i106, align 4
  %switch.tableidx = add i32 %362, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %switch.tableidx)
  %366 = icmp ult i32 %switch.tableidx, 7
  br i1 %366, label %switch.lookup, label %if.then11.i.land.lhs.true53.i_crit_edge

if.then11.i.land.lhs.true53.i_crit_edge:          ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true53.i

if.else30.i:                                      ; preds = %if.end.i115
  %367 = ptrtoint ptr %args.i106 to i32
  call void @__asan_store4_noabort(i32 %367)
  store i32 0, ptr %args.i106, align 4
  %368 = ptrtoint ptr %crtc_id.i to i32
  call void @__asan_load4_noabort(i32 %368)
  %369 = load i32, ptr %crtc_id.i, align 8
  %conv121.i = trunc i32 %369 to i8
  store i8 %conv121.i, ptr %args.i106, align 4
  %370 = ptrtoint ptr %rmx_type.i to i32
  call void @__asan_load4_noabort(i32 %370)
  %371 = load i32, ptr %rmx_type.i, align 4
  %372 = zext i32 %371 to i64
  call void @__sanitizer_cov_trace_switch(i64 %372, ptr @__sancov_gen_cov_switch_values.30)
  switch i32 %371, label %sw.default37.i [
    i32 1, label %sw.bb31.i
    i32 2, label %sw.bb33.i
    i32 3, label %sw.bb35.i
  ]

sw.bb31.i:                                        ; preds = %if.else30.i
  call void @__sanitizer_cov_trace_pc() #9
  %373 = ptrtoint ptr %348 to i32
  call void @__asan_store1_noabort(i32 %373)
  store i8 2, ptr %348, align 1
  %mode_info.c94.i = getelementptr inbounds %struct.radeon_device, ptr %347, i32 0, i32 44
  %374 = ptrtoint ptr %mode_info.c94.i to i32
  call void @__asan_load4_noabort(i32 %374)
  %375 = load ptr, ptr %mode_info.c94.i, align 4
  %call.c95.i = call i32 @atom_execute_table(ptr noundef %375, i32 noundef 33, ptr noundef nonnull %args.i106) #7
  br label %atombios_scaler_setup.exit

sw.bb33.i:                                        ; preds = %if.else30.i
  call void @__sanitizer_cov_trace_pc() #9
  %376 = ptrtoint ptr %348 to i32
  call void @__asan_store1_noabort(i32 %376)
  store i8 1, ptr %348, align 1
  %mode_info.c91.i = getelementptr inbounds %struct.radeon_device, ptr %347, i32 0, i32 44
  %377 = ptrtoint ptr %mode_info.c91.i to i32
  call void @__asan_load4_noabort(i32 %377)
  %378 = load ptr, ptr %mode_info.c91.i, align 4
  %call.c92.i = call i32 @atom_execute_table(ptr noundef %378, i32 noundef 33, ptr noundef nonnull %args.i106) #7
  br label %atombios_scaler_setup.exit

sw.bb35.i:                                        ; preds = %if.else30.i
  call void @__sanitizer_cov_trace_pc() #9
  %379 = ptrtoint ptr %348 to i32
  call void @__asan_store1_noabort(i32 %379)
  store i8 2, ptr %348, align 1
  %mode_info.c88.i = getelementptr inbounds %struct.radeon_device, ptr %347, i32 0, i32 44
  %380 = ptrtoint ptr %mode_info.c88.i to i32
  call void @__asan_load4_noabort(i32 %380)
  %381 = load ptr, ptr %mode_info.c88.i, align 4
  %call.c89.i = call i32 @atom_execute_table(ptr noundef %381, i32 noundef 33, ptr noundef nonnull %args.i106) #7
  br label %atombios_scaler_setup.exit

sw.default37.i:                                   ; preds = %if.else30.i
  br i1 %cmp.i110, label %if.then41.i119, label %if.else43.i

if.then41.i119:                                   ; preds = %sw.default37.i
  call void @__sanitizer_cov_trace_pc() #9
  %382 = ptrtoint ptr %348 to i32
  call void @__asan_store1_noabort(i32 %382)
  store i8 0, ptr %348, align 1
  %mode_info.c.i = getelementptr inbounds %struct.radeon_device, ptr %347, i32 0, i32 44
  %383 = ptrtoint ptr %mode_info.c.i to i32
  call void @__asan_load4_noabort(i32 %383)
  %384 = load ptr, ptr %mode_info.c.i, align 4
  %call.c.i = call i32 @atom_execute_table(ptr noundef %384, i32 noundef 33, ptr noundef nonnull %args.i106) #7
  br label %atombios_scaler_setup.exit

if.else43.i:                                      ; preds = %sw.default37.i
  call void @__sanitizer_cov_trace_pc() #9
  %385 = ptrtoint ptr %348 to i32
  call void @__asan_store1_noabort(i32 %385)
  store i8 1, ptr %348, align 1
  %mode_info.c85.i = getelementptr inbounds %struct.radeon_device, ptr %347, i32 0, i32 44
  %386 = ptrtoint ptr %mode_info.c85.i to i32
  call void @__asan_load4_noabort(i32 %386)
  %387 = load ptr, ptr %mode_info.c85.i, align 4
  %call.c86.i = call i32 @atom_execute_table(ptr noundef %387, i32 noundef 33, ptr noundef nonnull %args.i106) #7
  br label %atombios_scaler_setup.exit

switch.lookup:                                    ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #9
  %switch.gep = getelementptr inbounds [7 x i8], ptr @switch.table.atombios_crtc_mode_set, i32 0, i32 %switch.tableidx
  %388 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load1_noabort(i32 %388)
  %switch.load = load i8, ptr %switch.gep, align 1
  br label %land.lhs.true53.i

land.lhs.true53.i:                                ; preds = %switch.lookup, %if.then11.i.land.lhs.true53.i_crit_edge
  %.sink.i = phi i8 [ 1, %if.then11.i.land.lhs.true53.i_crit_edge ], [ %switch.load, %switch.lookup ]
  %389 = ptrtoint ptr %349 to i32
  call void @__asan_store1_noabort(i32 %389)
  store i8 %.sink.i, ptr %349, align 2
  %mode_info.c117.i = getelementptr inbounds %struct.radeon_device, ptr %347, i32 0, i32 44
  %390 = ptrtoint ptr %mode_info.c117.i to i32
  call void @__asan_load4_noabort(i32 %390)
  %391 = load ptr, ptr %mode_info.c117.i, align 4
  %call.c118.i = call i32 @atom_execute_table(ptr noundef %391, i32 noundef 33, ptr noundef nonnull %args.i106) #7
  %392 = ptrtoint ptr %family.i109 to i32
  call void @__asan_load4_noabort(i32 %392)
  %393 = load i32, ptr %family.i109, align 4
  %394 = add i32 %393, -21
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %394)
  %395 = icmp ult i32 %394, 6
  br i1 %395, label %if.then61.i, label %land.lhs.true53.i.atombios_scaler_setup.exit_crit_edge

land.lhs.true53.i.atombios_scaler_setup.exit_crit_edge: ; preds = %land.lhs.true53.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %atombios_scaler_setup.exit

if.then61.i:                                      ; preds = %land.lhs.true53.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @atom_rv515_force_tv_scaler(ptr noundef %347, ptr noundef %crtc) #7
  br label %atombios_scaler_setup.exit

atombios_scaler_setup.exit:                       ; preds = %if.then61.i, %land.lhs.true53.i.atombios_scaler_setup.exit_crit_edge, %if.else43.i, %if.then41.i119, %sw.bb35.i, %sw.bb33.i, %sw.bb31.i, %land.lhs.true.i.atombios_scaler_setup.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %args.i106) #7
  call void @radeon_cursor_reset(ptr noundef %crtc) #7
  %hw_mode = getelementptr inbounds %struct.radeon_crtc, ptr %crtc, i32 0, i32 40
  %396 = call ptr @memcpy(ptr %hw_mode, ptr %adjusted_mode, i32 112)
  br label %cleanup

cleanup:                                          ; preds = %atombios_scaler_setup.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %atombios_scaler_setup.exit ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @atombios_set_crtc_dtd_timing(ptr nocapture noundef readonly %crtc, ptr nocapture noundef readonly %mode) unnamed_addr #0 align 64 {
entry:
  %args = alloca %struct._SET_CRTC_USING_DTD_TIMING_PARAMETERS, align 2
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %crtc, align 8
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_private, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %args) #7
  %4 = getelementptr inbounds %struct._SET_CRTC_USING_DTD_TIMING_PARAMETERS, ptr %args, i32 0, i32 1
  %5 = getelementptr inbounds %struct._SET_CRTC_USING_DTD_TIMING_PARAMETERS, ptr %args, i32 0, i32 2
  %6 = getelementptr inbounds %struct._SET_CRTC_USING_DTD_TIMING_PARAMETERS, ptr %args, i32 0, i32 3
  %7 = getelementptr inbounds %struct._SET_CRTC_USING_DTD_TIMING_PARAMETERS, ptr %args, i32 0, i32 4
  %8 = getelementptr inbounds %struct._SET_CRTC_USING_DTD_TIMING_PARAMETERS, ptr %args, i32 0, i32 5
  %9 = getelementptr inbounds %struct._SET_CRTC_USING_DTD_TIMING_PARAMETERS, ptr %args, i32 0, i32 6
  %10 = getelementptr inbounds %struct._SET_CRTC_USING_DTD_TIMING_PARAMETERS, ptr %args, i32 0, i32 7
  %11 = getelementptr inbounds %struct._SET_CRTC_USING_DTD_TIMING_PARAMETERS, ptr %args, i32 0, i32 8
  %12 = getelementptr inbounds %struct._SET_CRTC_USING_DTD_TIMING_PARAMETERS, ptr %args, i32 0, i32 9
  %13 = getelementptr inbounds %struct._SET_CRTC_USING_DTD_TIMING_PARAMETERS, ptr %args, i32 0, i32 10
  %14 = getelementptr inbounds %struct._SET_CRTC_USING_DTD_TIMING_PARAMETERS, ptr %args, i32 0, i32 11
  %15 = getelementptr inbounds i8, ptr %args, i32 20
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_storeN_noabort(i32 %16, i32 4)
  store i32 0, ptr %15, align 2
  %crtc_hdisplay = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 13
  %17 = ptrtoint ptr %crtc_hdisplay to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %crtc_hdisplay, align 4
  %h_border = getelementptr inbounds %struct.radeon_crtc, ptr %crtc, i32 0, i32 18
  %19 = ptrtoint ptr %h_border to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %h_border, align 8
  %conv2 = zext i8 %20 to i16
  %mul.neg = mul nsw i16 %conv2, -2
  %sub = add i16 %mul.neg, %18
  %21 = tail call i16 @llvm.bswap.i16(i16 %sub)
  %22 = ptrtoint ptr %args to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 %21, ptr %args, align 2
  %crtc_hblank_end = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 15
  %23 = ptrtoint ptr %crtc_hblank_end to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %crtc_hblank_end, align 4
  %sub7 = sub i16 %24, %18
  %mul10 = shl nuw nsw i16 %conv2, 1
  %add = add i16 %sub7, %mul10
  %25 = tail call i16 @llvm.bswap.i16(i16 %add)
  %26 = ptrtoint ptr %4 to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 %25, ptr %4, align 2
  %crtc_vdisplay = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 20
  %27 = ptrtoint ptr %crtc_vdisplay to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %crtc_vdisplay, align 2
  %v_border = getelementptr inbounds %struct.radeon_crtc, ptr %crtc, i32 0, i32 19
  %29 = ptrtoint ptr %v_border to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %v_border, align 1
  %conv13 = zext i8 %30 to i16
  %mul14.neg = mul nsw i16 %conv13, -2
  %sub15 = add i16 %mul14.neg, %28
  %31 = tail call i16 @llvm.bswap.i16(i16 %sub15)
  %32 = ptrtoint ptr %5 to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 %31, ptr %5, align 2
  %crtc_vblank_end = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 22
  %33 = ptrtoint ptr %crtc_vblank_end to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %crtc_vblank_end, align 2
  %sub20 = sub i16 %34, %28
  %mul23 = shl nuw nsw i16 %conv13, 1
  %add24 = add i16 %sub20, %mul23
  %35 = tail call i16 @llvm.bswap.i16(i16 %add24)
  %36 = ptrtoint ptr %6 to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 %35, ptr %6, align 2
  %crtc_hsync_start = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 16
  %37 = ptrtoint ptr %crtc_hsync_start to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %crtc_hsync_start, align 2
  %sub29 = sub i16 %conv2, %18
  %add32 = add i16 %sub29, %38
  %39 = tail call i16 @llvm.bswap.i16(i16 %add32)
  %40 = ptrtoint ptr %7 to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 %39, ptr %7, align 2
  %crtc_hsync_end = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 17
  %41 = ptrtoint ptr %crtc_hsync_end to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %crtc_hsync_end, align 4
  %sub37 = sub i16 %42, %38
  %43 = tail call i16 @llvm.bswap.i16(i16 %sub37)
  %44 = ptrtoint ptr %8 to i32
  call void @__asan_store2_noabort(i32 %44)
  store i16 %43, ptr %8, align 2
  %crtc_vsync_start = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 23
  %45 = ptrtoint ptr %crtc_vsync_start to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %crtc_vsync_start, align 4
  %sub42 = sub i16 %conv13, %28
  %add45 = add i16 %sub42, %46
  %47 = tail call i16 @llvm.bswap.i16(i16 %add45)
  %48 = ptrtoint ptr %9 to i32
  call void @__asan_store2_noabort(i32 %48)
  store i16 %47, ptr %9, align 2
  %crtc_vsync_end = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 24
  %49 = ptrtoint ptr %crtc_vsync_end to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %crtc_vsync_end, align 2
  %sub50 = sub i16 %50, %46
  %51 = tail call i16 @llvm.bswap.i16(i16 %sub50)
  %52 = ptrtoint ptr %10 to i32
  call void @__asan_store2_noabort(i32 %52)
  store i16 %51, ptr %10, align 2
  %53 = ptrtoint ptr %12 to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 %20, ptr %12, align 2
  %54 = ptrtoint ptr %13 to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 %30, ptr %13, align 1
  %flags = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 11
  %55 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %flags, align 4
  %57 = trunc i32 %56 to i16
  %58 = lshr i16 %57, 1
  %59 = and i16 %58, 4
  %60 = shl i16 %57, 3
  %61 = and i16 %60, 128
  %62 = lshr i16 %57, 4
  %63 = and i16 %62, 256
  %64 = and i16 %57, 66
  %65 = or i16 %64, %59
  %66 = or i16 %65, %61
  %67 = or i16 %66, %63
  %and89 = and i32 %56, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and89)
  %tobool90.not = icmp eq i32 %and89, 0
  %68 = or i16 %67, 48
  %misc.5 = select i1 %tobool90.not, i16 %67, i16 %68
  %69 = tail call i16 @llvm.bswap.i16(i16 %misc.5)
  %70 = ptrtoint ptr %11 to i32
  call void @__asan_store2_noabort(i32 %70)
  store i16 %69, ptr %11, align 2
  %crtc_id = getelementptr inbounds %struct.radeon_crtc, ptr %crtc, i32 0, i32 1
  %71 = ptrtoint ptr %crtc_id to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %crtc_id, align 8
  %conv96 = trunc i32 %72 to i8
  %73 = ptrtoint ptr %14 to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 %conv96, ptr %14, align 2
  %mode_info = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 44
  %74 = ptrtoint ptr %mode_info to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %mode_info, align 4
  %call = call i32 @atom_execute_table(ptr noundef %75, i32 noundef 49, ptr noundef nonnull %args) #7
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %args) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @radeon_cursor_reset(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @radeon_atombios_init_crtc(ptr nocapture noundef readonly %dev, ptr nocapture noundef %radeon_crtc) local_unnamed_addr #3 align 64 {
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
  call void @__sanitizer_cov_trace_const_cmp4(i32 38, i32 %3)
  %cmp = icmp ugt i32 %3, 38
  %crtc_id = getelementptr inbounds %struct.radeon_crtc, ptr %radeon_crtc, i32 0, i32 1
  %4 = ptrtoint ptr %crtc_id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %crtc_id, align 8
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.31)
  switch i32 %5, label %sw.default [
    i32 5, label %sw.bb9
    i32 1, label %sw.bb1
    i32 2, label %sw.bb3
    i32 3, label %sw.bb5
    i32 4, label %sw.bb7
  ]

sw.default:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %crtc_offset = getelementptr inbounds %struct.radeon_crtc, ptr %radeon_crtc, i32 0, i32 5
  %7 = ptrtoint ptr %crtc_offset to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %crtc_offset, align 8
  br label %if.end17

sw.bb1:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %crtc_offset2 = getelementptr inbounds %struct.radeon_crtc, ptr %radeon_crtc, i32 0, i32 5
  %8 = ptrtoint ptr %crtc_offset2 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 3072, ptr %crtc_offset2, align 8
  br label %if.end17

sw.bb3:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %crtc_offset4 = getelementptr inbounds %struct.radeon_crtc, ptr %radeon_crtc, i32 0, i32 5
  %9 = ptrtoint ptr %crtc_offset4 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 38912, ptr %crtc_offset4, align 8
  br label %if.end17

sw.bb5:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %crtc_offset6 = getelementptr inbounds %struct.radeon_crtc, ptr %radeon_crtc, i32 0, i32 5
  %10 = ptrtoint ptr %crtc_offset6 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 41984, ptr %crtc_offset6, align 8
  br label %if.end17

sw.bb7:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %crtc_offset8 = getelementptr inbounds %struct.radeon_crtc, ptr %radeon_crtc, i32 0, i32 5
  %11 = ptrtoint ptr %crtc_offset8 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 45056, ptr %crtc_offset8, align 8
  br label %if.end17

sw.bb9:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %crtc_offset10 = getelementptr inbounds %struct.radeon_crtc, ptr %radeon_crtc, i32 0, i32 5
  %12 = ptrtoint ptr %crtc_offset10 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 48128, ptr %crtc_offset10, align 8
  br label %if.end17

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp12 = icmp eq i32 %5, 1
  %crtc_offset14 = getelementptr inbounds %struct.radeon_crtc, ptr %radeon_crtc, i32 0, i32 5
  br i1 %cmp12, label %if.then13, label %if.else15

if.then13:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %13 = ptrtoint ptr %crtc_offset14 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 2048, ptr %crtc_offset14, align 8
  br label %if.end17

if.else15:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %14 = ptrtoint ptr %crtc_offset14 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %crtc_offset14, align 8
  br label %if.end17

if.end17:                                         ; preds = %if.else15, %if.then13, %sw.bb9, %sw.bb7, %sw.bb5, %sw.bb3, %sw.bb1, %sw.default
  %pll_id = getelementptr inbounds %struct.radeon_crtc, ptr %radeon_crtc, i32 0, i32 23
  %15 = ptrtoint ptr %pll_id to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 255, ptr %pll_id, align 4
  %adjusted_clock = getelementptr inbounds %struct.radeon_crtc, ptr %radeon_crtc, i32 0, i32 29
  %16 = ptrtoint ptr %adjusted_clock to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %adjusted_clock, align 8
  %encoder = getelementptr inbounds %struct.radeon_crtc, ptr %radeon_crtc, i32 0, i32 34
  %17 = ptrtoint ptr %encoder to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %encoder, align 4
  %connector = getelementptr inbounds %struct.radeon_crtc, ptr %radeon_crtc, i32 0, i32 35
  %18 = ptrtoint ptr %connector to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %connector, align 8
  %helper_private.i = getelementptr inbounds %struct.drm_crtc, ptr %radeon_crtc, i32 0, i32 19
  %19 = ptrtoint ptr %helper_private.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @atombios_helper_funcs, ptr %helper_private.i, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @atom_execute_table(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @r100_mm_rreg_slow(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @r100_mm_wreg_slow(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @radeon_bo_pin(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @radeon_bo_unreserve(ptr noundef %bo) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %tbo = getelementptr inbounds %struct.radeon_bo, ptr %bo, i32 0, i32 4
  %bdev.i.i = getelementptr inbounds %struct.radeon_bo, ptr %bo, i32 0, i32 4, i32 1
  %0 = ptrtoint ptr %bdev.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bdev.i.i, align 8
  %lru_lock.i.i = getelementptr inbounds %struct.ttm_device, ptr %1, i32 0, i32 6
  tail call void @_raw_spin_lock(ptr noundef %lru_lock.i.i) #7
  %resource.i.i = getelementptr inbounds %struct.radeon_bo, ptr %bo, i32 0, i32 4, i32 6
  %2 = ptrtoint ptr %resource.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %resource.i.i, align 4
  tail call void @ttm_bo_move_to_lru_tail(ptr noundef %tbo, ptr noundef %3, ptr noundef null) #7
  %4 = ptrtoint ptr %bdev.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bdev.i.i, align 8
  %lru_lock2.i.i = getelementptr inbounds %struct.ttm_device, ptr %5, i32 0, i32 6
  tail call void @_raw_spin_unlock(ptr noundef %lru_lock2.i.i) #7
  %resv.i = getelementptr inbounds %struct.radeon_bo, ptr %bo, i32 0, i32 4, i32 0, i32 9
  %6 = ptrtoint ptr %resv.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %resv.i, align 8
  tail call void @dma_resv_reset_shared_max(ptr noundef %7) #7
  tail call void @ww_mutex_unlock(ptr noundef %7) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @radeon_bo_get_tiling_flags(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_err(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @evergreen_tiling_fields(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @radeon_bo_unpin(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ww_mutex_lock_interruptible(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @radeon_get_rdev(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ttm_bo_move_to_lru_tail(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_resv_reset_shared_max(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ww_mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @atom_parse_cmd_header(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @atombios_disable_ss(ptr nocapture noundef readonly %rdev, i32 noundef %pll_id) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %family = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 6
  %0 = ptrtoint ptr %family to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %family, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 38, i32 %1)
  %cmp = icmp ugt i32 %1, 38
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = zext i32 %pll_id to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.32)
  switch i32 %pll_id, label %if.then.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb1
  ]

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb:                                            ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %rmmio.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %3 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %4, i32 1044
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !38
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !39
  %6 = and i32 %5, -1048577
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !40
  tail call void @arm_heavy_mb() #7
  %7 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i37 = getelementptr i8, ptr %8, i32 1044
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i37, i32 %6) #7, !srcloc !41
  br label %cleanup

sw.bb1:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %rmmio.i40 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %9 = ptrtoint ptr %rmmio.i40 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %rmmio.i40, align 4
  %add.ptr.i41 = getelementptr i8, ptr %10, i32 1108
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i41) #7, !srcloc !38
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !39
  %12 = and i32 %11, -1048577
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !40
  tail call void @arm_heavy_mb() #7
  %13 = ptrtoint ptr %rmmio.i40 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %rmmio.i40, align 4
  %add.ptr.i45 = getelementptr i8, ptr %14, i32 1108
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i45, i32 %12) #7, !srcloc !41
  br label %cleanup

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %1)
  %cmp6 = icmp ugt i32 %1, 17
  br i1 %cmp6, label %if.then7, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then7:                                         ; preds = %if.else
  %15 = zext i32 %pll_id to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.33)
  switch i32 %pll_id, label %if.then7.cleanup_crit_edge [
    i32 0, label %sw.bb8
    i32 1, label %sw.bb11
  ]

if.then7.cleanup_crit_edge:                       ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb8:                                           ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #9
  %rmmio.i48 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %16 = ptrtoint ptr %rmmio.i48 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %rmmio.i48, align 4
  %add.ptr.i49 = getelementptr i8, ptr %17, i32 1112
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i49) #7, !srcloc !38
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !39
  %19 = and i32 %18, -16777217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !40
  tail call void @arm_heavy_mb() #7
  %20 = ptrtoint ptr %rmmio.i48 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %rmmio.i48, align 4
  %add.ptr.i53 = getelementptr i8, ptr %21, i32 1112
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i53, i32 %19) #7, !srcloc !41
  br label %cleanup

sw.bb11:                                          ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #9
  %rmmio.i56 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %22 = ptrtoint ptr %rmmio.i56 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %rmmio.i56, align 4
  %add.ptr.i57 = getelementptr i8, ptr %23, i32 1116
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i57) #7, !srcloc !38
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !39
  %25 = and i32 %24, -16777217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !40
  tail call void @arm_heavy_mb() #7
  %26 = ptrtoint ptr %rmmio.i56 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %rmmio.i56, align 4
  %add.ptr.i61 = getelementptr i8, ptr %27, i32 1116
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i61, i32 %25) #7, !srcloc !41
  br label %cleanup

cleanup:                                          ; preds = %sw.bb11, %sw.bb8, %if.then7.cleanup_crit_edge, %if.else.cleanup_crit_edge, %sw.bb1, %sw.bb, %if.then.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @atombios_get_encoder_mode(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @radeon_compute_pll_legacy(ptr noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @radeon_compute_pll_avivo(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @atombios_crtc_program_pll(ptr nocapture noundef readonly %crtc, i32 noundef %crtc_id, i32 noundef %pll_id, i32 noundef %encoder_mode, i32 noundef %encoder_id, i32 noundef %clock, i32 noundef %ref_div, i32 noundef %fb_div, i32 noundef %frac_fb_div, i32 noundef %post_div, i32 noundef %bpc, i1 noundef zeroext %ss_enabled, ptr nocapture noundef readonly %ss) unnamed_addr #0 align 64 {
entry:
  %frev = alloca i8, align 1
  %crev = alloca i8, align 1
  %args = alloca %union.set_pixel_clock, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %crtc, align 8
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_private, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %frev) #7
  %4 = ptrtoint ptr %frev to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -1, ptr %frev, align 1, !annotation !42
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %crev) #7
  %5 = ptrtoint ptr %crev to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 -1, ptr %crev, align 1, !annotation !42
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %args) #7
  %6 = getelementptr inbounds %struct._PIXEL_CLOCK_PARAMETERS_V5, ptr %args, i32 0, i32 2
  %7 = getelementptr inbounds %struct._PIXEL_CLOCK_PARAMETERS_V5, ptr %args, i32 0, i32 3
  %8 = getelementptr inbounds %struct._PIXEL_CLOCK_PARAMETERS_V5, ptr %args, i32 0, i32 4
  %9 = getelementptr inbounds %struct._PIXEL_CLOCK_PARAMETERS_V5, ptr %args, i32 0, i32 5
  %10 = getelementptr inbounds %struct._PIXEL_CLOCK_PARAMETERS_V5, ptr %args, i32 0, i32 6
  %11 = getelementptr inbounds %struct._PIXEL_CLOCK_PARAMETERS_V5, ptr %args, i32 0, i32 7
  %12 = getelementptr inbounds %struct._PIXEL_CLOCK_PARAMETERS_V5, ptr %args, i32 0, i32 8
  %13 = getelementptr inbounds %struct._PIXEL_CLOCK_PARAMETERS_V5, ptr %args, i32 0, i32 9
  %14 = getelementptr inbounds %struct._PIXEL_CLOCK_PARAMETERS_V5, ptr %args, i32 0, i32 10
  %15 = call ptr @memset(ptr %args, i32 0, i32 20)
  %mode_info = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 44
  %16 = ptrtoint ptr %mode_info to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %mode_info, align 4
  %call = call zeroext i1 @atom_parse_cmd_header(ptr noundef %17, i32 noundef 12, ptr noundef nonnull %frev, ptr noundef nonnull %crev) #7
  br i1 %call, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %18 = ptrtoint ptr %frev to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %frev, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %19)
  %cond = icmp eq i8 %19, 1
  br i1 %cond, label %sw.bb, label %sw.default169

sw.bb:                                            ; preds = %if.end
  %20 = ptrtoint ptr %crev to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %crev, align 1
  %22 = zext i8 %21 to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values.34)
  switch i8 %21, label %sw.default165 [
    i8 1, label %sw.bb3
    i8 2, label %sw.bb14
    i8 3, label %sw.bb31
    i8 5, label %sw.bb60
    i8 6, label %sw.bb108
  ]

sw.bb3:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %clock)
  %cmp = icmp eq i32 %clock, 0
  br i1 %cmp, label %sw.bb3.cleanup_crit_edge, label %if.end6

sw.bb3.cleanup_crit_edge:                         ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end6:                                          ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #9
  %div = udiv i32 %clock, 10
  %conv7 = trunc i32 %div to i16
  %23 = call i16 @llvm.bswap.i16(i16 %conv7)
  %24 = ptrtoint ptr %args to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 %23, ptr %args, align 4
  %conv8 = trunc i32 %ref_div to i16
  %25 = call i16 @llvm.bswap.i16(i16 %conv8)
  %26 = ptrtoint ptr %6 to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 %25, ptr %6, align 2
  %conv9 = trunc i32 %fb_div to i16
  %27 = call i16 @llvm.bswap.i16(i16 %conv9)
  %28 = ptrtoint ptr %7 to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 %27, ptr %7, align 4
  %conv10 = trunc i32 %frac_fb_div to i8
  %29 = ptrtoint ptr %9 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %conv10, ptr %9, align 1
  %conv11 = trunc i32 %post_div to i8
  %30 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %conv11, ptr %8, align 2
  %conv12 = trunc i32 %pll_id to i8
  %31 = ptrtoint ptr %10 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %conv12, ptr %10, align 4
  %conv13 = trunc i32 %crtc_id to i8
  %32 = ptrtoint ptr %12 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %conv13, ptr %12, align 2
  %33 = ptrtoint ptr %11 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 1, ptr %11, align 1
  br label %sw.epilog172

sw.bb14:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  %div15 = udiv i32 %clock, 10
  %conv16 = trunc i32 %div15 to i16
  %34 = call i16 @llvm.bswap.i16(i16 %conv16)
  %35 = ptrtoint ptr %args to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 %34, ptr %args, align 4
  %conv18 = trunc i32 %ref_div to i16
  %36 = call i16 @llvm.bswap.i16(i16 %conv18)
  %37 = ptrtoint ptr %6 to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 %36, ptr %6, align 2
  %conv20 = trunc i32 %fb_div to i16
  %38 = call i16 @llvm.bswap.i16(i16 %conv20)
  %39 = ptrtoint ptr %7 to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 %38, ptr %7, align 4
  %conv22 = trunc i32 %frac_fb_div to i8
  %40 = ptrtoint ptr %9 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %conv22, ptr %9, align 1
  %conv24 = trunc i32 %post_div to i8
  %41 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %conv24, ptr %8, align 2
  %conv26 = trunc i32 %pll_id to i8
  %42 = ptrtoint ptr %10 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %conv26, ptr %10, align 4
  %conv28 = trunc i32 %crtc_id to i8
  %43 = ptrtoint ptr %12 to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %conv28, ptr %12, align 2
  %44 = ptrtoint ptr %11 to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 1, ptr %11, align 1
  br label %sw.epilog172

sw.bb31:                                          ; preds = %sw.bb
  %div32 = udiv i32 %clock, 10
  %conv33 = trunc i32 %div32 to i16
  %45 = call i16 @llvm.bswap.i16(i16 %conv33)
  %46 = ptrtoint ptr %args to i32
  call void @__asan_store2_noabort(i32 %46)
  store i16 %45, ptr %args, align 4
  %conv35 = trunc i32 %ref_div to i16
  %47 = call i16 @llvm.bswap.i16(i16 %conv35)
  %48 = ptrtoint ptr %6 to i32
  call void @__asan_store2_noabort(i32 %48)
  store i16 %47, ptr %6, align 2
  %conv37 = trunc i32 %fb_div to i16
  %49 = call i16 @llvm.bswap.i16(i16 %conv37)
  %50 = ptrtoint ptr %7 to i32
  call void @__asan_store2_noabort(i32 %50)
  store i16 %49, ptr %7, align 4
  %conv39 = trunc i32 %frac_fb_div to i8
  %51 = ptrtoint ptr %9 to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 %conv39, ptr %9, align 1
  %conv41 = trunc i32 %post_div to i8
  %52 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 %conv41, ptr %8, align 2
  %conv43 = trunc i32 %pll_id to i8
  %53 = ptrtoint ptr %10 to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 %conv43, ptr %10, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %crtc_id)
  %cmp45 = icmp eq i32 %crtc_id, 1
  %spec.select = select i1 %cmp45, i8 4, i8 0
  %54 = ptrtoint ptr %13 to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 %spec.select, ptr %13, align 1
  br i1 %ss_enabled, label %land.lhs.true, label %sw.bb31.if.end57_crit_edge

sw.bb31.if.end57_crit_edge:                       ; preds = %sw.bb31
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end57

land.lhs.true:                                    ; preds = %sw.bb31
  %type = getelementptr inbounds %struct.radeon_atom_ss, ptr %ss, i32 0, i32 2
  %55 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %type, align 2
  %57 = and i8 %56, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %57)
  %tobool52.not = icmp eq i8 %57, 0
  br i1 %tobool52.not, label %land.lhs.true.if.end57_crit_edge, label %if.then53

land.lhs.true.if.end57_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end57

if.then53:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %58 = ptrtoint ptr %13 to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %13, align 1
  %60 = or i8 %59, 16
  store i8 %60, ptr %13, align 1
  br label %if.end57

if.end57:                                         ; preds = %if.then53, %land.lhs.true.if.end57_crit_edge, %sw.bb31.if.end57_crit_edge
  %conv58 = trunc i32 %encoder_id to i8
  %61 = ptrtoint ptr %11 to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 %conv58, ptr %11, align 1
  %conv59 = trunc i32 %encoder_mode to i8
  %62 = ptrtoint ptr %12 to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 %conv59, ptr %12, align 2
  br label %sw.epilog172

sw.bb60:                                          ; preds = %sw.bb
  %conv61 = trunc i32 %crtc_id to i8
  %63 = ptrtoint ptr %args to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 %conv61, ptr %args, align 4
  %div63 = udiv i32 %clock, 10
  %conv64 = trunc i32 %div63 to i16
  %64 = call i16 @llvm.bswap.i16(i16 %conv64)
  %65 = ptrtoint ptr %6 to i32
  call void @__asan_store2_noabort(i32 %65)
  store i16 %64, ptr %6, align 2
  %conv66 = trunc i32 %ref_div to i8
  %66 = ptrtoint ptr %9 to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 %conv66, ptr %9, align 1
  %conv67 = trunc i32 %fb_div to i16
  %67 = call i16 @llvm.bswap.i16(i16 %conv67)
  %68 = ptrtoint ptr %7 to i32
  call void @__asan_store2_noabort(i32 %68)
  store i16 %67, ptr %7, align 4
  %mul = mul i32 %frac_fb_div, 100000
  %69 = call i32 @llvm.bswap.i32(i32 %mul)
  %70 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %69, ptr %14, align 4
  %conv69 = trunc i32 %post_div to i8
  %71 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 %conv69, ptr %8, align 2
  %72 = ptrtoint ptr %13 to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 0, ptr %13, align 1
  br i1 %ss_enabled, label %land.lhs.true74, label %sw.bb60.if.end84_crit_edge

sw.bb60.if.end84_crit_edge:                       ; preds = %sw.bb60
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end84

land.lhs.true74:                                  ; preds = %sw.bb60
  %type75 = getelementptr inbounds %struct.radeon_atom_ss, ptr %ss, i32 0, i32 2
  %73 = ptrtoint ptr %type75 to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %type75, align 2
  %75 = and i8 %74, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %75)
  %tobool78.not = icmp eq i8 %75, 0
  br i1 %tobool78.not, label %land.lhs.true74.if.end84_crit_edge, label %if.then79

land.lhs.true74.if.end84_crit_edge:               ; preds = %land.lhs.true74
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end84

if.then79:                                        ; preds = %land.lhs.true74
  call void @__sanitizer_cov_trace_pc() #9
  %76 = ptrtoint ptr %13 to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 16, ptr %13, align 1
  br label %if.end84

if.end84:                                         ; preds = %if.then79, %land.lhs.true74.if.end84_crit_edge, %sw.bb60.if.end84_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %encoder_mode)
  %cmp85 = icmp eq i32 %encoder_mode, 3
  br i1 %cmp85, label %if.then87, label %if.end84.if.end103_crit_edge

if.end84.if.end103_crit_edge:                     ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end103

if.then87:                                        ; preds = %if.end84
  %77 = zext i32 %bpc to i64
  call void @__sanitizer_cov_trace_switch(i64 %77, ptr @__sancov_gen_cov_switch_values.35)
  switch i32 %bpc, label %if.then87.if.end103_crit_edge [
    i32 12, label %sw.bb98
    i32 10, label %if.then87.if.end103.sink.split_crit_edge
  ]

if.then87.if.end103.sink.split_crit_edge:         ; preds = %if.then87
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end103.sink.split

if.then87.if.end103_crit_edge:                    ; preds = %if.then87
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end103

sw.bb98:                                          ; preds = %if.then87
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end103.sink.split

if.end103.sink.split:                             ; preds = %sw.bb98, %if.then87.if.end103.sink.split_crit_edge
  %.sink224 = phi i8 [ 4, %sw.bb98 ], [ 8, %if.then87.if.end103.sink.split_crit_edge ]
  %78 = ptrtoint ptr %13 to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %13, align 1
  %80 = or i8 %79, %.sink224
  store i8 %80, ptr %13, align 1
  br label %if.end103

if.end103:                                        ; preds = %if.end103.sink.split, %if.then87.if.end103_crit_edge, %if.end84.if.end103_crit_edge
  %conv104 = trunc i32 %encoder_id to i8
  %81 = ptrtoint ptr %11 to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 %conv104, ptr %11, align 1
  %conv105 = trunc i32 %encoder_mode to i8
  %82 = ptrtoint ptr %12 to i32
  call void @__asan_store1_noabort(i32 %82)
  store i8 %conv105, ptr %12, align 2
  %conv106 = trunc i32 %pll_id to i8
  %83 = ptrtoint ptr %10 to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 %conv106, ptr %10, align 4
  br label %sw.epilog172

sw.bb108:                                         ; preds = %sw.bb
  %shl = shl i32 %crtc_id, 24
  %div109 = udiv i32 %clock, 10
  %or110 = or i32 %div109, %shl
  %84 = call i32 @llvm.bswap.i32(i32 %or110)
  %85 = ptrtoint ptr %args to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 %84, ptr %args, align 4
  %conv111 = trunc i32 %ref_div to i8
  %86 = ptrtoint ptr %9 to i32
  call void @__asan_store1_noabort(i32 %86)
  store i8 %conv111, ptr %9, align 1
  %conv113 = trunc i32 %fb_div to i16
  %87 = call i16 @llvm.bswap.i16(i16 %conv113)
  %88 = ptrtoint ptr %7 to i32
  call void @__asan_store2_noabort(i32 %88)
  store i16 %87, ptr %7, align 4
  %mul115 = mul i32 %frac_fb_div, 100000
  %89 = call i32 @llvm.bswap.i32(i32 %mul115)
  %90 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 %89, ptr %14, align 4
  %conv117 = trunc i32 %post_div to i8
  %91 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %91)
  store i8 %conv117, ptr %8, align 2
  %92 = ptrtoint ptr %13 to i32
  call void @__asan_store1_noabort(i32 %92)
  store i8 0, ptr %13, align 1
  br i1 %ss_enabled, label %land.lhs.true122, label %sw.bb108.if.end132_crit_edge

sw.bb108.if.end132_crit_edge:                     ; preds = %sw.bb108
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end132

land.lhs.true122:                                 ; preds = %sw.bb108
  %type123 = getelementptr inbounds %struct.radeon_atom_ss, ptr %ss, i32 0, i32 2
  %93 = ptrtoint ptr %type123 to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %type123, align 2
  %95 = and i8 %94, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %95)
  %tobool126.not = icmp eq i8 %95, 0
  br i1 %tobool126.not, label %land.lhs.true122.if.end132_crit_edge, label %if.then127

land.lhs.true122.if.end132_crit_edge:             ; preds = %land.lhs.true122
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end132

if.then127:                                       ; preds = %land.lhs.true122
  call void @__sanitizer_cov_trace_pc() #9
  %96 = ptrtoint ptr %13 to i32
  call void @__asan_store1_noabort(i32 %96)
  store i8 16, ptr %13, align 1
  br label %if.end132

if.end132:                                        ; preds = %if.then127, %land.lhs.true122.if.end132_crit_edge, %sw.bb108.if.end132_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %encoder_mode)
  %cmp133 = icmp eq i32 %encoder_mode, 3
  br i1 %cmp133, label %if.then135, label %if.end132.if.end158_crit_edge

if.end132.if.end158_crit_edge:                    ; preds = %if.end132
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end158

if.then135:                                       ; preds = %if.end132
  %97 = zext i32 %bpc to i64
  call void @__sanitizer_cov_trace_switch(i64 %97, ptr @__sancov_gen_cov_switch_values.36)
  switch i32 %bpc, label %if.then135.if.end158_crit_edge [
    i32 16, label %sw.bb152
    i32 10, label %if.then135.if.end158.sink.split_crit_edge
    i32 12, label %sw.bb147
  ]

if.then135.if.end158.sink.split_crit_edge:        ; preds = %if.then135
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end158.sink.split

if.then135.if.end158_crit_edge:                   ; preds = %if.then135
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end158

sw.bb147:                                         ; preds = %if.then135
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end158.sink.split

sw.bb152:                                         ; preds = %if.then135
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end158.sink.split

if.end158.sink.split:                             ; preds = %sw.bb152, %sw.bb147, %if.then135.if.end158.sink.split_crit_edge
  %.sink226 = phi i8 [ 8, %sw.bb147 ], [ 12, %sw.bb152 ], [ 4, %if.then135.if.end158.sink.split_crit_edge ]
  %98 = ptrtoint ptr %13 to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %13, align 1
  %100 = or i8 %99, %.sink226
  store i8 %100, ptr %13, align 1
  br label %if.end158

if.end158:                                        ; preds = %if.end158.sink.split, %if.then135.if.end158_crit_edge, %if.end132.if.end158_crit_edge
  %conv159 = trunc i32 %encoder_id to i8
  %101 = ptrtoint ptr %11 to i32
  call void @__asan_store1_noabort(i32 %101)
  store i8 %conv159, ptr %11, align 1
  %conv161 = trunc i32 %encoder_mode to i8
  %102 = ptrtoint ptr %12 to i32
  call void @__asan_store1_noabort(i32 %102)
  store i8 %conv161, ptr %12, align 2
  %conv163 = trunc i32 %pll_id to i8
  %103 = ptrtoint ptr %10 to i32
  call void @__asan_store1_noabort(i32 %103)
  store i8 %conv163, ptr %10, align 4
  br label %sw.epilog172

sw.default165:                                    ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  %conv2 = zext i8 %21 to i32
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.10, i32 noundef 1, i32 noundef %conv2) #7
  br label %cleanup

sw.default169:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %conv = zext i8 %19 to i32
  %104 = ptrtoint ptr %crev to i32
  call void @__asan_load1_noabort(i32 %104)
  %105 = load i8, ptr %crev, align 1
  %conv171 = zext i8 %105 to i32
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.10, i32 noundef %conv, i32 noundef %conv171) #7
  br label %cleanup

sw.epilog172:                                     ; preds = %if.end158, %if.end103, %if.end57, %sw.bb14, %if.end6
  %106 = ptrtoint ptr %mode_info to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %mode_info, align 4
  %call175 = call i32 @atom_execute_table(ptr noundef %107, i32 noundef 12, ptr noundef nonnull %args) #7
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog172, %sw.default169, %sw.default165, %sw.bb3.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %args) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %crev) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %frev) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @atom_rv515_force_tv_scaler(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @atombios_crtc_prepare(ptr noundef %crtc) #0 align 64 {
entry:
  %args.i5 = alloca %struct._ENABLE_CRTC_PARAMETERS, align 4
  %args.i = alloca %struct._ENABLE_DISP_POWER_GATING_PARAMETERS_V2_1, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %crtc, align 8
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_private, align 4
  %family = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %family to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %family, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 50, i32 %5)
  %cmp = icmp ugt i32 %5, 50
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %args.i) #7
  %6 = ptrtoint ptr %args.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %args.i, align 4
  %crtc_id.i = getelementptr inbounds %struct.radeon_crtc, ptr %crtc, i32 0, i32 1
  %7 = ptrtoint ptr %crtc_id.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %crtc_id.i, align 8
  %conv.i = trunc i32 %8 to i8
  store i8 %conv.i, ptr %args.i, align 4
  %mode_info.i = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 44
  %9 = ptrtoint ptr %mode_info.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %mode_info.i, align 4
  %call.i = call i32 @atom_execute_table(ptr noundef %10, i32 noundef 13, ptr noundef nonnull %args.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %args.i) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %11 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %crtc, align 8
  %dev_private.i6 = getelementptr inbounds %struct.drm_device, ptr %12, i32 0, i32 5
  %13 = ptrtoint ptr %dev_private.i6 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev_private.i6, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %args.i5) #7
  %15 = ptrtoint ptr %args.i5 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 65536, ptr %args.i5, align 4
  %crtc_id.i7 = getelementptr inbounds %struct.radeon_crtc, ptr %crtc, i32 0, i32 1
  %16 = ptrtoint ptr %crtc_id.i7 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %crtc_id.i7, align 8
  %conv.i8 = trunc i32 %17 to i8
  store i8 %conv.i8, ptr %args.i5, align 4
  %mode_info.i9 = getelementptr inbounds %struct.radeon_device, ptr %14, i32 0, i32 44
  %18 = ptrtoint ptr %mode_info.i9 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %mode_info.i9, align 4
  %call.i10 = call i32 @atom_execute_table(ptr noundef %19, i32 noundef 44, ptr noundef nonnull %args.i5) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %args.i5) #7
  call void @atombios_crtc_dpms(ptr noundef %crtc, i32 noundef 3)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @atombios_crtc_commit(ptr noundef %crtc) #0 align 64 {
entry:
  %args.i = alloca %struct._ENABLE_CRTC_PARAMETERS, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @atombios_crtc_dpms(ptr noundef %crtc, i32 noundef 0)
  %0 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %crtc, align 8
  %dev_private.i = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_private.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %args.i) #7
  %4 = ptrtoint ptr %args.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %args.i, align 4
  %crtc_id.i = getelementptr inbounds %struct.radeon_crtc, ptr %crtc, i32 0, i32 1
  %5 = ptrtoint ptr %crtc_id.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %crtc_id.i, align 8
  %conv.i = trunc i32 %6 to i8
  store i8 %conv.i, ptr %args.i, align 4
  %mode_info.i = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 44
  %7 = ptrtoint ptr %mode_info.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %mode_info.i, align 4
  %call.i = call i32 @atom_execute_table(ptr noundef %8, i32 noundef 44, ptr noundef nonnull %args.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %args.i) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @atombios_crtc_mode_fixup(ptr noundef %crtc, ptr noundef %mode, ptr noundef %adjusted_mode) #0 align 64 {
entry:
  %args.i.i = alloca %union.adjust_pixel_clock, align 8
  %frev.i.i = alloca i8, align 1
  %crev.i.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %crtc, align 8
  %encoder_list = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 30, i32 16
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry
  %.pn.in = phi ptr [ %encoder_list, %entry ], [ %.pn, %for.body.for.cond_crit_edge ]
  %2 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn = load ptr, ptr %.pn.in, align 4
  %cmp.not = icmp eq ptr %.pn, %encoder_list
  br i1 %cmp.not, label %for.cond.for.end_crit_edge, label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body:                                         ; preds = %for.cond
  %crtc7 = getelementptr i8, ptr %.pn, i32 48
  %3 = ptrtoint ptr %crtc7 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %crtc7, align 4
  %cmp8 = icmp eq ptr %4, %crtc
  br i1 %cmp8, label %if.then, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %encoder.0.le = getelementptr i8, ptr %.pn, i32 -4
  %encoder9 = getelementptr inbounds %struct.radeon_crtc, ptr %crtc, i32 0, i32 34
  %5 = ptrtoint ptr %encoder9 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %encoder.0.le, ptr %encoder9, align 4
  %call = tail call ptr @radeon_get_connector_for_encoder(ptr noundef %encoder.0.le) #7
  %connector = getelementptr inbounds %struct.radeon_crtc, ptr %crtc, i32 0, i32 35
  %6 = ptrtoint ptr %connector to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call, ptr %connector, align 8
  br label %for.end

for.end:                                          ; preds = %if.then, %for.cond.for.end_crit_edge
  %encoder15 = getelementptr inbounds %struct.radeon_crtc, ptr %crtc, i32 0, i32 34
  %7 = ptrtoint ptr %encoder15 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %encoder15, align 4
  %cmp16 = icmp eq ptr %8, null
  br i1 %cmp16, label %for.end.if.then19_crit_edge, label %lor.lhs.false

for.end.if.then19_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then19

lor.lhs.false:                                    ; preds = %for.end
  %connector17 = getelementptr inbounds %struct.radeon_crtc, ptr %crtc, i32 0, i32 35
  %9 = ptrtoint ptr %connector17 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %connector17, align 8
  %cmp18 = icmp eq ptr %10, null
  br i1 %cmp18, label %lor.lhs.false.if.then19_crit_edge, label %if.then24

lor.lhs.false.if.then19_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then19

if.then19:                                        ; preds = %lor.lhs.false.if.then19_crit_edge, %for.end.if.then19_crit_edge
  %11 = ptrtoint ptr %encoder15 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %encoder15, align 4
  %connector21 = getelementptr inbounds %struct.radeon_crtc, ptr %crtc, i32 0, i32 35
  %12 = ptrtoint ptr %connector21 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %connector21, align 8
  br label %cleanup

if.then24:                                        ; preds = %lor.lhs.false
  %output_csc = getelementptr inbounds %struct.radeon_encoder, ptr %8, i32 0, i32 17
  %13 = ptrtoint ptr %output_csc to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %output_csc, align 4
  %output_csc29 = getelementptr inbounds %struct.radeon_crtc, ptr %crtc, i32 0, i32 41
  %15 = ptrtoint ptr %output_csc29 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %output_csc29, align 4
  %call31 = tail call zeroext i1 @radeon_crtc_scaling_mode_fixup(ptr noundef %crtc, ptr noundef %mode, ptr noundef %adjusted_mode) #7
  br i1 %call31, label %if.end33, label %if.then24.cleanup_crit_edge

if.then24.cleanup_crit_edge:                      ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end33:                                         ; preds = %if.then24
  %16 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %crtc, align 8
  %dev_private.i = getelementptr inbounds %struct.drm_device, ptr %17, i32 0, i32 5
  %18 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev_private.i, align 4
  %20 = ptrtoint ptr %encoder15 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %encoder15, align 4
  %call.i = tail call i32 @atombios_get_encoder_mode(ptr noundef %21) #7
  %bpc.i = getelementptr inbounds %struct.radeon_crtc, ptr %crtc, i32 0, i32 30
  %22 = ptrtoint ptr %bpc.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 8, ptr %bpc.i, align 4
  %ss_enabled.i = getelementptr inbounds %struct.radeon_crtc, ptr %crtc, i32 0, i32 28
  %23 = ptrtoint ptr %ss_enabled.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 0, ptr %ss_enabled.i, align 4
  %is_mst_encoder.i = getelementptr inbounds %struct.radeon_encoder, ptr %21, i32 0, i32 20
  %24 = ptrtoint ptr %is_mst_encoder.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %is_mst_encoder.i, align 4, !range !37
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool.not.i = icmp eq i8 %25, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @radeon_dp_mst_prepare_pll(ptr noundef %crtc, ptr noundef %adjusted_mode) #7
  br label %if.end90.i

if.else.i:                                        ; preds = %if.end33
  %active_device.i = getelementptr inbounds %struct.radeon_encoder, ptr %21, i32 0, i32 4
  %26 = ptrtoint ptr %active_device.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %active_device.i, align 4
  %and.i = and i32 %27, 3818
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool6.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool6.not.i, label %lor.lhs.false.i, label %if.else.i.if.then10.i_crit_edge

if.else.i.if.then10.i_crit_edge:                  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then10.i

lor.lhs.false.i:                                  ; preds = %if.else.i
  %28 = ptrtoint ptr %encoder15 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %encoder15, align 4
  %call8.i = tail call zeroext i16 @radeon_encoder_get_dp_bridge_encoder_id(ptr noundef %29) #7
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %call8.i)
  %cmp.not.i = icmp eq i16 %call8.i, 0
  br i1 %cmp.not.i, label %lor.lhs.false.i.if.end90.i_crit_edge, label %lor.lhs.false.i.if.then10.i_crit_edge

lor.lhs.false.i.if.then10.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then10.i

lor.lhs.false.i.if.end90.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end90.i

if.then10.i:                                      ; preds = %lor.lhs.false.i.if.then10.i_crit_edge, %if.else.i.if.then10.i_crit_edge
  %enc_priv.i = getelementptr inbounds %struct.radeon_encoder, ptr %21, i32 0, i32 12
  %30 = ptrtoint ptr %enc_priv.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %enc_priv.i, align 4
  %32 = ptrtoint ptr %encoder15 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %encoder15, align 4
  %call12.i = tail call ptr @radeon_get_connector_for_encoder(ptr noundef %33) #7
  %con_priv.i = getelementptr inbounds %struct.radeon_connector, ptr %call12.i, i32 0, i32 7
  %34 = ptrtoint ptr %con_priv.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %con_priv.i, align 4
  %36 = ptrtoint ptr %adjusted_mode to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %adjusted_mode, align 4
  %pixelclock_for_modeset.i = getelementptr inbounds %struct.radeon_connector, ptr %call12.i, i32 0, i32 17
  %38 = ptrtoint ptr %pixelclock_for_modeset.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %pixelclock_for_modeset.i, align 8
  %call16.i = tail call i32 @radeon_get_monitor_bpc(ptr noundef %call12.i) #7
  %39 = ptrtoint ptr %bpc.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %call16.i, ptr %bpc.i, align 4
  %40 = zext i32 %call.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %40, ptr @__sancov_gen_cov_switch_values.37)
  switch i32 %call.i, label %if.then10.i.if.end90.i_crit_edge [
    i32 5, label %if.then10.i.sw.bb.i_crit_edge
    i32 0, label %if.then10.i.sw.bb.i_crit_edge122
    i32 1, label %sw.bb47.i
    i32 2, label %sw.bb65.i
    i32 3, label %sw.bb77.i
  ]

if.then10.i.sw.bb.i_crit_edge122:                 ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb.i

if.then10.i.sw.bb.i_crit_edge:                    ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb.i

if.then10.i.if.end90.i_crit_edge:                 ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end90.i

sw.bb.i:                                          ; preds = %if.then10.i.sw.bb.i_crit_edge, %if.then10.i.sw.bb.i_crit_edge122
  %dp_clock18.i = getelementptr inbounds %struct.radeon_connector_atom_dig, ptr %35, i32 0, i32 3
  %41 = ptrtoint ptr %dp_clock18.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %dp_clock18.i, align 4
  %family.i = getelementptr inbounds %struct.radeon_device, ptr %19, i32 0, i32 6
  %43 = ptrtoint ptr %family.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %family.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 38, i32 %44)
  %cmp19.i = icmp ugt i32 %44, 38
  br i1 %cmp19.i, label %if.then21.i, label %if.else24.i

if.then21.i:                                      ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #9
  %div.i = sdiv i32 %42, 10
  %ss.i = getelementptr inbounds %struct.radeon_crtc, ptr %crtc, i32 0, i32 27
  %call22.i = tail call zeroext i1 @radeon_atombios_get_asic_ss_info(ptr noundef %19, ptr noundef %ss.i, i32 noundef 7, i32 noundef %div.i) #7
  %frombool.i = zext i1 %call22.i to i8
  %45 = ptrtoint ptr %ss_enabled.i to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %frombool.i, ptr %ss_enabled.i, align 4
  br label %if.end90.i

if.else24.i:                                      ; preds = %sw.bb.i
  %.off.i = add i32 %42, -162000
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %.off.i)
  %46 = icmp ult i32 %.off.i, 10
  %ss28.i = getelementptr inbounds %struct.radeon_crtc, ptr %crtc, i32 0, i32 27
  br i1 %46, label %if.then27.i, label %if.else24.i.if.end44.sink.split.i_crit_edge

if.else24.i.if.end44.sink.split.i_crit_edge:      ; preds = %if.else24.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end44.sink.split.i

if.then27.i:                                      ; preds = %if.else24.i
  %call29.i = tail call zeroext i1 @radeon_atombios_get_ppll_ss_info(ptr noundef %19, ptr noundef %ss28.i, i32 noundef 242) #7
  %frombool31.i = zext i1 %call29.i to i8
  %47 = ptrtoint ptr %ss_enabled.i to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 %frombool31.i, ptr %ss_enabled.i, align 4
  br i1 %call29.i, label %if.then27.i.if.end44.i_crit_edge, label %if.then27.i.if.end44.sink.split.i_crit_edge

if.then27.i.if.end44.sink.split.i_crit_edge:      ; preds = %if.then27.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end44.sink.split.i

if.then27.i.if.end44.i_crit_edge:                 ; preds = %if.then27.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end44.i

if.end44.sink.split.i:                            ; preds = %if.then27.i.if.end44.sink.split.i_crit_edge, %if.else24.i.if.end44.sink.split.i_crit_edge
  %call36.i = tail call zeroext i1 @radeon_atombios_get_ppll_ss_info(ptr noundef %19, ptr noundef %ss28.i, i32 noundef 241) #7
  br label %if.end44.i

if.end44.i:                                       ; preds = %if.end44.sink.split.i, %if.then27.i.if.end44.i_crit_edge
  %48 = ptrtoint ptr %ss_enabled.i to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 0, ptr %ss_enabled.i, align 4
  br label %if.end90.i

sw.bb47.i:                                        ; preds = %if.then10.i
  %family48.i = getelementptr inbounds %struct.radeon_device, ptr %19, i32 0, i32 6
  %49 = ptrtoint ptr %family48.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %family48.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 38, i32 %50)
  %cmp49.i = icmp ugt i32 %50, 38
  %ss52.i = getelementptr inbounds %struct.radeon_crtc, ptr %crtc, i32 0, i32 27
  %lcd_ss_id.i = getelementptr inbounds %struct.radeon_encoder_atom_dig, ptr %31, i32 0, i32 5
  %51 = ptrtoint ptr %lcd_ss_id.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %lcd_ss_id.i, align 4
  br i1 %cmp49.i, label %if.then51.i, label %if.else58.i

if.then51.i:                                      ; preds = %sw.bb47.i
  call void @__sanitizer_cov_trace_pc() #9
  %53 = ptrtoint ptr %adjusted_mode to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %adjusted_mode, align 4
  %div54.i = sdiv i32 %54, 10
  %call55.i = tail call zeroext i1 @radeon_atombios_get_asic_ss_info(ptr noundef %19, ptr noundef %ss52.i, i32 noundef %52, i32 noundef %div54.i) #7
  %frombool57.i = zext i1 %call55.i to i8
  %55 = ptrtoint ptr %ss_enabled.i to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 %frombool57.i, ptr %ss_enabled.i, align 4
  br label %if.end90.i

if.else58.i:                                      ; preds = %sw.bb47.i
  call void @__sanitizer_cov_trace_pc() #9
  %call61.i = tail call zeroext i1 @radeon_atombios_get_ppll_ss_info(ptr noundef %19, ptr noundef %ss52.i, i32 noundef %52) #7
  %frombool63.i = zext i1 %call61.i to i8
  %56 = ptrtoint ptr %ss_enabled.i to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 %frombool63.i, ptr %ss_enabled.i, align 4
  br label %if.end90.i

sw.bb65.i:                                        ; preds = %if.then10.i
  %family66.i = getelementptr inbounds %struct.radeon_device, ptr %19, i32 0, i32 6
  %57 = ptrtoint ptr %family66.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %family66.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 38, i32 %58)
  %cmp67.i = icmp ugt i32 %58, 38
  br i1 %cmp67.i, label %if.then69.i, label %sw.bb65.i.if.end90.i_crit_edge

sw.bb65.i.if.end90.i_crit_edge:                   ; preds = %sw.bb65.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end90.i

if.then69.i:                                      ; preds = %sw.bb65.i
  call void @__sanitizer_cov_trace_pc() #9
  %ss70.i = getelementptr inbounds %struct.radeon_crtc, ptr %crtc, i32 0, i32 27
  %59 = ptrtoint ptr %adjusted_mode to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %adjusted_mode, align 4
  %div72.i = sdiv i32 %60, 10
  %call73.i = tail call zeroext i1 @radeon_atombios_get_asic_ss_info(ptr noundef %19, ptr noundef %ss70.i, i32 noundef 4, i32 noundef %div72.i) #7
  %frombool75.i = zext i1 %call73.i to i8
  %61 = ptrtoint ptr %ss_enabled.i to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 %frombool75.i, ptr %ss_enabled.i, align 4
  br label %if.end90.i

sw.bb77.i:                                        ; preds = %if.then10.i
  %family78.i = getelementptr inbounds %struct.radeon_device, ptr %19, i32 0, i32 6
  %62 = ptrtoint ptr %family78.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %family78.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 38, i32 %63)
  %cmp79.i = icmp ugt i32 %63, 38
  br i1 %cmp79.i, label %if.then81.i, label %sw.bb77.i.if.end90.i_crit_edge

sw.bb77.i.if.end90.i_crit_edge:                   ; preds = %sw.bb77.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end90.i

if.then81.i:                                      ; preds = %sw.bb77.i
  call void @__sanitizer_cov_trace_pc() #9
  %ss82.i = getelementptr inbounds %struct.radeon_crtc, ptr %crtc, i32 0, i32 27
  %64 = ptrtoint ptr %adjusted_mode to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %adjusted_mode, align 4
  %div84.i = sdiv i32 %65, 10
  %call85.i = tail call zeroext i1 @radeon_atombios_get_asic_ss_info(ptr noundef %19, ptr noundef %ss82.i, i32 noundef 5, i32 noundef %div84.i) #7
  %frombool87.i = zext i1 %call85.i to i8
  %66 = ptrtoint ptr %ss_enabled.i to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 %frombool87.i, ptr %ss_enabled.i, align 4
  br label %if.end90.i

if.end90.i:                                       ; preds = %if.then81.i, %sw.bb77.i.if.end90.i_crit_edge, %if.then69.i, %sw.bb65.i.if.end90.i_crit_edge, %if.else58.i, %if.then51.i, %if.end44.i, %if.then21.i, %if.then10.i.if.end90.i_crit_edge, %lor.lhs.false.i.if.end90.i_crit_edge, %if.then.i
  %67 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %crtc, align 8
  %dev_private.i.i = getelementptr inbounds %struct.drm_device, ptr %68, i32 0, i32 5
  %69 = ptrtoint ptr %dev_private.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %dev_private.i.i, align 4
  %71 = ptrtoint ptr %encoder15 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %encoder15, align 4
  %call.i.i = tail call ptr @radeon_get_connector_for_encoder(ptr noundef %72) #7
  %73 = ptrtoint ptr %adjusted_mode to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %adjusted_mode, align 4
  %call6.i.i = tail call i32 @atombios_get_encoder_mode(ptr noundef %72) #7
  %75 = ptrtoint ptr %adjusted_mode to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %adjusted_mode, align 4
  %77 = ptrtoint ptr %bpc.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %bpc.i, align 4
  %call12.i.i = tail call zeroext i1 @radeon_dig_monitor_is_duallink(ptr noundef %72, i32 noundef %76) #7
  %pll_flags.i.i = getelementptr inbounds %struct.radeon_crtc, ptr %crtc, i32 0, i32 33
  %79 = ptrtoint ptr %pll_flags.i.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 0, ptr %pll_flags.i.i, align 8
  %family.i.i = getelementptr inbounds %struct.radeon_device, ptr %70, i32 0, i32 6
  %80 = ptrtoint ptr %family.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %family.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %81)
  %cmp.i.i = icmp ugt i32 %81, 17
  br i1 %cmp.i.i, label %if.then.i.i, label %if.else75.i.i

if.then.i.i:                                      ; preds = %if.end90.i
  %.off.i.i = add i32 %81, -18
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.off.i.i)
  %switch.i.i = icmp ult i32 %.off.i.i, 3
  br i1 %switch.i.i, label %if.then20.i.i, label %if.then.i.i.if.end.i.i_crit_edge

if.then.i.i.if.end.i.i_crit_edge:                 ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.i

if.then20.i.i:                                    ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %82 = ptrtoint ptr %pll_flags.i.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 2048, ptr %pll_flags.i.i, align 8
  %83 = ptrtoint ptr %family.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %.pr.i.i = load i32, ptr %family.i.i, align 4
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then20.i.i, %if.then.i.i.if.end.i.i_crit_edge
  %84 = phi i32 [ %81, %if.then.i.i.if.end.i.i_crit_edge ], [ %.pr.i.i, %if.then20.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 35, i32 %84)
  %cmp23.i.i = icmp ugt i32 %84, 35
  br i1 %cmp23.i.i, label %land.lhs.true.i.i, label %if.end.i.i.if.else.i.i_crit_edge

if.end.i.i.if.else.i.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else.i.i

land.lhs.true.i.i:                                ; preds = %if.end.i.i
  %85 = ptrtoint ptr %adjusted_mode to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %adjusted_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 200000, i32 %86)
  %cmp25.i.i = icmp sgt i32 %86, 200000
  br i1 %cmp25.i.i, label %land.lhs.true.i.i.if.end31.i.i_crit_edge, label %land.lhs.true.i.i.if.else.i.i_crit_edge

land.lhs.true.i.i.if.else.i.i_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else.i.i

land.lhs.true.i.i.if.end31.i.i_crit_edge:         ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end31.i.i

if.else.i.i:                                      ; preds = %land.lhs.true.i.i.if.else.i.i_crit_edge, %if.end.i.i.if.else.i.i_crit_edge
  br label %if.end31.i.i

if.end31.i.i:                                     ; preds = %if.else.i.i, %land.lhs.true.i.i.if.end31.i.i_crit_edge
  %.sink454.i.i = phi i32 [ 16, %if.else.i.i ], [ 128, %land.lhs.true.i.i.if.end31.i.i_crit_edge ]
  %87 = ptrtoint ptr %pll_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %pll_flags.i.i, align 8
  %or30.i.i = or i32 %88, %.sink454.i.i
  store i32 %or30.i.i, ptr %pll_flags.i.i, align 8
  %89 = ptrtoint ptr %family.i.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %family.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 35, i32 %90)
  %cmp33.i.i = icmp ult i32 %90, 35
  br i1 %cmp33.i.i, label %if.then34.i.i, label %if.end31.i.i.if.end37.i.i_crit_edge

if.end31.i.i.if.end37.i.i_crit_edge:              ; preds = %if.end31.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end37.i.i

if.then34.i.i:                                    ; preds = %if.end31.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %or36.i.i = or i32 %or30.i.i, 16384
  %91 = ptrtoint ptr %pll_flags.i.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 %or36.i.i, ptr %pll_flags.i.i, align 8
  %92 = ptrtoint ptr %family.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %.pr445.i.i = load i32, ptr %family.i.i, align 4
  br label %if.end37.i.i

if.end37.i.i:                                     ; preds = %if.then34.i.i, %if.end31.i.i.if.end37.i.i_crit_edge
  %93 = phi i32 [ %.pr445.i.i, %if.then34.i.i ], [ %90, %if.end31.i.i.if.end37.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 43, i32 %93)
  %cmp39.i.i = icmp ugt i32 %93, 43
  br i1 %cmp39.i.i, label %land.lhs.true40.i.i, label %if.end37.i.i.if.end54.i.i_crit_edge

if.end37.i.i.if.end54.i.i_crit_edge:              ; preds = %if.end37.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end54.i.i

land.lhs.true40.i.i:                              ; preds = %if.end37.i.i
  %flags.i.i = getelementptr inbounds %struct.radeon_device, ptr %70, i32 0, i32 7
  %94 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %flags.i.i, align 8
  %and.i.i = and i32 %95, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp ne i32 %and.i.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 56, i32 %93)
  %cmp50.i.i = icmp ugt i32 %93, 56
  %or.cond.i = select i1 %tobool.not.i.i, i1 true, i1 %cmp50.i.i
  br i1 %or.cond.i, label %if.then51.i.i, label %land.lhs.true40.i.i.if.end54.i.i_crit_edge

land.lhs.true40.i.i.if.end54.i.i_crit_edge:       ; preds = %land.lhs.true40.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end54.i.i

if.then51.i.i:                                    ; preds = %land.lhs.true40.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %96 = ptrtoint ptr %pll_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %pll_flags.i.i, align 8
  %or53.i.i = or i32 %97, 1024
  store i32 %or53.i.i, ptr %pll_flags.i.i, align 8
  br label %if.end54.i.i

if.end54.i.i:                                     ; preds = %if.then51.i.i, %land.lhs.true40.i.i.if.end54.i.i_crit_edge, %if.end37.i.i.if.end54.i.i_crit_edge
  %98 = ptrtoint ptr %family.i.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %family.i.i, align 4
  %.off440.i.i = add i32 %99, -33
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off440.i.i)
  %switch441.i.i = icmp ult i32 %.off440.i.i, 2
  br i1 %switch441.i.i, label %land.lhs.true60.i.i, label %if.end54.i.i.if.end65.i.i_crit_edge

if.end54.i.i.if.end65.i.i_crit_edge:              ; preds = %if.end54.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end65.i.i

land.lhs.true60.i.i:                              ; preds = %if.end54.i.i
  %100 = ptrtoint ptr %ss_enabled.i to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %ss_enabled.i, align 4, !range !37
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %101)
  %tobool61.not.i.i = icmp eq i8 %101, 0
  br i1 %tobool61.not.i.i, label %if.then62.i.i, label %land.lhs.true60.i.i.if.end65thread-pre-split.i.i_crit_edge

land.lhs.true60.i.i.if.end65thread-pre-split.i.i_crit_edge: ; preds = %land.lhs.true60.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end65thread-pre-split.i.i

if.then62.i.i:                                    ; preds = %land.lhs.true60.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %102 = ptrtoint ptr %pll_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %pll_flags.i.i, align 8
  %or64.i.i = or i32 %103, 1024
  store i32 %or64.i.i, ptr %pll_flags.i.i, align 8
  br label %if.end65thread-pre-split.i.i

if.end65thread-pre-split.i.i:                     ; preds = %if.then62.i.i, %land.lhs.true60.i.i.if.end65thread-pre-split.i.i_crit_edge
  %104 = ptrtoint ptr %family.i.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %.pr448.i.i = load i32, ptr %family.i.i, align 4
  br label %if.end65.i.i

if.end65.i.i:                                     ; preds = %if.end65thread-pre-split.i.i, %if.end54.i.i.if.end65.i.i_crit_edge
  %105 = phi i32 [ %.pr448.i.i, %if.end65thread-pre-split.i.i ], [ %99, %if.end54.i.i.if.end65.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 35, i32 %105)
  %cmp67.i.i = icmp ugt i32 %105, 35
  br i1 %cmp67.i.i, label %land.lhs.true68.i.i, label %if.end65.i.i.if.end87.i.i_crit_edge

if.end65.i.i.if.end87.i.i_crit_edge:              ; preds = %if.end65.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end87.i.i

land.lhs.true68.i.i:                              ; preds = %if.end65.i.i
  %106 = ptrtoint ptr %adjusted_mode to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %adjusted_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 165000, i32 %107)
  %cmp70.i.i = icmp sgt i32 %107, 165000
  br i1 %cmp70.i.i, label %if.then71.i.i, label %land.lhs.true68.i.i.if.end87.i.i_crit_edge

land.lhs.true68.i.i.if.end87.i.i_crit_edge:       ; preds = %land.lhs.true68.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end87.i.i

if.then71.i.i:                                    ; preds = %land.lhs.true68.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %108 = ptrtoint ptr %pll_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %pll_flags.i.i, align 8
  %or73.i.i = or i32 %109, 1024
  br label %if.end87.sink.split.i.i

if.else75.i.i:                                    ; preds = %if.end90.i
  call void @__sanitizer_cov_trace_pc() #9
  %110 = ptrtoint ptr %pll_flags.i.i to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 8, ptr %pll_flags.i.i, align 8
  %111 = ptrtoint ptr %adjusted_mode to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %adjusted_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 200000, i32 %112)
  %cmp79.i.i = icmp sgt i32 %112, 200000
  %..i.i = select i1 %cmp79.i.i, i32 136, i32 24
  br label %if.end87.sink.split.i.i

if.end87.sink.split.i.i:                          ; preds = %if.else75.i.i, %if.then71.i.i
  %.sink.i.i = phi i32 [ %or73.i.i, %if.then71.i.i ], [ %..i.i, %if.else75.i.i ]
  %113 = ptrtoint ptr %pll_flags.i.i to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 %.sink.i.i, ptr %pll_flags.i.i, align 8
  br label %if.end87.i.i

if.end87.i.i:                                     ; preds = %if.end87.sink.split.i.i, %land.lhs.true68.i.i.if.end87.i.i_crit_edge, %if.end65.i.i.if.end87.i.i_crit_edge
  %devices.i.i = getelementptr inbounds %struct.radeon_encoder, ptr %72, i32 0, i32 3
  %114 = ptrtoint ptr %devices.i.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %devices.i.i, align 4
  %and88.i.i = and i32 %115, 3818
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and88.i.i)
  %tobool89.not.i.i = icmp eq i32 %and88.i.i, 0
  br i1 %tobool89.not.i.i, label %lor.lhs.false90.i.i, label %if.then94.i.i

lor.lhs.false90.i.i:                              ; preds = %if.end87.i.i
  %call91.i.i = tail call zeroext i16 @radeon_encoder_get_dp_bridge_encoder_id(ptr noundef %72) #7
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %call91.i.i)
  %cmp92.not.i.i = icmp eq i16 %call91.i.i, 0
  %tobool95.not.i.i = icmp eq ptr %call.i.i, null
  %or.cond.i.i = select i1 %cmp92.not.i.i, i1 true, i1 %tobool95.not.i.i
  br i1 %or.cond.i.i, label %lor.lhs.false90.i.i.if.end102.i.i_crit_edge, label %lor.lhs.false90.i.i.if.then96.i.i_crit_edge

lor.lhs.false90.i.i.if.then96.i.i_crit_edge:      ; preds = %lor.lhs.false90.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then96.i.i

lor.lhs.false90.i.i.if.end102.i.i_crit_edge:      ; preds = %lor.lhs.false90.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end102.i.i

if.then94.i.i:                                    ; preds = %if.end87.i.i
  %tobool95.not.old.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool95.not.old.i.i, label %if.then94.i.i.if.end102.i.i_crit_edge, label %if.then94.i.i.if.then96.i.i_crit_edge

if.then94.i.i.if.then96.i.i_crit_edge:            ; preds = %if.then94.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then96.i.i

if.then94.i.i.if.end102.i.i_crit_edge:            ; preds = %if.then94.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end102.i.i

if.then96.i.i:                                    ; preds = %if.then94.i.i.if.then96.i.i_crit_edge, %lor.lhs.false90.i.i.if.then96.i.i_crit_edge
  %con_priv.i.i = getelementptr inbounds %struct.radeon_connector, ptr %call.i.i, i32 0, i32 7
  %116 = ptrtoint ptr %con_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %con_priv.i.i, align 4
  %dp_clock100.i.i = getelementptr inbounds %struct.radeon_connector_atom_dig, ptr %117, i32 0, i32 3
  %118 = ptrtoint ptr %dp_clock100.i.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %dp_clock100.i.i, align 4
  br label %if.end102.i.i

if.end102.i.i:                                    ; preds = %if.then96.i.i, %if.then94.i.i.if.end102.i.i_crit_edge, %lor.lhs.false90.i.i.if.end102.i.i_crit_edge
  %dp_clock.0.i.i = phi i32 [ %119, %if.then96.i.i ], [ %76, %if.then94.i.i.if.end102.i.i_crit_edge ], [ %76, %lor.lhs.false90.i.i.if.end102.i.i_crit_edge ]
  %is_mst_encoder.i.i = getelementptr inbounds %struct.radeon_encoder, ptr %72, i32 0, i32 20
  %120 = ptrtoint ptr %is_mst_encoder.i.i to i32
  call void @__asan_load1_noabort(i32 %120)
  %121 = load i8, ptr %is_mst_encoder.i.i, align 4, !range !37
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %121)
  %tobool103.not.i.i = icmp eq i8 %121, 0
  br i1 %tobool103.not.i.i, label %if.end102.i.i.if.end109.i.i_crit_edge, label %if.then104.i.i

if.end102.i.i.if.end109.i.i_crit_edge:            ; preds = %if.end102.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end109.i.i

if.then104.i.i:                                   ; preds = %if.end102.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %enc_priv.i.i = getelementptr inbounds %struct.radeon_encoder, ptr %72, i32 0, i32 12
  %122 = ptrtoint ptr %enc_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %enc_priv.i.i, align 4
  %connector106.i.i = getelementptr inbounds %struct.radeon_encoder_mst, ptr %123, i32 0, i32 2
  %124 = ptrtoint ptr %connector106.i.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %connector106.i.i, align 4
  %con_priv107.i.i = getelementptr inbounds %struct.radeon_connector, ptr %125, i32 0, i32 7
  %126 = ptrtoint ptr %con_priv107.i.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %con_priv107.i.i, align 4
  %dp_clock108.i.i = getelementptr inbounds %struct.radeon_connector_atom_dig, ptr %127, i32 0, i32 3
  %128 = ptrtoint ptr %dp_clock108.i.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %dp_clock108.i.i, align 4
  br label %if.end109.i.i

if.end109.i.i:                                    ; preds = %if.then104.i.i, %if.end102.i.i.if.end109.i.i_crit_edge
  %dp_clock.1.i.i = phi i32 [ %129, %if.then104.i.i ], [ %dp_clock.0.i.i, %if.end102.i.i.if.end109.i.i_crit_edge ]
  %130 = ptrtoint ptr %devices.i.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %devices.i.i, align 4
  %and111.i.i = and i32 %131, 34
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and111.i.i)
  %tobool112.not.i.i = icmp eq i32 %and111.i.i, 0
  br i1 %tobool112.not.i.i, label %if.end109.i.i.if.end141.i.i_crit_edge, label %if.then113.i.i

if.end109.i.i.if.end141.i.i_crit_edge:            ; preds = %if.end109.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end141.i.i

if.then113.i.i:                                   ; preds = %if.end109.i.i
  %132 = ptrtoint ptr %ss_enabled.i to i32
  call void @__asan_load1_noabort(i32 %132)
  %133 = load i8, ptr %ss_enabled.i, align 4, !range !37
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %133)
  %tobool115.not.i.i = icmp eq i8 %133, 0
  br i1 %tobool115.not.i.i, label %if.then113.i.i.if.end141.i.i_crit_edge, label %if.then116.i.i

if.then113.i.i.if.end141.i.i_crit_edge:           ; preds = %if.then113.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end141.i.i

if.then116.i.i:                                   ; preds = %if.then113.i.i
  %refdiv.i.i = getelementptr inbounds %struct.radeon_crtc, ptr %crtc, i32 0, i32 27, i32 6
  %134 = ptrtoint ptr %refdiv.i.i to i32
  call void @__asan_load1_noabort(i32 %134)
  %135 = load i8, ptr %refdiv.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %135)
  %tobool117.not.i.i = icmp eq i8 %135, 0
  br i1 %tobool117.not.i.i, label %if.then116.i.i.if.end141.i.i_crit_edge, label %if.then118.i.i

if.then116.i.i.if.end141.i.i_crit_edge:           ; preds = %if.then116.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end141.i.i

if.then118.i.i:                                   ; preds = %if.then116.i.i
  %136 = ptrtoint ptr %pll_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %pll_flags.i.i, align 8
  %or120.i.i = or i32 %137, 4
  store i32 %or120.i.i, ptr %pll_flags.i.i, align 8
  %conv123.i.i = zext i8 %135 to i32
  %pll_reference_div.i.i = getelementptr inbounds %struct.radeon_crtc, ptr %crtc, i32 0, i32 31
  %138 = ptrtoint ptr %pll_reference_div.i.i to i32
  call void @__asan_store4_noabort(i32 %138)
  store i32 %conv123.i.i, ptr %pll_reference_div.i.i, align 8
  %139 = ptrtoint ptr %family.i.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %family.i.i, align 4
  %.fr.i.i = freeze i32 %140
  call void @__sanitizer_cov_trace_const_cmp4(i32 18, i32 %.fr.i.i)
  %cmp125.i.i = icmp ult i32 %.fr.i.i, 18
  %.off442.i.i = add i32 %.fr.i.i, -33
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off442.i.i)
  %switch443.i.i = icmp ult i32 %.off442.i.i, 2
  %or.cond444.i.i = or i1 %cmp125.i.i, %switch443.i.i
  br i1 %or.cond444.i.i, label %if.then118.i.i.if.end141.i.i_crit_edge, label %if.then135.i.i

if.then118.i.i.if.end141.i.i_crit_edge:           ; preds = %if.then118.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end141.i.i

if.then135.i.i:                                   ; preds = %if.then118.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %or137.i.i = or i32 %137, 1028
  %141 = ptrtoint ptr %pll_flags.i.i to i32
  call void @__asan_store4_noabort(i32 %141)
  store i32 %or137.i.i, ptr %pll_flags.i.i, align 8
  br label %if.end141.i.i

if.end141.i.i:                                    ; preds = %if.then135.i.i, %if.then118.i.i.if.end141.i.i_crit_edge, %if.then116.i.i.if.end141.i.i_crit_edge, %if.then113.i.i.if.end141.i.i_crit_edge, %if.end109.i.i.if.end141.i.i_crit_edge
  %142 = ptrtoint ptr %family.i.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %family.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %143)
  %cmp143.i.i = icmp ugt i32 %143, 17
  br i1 %cmp143.i.i, label %if.then145.i.i, label %if.else164.i.i

if.then145.i.i:                                   ; preds = %if.end141.i.i
  %encoder_id.i.i = getelementptr inbounds %struct.radeon_encoder, ptr %72, i32 0, i32 2
  %144 = ptrtoint ptr %encoder_id.i.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %encoder_id.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %145)
  %cmp146.i.i = icmp eq i32 %145, 20
  br i1 %cmp146.i.i, label %if.then148.i.i, label %if.then145.i.i.if.end150.i.i_crit_edge

if.then145.i.i.if.end150.i.i_crit_edge:           ; preds = %if.then145.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end150.i.i

if.then148.i.i:                                   ; preds = %if.then145.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %146 = ptrtoint ptr %adjusted_mode to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %adjusted_mode, align 4
  %mul.i.i = shl i32 %147, 1
  br label %if.end150.i.i

if.end150.i.i:                                    ; preds = %if.then148.i.i, %if.then145.i.i.if.end150.i.i_crit_edge
  %adjusted_clock.0.i.i = phi i32 [ %mul.i.i, %if.then148.i.i ], [ %74, %if.then145.i.i.if.end150.i.i_crit_edge ]
  %active_device.i.i = getelementptr inbounds %struct.radeon_encoder, ptr %72, i32 0, i32 4
  %148 = ptrtoint ptr %active_device.i.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %active_device.i.i, align 4
  %and151.i.i = and i32 %149, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and151.i.i)
  %tobool152.not.i.i = icmp eq i32 %and151.i.i, 0
  br i1 %tobool152.not.i.i, label %if.end150.i.i.if.end156.i.i_crit_edge, label %if.then153.i.i

if.end150.i.i.if.end156.i.i_crit_edge:            ; preds = %if.end150.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end156.i.i

if.then153.i.i:                                   ; preds = %if.end150.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %150 = ptrtoint ptr %pll_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %pll_flags.i.i, align 8
  %or155.i.i = or i32 %151, 2048
  store i32 %or155.i.i, ptr %pll_flags.i.i, align 8
  br label %if.end156.i.i

if.end156.i.i:                                    ; preds = %if.then153.i.i, %if.end150.i.i.if.end156.i.i_crit_edge
  %152 = ptrtoint ptr %devices.i.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %devices.i.i, align 4
  %and158.i.i = and i32 %153, 34
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and158.i.i)
  %tobool159.not.i.i = icmp eq i32 %and158.i.i, 0
  br i1 %tobool159.not.i.i, label %if.end156.i.i.if.end178.i.i_crit_edge, label %if.end156.i.i.if.end178.sink.split.i.i_crit_edge

if.end156.i.i.if.end178.sink.split.i.i_crit_edge: ; preds = %if.end156.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end178.sink.split.i.i

if.end156.i.i.if.end178.i.i_crit_edge:            ; preds = %if.end156.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end178.i.i

if.else164.i.i:                                   ; preds = %if.end141.i.i
  %encoder_type.i.i = getelementptr inbounds %struct.drm_encoder, ptr %72, i32 0, i32 4
  %154 = ptrtoint ptr %encoder_type.i.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %encoder_type.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %155)
  %cmp165.not.i.i = icmp eq i32 %155, 1
  br i1 %cmp165.not.i.i, label %if.else164.i.i.if.end178.i.i_crit_edge, label %if.end170.i.i

if.else164.i.i.if.end178.i.i_crit_edge:           ; preds = %if.else164.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end178.i.i

if.end170.i.i:                                    ; preds = %if.else164.i.i
  %156 = ptrtoint ptr %pll_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %pll_flags.i.i, align 8
  %or169.i.i = or i32 %157, 2
  store i32 %or169.i.i, ptr %pll_flags.i.i, align 8
  %158 = ptrtoint ptr %encoder_type.i.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %.pr449.i.i = load i32, ptr %encoder_type.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.pr449.i.i)
  %cmp172.i.i = icmp eq i32 %.pr449.i.i, 3
  br i1 %cmp172.i.i, label %if.end170.i.i.if.end178.sink.split.i.i_crit_edge, label %if.end170.i.i.if.end178.i.i_crit_edge

if.end170.i.i.if.end178.i.i_crit_edge:            ; preds = %if.end170.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end178.i.i

if.end170.i.i.if.end178.sink.split.i.i_crit_edge: ; preds = %if.end170.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end178.sink.split.i.i

if.end178.sink.split.i.i:                         ; preds = %if.end170.i.i.if.end178.sink.split.i.i_crit_edge, %if.end156.i.i.if.end178.sink.split.i.i_crit_edge
  %.sink456.i.i = phi i32 [ 8192, %if.end156.i.i.if.end178.sink.split.i.i_crit_edge ], [ 4, %if.end170.i.i.if.end178.sink.split.i.i_crit_edge ]
  %adjusted_clock.1.ph.i.i = phi i32 [ %adjusted_clock.0.i.i, %if.end156.i.i.if.end178.sink.split.i.i_crit_edge ], [ %74, %if.end170.i.i.if.end178.sink.split.i.i_crit_edge ]
  %159 = ptrtoint ptr %pll_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %pll_flags.i.i, align 8
  %or176.i.i = or i32 %160, %.sink456.i.i
  store i32 %or176.i.i, ptr %pll_flags.i.i, align 8
  br label %if.end178.i.i

if.end178.i.i:                                    ; preds = %if.end178.sink.split.i.i, %if.end170.i.i.if.end178.i.i_crit_edge, %if.else164.i.i.if.end178.i.i_crit_edge, %if.end156.i.i.if.end178.i.i_crit_edge
  %adjusted_clock.1.i.i = phi i32 [ %adjusted_clock.0.i.i, %if.end156.i.i.if.end178.i.i_crit_edge ], [ %74, %if.end170.i.i.if.end178.i.i_crit_edge ], [ %74, %if.else164.i.i.if.end178.i.i_crit_edge ], [ %adjusted_clock.1.ph.i.i, %if.end178.sink.split.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call6.i.i)
  %cmp179.i.i = icmp eq i32 %call6.i.i, 3
  br i1 %cmp179.i.i, label %if.then181.i.i, label %if.end178.i.i.if.end189.i.i_crit_edge

if.end178.i.i.if.end189.i.i_crit_edge:            ; preds = %if.end178.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end189.i.i

if.then181.i.i:                                   ; preds = %if.end178.i.i
  %161 = zext i32 %78 to i64
  call void @__sanitizer_cov_trace_switch(i64 %161, ptr @__sancov_gen_cov_switch_values.38)
  switch i32 %78, label %if.then181.i.i.if.end189.i.i_crit_edge [
    i32 16, label %sw.bb187.i.i
    i32 10, label %sw.bb182.i.i
    i32 12, label %sw.bb184.i.i
  ]

if.then181.i.i.if.end189.i.i_crit_edge:           ; preds = %if.then181.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end189.i.i

sw.bb182.i.i:                                     ; preds = %if.then181.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %mul183.i.i = mul i32 %76, 5
  %div437.i.i = lshr i32 %mul183.i.i, 2
  br label %if.end189.i.i

sw.bb184.i.i:                                     ; preds = %if.then181.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %mul185.i.i = mul i32 %76, 3
  %div186436.i.i = lshr i32 %mul185.i.i, 1
  br label %if.end189.i.i

sw.bb187.i.i:                                     ; preds = %if.then181.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %mul188.i.i = shl i32 %76, 1
  br label %if.end189.i.i

if.end189.i.i:                                    ; preds = %sw.bb187.i.i, %sw.bb184.i.i, %sw.bb182.i.i, %if.then181.i.i.if.end189.i.i_crit_edge, %if.end178.i.i.if.end189.i.i_crit_edge
  %clock8.0.i.i = phi i32 [ %76, %if.then181.i.i.if.end189.i.i_crit_edge ], [ %div186436.i.i, %sw.bb184.i.i ], [ %div437.i.i, %sw.bb182.i.i ], [ %mul188.i.i, %sw.bb187.i.i ], [ %76, %if.end178.i.i.if.end189.i.i_crit_edge ]
  %162 = ptrtoint ptr %family.i.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %family.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 30, i32 %163)
  %cmp191.i.i = icmp ugt i32 %163, 30
  br i1 %cmp191.i.i, label %if.then193.i.i, label %if.end189.i.i.atombios_crtc_prepare_pll.exit_crit_edge

if.end189.i.i.atombios_crtc_prepare_pll.exit_crit_edge: ; preds = %if.end189.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %atombios_crtc_prepare_pll.exit

if.then193.i.i:                                   ; preds = %if.end189.i.i
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %args.i.i) #7
  %164 = getelementptr inbounds %struct._ADJUST_DISPLAY_PLL_OUTPUT_PARAMETERS_V3, ptr %args.i.i, i32 0, i32 1
  %165 = getelementptr inbounds %struct._ADJUST_DISPLAY_PLL_OUTPUT_PARAMETERS_V3, ptr %args.i.i, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %frev.i.i) #7
  %166 = ptrtoint ptr %frev.i.i to i32
  call void @__asan_store1_noabort(i32 %166)
  store i8 -1, ptr %frev.i.i, align 1, !annotation !42
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %crev.i.i) #7
  %167 = ptrtoint ptr %crev.i.i to i32
  call void @__asan_store1_noabort(i32 %167)
  store i8 -1, ptr %crev.i.i, align 1, !annotation !42
  %mode_info.i.i = getelementptr inbounds %struct.radeon_device, ptr %70, i32 0, i32 44
  %168 = ptrtoint ptr %mode_info.i.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %mode_info.i.i, align 4
  %call194.i.i = call zeroext i1 @atom_parse_cmd_header(ptr noundef %169, i32 noundef 17, ptr noundef nonnull %frev.i.i, ptr noundef nonnull %crev.i.i) #7
  br i1 %call194.i.i, label %if.end196.i.i, label %if.then193.i.i.cleanup.thread.i.i_crit_edge

if.then193.i.i.cleanup.thread.i.i_crit_edge:      ; preds = %if.then193.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.thread.i.i

if.end196.i.i:                                    ; preds = %if.then193.i.i
  %170 = ptrtoint ptr %args.i.i to i32
  call void @__asan_store8_noabort(i32 %170)
  store i64 0, ptr %args.i.i, align 8
  %171 = ptrtoint ptr %frev.i.i to i32
  call void @__asan_load1_noabort(i32 %171)
  %172 = load i8, ptr %frev.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %172)
  %cond339.i.i = icmp eq i8 %172, 1
  br i1 %cond339.i.i, label %sw.bb198.i.i, label %sw.default319.i.i

sw.bb198.i.i:                                     ; preds = %if.end196.i.i
  %173 = ptrtoint ptr %crev.i.i to i32
  call void @__asan_load1_noabort(i32 %173)
  %174 = load i8, ptr %crev.i.i, align 1
  %175 = zext i8 %174 to i64
  call void @__sanitizer_cov_trace_switch(i64 %175, ptr @__sancov_gen_cov_switch_values.39)
  switch i8 %174, label %sw.bb198.i.i.cleanup.thread.sink.split.i.i_crit_edge [
    i8 1, label %sw.bb198.i.i.sw.bb200.i.i_crit_edge
    i8 2, label %sw.bb198.i.i.sw.bb200.i.i_crit_edge123
    i8 3, label %sw.bb224.i.i
  ]

sw.bb198.i.i.sw.bb200.i.i_crit_edge123:           ; preds = %sw.bb198.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb200.i.i

sw.bb198.i.i.sw.bb200.i.i_crit_edge:              ; preds = %sw.bb198.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb200.i.i

sw.bb198.i.i.cleanup.thread.sink.split.i.i_crit_edge: ; preds = %sw.bb198.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.thread.sink.split.i.i

sw.bb200.i.i:                                     ; preds = %sw.bb198.i.i.sw.bb200.i.i_crit_edge, %sw.bb198.i.i.sw.bb200.i.i_crit_edge123
  %div201.i.i = udiv i32 %clock8.0.i.i, 10
  %conv202.i.i = trunc i32 %div201.i.i to i16
  %176 = call i16 @llvm.bswap.i16(i16 %conv202.i.i) #7
  %177 = ptrtoint ptr %args.i.i to i32
  call void @__asan_store2_noabort(i32 %177)
  store i16 %176, ptr %args.i.i, align 8
  %encoder_id203.i.i = getelementptr inbounds %struct.radeon_encoder, ptr %72, i32 0, i32 2
  %178 = ptrtoint ptr %encoder_id203.i.i to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load i32, ptr %encoder_id203.i.i, align 4
  %conv204.i.i = trunc i32 %179 to i8
  %ucTransmitterID.i.i = getelementptr inbounds %struct._ADJUST_DISPLAY_PLL_PARAMETERS, ptr %args.i.i, i32 0, i32 1
  %180 = ptrtoint ptr %ucTransmitterID.i.i to i32
  call void @__asan_store1_noabort(i32 %180)
  store i8 %conv204.i.i, ptr %ucTransmitterID.i.i, align 2
  %conv205.i.i = trunc i32 %call6.i.i to i8
  %ucEncodeMode.i.i = getelementptr inbounds %struct._ADJUST_DISPLAY_PLL_PARAMETERS, ptr %args.i.i, i32 0, i32 2
  %181 = ptrtoint ptr %ucEncodeMode.i.i to i32
  call void @__asan_store1_noabort(i32 %181)
  store i8 %conv205.i.i, ptr %ucEncodeMode.i.i, align 1
  %182 = ptrtoint ptr %ss_enabled.i to i32
  call void @__asan_load1_noabort(i32 %182)
  %183 = load i8, ptr %ss_enabled.i, align 4, !range !37
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %183)
  %tobool207.not.i.i = icmp eq i8 %183, 0
  br i1 %tobool207.not.i.i, label %sw.bb200.i.i.if.end217.i.i_crit_edge, label %land.lhs.true209.i.i

sw.bb200.i.i.if.end217.i.i_crit_edge:             ; preds = %sw.bb200.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end217.i.i

land.lhs.true209.i.i:                             ; preds = %sw.bb200.i.i
  %ss210.i.i = getelementptr inbounds %struct.radeon_crtc, ptr %crtc, i32 0, i32 27
  %184 = ptrtoint ptr %ss210.i.i to i32
  call void @__asan_load2_noabort(i32 %184)
  %185 = load i16, ptr %ss210.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %185)
  %tobool212.not.i.i = icmp eq i16 %185, 0
  br i1 %tobool212.not.i.i, label %land.lhs.true209.i.i.if.end217.i.i_crit_edge, label %if.then213.i.i

land.lhs.true209.i.i.if.end217.i.i_crit_edge:     ; preds = %land.lhs.true209.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end217.i.i

if.then213.i.i:                                   ; preds = %land.lhs.true209.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %186 = ptrtoint ptr %164 to i32
  call void @__asan_load1_noabort(i32 %186)
  %187 = load i8, ptr %164, align 4
  %188 = or i8 %187, 16
  store i8 %188, ptr %164, align 4
  br label %if.end217.i.i

if.end217.i.i:                                    ; preds = %if.then213.i.i, %land.lhs.true209.i.i.if.end217.i.i_crit_edge, %sw.bb200.i.i.if.end217.i.i_crit_edge
  %189 = ptrtoint ptr %mode_info.i.i to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %mode_info.i.i, align 4
  %call220.i.i = call i32 @atom_execute_table(ptr noundef %190, i32 noundef 17, ptr noundef nonnull %args.i.i) #7
  %191 = ptrtoint ptr %args.i.i to i32
  call void @__asan_load2_noabort(i32 %191)
  %192 = load i16, ptr %args.i.i, align 8
  %193 = call i16 @llvm.bswap.i16(i16 %192) #7
  %conv222.i.i = zext i16 %193 to i32
  br label %cleanup.i.i

sw.bb224.i.i:                                     ; preds = %sw.bb198.i.i
  %div225.i.i = udiv i32 %clock8.0.i.i, 10
  %conv226.i.i = trunc i32 %div225.i.i to i16
  %194 = call i16 @llvm.bswap.i16(i16 %conv226.i.i) #7
  %195 = ptrtoint ptr %args.i.i to i32
  call void @__asan_store2_noabort(i32 %195)
  store i16 %194, ptr %args.i.i, align 8
  %encoder_id228.i.i = getelementptr inbounds %struct.radeon_encoder, ptr %72, i32 0, i32 2
  %196 = ptrtoint ptr %encoder_id228.i.i to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load i32, ptr %encoder_id228.i.i, align 4
  %conv229.i.i = trunc i32 %197 to i8
  %ucTransmitterID230.i.i = getelementptr inbounds %struct._ADJUST_DISPLAY_PLL_INPUT_PARAMETERS_V3, ptr %args.i.i, i32 0, i32 1
  %198 = ptrtoint ptr %ucTransmitterID230.i.i to i32
  call void @__asan_store1_noabort(i32 %198)
  store i8 %conv229.i.i, ptr %ucTransmitterID230.i.i, align 2
  %conv231.i.i = trunc i32 %call6.i.i to i8
  %ucEncodeMode232.i.i = getelementptr inbounds %struct._ADJUST_DISPLAY_PLL_INPUT_PARAMETERS_V3, ptr %args.i.i, i32 0, i32 2
  %199 = ptrtoint ptr %ucEncodeMode232.i.i to i32
  call void @__asan_store1_noabort(i32 %199)
  store i8 %conv231.i.i, ptr %ucEncodeMode232.i.i, align 1
  %200 = ptrtoint ptr %164 to i32
  call void @__asan_store1_noabort(i32 %200)
  store i8 0, ptr %164, align 4
  %201 = ptrtoint ptr %ss_enabled.i to i32
  call void @__asan_load1_noabort(i32 %201)
  %202 = load i8, ptr %ss_enabled.i, align 4, !range !37
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %202)
  %tobool234.not.i.i = icmp eq i8 %202, 0
  br i1 %tobool234.not.i.i, label %sw.bb224.i.i.if.end246.i.i_crit_edge, label %land.lhs.true236.i.i

sw.bb224.i.i.if.end246.i.i_crit_edge:             ; preds = %sw.bb224.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end246.i.i

land.lhs.true236.i.i:                             ; preds = %sw.bb224.i.i
  %ss237.i.i = getelementptr inbounds %struct.radeon_crtc, ptr %crtc, i32 0, i32 27
  %203 = ptrtoint ptr %ss237.i.i to i32
  call void @__asan_load2_noabort(i32 %203)
  %204 = load i16, ptr %ss237.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %204)
  %tobool240.not.i.i = icmp eq i16 %204, 0
  br i1 %tobool240.not.i.i, label %land.lhs.true236.i.i.if.end246.i.i_crit_edge, label %if.then241.i.i

land.lhs.true236.i.i.if.end246.i.i_crit_edge:     ; preds = %land.lhs.true236.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end246.i.i

if.then241.i.i:                                   ; preds = %land.lhs.true236.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %205 = ptrtoint ptr %164 to i32
  call void @__asan_store1_noabort(i32 %205)
  store i8 16, ptr %164, align 4
  br label %if.end246.i.i

if.end246.i.i:                                    ; preds = %if.then241.i.i, %land.lhs.true236.i.i.if.end246.i.i_crit_edge, %sw.bb224.i.i.if.end246.i.i_crit_edge
  %206 = zext i32 %call6.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %206, ptr @__sancov_gen_cov_switch_values.40)
  switch i32 %call6.i.i, label %if.else260.i.i [
    i32 0, label %if.end246.i.i.if.then252.i.i_crit_edge
    i32 5, label %if.end246.i.i.if.then252.i.i_crit_edge124
  ]

if.end246.i.i.if.then252.i.i_crit_edge124:        ; preds = %if.end246.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then252.i.i

if.end246.i.i.if.then252.i.i_crit_edge:           ; preds = %if.end246.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then252.i.i

if.then252.i.i:                                   ; preds = %if.end246.i.i.if.then252.i.i_crit_edge, %if.end246.i.i.if.then252.i.i_crit_edge124
  %207 = ptrtoint ptr %164 to i32
  call void @__asan_load1_noabort(i32 %207)
  %208 = load i8, ptr %164, align 4
  %209 = or i8 %208, 32
  store i8 %209, ptr %164, align 4
  %div257.i.i = udiv i32 %dp_clock.1.i.i, 10
  %conv258.i.i = trunc i32 %div257.i.i to i16
  %210 = call i16 @llvm.bswap.i16(i16 %conv258.i.i) #7
  %211 = ptrtoint ptr %args.i.i to i32
  call void @__asan_store2_noabort(i32 %211)
  store i16 %210, ptr %args.i.i, align 8
  br label %if.end281.i.i

if.else260.i.i:                                   ; preds = %if.end246.i.i
  %212 = ptrtoint ptr %devices.i.i to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load i32, ptr %devices.i.i, align 4
  %and262.i.i = and i32 %213, 3784
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and262.i.i)
  %tobool263.not.i.i = icmp eq i32 %and262.i.i, 0
  br i1 %tobool263.not.i.i, label %if.else260.i.i.if.end281.i.i_crit_edge, label %if.then264.i.i

if.else260.i.i.if.end281.i.i_crit_edge:           ; preds = %if.else260.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end281.i.i

if.then264.i.i:                                   ; preds = %if.else260.i.i
  %enc_priv265.i.i = getelementptr inbounds %struct.radeon_encoder, ptr %72, i32 0, i32 12
  %214 = ptrtoint ptr %enc_priv265.i.i to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load ptr, ptr %enc_priv265.i.i, align 4
  %coherent_mode.i.i = getelementptr inbounds %struct.radeon_encoder_atom_dig, ptr %215, i32 0, i32 1
  %216 = ptrtoint ptr %coherent_mode.i.i to i32
  call void @__asan_load1_noabort(i32 %216)
  %217 = load i8, ptr %coherent_mode.i.i, align 1, !range !37
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %217)
  %tobool266.not.i.i = icmp eq i8 %217, 0
  br i1 %tobool266.not.i.i, label %if.then264.i.i.if.end272.i.i_crit_edge, label %if.then267.i.i

if.then264.i.i.if.end272.i.i_crit_edge:           ; preds = %if.then264.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end272.i.i

if.then267.i.i:                                   ; preds = %if.then264.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %218 = ptrtoint ptr %164 to i32
  call void @__asan_load1_noabort(i32 %218)
  %219 = load i8, ptr %164, align 4
  %220 = or i8 %219, 32
  store i8 %220, ptr %164, align 4
  br label %if.end272.i.i

if.end272.i.i:                                    ; preds = %if.then267.i.i, %if.then264.i.i.if.end272.i.i_crit_edge
  br i1 %call12.i.i, label %if.then274.i.i, label %if.end272.i.i.if.end281.i.i_crit_edge

if.end272.i.i.if.end281.i.i_crit_edge:            ; preds = %if.end272.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end281.i.i

if.then274.i.i:                                   ; preds = %if.end272.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %221 = ptrtoint ptr %164 to i32
  call void @__asan_load1_noabort(i32 %221)
  %222 = load i8, ptr %164, align 4
  %223 = or i8 %222, 64
  store i8 %223, ptr %164, align 4
  br label %if.end281.i.i

if.end281.i.i:                                    ; preds = %if.then274.i.i, %if.end272.i.i.if.end281.i.i_crit_edge, %if.else260.i.i.if.end281.i.i_crit_edge, %if.then252.i.i
  %call282.i.i = call zeroext i16 @radeon_encoder_get_dp_bridge_encoder_id(ptr noundef %72) #7
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %call282.i.i)
  %cmp284.not.i.i = icmp eq i16 %call282.i.i, 0
  br i1 %cmp284.not.i.i, label %if.end281.i.i.if.end291.i.i_crit_edge, label %if.then286.i.i

if.end281.i.i.if.end291.i.i_crit_edge:            ; preds = %if.end281.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end291.i.i

if.then286.i.i:                                   ; preds = %if.end281.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %call287.i.i = call zeroext i16 @radeon_encoder_get_dp_bridge_encoder_id(ptr noundef %72) #7
  %conv288.i.i = trunc i16 %call287.i.i to i8
  br label %if.end291.i.i

if.end291.i.i:                                    ; preds = %if.then286.i.i, %if.end281.i.i.if.end291.i.i_crit_edge
  %conv288.sink.i.i = phi i8 [ %conv288.i.i, %if.then286.i.i ], [ 0, %if.end281.i.i.if.end291.i.i_crit_edge ]
  %224 = ptrtoint ptr %165 to i32
  call void @__asan_store1_noabort(i32 %224)
  store i8 %conv288.sink.i.i, ptr %165, align 1
  %225 = ptrtoint ptr %mode_info.i.i to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load ptr, ptr %mode_info.i.i, align 4
  %call294.i.i = call i32 @atom_execute_table(ptr noundef %226, i32 noundef 17, ptr noundef nonnull %args.i.i) #7
  %227 = ptrtoint ptr %args.i.i to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load i32, ptr %args.i.i, align 8
  %229 = call i32 @llvm.bswap.i32(i32 %228) #7
  %230 = ptrtoint ptr %164 to i32
  call void @__asan_load1_noabort(i32 %230)
  %231 = load i8, ptr %164, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %231)
  %tobool296.not.i.i = icmp eq i8 %231, 0
  br i1 %tobool296.not.i.i, label %if.end291.i.i.if.end305.i.i_crit_edge, label %if.then297.i.i

if.end291.i.i.if.end305.i.i_crit_edge:            ; preds = %if.end291.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end305.i.i

if.then297.i.i:                                   ; preds = %if.end291.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %232 = ptrtoint ptr %pll_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load i32, ptr %pll_flags.i.i, align 8
  %or301.i.i = or i32 %233, 1028
  store i32 %or301.i.i, ptr %pll_flags.i.i, align 8
  %conv303.i.i = zext i8 %231 to i32
  %pll_reference_div304.i.i = getelementptr inbounds %struct.radeon_crtc, ptr %crtc, i32 0, i32 31
  %234 = ptrtoint ptr %pll_reference_div304.i.i to i32
  call void @__asan_store4_noabort(i32 %234)
  store i32 %conv303.i.i, ptr %pll_reference_div304.i.i, align 8
  br label %if.end305.i.i

if.end305.i.i:                                    ; preds = %if.then297.i.i, %if.end291.i.i.if.end305.i.i_crit_edge
  %235 = ptrtoint ptr %165 to i32
  call void @__asan_load1_noabort(i32 %235)
  %236 = load i8, ptr %165, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %236)
  %tobool306.not.i.i = icmp eq i8 %236, 0
  br i1 %tobool306.not.i.i, label %if.end305.i.i.cleanup.i.i_crit_edge, label %if.then307.i.i

if.end305.i.i.cleanup.i.i_crit_edge:              ; preds = %if.end305.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.i.i

if.then307.i.i:                                   ; preds = %if.end305.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %237 = ptrtoint ptr %pll_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load i32, ptr %pll_flags.i.i, align 8
  %or311.i.i = or i32 %238, 5120
  store i32 %or311.i.i, ptr %pll_flags.i.i, align 8
  %conv313.i.i = zext i8 %236 to i32
  %pll_post_div.i.i = getelementptr inbounds %struct.radeon_crtc, ptr %crtc, i32 0, i32 32
  %239 = ptrtoint ptr %pll_post_div.i.i to i32
  call void @__asan_store4_noabort(i32 %239)
  store i32 %conv313.i.i, ptr %pll_post_div.i.i, align 4
  br label %cleanup.i.i

sw.default319.i.i:                                ; preds = %if.end196.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv197.i.i = zext i8 %172 to i32
  %240 = ptrtoint ptr %crev.i.i to i32
  call void @__asan_load1_noabort(i32 %240)
  %241 = load i8, ptr %crev.i.i, align 1
  br label %cleanup.thread.sink.split.i.i

cleanup.thread.sink.split.i.i:                    ; preds = %sw.default319.i.i, %sw.bb198.i.i.cleanup.thread.sink.split.i.i_crit_edge
  %.sink458.i.i = phi i8 [ %241, %sw.default319.i.i ], [ %174, %sw.bb198.i.i.cleanup.thread.sink.split.i.i_crit_edge ]
  %.sink457.i.i = phi i32 [ %conv197.i.i, %sw.default319.i.i ], [ 1, %sw.bb198.i.i.cleanup.thread.sink.split.i.i_crit_edge ]
  %conv199.i.i = zext i8 %.sink458.i.i to i32
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.10, i32 noundef %.sink457.i.i, i32 noundef %conv199.i.i) #7
  br label %cleanup.thread.i.i

cleanup.thread.i.i:                               ; preds = %cleanup.thread.sink.split.i.i, %if.then193.i.i.cleanup.thread.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %crev.i.i) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %frev.i.i) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %args.i.i) #7
  br label %atombios_crtc_prepare_pll.exit

cleanup.i.i:                                      ; preds = %if.then307.i.i, %if.end305.i.i.cleanup.i.i_crit_edge, %if.end217.i.i
  %adjusted_clock.2.in.i.i = phi i32 [ %229, %if.then307.i.i ], [ %229, %if.end305.i.i.cleanup.i.i_crit_edge ], [ %conv222.i.i, %if.end217.i.i ]
  %adjusted_clock.2.i.i = mul i32 %adjusted_clock.2.in.i.i, 10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %crev.i.i) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %frev.i.i) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %args.i.i) #7
  br label %atombios_crtc_prepare_pll.exit

atombios_crtc_prepare_pll.exit:                   ; preds = %cleanup.i.i, %cleanup.thread.i.i, %if.end189.i.i.atombios_crtc_prepare_pll.exit_crit_edge
  %retval.1.i.i = phi i32 [ %adjusted_clock.1.i.i, %cleanup.thread.i.i ], [ %adjusted_clock.2.i.i, %cleanup.i.i ], [ %adjusted_clock.1.i.i, %if.end189.i.i.atombios_crtc_prepare_pll.exit_crit_edge ]
  %adjusted_clock.i = getelementptr inbounds %struct.radeon_crtc, ptr %crtc, i32 0, i32 29
  %242 = ptrtoint ptr %adjusted_clock.i to i32
  call void @__asan_store4_noabort(i32 %242)
  store i32 %retval.1.i.i, ptr %adjusted_clock.i, align 8
  %243 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load ptr, ptr %crtc, align 8
  %dev_private.i74 = getelementptr inbounds %struct.drm_device, ptr %244, i32 0, i32 5
  %245 = ptrtoint ptr %dev_private.i74 to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load ptr, ptr %dev_private.i74, align 4
  %247 = ptrtoint ptr %encoder15 to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load ptr, ptr %encoder15, align 4
  %family.i76 = getelementptr inbounds %struct.radeon_device, ptr %246, i32 0, i32 6
  %249 = ptrtoint ptr %family.i76 to i32
  call void @__asan_load4_noabort(i32 %249)
  %250 = load i32, ptr %family.i76, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 56, i32 %250)
  %cmp.i = icmp ugt i32 %250, 56
  br i1 %cmp.i, label %if.then.i78, label %if.else50.i

if.then.i78:                                      ; preds = %atombios_crtc_prepare_pll.exit
  %call.i77 = call i32 @atombios_get_encoder_mode(ptr noundef %248) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i77)
  %cmp6.i = icmp eq i32 %call.i77, 0
  br i1 %cmp6.i, label %if.then.i78.if.then10.i82_crit_edge, label %lor.lhs.false.i80

if.then.i78.if.then10.i82_crit_edge:              ; preds = %if.then.i78
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then10.i82

lor.lhs.false.i80:                                ; preds = %if.then.i78
  %251 = ptrtoint ptr %encoder15 to i32
  call void @__asan_load4_noabort(i32 %251)
  %252 = load ptr, ptr %encoder15, align 4
  %call8.i79 = call i32 @atombios_get_encoder_mode(ptr noundef %252) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %call8.i79)
  %cmp9.i = icmp eq i32 %call8.i79, 5
  br i1 %cmp9.i, label %lor.lhs.false.i80.if.then10.i82_crit_edge, label %if.else16.i

lor.lhs.false.i80.if.then10.i82_crit_edge:        ; preds = %lor.lhs.false.i80
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then10.i82

if.then10.i82:                                    ; preds = %lor.lhs.false.i80.if.then10.i82_crit_edge, %if.then.i78.if.then10.i82_crit_edge
  %dp_extclk.i = getelementptr inbounds %struct.radeon_device, ptr %246, i32 0, i32 41, i32 9
  %253 = ptrtoint ptr %dp_extclk.i to i32
  call void @__asan_load4_noabort(i32 %253)
  %254 = load i32, ptr %dp_extclk.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %254)
  %tobool.not.i81 = icmp eq i32 %254, 0
  br i1 %tobool.not.i81, label %if.else.i83, label %if.then10.i82.radeon_atom_pick_pll.exit.thread101_crit_edge

if.then10.i82.radeon_atom_pick_pll.exit.thread101_crit_edge: ; preds = %if.then10.i82
  call void @__sanitizer_cov_trace_pc() #9
  br label %radeon_atom_pick_pll.exit.thread101

if.else.i83:                                      ; preds = %if.then10.i82
  %255 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %255)
  %256 = load ptr, ptr %crtc, align 8
  %crtc_list.i.i = getelementptr inbounds %struct.drm_device, ptr %256, i32 0, i32 30, i32 20
  %257 = ptrtoint ptr %crtc_list.i.i to i32
  call void @__asan_load4_noabort(i32 %257)
  %.pn53.i.i = load ptr, ptr %crtc_list.i.i, align 4
  %cmp.not54.i.i = icmp eq ptr %.pn53.i.i, %crtc_list.i.i
  br i1 %cmp.not54.i.i, label %if.else.i83.if.end21.i_crit_edge, label %for.body.lr.ph.i.i

if.else.i83.if.end21.i_crit_edge:                 ; preds = %if.else.i83
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end21.i

for.body.lr.ph.i.i:                               ; preds = %if.else.i83
  %dev_private.i.i84 = getelementptr inbounds %struct.drm_device, ptr %256, i32 0, i32 5
  %258 = ptrtoint ptr %dev_private.i.i84 to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load ptr, ptr %dev_private.i.i84, align 4
  %family.i.i85 = getelementptr inbounds %struct.radeon_device, ptr %259, i32 0, i32 6
  %flags.i.i86 = getelementptr inbounds %struct.radeon_device, ptr %259, i32 0, i32 7
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %.pn55.i.i = phi ptr [ %.pn53.i.i, %for.body.lr.ph.i.i ], [ %.pn.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %test_crtc.0.i.i = getelementptr i8, ptr %.pn55.i.i, i32 -8
  %cmp4.i.i = icmp eq ptr %test_crtc.0.i.i, %crtc
  br i1 %cmp4.i.i, label %for.body.i.i.for.inc.i.i_crit_edge, label %if.end.i.i88

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i.i

if.end.i.i88:                                     ; preds = %for.body.i.i
  %encoder.i.i = getelementptr i8, ptr %.pn55.i.i, i32 1228
  %260 = ptrtoint ptr %encoder.i.i to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load ptr, ptr %encoder.i.i, align 4
  %tobool.not.i.i87 = icmp eq ptr %261, null
  br i1 %tobool.not.i.i87, label %if.end.i.i88.for.inc.i.i_crit_edge, label %land.lhs.true.i.i90

if.end.i.i88.for.inc.i.i_crit_edge:               ; preds = %if.end.i.i88
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i.i

land.lhs.true.i.i90:                              ; preds = %if.end.i.i88
  %call.i.i89 = call i32 @atombios_get_encoder_mode(ptr noundef nonnull %261) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i89)
  %cmp9.i.i = icmp eq i32 %call.i.i89, 0
  br i1 %cmp9.i.i, label %land.lhs.true.i.i90.if.then13.i.i_crit_edge, label %lor.lhs.false.i.i

land.lhs.true.i.i90.if.then13.i.i_crit_edge:      ; preds = %land.lhs.true.i.i90
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then13.i.i

lor.lhs.false.i.i:                                ; preds = %land.lhs.true.i.i90
  %262 = ptrtoint ptr %encoder.i.i to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load ptr, ptr %encoder.i.i, align 4
  %call11.i.i = call i32 @atombios_get_encoder_mode(ptr noundef %263) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %call11.i.i)
  %cmp12.i.i = icmp eq i32 %call11.i.i, 5
  br i1 %cmp12.i.i, label %lor.lhs.false.i.i.if.then13.i.i_crit_edge, label %lor.lhs.false.i.i.for.inc.i.i_crit_edge

lor.lhs.false.i.i.for.inc.i.i_crit_edge:          ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i.i

lor.lhs.false.i.i.if.then13.i.i_crit_edge:        ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then13.i.i

if.then13.i.i:                                    ; preds = %lor.lhs.false.i.i.if.then13.i.i_crit_edge, %land.lhs.true.i.i90.if.then13.i.i_crit_edge
  %264 = ptrtoint ptr %family.i.i85 to i32
  call void @__asan_load4_noabort(i32 %264)
  %265 = load i32, ptr %family.i.i85, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 50, i32 %265)
  %cmp14.i.i = icmp ugt i32 %265, 50
  br i1 %cmp14.i.i, label %land.lhs.true15.i.i, label %if.then13.i.i.if.end23.i.i_crit_edge

if.then13.i.i.if.end23.i.i_crit_edge:             ; preds = %if.then13.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end23.i.i

land.lhs.true15.i.i:                              ; preds = %if.then13.i.i
  %266 = ptrtoint ptr %flags.i.i86 to i32
  call void @__asan_load4_noabort(i32 %266)
  %267 = load i32, ptr %flags.i.i86, align 8
  %and.i.i91 = and i32 %267, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i91)
  %tobool16.not.i.i = icmp eq i32 %and.i.i91, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 56, i32 %265)
  %cmp19.i.i = icmp ugt i32 %265, 56
  %or.cond.i.i92 = select i1 %tobool16.not.i.i, i1 true, i1 %cmp19.i.i
  br i1 %or.cond.i.i92, label %land.lhs.true15.i.i.if.end23.i.i_crit_edge, label %land.lhs.true20.i.i

land.lhs.true15.i.i.if.end23.i.i_crit_edge:       ; preds = %land.lhs.true15.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end23.i.i

land.lhs.true20.i.i:                              ; preds = %land.lhs.true15.i.i
  %pll_id.i.i = getelementptr i8, ptr %.pn55.i.i, i32 1172
  %268 = ptrtoint ptr %pll_id.i.i to i32
  call void @__asan_load4_noabort(i32 %268)
  %269 = load i32, ptr %pll_id.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %269)
  %cmp21.i.i = icmp eq i32 %269, 1
  br i1 %cmp21.i.i, label %land.lhs.true20.i.i.for.inc.i.i_crit_edge, label %land.lhs.true20.i.i.if.end23.i.i_crit_edge

land.lhs.true20.i.i.if.end23.i.i_crit_edge:       ; preds = %land.lhs.true20.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end23.i.i

land.lhs.true20.i.i.for.inc.i.i_crit_edge:        ; preds = %land.lhs.true20.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i.i

if.end23.i.i:                                     ; preds = %land.lhs.true20.i.i.if.end23.i.i_crit_edge, %land.lhs.true15.i.i.if.end23.i.i_crit_edge, %if.then13.i.i.if.end23.i.i_crit_edge
  %pll_id24.i.i = getelementptr i8, ptr %.pn55.i.i, i32 1172
  %270 = ptrtoint ptr %pll_id24.i.i to i32
  call void @__asan_load4_noabort(i32 %270)
  %271 = load i32, ptr %pll_id24.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %271)
  %cmp25.not.i.i = icmp eq i32 %271, 255
  br i1 %cmp25.not.i.i, label %if.end23.i.i.for.inc.i.i_crit_edge, label %if.end23.i.i.radeon_atom_pick_pll.exit.thread_crit_edge

if.end23.i.i.radeon_atom_pick_pll.exit.thread_crit_edge: ; preds = %if.end23.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %radeon_atom_pick_pll.exit.thread

if.end23.i.i.for.inc.i.i_crit_edge:               ; preds = %if.end23.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %if.end23.i.i.for.inc.i.i_crit_edge, %land.lhs.true20.i.i.for.inc.i.i_crit_edge, %lor.lhs.false.i.i.for.inc.i.i_crit_edge, %if.end.i.i88.for.inc.i.i_crit_edge, %for.body.i.i.for.inc.i.i_crit_edge
  %272 = ptrtoint ptr %.pn55.i.i to i32
  call void @__asan_load4_noabort(i32 %272)
  %.pn.i.i = load ptr, ptr %.pn55.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %.pn.i.i, %crtc_list.i.i
  br i1 %cmp.not.i.i, label %for.inc.i.i.if.end21.i_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i

for.inc.i.i.if.end21.i_crit_edge:                 ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end21.i

if.else16.i:                                      ; preds = %lor.lhs.false.i80
  %call17.i = call fastcc i32 @radeon_get_shared_nondp_ppll(ptr noundef %crtc) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %call17.i)
  %cmp18.not.i = icmp eq i32 %call17.i, 255
  br i1 %cmp18.not.i, label %if.else16.i.if.end21.i_crit_edge, label %if.else16.i.radeon_atom_pick_pll.exit.thread_crit_edge

if.else16.i.radeon_atom_pick_pll.exit.thread_crit_edge: ; preds = %if.else16.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %radeon_atom_pick_pll.exit.thread

if.else16.i.if.end21.i_crit_edge:                 ; preds = %if.else16.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end21.i

if.end21.i:                                       ; preds = %if.else16.i.if.end21.i_crit_edge, %for.inc.i.i.if.end21.i_crit_edge, %if.else.i83.if.end21.i_crit_edge
  %273 = ptrtoint ptr %family.i76 to i32
  call void @__asan_load4_noabort(i32 %273)
  %274 = load i32, ptr %family.i76, align 4
  %275 = zext i32 %274 to i64
  call void @__sanitizer_cov_trace_switch(i64 %275, ptr @__sancov_gen_cov_switch_values.41)
  switch i32 %274, label %if.else36.i [
    i32 59, label %if.end21.i.if.then27.i93_crit_edge
    i32 61, label %if.end21.i.if.then27.i93_crit_edge125
  ]

if.end21.i.if.then27.i93_crit_edge125:            ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then27.i93

if.end21.i.if.then27.i93_crit_edge:               ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then27.i93

if.then27.i93:                                    ; preds = %if.end21.i.if.then27.i93_crit_edge, %if.end21.i.if.then27.i93_crit_edge125
  %276 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %276)
  %277 = load ptr, ptr %crtc, align 8
  %crtc_list.i254.i = getelementptr inbounds %struct.drm_device, ptr %277, i32 0, i32 30, i32 20
  %278 = ptrtoint ptr %crtc_list.i254.i to i32
  call void @__asan_load4_noabort(i32 %278)
  %.pn24.i.i = load ptr, ptr %crtc_list.i254.i, align 4
  %cmp.not25.i.i = icmp eq ptr %.pn24.i.i, %crtc_list.i254.i
  br i1 %cmp.not25.i.i, label %if.then27.i93.radeon_atom_pick_pll.exit.thread_crit_edge, label %if.then27.i93.for.body.i257.i_crit_edge

if.then27.i93.for.body.i257.i_crit_edge:          ; preds = %if.then27.i93
  br label %for.body.i257.i

if.then27.i93.radeon_atom_pick_pll.exit.thread_crit_edge: ; preds = %if.then27.i93
  call void @__sanitizer_cov_trace_pc() #9
  br label %radeon_atom_pick_pll.exit.thread

for.body.i257.i:                                  ; preds = %for.inc.i262.i.for.body.i257.i_crit_edge, %if.then27.i93.for.body.i257.i_crit_edge
  %.pn27.i.i = phi ptr [ %.pn.i260.i, %for.inc.i262.i.for.body.i257.i_crit_edge ], [ %.pn24.i.i, %if.then27.i93.for.body.i257.i_crit_edge ]
  %pll_in_use.026.i.i = phi i32 [ %pll_in_use.1.i.i, %for.inc.i262.i.for.body.i257.i_crit_edge ], [ 0, %if.then27.i93.for.body.i257.i_crit_edge ]
  %test_crtc.0.i255.i = getelementptr i8, ptr %.pn27.i.i, i32 -8
  %cmp4.i256.i = icmp eq ptr %test_crtc.0.i255.i, %crtc
  br i1 %cmp4.i256.i, label %for.body.i257.i.for.inc.i262.i_crit_edge, label %if.end.i259.i

for.body.i257.i.for.inc.i262.i_crit_edge:         ; preds = %for.body.i257.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i262.i

if.end.i259.i:                                    ; preds = %for.body.i257.i
  %pll_id.i258.i = getelementptr i8, ptr %.pn27.i.i, i32 1172
  %279 = ptrtoint ptr %pll_id.i258.i to i32
  call void @__asan_load4_noabort(i32 %279)
  %280 = load i32, ptr %pll_id.i258.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %280)
  %cmp8.not.i.i = icmp eq i32 %280, 255
  br i1 %cmp8.not.i.i, label %if.end.i259.i.for.inc.i262.i_crit_edge, label %if.then9.i.i

if.end.i259.i.for.inc.i262.i_crit_edge:           ; preds = %if.end.i259.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i262.i

if.then9.i.i:                                     ; preds = %if.end.i259.i
  call void @__sanitizer_cov_trace_pc() #9
  %shl.i.i = shl nuw i32 1, %280
  %or.i.i = or i32 %shl.i.i, %pll_in_use.026.i.i
  br label %for.inc.i262.i

for.inc.i262.i:                                   ; preds = %if.then9.i.i, %if.end.i259.i.for.inc.i262.i_crit_edge, %for.body.i257.i.for.inc.i262.i_crit_edge
  %pll_in_use.1.i.i = phi i32 [ %pll_in_use.026.i.i, %for.body.i257.i.for.inc.i262.i_crit_edge ], [ %or.i.i, %if.then9.i.i ], [ %pll_in_use.026.i.i, %if.end.i259.i.for.inc.i262.i_crit_edge ]
  %281 = ptrtoint ptr %.pn27.i.i to i32
  call void @__asan_load4_noabort(i32 %281)
  %.pn.i260.i = load ptr, ptr %.pn27.i.i, align 4
  %cmp.not.i261.i = icmp eq ptr %.pn.i260.i, %crtc_list.i254.i
  br i1 %cmp.not.i261.i, label %radeon_get_pll_use_mask.exit.i, label %for.inc.i262.i.for.body.i257.i_crit_edge

for.inc.i262.i.for.body.i257.i_crit_edge:         ; preds = %for.inc.i262.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i257.i

radeon_get_pll_use_mask.exit.i:                   ; preds = %for.inc.i262.i
  %and.i94 = and i32 %pll_in_use.1.i.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i94)
  %tobool29.not.i = icmp eq i32 %and.i94, 0
  br i1 %tobool29.not.i, label %radeon_get_pll_use_mask.exit.i.radeon_atom_pick_pll.exit.thread_crit_edge, label %if.end31.i

radeon_get_pll_use_mask.exit.i.radeon_atom_pick_pll.exit.thread_crit_edge: ; preds = %radeon_get_pll_use_mask.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %radeon_atom_pick_pll.exit.thread

if.end31.i:                                       ; preds = %radeon_get_pll_use_mask.exit.i
  %and32.i = and i32 %pll_in_use.1.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and32.i)
  %tobool33.not.i = icmp eq i32 %and32.i, 0
  br i1 %tobool33.not.i, label %if.end31.i.radeon_atom_pick_pll.exit.thread_crit_edge, label %if.end31.i.radeon_atom_pick_pll.exit.thread101.sink.split_crit_edge

if.end31.i.radeon_atom_pick_pll.exit.thread101.sink.split_crit_edge: ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %radeon_atom_pick_pll.exit.thread101.sink.split

if.end31.i.radeon_atom_pick_pll.exit.thread_crit_edge: ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %radeon_atom_pick_pll.exit.thread

if.else36.i:                                      ; preds = %if.end21.i
  %282 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %282)
  %283 = load ptr, ptr %crtc, align 8
  %crtc_list.i263.i = getelementptr inbounds %struct.drm_device, ptr %283, i32 0, i32 30, i32 20
  %284 = ptrtoint ptr %crtc_list.i263.i to i32
  call void @__asan_load4_noabort(i32 %284)
  %.pn24.i264.i = load ptr, ptr %crtc_list.i263.i, align 4
  %cmp.not25.i265.i = icmp eq ptr %.pn24.i264.i, %crtc_list.i263.i
  br i1 %cmp.not25.i265.i, label %if.else36.i.radeon_atom_pick_pll.exit.thread_crit_edge, label %if.else36.i.for.body.i270.i_crit_edge

if.else36.i.for.body.i270.i_crit_edge:            ; preds = %if.else36.i
  br label %for.body.i270.i

if.else36.i.radeon_atom_pick_pll.exit.thread_crit_edge: ; preds = %if.else36.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %radeon_atom_pick_pll.exit.thread

for.body.i270.i:                                  ; preds = %for.inc.i280.i.for.body.i270.i_crit_edge, %if.else36.i.for.body.i270.i_crit_edge
  %.pn27.i266.i = phi ptr [ %.pn.i278.i, %for.inc.i280.i.for.body.i270.i_crit_edge ], [ %.pn24.i264.i, %if.else36.i.for.body.i270.i_crit_edge ]
  %pll_in_use.026.i267.i = phi i32 [ %pll_in_use.1.i277.i, %for.inc.i280.i.for.body.i270.i_crit_edge ], [ 0, %if.else36.i.for.body.i270.i_crit_edge ]
  %test_crtc.0.i268.i = getelementptr i8, ptr %.pn27.i266.i, i32 -8
  %cmp4.i269.i = icmp eq ptr %test_crtc.0.i268.i, %crtc
  br i1 %cmp4.i269.i, label %for.body.i270.i.for.inc.i280.i_crit_edge, label %if.end.i273.i

for.body.i270.i.for.inc.i280.i_crit_edge:         ; preds = %for.body.i270.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i280.i

if.end.i273.i:                                    ; preds = %for.body.i270.i
  %pll_id.i271.i = getelementptr i8, ptr %.pn27.i266.i, i32 1172
  %285 = ptrtoint ptr %pll_id.i271.i to i32
  call void @__asan_load4_noabort(i32 %285)
  %286 = load i32, ptr %pll_id.i271.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %286)
  %cmp8.not.i272.i = icmp eq i32 %286, 255
  br i1 %cmp8.not.i272.i, label %if.end.i273.i.for.inc.i280.i_crit_edge, label %if.then9.i276.i

if.end.i273.i.for.inc.i280.i_crit_edge:           ; preds = %if.end.i273.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i280.i

if.then9.i276.i:                                  ; preds = %if.end.i273.i
  call void @__sanitizer_cov_trace_pc() #9
  %shl.i274.i = shl nuw i32 1, %286
  %or.i275.i = or i32 %shl.i274.i, %pll_in_use.026.i267.i
  br label %for.inc.i280.i

for.inc.i280.i:                                   ; preds = %if.then9.i276.i, %if.end.i273.i.for.inc.i280.i_crit_edge, %for.body.i270.i.for.inc.i280.i_crit_edge
  %pll_in_use.1.i277.i = phi i32 [ %pll_in_use.026.i267.i, %for.body.i270.i.for.inc.i280.i_crit_edge ], [ %or.i275.i, %if.then9.i276.i ], [ %pll_in_use.026.i267.i, %if.end.i273.i.for.inc.i280.i_crit_edge ]
  %287 = ptrtoint ptr %.pn27.i266.i to i32
  call void @__asan_load4_noabort(i32 %287)
  %.pn.i278.i = load ptr, ptr %.pn27.i266.i, align 4
  %cmp.not.i279.i = icmp eq ptr %.pn.i278.i, %crtc_list.i263.i
  br i1 %cmp.not.i279.i, label %radeon_get_pll_use_mask.exit282.i, label %for.inc.i280.i.for.body.i270.i_crit_edge

for.inc.i280.i.for.body.i270.i_crit_edge:         ; preds = %for.inc.i280.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i270.i

radeon_get_pll_use_mask.exit282.i:                ; preds = %for.inc.i280.i
  %and38.i = and i32 %pll_in_use.1.i277.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and38.i)
  %tobool39.not.i = icmp eq i32 %and38.i, 0
  br i1 %tobool39.not.i, label %radeon_get_pll_use_mask.exit282.i.radeon_atom_pick_pll.exit.thread_crit_edge, label %if.end41.i

radeon_get_pll_use_mask.exit282.i.radeon_atom_pick_pll.exit.thread_crit_edge: ; preds = %radeon_get_pll_use_mask.exit282.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %radeon_atom_pick_pll.exit.thread

if.end41.i:                                       ; preds = %radeon_get_pll_use_mask.exit282.i
  %and42.i = and i32 %pll_in_use.1.i277.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and42.i)
  %tobool43.not.i = icmp eq i32 %and42.i, 0
  br i1 %tobool43.not.i, label %if.end41.i.radeon_atom_pick_pll.exit.thread_crit_edge, label %if.end45.i

if.end41.i.radeon_atom_pick_pll.exit.thread_crit_edge: ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %radeon_atom_pick_pll.exit.thread

if.end45.i:                                       ; preds = %if.end41.i
  %and46.i = and i32 %pll_in_use.1.i277.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and46.i)
  %tobool47.not.i = icmp eq i32 %and46.i, 0
  br i1 %tobool47.not.i, label %if.end45.i.radeon_atom_pick_pll.exit.thread_crit_edge, label %if.end45.i.radeon_atom_pick_pll.exit.thread101.sink.split_crit_edge

if.end45.i.radeon_atom_pick_pll.exit.thread101.sink.split_crit_edge: ; preds = %if.end45.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %radeon_atom_pick_pll.exit.thread101.sink.split

if.end45.i.radeon_atom_pick_pll.exit.thread_crit_edge: ; preds = %if.end45.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %radeon_atom_pick_pll.exit.thread

if.else50.i:                                      ; preds = %atombios_crtc_prepare_pll.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 50, i32 %250)
  %cmp52.i = icmp ugt i32 %250, 50
  br i1 %cmp52.i, label %land.lhs.true.i, label %if.else101.i

land.lhs.true.i:                                  ; preds = %if.else50.i
  %flags.i = getelementptr inbounds %struct.radeon_device, ptr %246, i32 0, i32 7
  %288 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %288)
  %289 = load i32, ptr %flags.i, align 8
  %and53.i = and i32 %289, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and53.i)
  %tobool54.not.i = icmp eq i32 %and53.i, 0
  br i1 %tobool54.not.i, label %land.lhs.true.i.land.lhs.true105.i_crit_edge, label %if.then55.i

land.lhs.true.i.land.lhs.true105.i_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true105.i

if.then55.i:                                      ; preds = %land.lhs.true.i
  %encoder_id.i = getelementptr inbounds %struct.radeon_encoder, ptr %248, i32 0, i32 2
  %290 = ptrtoint ptr %encoder_id.i to i32
  call void @__asan_load4_noabort(i32 %290)
  %291 = load i32, ptr %encoder_id.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 30, i32 %291)
  %cmp56.i = icmp eq i32 %291, 30
  br i1 %cmp56.i, label %land.lhs.true57.i, label %if.then55.i.if.else62.i_crit_edge

if.then55.i.if.else62.i_crit_edge:                ; preds = %if.then55.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else62.i

land.lhs.true57.i:                                ; preds = %if.then55.i
  %enc_priv.i95 = getelementptr inbounds %struct.radeon_encoder, ptr %248, i32 0, i32 12
  %292 = ptrtoint ptr %enc_priv.i95 to i32
  call void @__asan_load4_noabort(i32 %292)
  %293 = load ptr, ptr %enc_priv.i95, align 4
  %294 = ptrtoint ptr %293 to i32
  call void @__asan_load1_noabort(i32 %294)
  %295 = load i8, ptr %293, align 4, !range !37
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %295)
  %cmp59.i = icmp eq i8 %295, 0
  br i1 %cmp59.i, label %land.lhs.true57.i.radeon_atom_pick_pll.exit.thread_crit_edge, label %land.lhs.true57.i.if.else62.i_crit_edge

land.lhs.true57.i.if.else62.i_crit_edge:          ; preds = %land.lhs.true57.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else62.i

land.lhs.true57.i.radeon_atom_pick_pll.exit.thread_crit_edge: ; preds = %land.lhs.true57.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %radeon_atom_pick_pll.exit.thread

if.else62.i:                                      ; preds = %land.lhs.true57.i.if.else62.i_crit_edge, %if.then55.i.if.else62.i_crit_edge
  %call64.i = call i32 @atombios_get_encoder_mode(ptr noundef %248) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call64.i)
  %cmp65.i = icmp eq i32 %call64.i, 0
  br i1 %cmp65.i, label %if.else62.i.if.then72.i_crit_edge, label %lor.lhs.false67.i

if.else62.i.if.then72.i_crit_edge:                ; preds = %if.else62.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then72.i

lor.lhs.false67.i:                                ; preds = %if.else62.i
  %296 = ptrtoint ptr %encoder15 to i32
  call void @__asan_load4_noabort(i32 %296)
  %297 = load ptr, ptr %encoder15, align 4
  %call69.i = call i32 @atombios_get_encoder_mode(ptr noundef %297) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %call69.i)
  %cmp70.i = icmp eq i32 %call69.i, 5
  br i1 %cmp70.i, label %lor.lhs.false67.i.if.then72.i_crit_edge, label %if.else84.i

lor.lhs.false67.i.if.then72.i_crit_edge:          ; preds = %lor.lhs.false67.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then72.i

if.then72.i:                                      ; preds = %lor.lhs.false67.i.if.then72.i_crit_edge, %if.else62.i.if.then72.i_crit_edge
  %dp_extclk74.i = getelementptr inbounds %struct.radeon_device, ptr %246, i32 0, i32 41, i32 9
  %298 = ptrtoint ptr %dp_extclk74.i to i32
  call void @__asan_load4_noabort(i32 %298)
  %299 = load i32, ptr %dp_extclk74.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %299)
  %tobool75.not.i = icmp eq i32 %299, 0
  br i1 %tobool75.not.i, label %if.else77.i, label %if.then72.i.radeon_atom_pick_pll.exit.thread101_crit_edge

if.then72.i.radeon_atom_pick_pll.exit.thread101_crit_edge: ; preds = %if.then72.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %radeon_atom_pick_pll.exit.thread101

if.else77.i:                                      ; preds = %if.then72.i
  %300 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %300)
  %301 = load ptr, ptr %crtc, align 8
  %crtc_list.i283.i = getelementptr inbounds %struct.drm_device, ptr %301, i32 0, i32 30, i32 20
  %302 = ptrtoint ptr %crtc_list.i283.i to i32
  call void @__asan_load4_noabort(i32 %302)
  %.pn53.i284.i = load ptr, ptr %crtc_list.i283.i, align 4
  %cmp.not54.i285.i = icmp eq ptr %.pn53.i284.i, %crtc_list.i283.i
  br i1 %cmp.not54.i285.i, label %if.else77.i.if.end91.i_crit_edge, label %for.body.lr.ph.i289.i

if.else77.i.if.end91.i_crit_edge:                 ; preds = %if.else77.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end91.i

for.body.lr.ph.i289.i:                            ; preds = %if.else77.i
  %dev_private.i286.i = getelementptr inbounds %struct.drm_device, ptr %301, i32 0, i32 5
  %303 = ptrtoint ptr %dev_private.i286.i to i32
  call void @__asan_load4_noabort(i32 %303)
  %304 = load ptr, ptr %dev_private.i286.i, align 4
  %family.i287.i = getelementptr inbounds %struct.radeon_device, ptr %304, i32 0, i32 6
  %flags.i288.i = getelementptr inbounds %struct.radeon_device, ptr %304, i32 0, i32 7
  br label %for.body.i293.i

for.body.i293.i:                                  ; preds = %for.inc.i318.i.for.body.i293.i_crit_edge, %for.body.lr.ph.i289.i
  %.pn55.i290.i = phi ptr [ %.pn53.i284.i, %for.body.lr.ph.i289.i ], [ %.pn.i316.i, %for.inc.i318.i.for.body.i293.i_crit_edge ]
  %test_crtc.0.i291.i = getelementptr i8, ptr %.pn55.i290.i, i32 -8
  %cmp4.i292.i = icmp eq ptr %test_crtc.0.i291.i, %crtc
  br i1 %cmp4.i292.i, label %for.body.i293.i.for.inc.i318.i_crit_edge, label %if.end.i296.i

for.body.i293.i.for.inc.i318.i_crit_edge:         ; preds = %for.body.i293.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i318.i

if.end.i296.i:                                    ; preds = %for.body.i293.i
  %encoder.i294.i = getelementptr i8, ptr %.pn55.i290.i, i32 1228
  %305 = ptrtoint ptr %encoder.i294.i to i32
  call void @__asan_load4_noabort(i32 %305)
  %306 = load ptr, ptr %encoder.i294.i, align 4
  %tobool.not.i295.i = icmp eq ptr %306, null
  br i1 %tobool.not.i295.i, label %if.end.i296.i.for.inc.i318.i_crit_edge, label %land.lhs.true.i299.i

if.end.i296.i.for.inc.i318.i_crit_edge:           ; preds = %if.end.i296.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i318.i

land.lhs.true.i299.i:                             ; preds = %if.end.i296.i
  %call.i297.i = call i32 @atombios_get_encoder_mode(ptr noundef nonnull %306) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i297.i)
  %cmp9.i298.i = icmp eq i32 %call.i297.i, 0
  br i1 %cmp9.i298.i, label %land.lhs.true.i299.i.if.then13.i304.i_crit_edge, label %lor.lhs.false.i302.i

land.lhs.true.i299.i.if.then13.i304.i_crit_edge:  ; preds = %land.lhs.true.i299.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then13.i304.i

lor.lhs.false.i302.i:                             ; preds = %land.lhs.true.i299.i
  %307 = ptrtoint ptr %encoder.i294.i to i32
  call void @__asan_load4_noabort(i32 %307)
  %308 = load ptr, ptr %encoder.i294.i, align 4
  %call11.i300.i = call i32 @atombios_get_encoder_mode(ptr noundef %308) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %call11.i300.i)
  %cmp12.i301.i = icmp eq i32 %call11.i300.i, 5
  br i1 %cmp12.i301.i, label %lor.lhs.false.i302.i.if.then13.i304.i_crit_edge, label %lor.lhs.false.i302.i.for.inc.i318.i_crit_edge

lor.lhs.false.i302.i.for.inc.i318.i_crit_edge:    ; preds = %lor.lhs.false.i302.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i318.i

lor.lhs.false.i302.i.if.then13.i304.i_crit_edge:  ; preds = %lor.lhs.false.i302.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then13.i304.i

if.then13.i304.i:                                 ; preds = %lor.lhs.false.i302.i.if.then13.i304.i_crit_edge, %land.lhs.true.i299.i.if.then13.i304.i_crit_edge
  %309 = ptrtoint ptr %family.i287.i to i32
  call void @__asan_load4_noabort(i32 %309)
  %310 = load i32, ptr %family.i287.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 50, i32 %310)
  %cmp14.i303.i = icmp ugt i32 %310, 50
  br i1 %cmp14.i303.i, label %land.lhs.true15.i309.i, label %if.then13.i304.i.if.end23.i315.i_crit_edge

if.then13.i304.i.if.end23.i315.i_crit_edge:       ; preds = %if.then13.i304.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end23.i315.i

land.lhs.true15.i309.i:                           ; preds = %if.then13.i304.i
  %311 = ptrtoint ptr %flags.i288.i to i32
  call void @__asan_load4_noabort(i32 %311)
  %312 = load i32, ptr %flags.i288.i, align 8
  %and.i305.i = and i32 %312, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i305.i)
  %tobool16.not.i306.i = icmp eq i32 %and.i305.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 56, i32 %310)
  %cmp19.i307.i = icmp ugt i32 %310, 56
  %or.cond.i308.i = select i1 %tobool16.not.i306.i, i1 true, i1 %cmp19.i307.i
  br i1 %or.cond.i308.i, label %land.lhs.true15.i309.i.if.end23.i315.i_crit_edge, label %land.lhs.true20.i312.i

land.lhs.true15.i309.i.if.end23.i315.i_crit_edge: ; preds = %land.lhs.true15.i309.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end23.i315.i

land.lhs.true20.i312.i:                           ; preds = %land.lhs.true15.i309.i
  %pll_id.i310.i = getelementptr i8, ptr %.pn55.i290.i, i32 1172
  %313 = ptrtoint ptr %pll_id.i310.i to i32
  call void @__asan_load4_noabort(i32 %313)
  %314 = load i32, ptr %pll_id.i310.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %314)
  %cmp21.i311.i = icmp eq i32 %314, 1
  br i1 %cmp21.i311.i, label %land.lhs.true20.i312.i.for.inc.i318.i_crit_edge, label %land.lhs.true20.i312.i.if.end23.i315.i_crit_edge

land.lhs.true20.i312.i.if.end23.i315.i_crit_edge: ; preds = %land.lhs.true20.i312.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end23.i315.i

land.lhs.true20.i312.i.for.inc.i318.i_crit_edge:  ; preds = %land.lhs.true20.i312.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i318.i

if.end23.i315.i:                                  ; preds = %land.lhs.true20.i312.i.if.end23.i315.i_crit_edge, %land.lhs.true15.i309.i.if.end23.i315.i_crit_edge, %if.then13.i304.i.if.end23.i315.i_crit_edge
  %pll_id24.i313.i = getelementptr i8, ptr %.pn55.i290.i, i32 1172
  %315 = ptrtoint ptr %pll_id24.i313.i to i32
  call void @__asan_load4_noabort(i32 %315)
  %316 = load i32, ptr %pll_id24.i313.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %316)
  %cmp25.not.i314.i = icmp eq i32 %316, 255
  br i1 %cmp25.not.i314.i, label %if.end23.i315.i.for.inc.i318.i_crit_edge, label %if.end23.i315.i.radeon_atom_pick_pll.exit.thread_crit_edge

if.end23.i315.i.radeon_atom_pick_pll.exit.thread_crit_edge: ; preds = %if.end23.i315.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %radeon_atom_pick_pll.exit.thread

if.end23.i315.i.for.inc.i318.i_crit_edge:         ; preds = %if.end23.i315.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i318.i

for.inc.i318.i:                                   ; preds = %if.end23.i315.i.for.inc.i318.i_crit_edge, %land.lhs.true20.i312.i.for.inc.i318.i_crit_edge, %lor.lhs.false.i302.i.for.inc.i318.i_crit_edge, %if.end.i296.i.for.inc.i318.i_crit_edge, %for.body.i293.i.for.inc.i318.i_crit_edge
  %317 = ptrtoint ptr %.pn55.i290.i to i32
  call void @__asan_load4_noabort(i32 %317)
  %.pn.i316.i = load ptr, ptr %.pn55.i290.i, align 4
  %cmp.not.i317.i = icmp eq ptr %.pn.i316.i, %crtc_list.i283.i
  br i1 %cmp.not.i317.i, label %for.inc.i318.i.if.end91.i_crit_edge, label %for.inc.i318.i.for.body.i293.i_crit_edge

for.inc.i318.i.for.body.i293.i_crit_edge:         ; preds = %for.inc.i318.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i293.i

for.inc.i318.i.if.end91.i_crit_edge:              ; preds = %for.inc.i318.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end91.i

if.else84.i:                                      ; preds = %lor.lhs.false67.i
  %call85.i96 = call fastcc i32 @radeon_get_shared_nondp_ppll(ptr noundef %crtc) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %call85.i96)
  %cmp86.not.i = icmp eq i32 %call85.i96, 255
  br i1 %cmp86.not.i, label %if.else84.i.if.end91.i_crit_edge, label %if.else84.i.radeon_atom_pick_pll.exit.thread_crit_edge

if.else84.i.radeon_atom_pick_pll.exit.thread_crit_edge: ; preds = %if.else84.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %radeon_atom_pick_pll.exit.thread

if.else84.i.if.end91.i_crit_edge:                 ; preds = %if.else84.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end91.i

if.end91.i:                                       ; preds = %if.else84.i.if.end91.i_crit_edge, %for.inc.i318.i.if.end91.i_crit_edge, %if.else77.i.if.end91.i_crit_edge
  %318 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %318)
  %319 = load ptr, ptr %crtc, align 8
  %crtc_list.i321.i = getelementptr inbounds %struct.drm_device, ptr %319, i32 0, i32 30, i32 20
  %320 = ptrtoint ptr %crtc_list.i321.i to i32
  call void @__asan_load4_noabort(i32 %320)
  %.pn24.i322.i = load ptr, ptr %crtc_list.i321.i, align 4
  %cmp.not25.i323.i = icmp eq ptr %.pn24.i322.i, %crtc_list.i321.i
  br i1 %cmp.not25.i323.i, label %if.end91.i.radeon_atom_pick_pll.exit.thread_crit_edge, label %if.end91.i.for.body.i328.i_crit_edge

if.end91.i.for.body.i328.i_crit_edge:             ; preds = %if.end91.i
  br label %for.body.i328.i

if.end91.i.radeon_atom_pick_pll.exit.thread_crit_edge: ; preds = %if.end91.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %radeon_atom_pick_pll.exit.thread

for.body.i328.i:                                  ; preds = %for.inc.i338.i.for.body.i328.i_crit_edge, %if.end91.i.for.body.i328.i_crit_edge
  %.pn27.i324.i = phi ptr [ %.pn.i336.i, %for.inc.i338.i.for.body.i328.i_crit_edge ], [ %.pn24.i322.i, %if.end91.i.for.body.i328.i_crit_edge ]
  %pll_in_use.026.i325.i = phi i32 [ %pll_in_use.1.i335.i, %for.inc.i338.i.for.body.i328.i_crit_edge ], [ 0, %if.end91.i.for.body.i328.i_crit_edge ]
  %test_crtc.0.i326.i = getelementptr i8, ptr %.pn27.i324.i, i32 -8
  %cmp4.i327.i = icmp eq ptr %test_crtc.0.i326.i, %crtc
  br i1 %cmp4.i327.i, label %for.body.i328.i.for.inc.i338.i_crit_edge, label %if.end.i331.i

for.body.i328.i.for.inc.i338.i_crit_edge:         ; preds = %for.body.i328.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i338.i

if.end.i331.i:                                    ; preds = %for.body.i328.i
  %pll_id.i329.i = getelementptr i8, ptr %.pn27.i324.i, i32 1172
  %321 = ptrtoint ptr %pll_id.i329.i to i32
  call void @__asan_load4_noabort(i32 %321)
  %322 = load i32, ptr %pll_id.i329.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %322)
  %cmp8.not.i330.i = icmp eq i32 %322, 255
  br i1 %cmp8.not.i330.i, label %if.end.i331.i.for.inc.i338.i_crit_edge, label %if.then9.i334.i

if.end.i331.i.for.inc.i338.i_crit_edge:           ; preds = %if.end.i331.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i338.i

if.then9.i334.i:                                  ; preds = %if.end.i331.i
  call void @__sanitizer_cov_trace_pc() #9
  %shl.i332.i = shl nuw i32 1, %322
  %or.i333.i = or i32 %shl.i332.i, %pll_in_use.026.i325.i
  br label %for.inc.i338.i

for.inc.i338.i:                                   ; preds = %if.then9.i334.i, %if.end.i331.i.for.inc.i338.i_crit_edge, %for.body.i328.i.for.inc.i338.i_crit_edge
  %pll_in_use.1.i335.i = phi i32 [ %pll_in_use.026.i325.i, %for.body.i328.i.for.inc.i338.i_crit_edge ], [ %or.i333.i, %if.then9.i334.i ], [ %pll_in_use.026.i325.i, %if.end.i331.i.for.inc.i338.i_crit_edge ]
  %323 = ptrtoint ptr %.pn27.i324.i to i32
  call void @__asan_load4_noabort(i32 %323)
  %.pn.i336.i = load ptr, ptr %.pn27.i324.i, align 4
  %cmp.not.i337.i = icmp eq ptr %.pn.i336.i, %crtc_list.i321.i
  br i1 %cmp.not.i337.i, label %radeon_get_pll_use_mask.exit340.i, label %for.inc.i338.i.for.body.i328.i_crit_edge

for.inc.i338.i.for.body.i328.i_crit_edge:         ; preds = %for.inc.i338.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i328.i

radeon_get_pll_use_mask.exit340.i:                ; preds = %for.inc.i338.i
  %and93.i = and i32 %pll_in_use.1.i335.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and93.i)
  %tobool94.not.i = icmp eq i32 %and93.i, 0
  br i1 %tobool94.not.i, label %radeon_get_pll_use_mask.exit340.i.radeon_atom_pick_pll.exit.thread_crit_edge, label %if.end96.i

radeon_get_pll_use_mask.exit340.i.radeon_atom_pick_pll.exit.thread_crit_edge: ; preds = %radeon_get_pll_use_mask.exit340.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %radeon_atom_pick_pll.exit.thread

if.end96.i:                                       ; preds = %radeon_get_pll_use_mask.exit340.i
  %and97.i = and i32 %pll_in_use.1.i335.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and97.i)
  %tobool98.not.i = icmp eq i32 %and97.i, 0
  br i1 %tobool98.not.i, label %if.end96.i.radeon_atom_pick_pll.exit.thread_crit_edge, label %if.end96.i.radeon_atom_pick_pll.exit.thread101.sink.split_crit_edge

if.end96.i.radeon_atom_pick_pll.exit.thread101.sink.split_crit_edge: ; preds = %if.end96.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %radeon_atom_pick_pll.exit.thread101.sink.split

if.end96.i.radeon_atom_pick_pll.exit.thread_crit_edge: ; preds = %if.end96.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %radeon_atom_pick_pll.exit.thread

if.else101.i:                                     ; preds = %if.else50.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 43, i32 %250)
  %cmp103.i = icmp ugt i32 %250, 43
  br i1 %cmp103.i, label %if.else101.i.land.lhs.true105.i_crit_edge, label %if.else135.i

if.else101.i.land.lhs.true105.i_crit_edge:        ; preds = %if.else101.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true105.i

land.lhs.true105.i:                               ; preds = %if.else101.i.land.lhs.true105.i_crit_edge, %land.lhs.true.i.land.lhs.true105.i_crit_edge
  %flags106.i = getelementptr inbounds %struct.radeon_device, ptr %246, i32 0, i32 7
  %324 = ptrtoint ptr %flags106.i to i32
  call void @__asan_load4_noabort(i32 %324)
  %325 = load i32, ptr %flags106.i, align 8
  %and107.i = and i32 %325, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and107.i)
  %tobool108.not.i = icmp eq i32 %and107.i, 0
  br i1 %tobool108.not.i, label %land.lhs.true105.i.if.then139.i_crit_edge, label %if.then109.i

land.lhs.true105.i.if.then139.i_crit_edge:        ; preds = %land.lhs.true105.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then139.i

if.then109.i:                                     ; preds = %land.lhs.true105.i
  %call111.i = call i32 @atombios_get_encoder_mode(ptr noundef %248) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call111.i)
  %cmp112.i = icmp eq i32 %call111.i, 0
  br i1 %cmp112.i, label %if.then109.i.if.then119.i_crit_edge, label %lor.lhs.false114.i

if.then109.i.if.then119.i_crit_edge:              ; preds = %if.then109.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then119.i

lor.lhs.false114.i:                               ; preds = %if.then109.i
  %326 = ptrtoint ptr %encoder15 to i32
  call void @__asan_load4_noabort(i32 %326)
  %327 = load ptr, ptr %encoder15, align 4
  %call116.i = call i32 @atombios_get_encoder_mode(ptr noundef %327) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %call116.i)
  %cmp117.i = icmp eq i32 %call116.i, 5
  br i1 %cmp117.i, label %lor.lhs.false114.i.if.then119.i_crit_edge, label %lor.lhs.false114.i.if.end125.i_crit_edge

lor.lhs.false114.i.if.end125.i_crit_edge:         ; preds = %lor.lhs.false114.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end125.i

lor.lhs.false114.i.if.then119.i_crit_edge:        ; preds = %lor.lhs.false114.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then119.i

if.then119.i:                                     ; preds = %lor.lhs.false114.i.if.then119.i_crit_edge, %if.then109.i.if.then119.i_crit_edge
  %dp_extclk121.i = getelementptr inbounds %struct.radeon_device, ptr %246, i32 0, i32 41, i32 9
  %328 = ptrtoint ptr %dp_extclk121.i to i32
  call void @__asan_load4_noabort(i32 %328)
  %329 = load i32, ptr %dp_extclk121.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %329)
  %tobool122.not.i = icmp eq i32 %329, 0
  br i1 %tobool122.not.i, label %if.then119.i.if.end125.i_crit_edge, label %if.then119.i.radeon_atom_pick_pll.exit.thread101_crit_edge

if.then119.i.radeon_atom_pick_pll.exit.thread101_crit_edge: ; preds = %if.then119.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %radeon_atom_pick_pll.exit.thread101

if.then119.i.if.end125.i_crit_edge:               ; preds = %if.then119.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end125.i

if.end125.i:                                      ; preds = %if.then119.i.if.end125.i_crit_edge, %lor.lhs.false114.i.if.end125.i_crit_edge
  %330 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %330)
  %331 = load ptr, ptr %crtc, align 8
  %crtc_list.i341.i = getelementptr inbounds %struct.drm_device, ptr %331, i32 0, i32 30, i32 20
  %332 = ptrtoint ptr %crtc_list.i341.i to i32
  call void @__asan_load4_noabort(i32 %332)
  %.pn24.i342.i = load ptr, ptr %crtc_list.i341.i, align 4
  %cmp.not25.i343.i = icmp eq ptr %.pn24.i342.i, %crtc_list.i341.i
  br i1 %cmp.not25.i343.i, label %if.end125.i.radeon_atom_pick_pll.exit.thread_crit_edge, label %if.end125.i.for.body.i348.i_crit_edge

if.end125.i.for.body.i348.i_crit_edge:            ; preds = %if.end125.i
  br label %for.body.i348.i

if.end125.i.radeon_atom_pick_pll.exit.thread_crit_edge: ; preds = %if.end125.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %radeon_atom_pick_pll.exit.thread

for.body.i348.i:                                  ; preds = %for.inc.i358.i.for.body.i348.i_crit_edge, %if.end125.i.for.body.i348.i_crit_edge
  %.pn27.i344.i = phi ptr [ %.pn.i356.i, %for.inc.i358.i.for.body.i348.i_crit_edge ], [ %.pn24.i342.i, %if.end125.i.for.body.i348.i_crit_edge ]
  %pll_in_use.026.i345.i = phi i32 [ %pll_in_use.1.i355.i, %for.inc.i358.i.for.body.i348.i_crit_edge ], [ 0, %if.end125.i.for.body.i348.i_crit_edge ]
  %test_crtc.0.i346.i = getelementptr i8, ptr %.pn27.i344.i, i32 -8
  %cmp4.i347.i = icmp eq ptr %test_crtc.0.i346.i, %crtc
  br i1 %cmp4.i347.i, label %for.body.i348.i.for.inc.i358.i_crit_edge, label %if.end.i351.i

for.body.i348.i.for.inc.i358.i_crit_edge:         ; preds = %for.body.i348.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i358.i

if.end.i351.i:                                    ; preds = %for.body.i348.i
  %pll_id.i349.i = getelementptr i8, ptr %.pn27.i344.i, i32 1172
  %333 = ptrtoint ptr %pll_id.i349.i to i32
  call void @__asan_load4_noabort(i32 %333)
  %334 = load i32, ptr %pll_id.i349.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %334)
  %cmp8.not.i350.i = icmp eq i32 %334, 255
  br i1 %cmp8.not.i350.i, label %if.end.i351.i.for.inc.i358.i_crit_edge, label %if.then9.i354.i

if.end.i351.i.for.inc.i358.i_crit_edge:           ; preds = %if.end.i351.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i358.i

if.then9.i354.i:                                  ; preds = %if.end.i351.i
  call void @__sanitizer_cov_trace_pc() #9
  %shl.i352.i = shl nuw i32 1, %334
  %or.i353.i = or i32 %shl.i352.i, %pll_in_use.026.i345.i
  br label %for.inc.i358.i

for.inc.i358.i:                                   ; preds = %if.then9.i354.i, %if.end.i351.i.for.inc.i358.i_crit_edge, %for.body.i348.i.for.inc.i358.i_crit_edge
  %pll_in_use.1.i355.i = phi i32 [ %pll_in_use.026.i345.i, %for.body.i348.i.for.inc.i358.i_crit_edge ], [ %or.i353.i, %if.then9.i354.i ], [ %pll_in_use.026.i345.i, %if.end.i351.i.for.inc.i358.i_crit_edge ]
  %335 = ptrtoint ptr %.pn27.i344.i to i32
  call void @__asan_load4_noabort(i32 %335)
  %.pn.i356.i = load ptr, ptr %.pn27.i344.i, align 4
  %cmp.not.i357.i = icmp eq ptr %.pn.i356.i, %crtc_list.i341.i
  br i1 %cmp.not.i357.i, label %radeon_get_pll_use_mask.exit360.i, label %for.inc.i358.i.for.body.i348.i_crit_edge

for.inc.i358.i.for.body.i348.i_crit_edge:         ; preds = %for.inc.i358.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i348.i

radeon_get_pll_use_mask.exit360.i:                ; preds = %for.inc.i358.i
  %and127.i = and i32 %pll_in_use.1.i355.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and127.i)
  %tobool128.not.i = icmp eq i32 %and127.i, 0
  br i1 %tobool128.not.i, label %radeon_get_pll_use_mask.exit360.i.radeon_atom_pick_pll.exit.thread_crit_edge, label %if.end130.i

radeon_get_pll_use_mask.exit360.i.radeon_atom_pick_pll.exit.thread_crit_edge: ; preds = %radeon_get_pll_use_mask.exit360.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %radeon_atom_pick_pll.exit.thread

if.end130.i:                                      ; preds = %radeon_get_pll_use_mask.exit360.i
  %and131.i = and i32 %pll_in_use.1.i355.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and131.i)
  %tobool132.not.i = icmp eq i32 %and131.i, 0
  br i1 %tobool132.not.i, label %if.end130.i.radeon_atom_pick_pll.exit.thread_crit_edge, label %if.end130.i.radeon_atom_pick_pll.exit.thread101.sink.split_crit_edge

if.end130.i.radeon_atom_pick_pll.exit.thread101.sink.split_crit_edge: ; preds = %if.end130.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %radeon_atom_pick_pll.exit.thread101.sink.split

if.end130.i.radeon_atom_pick_pll.exit.thread_crit_edge: ; preds = %if.end130.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %radeon_atom_pick_pll.exit.thread

if.else135.i:                                     ; preds = %if.else101.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 38, i32 %250)
  %cmp137.i = icmp ugt i32 %250, 38
  br i1 %cmp137.i, label %if.else135.i.if.then139.i_crit_edge, label %radeon_atom_pick_pll.exit

if.else135.i.if.then139.i_crit_edge:              ; preds = %if.else135.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then139.i

if.then139.i:                                     ; preds = %if.else135.i.if.then139.i_crit_edge, %land.lhs.true105.i.if.then139.i_crit_edge
  %call141.i = call i32 @atombios_get_encoder_mode(ptr noundef %248) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call141.i)
  %cmp142.i = icmp eq i32 %call141.i, 0
  br i1 %cmp142.i, label %if.then139.i.if.then149.i_crit_edge, label %lor.lhs.false144.i

if.then139.i.if.then149.i_crit_edge:              ; preds = %if.then139.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then149.i

lor.lhs.false144.i:                               ; preds = %if.then139.i
  %336 = ptrtoint ptr %encoder15 to i32
  call void @__asan_load4_noabort(i32 %336)
  %337 = load ptr, ptr %encoder15, align 4
  %call146.i = call i32 @atombios_get_encoder_mode(ptr noundef %337) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %call146.i)
  %cmp147.i = icmp eq i32 %call146.i, 5
  br i1 %cmp147.i, label %lor.lhs.false144.i.if.then149.i_crit_edge, label %if.else173.i

lor.lhs.false144.i.if.then149.i_crit_edge:        ; preds = %lor.lhs.false144.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then149.i

if.then149.i:                                     ; preds = %lor.lhs.false144.i.if.then149.i_crit_edge, %if.then139.i.if.then149.i_crit_edge
  %dp_extclk151.i = getelementptr inbounds %struct.radeon_device, ptr %246, i32 0, i32 41, i32 9
  %338 = ptrtoint ptr %dp_extclk151.i to i32
  call void @__asan_load4_noabort(i32 %338)
  %339 = load i32, ptr %dp_extclk151.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %339)
  %tobool152.not.i = icmp eq i32 %339, 0
  br i1 %tobool152.not.i, label %if.else154.i, label %if.then149.i.radeon_atom_pick_pll.exit.thread101_crit_edge

if.then149.i.radeon_atom_pick_pll.exit.thread101_crit_edge: ; preds = %if.then149.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %radeon_atom_pick_pll.exit.thread101

if.else154.i:                                     ; preds = %if.then149.i
  %340 = ptrtoint ptr %family.i76 to i32
  call void @__asan_load4_noabort(i32 %340)
  %341 = load i32, ptr %family.i76, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 46, i32 %341)
  %cmp161.i = icmp ugt i32 %341, 46
  br i1 %cmp161.i, label %if.else154.i.radeon_atom_pick_pll.exit.thread_crit_edge, label %if.else164.i

if.else154.i.radeon_atom_pick_pll.exit.thread_crit_edge: ; preds = %if.else154.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %radeon_atom_pick_pll.exit.thread

if.else164.i:                                     ; preds = %if.else154.i
  %call165.i = call fastcc i32 @radeon_get_shared_dp_ppll(ptr noundef %crtc) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %call165.i)
  %cmp166.not.i = icmp eq i32 %call165.i, 255
  br i1 %cmp166.not.i, label %if.else164.i.if.end179.i_crit_edge, label %if.else164.i.radeon_atom_pick_pll.exit.thread_crit_edge

if.else164.i.radeon_atom_pick_pll.exit.thread_crit_edge: ; preds = %if.else164.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %radeon_atom_pick_pll.exit.thread

if.else164.i.if.end179.i_crit_edge:               ; preds = %if.else164.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end179.i

if.else173.i:                                     ; preds = %lor.lhs.false144.i
  %call174.i = call fastcc i32 @radeon_get_shared_nondp_ppll(ptr noundef %crtc) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %call174.i)
  %cmp175.not.i = icmp eq i32 %call174.i, 255
  br i1 %cmp175.not.i, label %if.else173.i.if.end179.i_crit_edge, label %if.else173.i.radeon_atom_pick_pll.exit.thread_crit_edge

if.else173.i.radeon_atom_pick_pll.exit.thread_crit_edge: ; preds = %if.else173.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %radeon_atom_pick_pll.exit.thread

if.else173.i.if.end179.i_crit_edge:               ; preds = %if.else173.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end179.i

if.end179.i:                                      ; preds = %if.else173.i.if.end179.i_crit_edge, %if.else164.i.if.end179.i_crit_edge
  %342 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %342)
  %343 = load ptr, ptr %crtc, align 8
  %crtc_list.i361.i = getelementptr inbounds %struct.drm_device, ptr %343, i32 0, i32 30, i32 20
  %344 = ptrtoint ptr %crtc_list.i361.i to i32
  call void @__asan_load4_noabort(i32 %344)
  %.pn24.i362.i = load ptr, ptr %crtc_list.i361.i, align 4
  %cmp.not25.i363.i = icmp eq ptr %.pn24.i362.i, %crtc_list.i361.i
  br i1 %cmp.not25.i363.i, label %if.end179.i.radeon_atom_pick_pll.exit.thread_crit_edge, label %if.end179.i.for.body.i368.i_crit_edge

if.end179.i.for.body.i368.i_crit_edge:            ; preds = %if.end179.i
  br label %for.body.i368.i

if.end179.i.radeon_atom_pick_pll.exit.thread_crit_edge: ; preds = %if.end179.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %radeon_atom_pick_pll.exit.thread

for.body.i368.i:                                  ; preds = %for.inc.i378.i.for.body.i368.i_crit_edge, %if.end179.i.for.body.i368.i_crit_edge
  %.pn27.i364.i = phi ptr [ %.pn.i376.i, %for.inc.i378.i.for.body.i368.i_crit_edge ], [ %.pn24.i362.i, %if.end179.i.for.body.i368.i_crit_edge ]
  %pll_in_use.026.i365.i = phi i32 [ %pll_in_use.1.i375.i, %for.inc.i378.i.for.body.i368.i_crit_edge ], [ 0, %if.end179.i.for.body.i368.i_crit_edge ]
  %test_crtc.0.i366.i = getelementptr i8, ptr %.pn27.i364.i, i32 -8
  %cmp4.i367.i = icmp eq ptr %test_crtc.0.i366.i, %crtc
  br i1 %cmp4.i367.i, label %for.body.i368.i.for.inc.i378.i_crit_edge, label %if.end.i371.i

for.body.i368.i.for.inc.i378.i_crit_edge:         ; preds = %for.body.i368.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i378.i

if.end.i371.i:                                    ; preds = %for.body.i368.i
  %pll_id.i369.i = getelementptr i8, ptr %.pn27.i364.i, i32 1172
  %345 = ptrtoint ptr %pll_id.i369.i to i32
  call void @__asan_load4_noabort(i32 %345)
  %346 = load i32, ptr %pll_id.i369.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %346)
  %cmp8.not.i370.i = icmp eq i32 %346, 255
  br i1 %cmp8.not.i370.i, label %if.end.i371.i.for.inc.i378.i_crit_edge, label %if.then9.i374.i

if.end.i371.i.for.inc.i378.i_crit_edge:           ; preds = %if.end.i371.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i378.i

if.then9.i374.i:                                  ; preds = %if.end.i371.i
  call void @__sanitizer_cov_trace_pc() #9
  %shl.i372.i = shl nuw i32 1, %346
  %or.i373.i = or i32 %shl.i372.i, %pll_in_use.026.i365.i
  br label %for.inc.i378.i

for.inc.i378.i:                                   ; preds = %if.then9.i374.i, %if.end.i371.i.for.inc.i378.i_crit_edge, %for.body.i368.i.for.inc.i378.i_crit_edge
  %pll_in_use.1.i375.i = phi i32 [ %pll_in_use.026.i365.i, %for.body.i368.i.for.inc.i378.i_crit_edge ], [ %or.i373.i, %if.then9.i374.i ], [ %pll_in_use.026.i365.i, %if.end.i371.i.for.inc.i378.i_crit_edge ]
  %347 = ptrtoint ptr %.pn27.i364.i to i32
  call void @__asan_load4_noabort(i32 %347)
  %.pn.i376.i = load ptr, ptr %.pn27.i364.i, align 4
  %cmp.not.i377.i = icmp eq ptr %.pn.i376.i, %crtc_list.i361.i
  br i1 %cmp.not.i377.i, label %radeon_get_pll_use_mask.exit380.i, label %for.inc.i378.i.for.body.i368.i_crit_edge

for.inc.i378.i.for.body.i368.i_crit_edge:         ; preds = %for.inc.i378.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i368.i

radeon_get_pll_use_mask.exit380.i:                ; preds = %for.inc.i378.i
  %and181.i = and i32 %pll_in_use.1.i375.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and181.i)
  %tobool182.not.i = icmp eq i32 %and181.i, 0
  br i1 %tobool182.not.i, label %radeon_get_pll_use_mask.exit380.i.radeon_atom_pick_pll.exit.thread_crit_edge, label %if.end184.i

radeon_get_pll_use_mask.exit380.i.radeon_atom_pick_pll.exit.thread_crit_edge: ; preds = %radeon_get_pll_use_mask.exit380.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %radeon_atom_pick_pll.exit.thread

if.end184.i:                                      ; preds = %radeon_get_pll_use_mask.exit380.i
  %and185.i = and i32 %pll_in_use.1.i375.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and185.i)
  %tobool186.not.i = icmp eq i32 %and185.i, 0
  br i1 %tobool186.not.i, label %if.end184.i.radeon_atom_pick_pll.exit.thread_crit_edge, label %if.end184.i.radeon_atom_pick_pll.exit.thread101.sink.split_crit_edge

if.end184.i.radeon_atom_pick_pll.exit.thread101.sink.split_crit_edge: ; preds = %if.end184.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %radeon_atom_pick_pll.exit.thread101.sink.split

if.end184.i.radeon_atom_pick_pll.exit.thread_crit_edge: ; preds = %if.end184.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %radeon_atom_pick_pll.exit.thread

radeon_atom_pick_pll.exit.thread:                 ; preds = %if.end184.i.radeon_atom_pick_pll.exit.thread_crit_edge, %radeon_get_pll_use_mask.exit380.i.radeon_atom_pick_pll.exit.thread_crit_edge, %if.end179.i.radeon_atom_pick_pll.exit.thread_crit_edge, %if.else173.i.radeon_atom_pick_pll.exit.thread_crit_edge, %if.else164.i.radeon_atom_pick_pll.exit.thread_crit_edge, %if.else154.i.radeon_atom_pick_pll.exit.thread_crit_edge, %if.end130.i.radeon_atom_pick_pll.exit.thread_crit_edge, %radeon_get_pll_use_mask.exit360.i.radeon_atom_pick_pll.exit.thread_crit_edge, %if.end125.i.radeon_atom_pick_pll.exit.thread_crit_edge, %if.end96.i.radeon_atom_pick_pll.exit.thread_crit_edge, %radeon_get_pll_use_mask.exit340.i.radeon_atom_pick_pll.exit.thread_crit_edge, %if.end91.i.radeon_atom_pick_pll.exit.thread_crit_edge, %if.else84.i.radeon_atom_pick_pll.exit.thread_crit_edge, %if.end23.i315.i.radeon_atom_pick_pll.exit.thread_crit_edge, %land.lhs.true57.i.radeon_atom_pick_pll.exit.thread_crit_edge, %if.end45.i.radeon_atom_pick_pll.exit.thread_crit_edge, %if.end41.i.radeon_atom_pick_pll.exit.thread_crit_edge, %radeon_get_pll_use_mask.exit282.i.radeon_atom_pick_pll.exit.thread_crit_edge, %if.else36.i.radeon_atom_pick_pll.exit.thread_crit_edge, %if.end31.i.radeon_atom_pick_pll.exit.thread_crit_edge, %radeon_get_pll_use_mask.exit.i.radeon_atom_pick_pll.exit.thread_crit_edge, %if.then27.i93.radeon_atom_pick_pll.exit.thread_crit_edge, %if.else16.i.radeon_atom_pick_pll.exit.thread_crit_edge, %if.end23.i.i.radeon_atom_pick_pll.exit.thread_crit_edge
  %retval.1.i.ph = phi i32 [ 0, %if.end179.i.radeon_atom_pick_pll.exit.thread_crit_edge ], [ 0, %if.end125.i.radeon_atom_pick_pll.exit.thread_crit_edge ], [ 2, %if.end91.i.radeon_atom_pick_pll.exit.thread_crit_edge ], [ 1, %if.else36.i.radeon_atom_pick_pll.exit.thread_crit_edge ], [ 1, %if.then27.i93.radeon_atom_pick_pll.exit.thread_crit_edge ], [ 1, %if.end184.i.radeon_atom_pick_pll.exit.thread_crit_edge ], [ 0, %radeon_get_pll_use_mask.exit380.i.radeon_atom_pick_pll.exit.thread_crit_edge ], [ %call174.i, %if.else173.i.radeon_atom_pick_pll.exit.thread_crit_edge ], [ %call165.i, %if.else164.i.radeon_atom_pick_pll.exit.thread_crit_edge ], [ 2, %if.else154.i.radeon_atom_pick_pll.exit.thread_crit_edge ], [ 1, %if.end130.i.radeon_atom_pick_pll.exit.thread_crit_edge ], [ 0, %radeon_get_pll_use_mask.exit360.i.radeon_atom_pick_pll.exit.thread_crit_edge ], [ 0, %if.end96.i.radeon_atom_pick_pll.exit.thread_crit_edge ], [ 2, %radeon_get_pll_use_mask.exit340.i.radeon_atom_pick_pll.exit.thread_crit_edge ], [ %call85.i96, %if.else84.i.radeon_atom_pick_pll.exit.thread_crit_edge ], [ 1, %land.lhs.true57.i.radeon_atom_pick_pll.exit.thread_crit_edge ], [ 2, %if.end45.i.radeon_atom_pick_pll.exit.thread_crit_edge ], [ 0, %if.end41.i.radeon_atom_pick_pll.exit.thread_crit_edge ], [ 1, %radeon_get_pll_use_mask.exit282.i.radeon_atom_pick_pll.exit.thread_crit_edge ], [ 0, %if.end31.i.radeon_atom_pick_pll.exit.thread_crit_edge ], [ 1, %radeon_get_pll_use_mask.exit.i.radeon_atom_pick_pll.exit.thread_crit_edge ], [ %call17.i, %if.else16.i.radeon_atom_pick_pll.exit.thread_crit_edge ], [ %271, %if.end23.i.i.radeon_atom_pick_pll.exit.thread_crit_edge ], [ %316, %if.end23.i315.i.radeon_atom_pick_pll.exit.thread_crit_edge ]
  %pll_id98 = getelementptr inbounds %struct.radeon_crtc, ptr %crtc, i32 0, i32 23
  %348 = ptrtoint ptr %pll_id98 to i32
  call void @__asan_store4_noabort(i32 %348)
  store i32 %retval.1.i.ph, ptr %pll_id98, align 4
  br label %if.end48

radeon_atom_pick_pll.exit.thread101.sink.split:   ; preds = %if.end184.i.radeon_atom_pick_pll.exit.thread101.sink.split_crit_edge, %if.end130.i.radeon_atom_pick_pll.exit.thread101.sink.split_crit_edge, %if.end96.i.radeon_atom_pick_pll.exit.thread101.sink.split_crit_edge, %if.end45.i.radeon_atom_pick_pll.exit.thread101.sink.split_crit_edge, %if.end31.i.radeon_atom_pick_pll.exit.thread101.sink.split_crit_edge
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.11) #7
  br label %radeon_atom_pick_pll.exit.thread101

radeon_atom_pick_pll.exit.thread101:              ; preds = %radeon_atom_pick_pll.exit.thread101.sink.split, %if.then149.i.radeon_atom_pick_pll.exit.thread101_crit_edge, %if.then119.i.radeon_atom_pick_pll.exit.thread101_crit_edge, %if.then72.i.radeon_atom_pick_pll.exit.thread101_crit_edge, %if.then10.i82.radeon_atom_pick_pll.exit.thread101_crit_edge
  %pll_id103 = getelementptr inbounds %struct.radeon_crtc, ptr %crtc, i32 0, i32 23
  %349 = ptrtoint ptr %pll_id103 to i32
  call void @__asan_store4_noabort(i32 %349)
  store i32 255, ptr %pll_id103, align 4
  br label %land.lhs.true

radeon_atom_pick_pll.exit:                        ; preds = %if.else135.i
  %crtc_id.i = getelementptr inbounds %struct.radeon_crtc, ptr %crtc, i32 0, i32 1
  %350 = ptrtoint ptr %crtc_id.i to i32
  call void @__asan_load4_noabort(i32 %350)
  %351 = load i32, ptr %crtc_id.i, align 8
  %pll_id = getelementptr inbounds %struct.radeon_crtc, ptr %crtc, i32 0, i32 23
  %352 = ptrtoint ptr %pll_id to i32
  call void @__asan_store4_noabort(i32 %352)
  store i32 %351, ptr %pll_id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %351)
  %cmp39 = icmp eq i32 %351, 255
  br i1 %cmp39, label %radeon_atom_pick_pll.exit.land.lhs.true_crit_edge, label %radeon_atom_pick_pll.exit.if.end48_crit_edge

radeon_atom_pick_pll.exit.if.end48_crit_edge:     ; preds = %radeon_atom_pick_pll.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end48

radeon_atom_pick_pll.exit.land.lhs.true_crit_edge: ; preds = %radeon_atom_pick_pll.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %radeon_atom_pick_pll.exit.land.lhs.true_crit_edge, %radeon_atom_pick_pll.exit.thread101
  %353 = ptrtoint ptr %encoder15 to i32
  call void @__asan_load4_noabort(i32 %353)
  %354 = load ptr, ptr %encoder15, align 4
  %call41 = call i32 @atombios_get_encoder_mode(ptr noundef %354) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41)
  %cmp42 = icmp eq i32 %call41, 0
  br i1 %cmp42, label %land.lhs.true.if.end48_crit_edge, label %lor.lhs.false43

land.lhs.true.if.end48_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end48

lor.lhs.false43:                                  ; preds = %land.lhs.true
  %355 = ptrtoint ptr %encoder15 to i32
  call void @__asan_load4_noabort(i32 %355)
  %356 = load ptr, ptr %encoder15, align 4
  %call45 = call i32 @atombios_get_encoder_mode(ptr noundef %356) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %call45)
  %cmp46 = icmp eq i32 %call45, 5
  br i1 %cmp46, label %lor.lhs.false43.if.end48_crit_edge, label %lor.lhs.false43.cleanup_crit_edge

lor.lhs.false43.cleanup_crit_edge:                ; preds = %lor.lhs.false43
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false43.if.end48_crit_edge:               ; preds = %lor.lhs.false43
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end48

if.end48:                                         ; preds = %lor.lhs.false43.if.end48_crit_edge, %land.lhs.true.if.end48_crit_edge, %radeon_atom_pick_pll.exit.if.end48_crit_edge, %radeon_atom_pick_pll.exit.thread
  br label %cleanup

cleanup:                                          ; preds = %if.end48, %lor.lhs.false43.cleanup_crit_edge, %if.then24.cleanup_crit_edge, %if.then19
  %retval.0 = phi i1 [ false, %if.then19 ], [ true, %if.end48 ], [ false, %if.then24.cleanup_crit_edge ], [ false, %lor.lhs.false43.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @atombios_crtc_disable(ptr noundef %crtc) #0 align 64 {
entry:
  %args.i = alloca %struct._ENABLE_DISP_POWER_GATING_PARAMETERS_V2_1, align 4
  %ss = alloca %struct.radeon_atom_ss, align 2
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %crtc, align 8
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_private, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %ss) #7
  %4 = call ptr @memset(ptr %ss, i32 255, i32 16)
  tail call void @atombios_crtc_dpms(ptr noundef %crtc, i32 noundef 3)
  %primary = getelementptr inbounds %struct.drm_crtc, ptr %crtc, i32 0, i32 6
  %5 = ptrtoint ptr %primary to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %primary, align 4
  %fb = getelementptr inbounds %struct.drm_plane, ptr %6, i32 0, i32 12
  %7 = ptrtoint ptr %fb to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %fb, align 4
  %tobool.not = icmp eq ptr %8, null
  br i1 %tobool.not, label %entry.if.end11_crit_edge, label %if.then

entry.if.end11_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11

if.then:                                          ; preds = %entry
  %obj = getelementptr inbounds %struct.drm_framebuffer, ptr %8, i32 0, i32 15
  %9 = ptrtoint ptr %obj to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %obj, align 4
  %add.ptr6 = getelementptr i8, ptr %10, i32 -96
  %resv32.i.i = getelementptr i8, ptr %10, i32 200
  %11 = ptrtoint ptr %resv32.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %resv32.i.i, align 8
  %call.i.i.i = tail call i32 @ww_mutex_lock_interruptible(ptr noundef %12, ptr noundef null) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -4, i32 %call.i.i.i)
  %cmp.i.i = icmp eq i32 %call.i.i.i, -4
  %retval.1.i.i = select i1 %cmp.i.i, i32 -512, i32 %call.i.i.i
  %13 = zext i32 %retval.1.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.42)
  switch i32 %retval.1.i.i, label %do.end.i [
    i32 0, label %if.else
    i32 -512, label %if.then.if.then10_crit_edge
  ], !prof !43

if.then.if.then10_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then10

do.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %rdev.i = getelementptr i8, ptr %10, i32 464
  %14 = ptrtoint ptr %rdev.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %rdev.i, align 8
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %15, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %17, ptr noundef nonnull @.str.4, ptr noundef %add.ptr6) #10
  br label %if.then10

if.then10:                                        ; preds = %do.end.i, %if.then.if.then10_crit_edge
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.12) #7
  br label %if.end11

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @radeon_bo_unpin(ptr noundef %add.ptr6) #7
  %bdev.i.i.i = getelementptr i8, ptr %10, i32 352
  %18 = ptrtoint ptr %bdev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %bdev.i.i.i, align 8
  %lru_lock.i.i.i = getelementptr inbounds %struct.ttm_device, ptr %19, i32 0, i32 6
  tail call void @_raw_spin_lock(ptr noundef %lru_lock.i.i.i) #7
  %resource.i.i.i = getelementptr i8, ptr %10, i32 372
  %20 = ptrtoint ptr %resource.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %resource.i.i.i, align 4
  tail call void @ttm_bo_move_to_lru_tail(ptr noundef %10, ptr noundef %21, ptr noundef null) #7
  %22 = ptrtoint ptr %bdev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %bdev.i.i.i, align 8
  %lru_lock2.i.i.i = getelementptr inbounds %struct.ttm_device, ptr %23, i32 0, i32 6
  tail call void @_raw_spin_unlock(ptr noundef %lru_lock2.i.i.i) #7
  %24 = ptrtoint ptr %resv32.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %resv32.i.i, align 8
  tail call void @dma_resv_reset_shared_max(ptr noundef %25) #7
  tail call void @ww_mutex_unlock(ptr noundef %25) #7
  br label %if.end11

if.end11:                                         ; preds = %if.else, %if.then10, %entry.if.end11_crit_edge
  %family = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 6
  %26 = ptrtoint ptr %family to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %family, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 38, i32 %27)
  %cmp = icmp ugt i32 %27, 38
  br i1 %cmp, label %if.then12, label %if.else13

if.then12:                                        ; preds = %if.end11
  %crtc_offset = getelementptr inbounds %struct.radeon_crtc, ptr %crtc, i32 0, i32 5
  %28 = ptrtoint ptr %crtc_offset to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %crtc_offset, align 8
  %add = add i32 %29, 26624
  %rmmio_size.i = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 18
  %30 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %31, i32 %add)
  %cmp.i = icmp ugt i32 %31, %add
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %add)
  %cmp1.i = icmp ult i32 %add, 65536
  %or.cond.i = or i1 %cmp1.i, %cmp.i
  br i1 %or.cond.i, label %do.body.i, label %if.else.i

do.body.i:                                        ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !40
  tail call void @arm_heavy_mb() #7
  %rmmio.i = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 31
  %32 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %33, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #7, !srcloc !41
  br label %if.end20

if.else.i:                                        ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @r100_mm_wreg_slow(ptr noundef %3, i32 noundef %add, i32 noundef 0) #7
  br label %if.end20

if.else13:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %27)
  %cmp15 = icmp ugt i32 %27, 17
  br i1 %cmp15, label %if.then16, label %if.else13.if.end24_crit_edge

if.else13.if.end24_crit_edge:                     ; preds = %if.else13
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end24

if.then16:                                        ; preds = %if.else13
  %crtc_offset17 = getelementptr inbounds %struct.radeon_crtc, ptr %crtc, i32 0, i32 5
  %34 = ptrtoint ptr %crtc_offset17 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %crtc_offset17, align 8
  %add18 = add i32 %35, 24832
  %rmmio_size.i102 = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 18
  %36 = ptrtoint ptr %rmmio_size.i102 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %rmmio_size.i102, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %37, i32 %add18)
  %cmp.i103 = icmp ugt i32 %37, %add18
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %add18)
  %cmp1.i104 = icmp ult i32 %add18, 65536
  %or.cond.i105 = or i1 %cmp1.i104, %cmp.i103
  br i1 %or.cond.i105, label %do.body.i108, label %if.else.i109

do.body.i108:                                     ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !40
  tail call void @arm_heavy_mb() #7
  %rmmio.i106 = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 31
  %38 = ptrtoint ptr %rmmio.i106 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %rmmio.i106, align 4
  %add.ptr.i107 = getelementptr i8, ptr %39, i32 %add18
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i107, i32 0) #7, !srcloc !41
  br label %if.end20

if.else.i109:                                     ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @r100_mm_wreg_slow(ptr noundef %3, i32 noundef %add18, i32 noundef 0) #7
  br label %if.end20

if.end20:                                         ; preds = %if.else.i109, %do.body.i108, %if.else.i, %do.body.i
  %40 = ptrtoint ptr %family to i32
  call void @__asan_load4_noabort(i32 %40)
  %.pr = load i32, ptr %family, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 50, i32 %.pr)
  %cmp22 = icmp ugt i32 %.pr, 50
  br i1 %cmp22, label %if.then23, label %if.end20.if.end24_crit_edge

if.end20.if.end24_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end24

if.then23:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #9
  %41 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %crtc, align 8
  %dev_private.i = getelementptr inbounds %struct.drm_device, ptr %42, i32 0, i32 5
  %43 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %dev_private.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %args.i) #7
  %45 = ptrtoint ptr %args.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 65536, ptr %args.i, align 4
  %crtc_id.i = getelementptr inbounds %struct.radeon_crtc, ptr %crtc, i32 0, i32 1
  %46 = ptrtoint ptr %crtc_id.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %crtc_id.i, align 8
  %conv.i = trunc i32 %47 to i8
  store i8 %conv.i, ptr %args.i, align 4
  %mode_info.i = getelementptr inbounds %struct.radeon_device, ptr %44, i32 0, i32 44
  %48 = ptrtoint ptr %mode_info.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %mode_info.i, align 4
  %call.i = call i32 @atom_execute_table(ptr noundef %49, i32 noundef 13, ptr noundef nonnull %args.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %args.i) #7
  br label %if.end24

if.end24:                                         ; preds = %if.then23, %if.end20.if.end24_crit_edge, %if.else13.if.end24_crit_edge
  %num_crtc = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 91
  %50 = ptrtoint ptr %num_crtc to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %num_crtc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %cmp25112 = icmp sgt i32 %51, 0
  br i1 %cmp25112, label %for.body.lr.ph, label %if.end24.for.end_crit_edge

if.end24.for.end_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end24
  %crtc_id = getelementptr inbounds %struct.radeon_crtc, ptr %crtc, i32 0, i32 1
  %pll_id = getelementptr inbounds %struct.radeon_crtc, ptr %crtc, i32 0, i32 23
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0113 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx26 = getelementptr %struct.radeon_device, ptr %3, i32 0, i32 44, i32 4, i32 %i.0113
  %52 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %arrayidx26, align 4
  %tobool27.not = icmp eq ptr %53, null
  br i1 %tobool27.not, label %for.body.for.inc_crit_edge, label %land.lhs.true

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %enabled = getelementptr inbounds %struct.radeon_crtc, ptr %53, i32 0, i32 2
  %54 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %enabled, align 4, !range !37
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %55)
  %tobool31.not = icmp eq i8 %55, 0
  br i1 %tobool31.not, label %land.lhs.true.for.inc_crit_edge, label %land.lhs.true32

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

land.lhs.true32:                                  ; preds = %land.lhs.true
  %56 = ptrtoint ptr %crtc_id to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %crtc_id, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0113, i32 %57)
  %cmp33.not = icmp eq i32 %i.0113, %57
  br i1 %cmp33.not, label %land.lhs.true32.for.inc_crit_edge, label %land.lhs.true34

land.lhs.true32.for.inc_crit_edge:                ; preds = %land.lhs.true32
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

land.lhs.true34:                                  ; preds = %land.lhs.true32
  %58 = ptrtoint ptr %pll_id to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %pll_id, align 4
  %pll_id38 = getelementptr inbounds %struct.radeon_crtc, ptr %53, i32 0, i32 23
  %60 = ptrtoint ptr %pll_id38 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %pll_id38, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %59, i32 %61)
  %cmp39 = icmp eq i32 %59, %61
  br i1 %cmp39, label %land.lhs.true34.done_crit_edge, label %land.lhs.true34.for.inc_crit_edge

land.lhs.true34.for.inc_crit_edge:                ; preds = %land.lhs.true34
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

land.lhs.true34.done_crit_edge:                   ; preds = %land.lhs.true34
  call void @__sanitizer_cov_trace_pc() #9
  br label %done

for.inc:                                          ; preds = %land.lhs.true34.for.inc_crit_edge, %land.lhs.true32.for.inc_crit_edge, %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.0113, 1
  %exitcond.not = icmp eq i32 %inc, %51
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end24.for.end_crit_edge
  %pll_id42 = getelementptr inbounds %struct.radeon_crtc, ptr %crtc, i32 0, i32 23
  %62 = ptrtoint ptr %pll_id42 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %pll_id42, align 4
  %64 = zext i32 %63 to i64
  call void @__sanitizer_cov_trace_switch(i64 %64, ptr @__sancov_gen_cov_switch_values.43)
  switch i32 %63, label %for.end.done_crit_edge [
    i32 0, label %for.end.done.sink.split_crit_edge
    i32 1, label %for.end.done.sink.split_crit_edge116
    i32 2, label %sw.bb45
  ]

for.end.done.sink.split_crit_edge116:             ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %done.sink.split

for.end.done.sink.split_crit_edge:                ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %done.sink.split

for.end.done_crit_edge:                           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %done

sw.bb45:                                          ; preds = %for.end
  %65 = ptrtoint ptr %family to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %family, align 4
  %switch.tableidx = add i32 %66, -51
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %switch.tableidx)
  %67 = icmp ult i32 %switch.tableidx, 10
  br i1 %67, label %switch.hole_check, label %sw.bb45.done_crit_edge

sw.bb45.done_crit_edge:                           ; preds = %sw.bb45
  call void @__sanitizer_cov_trace_pc() #9
  br label %done

switch.hole_check:                                ; preds = %sw.bb45
  %switch.maskindex = trunc i32 %switch.tableidx to i16
  %switch.shifted = lshr i16 705, %switch.maskindex
  %68 = and i16 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %68)
  %switch.lobit.not = icmp eq i16 %68, 0
  br i1 %switch.lobit.not, label %switch.hole_check.done_crit_edge, label %switch.hole_check.done.sink.split_crit_edge

switch.hole_check.done.sink.split_crit_edge:      ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #9
  br label %done.sink.split

switch.hole_check.done_crit_edge:                 ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #9
  br label %done

done.sink.split:                                  ; preds = %switch.hole_check.done.sink.split_crit_edge, %for.end.done.sink.split_crit_edge, %for.end.done.sink.split_crit_edge116
  %.sink115 = phi i32 [ %63, %for.end.done.sink.split_crit_edge ], [ %63, %for.end.done.sink.split_crit_edge116 ], [ 2, %switch.hole_check.done.sink.split_crit_edge ]
  %crtc_id43 = getelementptr inbounds %struct.radeon_crtc, ptr %crtc, i32 0, i32 1
  %69 = ptrtoint ptr %crtc_id43 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %crtc_id43, align 8
  call fastcc void @atombios_crtc_program_pll(ptr noundef %crtc, i32 noundef %70, i32 noundef %.sink115, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i1 noundef zeroext false, ptr noundef nonnull %ss)
  br label %done

done:                                             ; preds = %done.sink.split, %switch.hole_check.done_crit_edge, %sw.bb45.done_crit_edge, %for.end.done_crit_edge, %land.lhs.true34.done_crit_edge
  %pll_id60 = getelementptr inbounds %struct.radeon_crtc, ptr %crtc, i32 0, i32 23
  %71 = ptrtoint ptr %pll_id60 to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 255, ptr %pll_id60, align 4
  %adjusted_clock = getelementptr inbounds %struct.radeon_crtc, ptr %crtc, i32 0, i32 29
  %72 = ptrtoint ptr %adjusted_clock to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 0, ptr %adjusted_clock, align 8
  %encoder = getelementptr inbounds %struct.radeon_crtc, ptr %crtc, i32 0, i32 34
  %73 = ptrtoint ptr %encoder to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr null, ptr %encoder, align 4
  %connector = getelementptr inbounds %struct.radeon_crtc, ptr %crtc, i32 0, i32 35
  %74 = ptrtoint ptr %connector to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr null, ptr %connector, align 8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %ss) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @radeon_get_crtc_scanout_position(ptr noundef, i1 noundef zeroext, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @radeon_get_connector_for_encoder(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @radeon_crtc_scaling_mode_fixup(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @radeon_dp_mst_prepare_pll(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @radeon_encoder_get_dp_bridge_encoder_id(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @radeon_get_monitor_bpc(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @radeon_atombios_get_ppll_ss_info(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @radeon_dig_monitor_is_duallink(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @radeon_get_shared_dp_ppll(ptr noundef readonly %crtc) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %crtc, align 8
  %crtc_list = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 30, i32 20
  %2 = ptrtoint ptr %crtc_list to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn53 = load ptr, ptr %crtc_list, align 4
  %cmp.not54 = icmp eq ptr %.pn53, %crtc_list
  br i1 %cmp.not54, label %entry.cleanup_crit_edge, label %for.body.lr.ph

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body.lr.ph:                                   ; preds = %entry
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 5
  %3 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev_private, align 4
  %family = getelementptr inbounds %struct.radeon_device, ptr %4, i32 0, i32 6
  %flags = getelementptr inbounds %struct.radeon_device, ptr %4, i32 0, i32 7
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %.pn55 = phi ptr [ %.pn53, %for.body.lr.ph ], [ %.pn, %for.inc.for.body_crit_edge ]
  %test_crtc.0 = getelementptr i8, ptr %.pn55, i32 -8
  %cmp4 = icmp eq ptr %test_crtc.0, %crtc
  br i1 %cmp4, label %for.body.for.inc_crit_edge, label %if.end

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.end:                                           ; preds = %for.body
  %encoder = getelementptr i8, ptr %.pn55, i32 1228
  %5 = ptrtoint ptr %encoder to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %encoder, align 4
  %tobool.not = icmp eq ptr %6, null
  br i1 %tobool.not, label %if.end.for.inc_crit_edge, label %land.lhs.true

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

land.lhs.true:                                    ; preds = %if.end
  %call = tail call i32 @atombios_get_encoder_mode(ptr noundef nonnull %6) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp9 = icmp eq i32 %call, 0
  br i1 %cmp9, label %land.lhs.true.if.then13_crit_edge, label %lor.lhs.false

land.lhs.true.if.then13_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then13

lor.lhs.false:                                    ; preds = %land.lhs.true
  %7 = ptrtoint ptr %encoder to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %encoder, align 4
  %call11 = tail call i32 @atombios_get_encoder_mode(ptr noundef %8) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %call11)
  %cmp12 = icmp eq i32 %call11, 5
  br i1 %cmp12, label %lor.lhs.false.if.then13_crit_edge, label %lor.lhs.false.for.inc_crit_edge

lor.lhs.false.for.inc_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

lor.lhs.false.if.then13_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then13

if.then13:                                        ; preds = %lor.lhs.false.if.then13_crit_edge, %land.lhs.true.if.then13_crit_edge
  %9 = ptrtoint ptr %family to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %family, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 50, i32 %10)
  %cmp14 = icmp ugt i32 %10, 50
  br i1 %cmp14, label %land.lhs.true15, label %if.then13.if.end23_crit_edge

if.then13.if.end23_crit_edge:                     ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end23

land.lhs.true15:                                  ; preds = %if.then13
  %11 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %flags, align 8
  %and = and i32 %12, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool16.not = icmp eq i32 %and, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 56, i32 %10)
  %cmp19 = icmp ugt i32 %10, 56
  %or.cond = select i1 %tobool16.not, i1 true, i1 %cmp19
  br i1 %or.cond, label %land.lhs.true15.if.end23_crit_edge, label %land.lhs.true20

land.lhs.true15.if.end23_crit_edge:               ; preds = %land.lhs.true15
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end23

land.lhs.true20:                                  ; preds = %land.lhs.true15
  %pll_id = getelementptr i8, ptr %.pn55, i32 1172
  %13 = ptrtoint ptr %pll_id to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %pll_id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %14)
  %cmp21 = icmp eq i32 %14, 1
  br i1 %cmp21, label %land.lhs.true20.for.inc_crit_edge, label %land.lhs.true20.if.end23_crit_edge

land.lhs.true20.if.end23_crit_edge:               ; preds = %land.lhs.true20
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end23

land.lhs.true20.for.inc_crit_edge:                ; preds = %land.lhs.true20
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.end23:                                         ; preds = %land.lhs.true20.if.end23_crit_edge, %land.lhs.true15.if.end23_crit_edge, %if.then13.if.end23_crit_edge
  %pll_id24 = getelementptr i8, ptr %.pn55, i32 1172
  %15 = ptrtoint ptr %pll_id24 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %pll_id24, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %16)
  %cmp25.not = icmp eq i32 %16, 255
  br i1 %cmp25.not, label %if.end23.for.inc_crit_edge, label %if.end23.cleanup_crit_edge

if.end23.cleanup_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end23.for.inc_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

for.inc:                                          ; preds = %if.end23.for.inc_crit_edge, %land.lhs.true20.for.inc_crit_edge, %lor.lhs.false.for.inc_crit_edge, %if.end.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %17 = ptrtoint ptr %.pn55 to i32
  call void @__asan_load4_noabort(i32 %17)
  %.pn = load ptr, ptr %.pn55, align 4
  %cmp.not = icmp eq ptr %.pn, %crtc_list
  br i1 %cmp.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.end23.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 255, %entry.cleanup_crit_edge ], [ 255, %for.inc.cleanup_crit_edge ], [ %16, %if.end23.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @radeon_get_shared_nondp_ppll(ptr noundef readonly %crtc) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %crtc, align 8
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_private, align 4
  %adjusted_clock2 = getelementptr inbounds %struct.radeon_crtc, ptr %crtc, i32 0, i32 29
  %4 = ptrtoint ptr %adjusted_clock2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %adjusted_clock2, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp = icmp eq i32 %5, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %crtc_list = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 30, i32 20
  %6 = ptrtoint ptr %crtc_list to i32
  call void @__asan_load4_noabort(i32 %6)
  %.pn100 = load ptr, ptr %crtc_list, align 4
  %cmp8.not101 = icmp eq ptr %.pn100, %crtc_list
  br i1 %cmp8.not101, label %if.end.cleanup_crit_edge, label %for.body.lr.ph

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body.lr.ph:                                   ; preds = %if.end
  %family = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 6
  %flags = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 7
  %connector31 = getelementptr inbounds %struct.radeon_crtc, ptr %crtc, i32 0, i32 35
  %mode = getelementptr inbounds %struct.drm_crtc, ptr %crtc, i32 0, i32 12
  %ss_enabled = getelementptr inbounds %struct.radeon_crtc, ptr %crtc, i32 0, i32 28
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %.pn102 = phi ptr [ %.pn100, %for.body.lr.ph ], [ %.pn, %for.inc.for.body_crit_edge ]
  %test_crtc.0 = getelementptr i8, ptr %.pn102, i32 -8
  %cmp9 = icmp eq ptr %test_crtc.0, %crtc
  br i1 %cmp9, label %for.body.for.inc_crit_edge, label %if.end11

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.end11:                                         ; preds = %for.body
  %encoder = getelementptr i8, ptr %.pn102, i32 1228
  %7 = ptrtoint ptr %encoder to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %encoder, align 4
  %tobool.not = icmp eq ptr %8, null
  br i1 %tobool.not, label %if.end11.for.inc_crit_edge, label %land.lhs.true

if.end11.for.inc_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

land.lhs.true:                                    ; preds = %if.end11
  %call = tail call i32 @atombios_get_encoder_mode(ptr noundef nonnull %8) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp16 = icmp eq i32 %call, 0
  br i1 %cmp16, label %land.lhs.true.for.inc_crit_edge, label %lor.lhs.false

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

lor.lhs.false:                                    ; preds = %land.lhs.true
  %9 = ptrtoint ptr %encoder to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %encoder, align 4
  %call18 = tail call i32 @atombios_get_encoder_mode(ptr noundef %10) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %call18)
  %cmp19 = icmp eq i32 %call18, 5
  br i1 %cmp19, label %lor.lhs.false.for.inc_crit_edge, label %if.then20

lor.lhs.false.for.inc_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.then20:                                        ; preds = %lor.lhs.false
  %11 = ptrtoint ptr %family to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %family, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 50, i32 %12)
  %cmp21 = icmp ugt i32 %12, 50
  br i1 %cmp21, label %land.lhs.true22, label %if.then20.if.end30_crit_edge

if.then20.if.end30_crit_edge:                     ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end30

land.lhs.true22:                                  ; preds = %if.then20
  %13 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %flags, align 8
  %and = and i32 %14, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool23.not = icmp eq i32 %and, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 56, i32 %12)
  %cmp26 = icmp ugt i32 %12, 56
  %or.cond = select i1 %tobool23.not, i1 true, i1 %cmp26
  br i1 %or.cond, label %land.lhs.true22.if.end30_crit_edge, label %land.lhs.true27

land.lhs.true22.if.end30_crit_edge:               ; preds = %land.lhs.true22
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end30

land.lhs.true27:                                  ; preds = %land.lhs.true22
  %pll_id = getelementptr i8, ptr %.pn102, i32 1172
  %15 = ptrtoint ptr %pll_id to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %pll_id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %16)
  %cmp28 = icmp eq i32 %16, 1
  br i1 %cmp28, label %land.lhs.true27.for.inc_crit_edge, label %land.lhs.true27.if.end30_crit_edge

land.lhs.true27.if.end30_crit_edge:               ; preds = %land.lhs.true27
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end30

land.lhs.true27.for.inc_crit_edge:                ; preds = %land.lhs.true27
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.end30:                                         ; preds = %land.lhs.true27.if.end30_crit_edge, %land.lhs.true22.if.end30_crit_edge, %if.then20.if.end30_crit_edge
  %connector = getelementptr i8, ptr %.pn102, i32 1232
  %17 = ptrtoint ptr %connector to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %connector, align 8
  %19 = ptrtoint ptr %connector31 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %connector31, align 8
  %cmp32 = icmp eq ptr %18, %20
  br i1 %cmp32, label %if.then33, label %if.end30.if.end39_crit_edge

if.end30.if.end39_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end39

if.then33:                                        ; preds = %if.end30
  %pll_id34 = getelementptr i8, ptr %.pn102, i32 1172
  %21 = ptrtoint ptr %pll_id34 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %pll_id34, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %22)
  %cmp35.not = icmp eq i32 %22, 255
  br i1 %cmp35.not, label %if.then33.if.end39_crit_edge, label %if.then33.cleanup_crit_edge

if.then33.cleanup_crit_edge:                      ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then33.if.end39_crit_edge:                     ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end39

if.end39:                                         ; preds = %if.then33.if.end39_crit_edge, %if.end30.if.end39_crit_edge
  %23 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %mode, align 4
  %mode41 = getelementptr i8, ptr %.pn102, i32 164
  %25 = ptrtoint ptr %mode41 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %mode41, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %24, i32 %26)
  %cmp43 = icmp eq i32 %24, %26
  br i1 %cmp43, label %land.lhs.true44, label %if.end39.for.inc_crit_edge

if.end39.for.inc_crit_edge:                       ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

land.lhs.true44:                                  ; preds = %if.end39
  %adjusted_clock40 = getelementptr i8, ptr %.pn102, i32 1208
  %27 = ptrtoint ptr %adjusted_clock40 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %adjusted_clock40, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %28)
  %cmp45 = icmp eq i32 %5, %28
  br i1 %cmp45, label %land.lhs.true46, label %land.lhs.true44.for.inc_crit_edge

land.lhs.true44.for.inc_crit_edge:                ; preds = %land.lhs.true44
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

land.lhs.true46:                                  ; preds = %land.lhs.true44
  %29 = ptrtoint ptr %ss_enabled to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %ss_enabled, align 4, !range !37
  %ss_enabled48 = getelementptr i8, ptr %.pn102, i32 1204
  %31 = ptrtoint ptr %ss_enabled48 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %ss_enabled48, align 4, !range !37
  call void @__sanitizer_cov_trace_cmp1(i8 %30, i8 %32)
  %cmp51 = icmp eq i8 %30, %32
  br i1 %cmp51, label %land.lhs.true53, label %land.lhs.true46.for.inc_crit_edge

land.lhs.true46.for.inc_crit_edge:                ; preds = %land.lhs.true46
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

land.lhs.true53:                                  ; preds = %land.lhs.true46
  %pll_id54 = getelementptr i8, ptr %.pn102, i32 1172
  %33 = ptrtoint ptr %pll_id54 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %pll_id54, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %34)
  %cmp55.not = icmp eq i32 %34, 255
  br i1 %cmp55.not, label %land.lhs.true53.for.inc_crit_edge, label %land.lhs.true53.cleanup_crit_edge

land.lhs.true53.cleanup_crit_edge:                ; preds = %land.lhs.true53
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

land.lhs.true53.for.inc_crit_edge:                ; preds = %land.lhs.true53
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

for.inc:                                          ; preds = %land.lhs.true53.for.inc_crit_edge, %land.lhs.true46.for.inc_crit_edge, %land.lhs.true44.for.inc_crit_edge, %if.end39.for.inc_crit_edge, %land.lhs.true27.for.inc_crit_edge, %lor.lhs.false.for.inc_crit_edge, %land.lhs.true.for.inc_crit_edge, %if.end11.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %35 = ptrtoint ptr %.pn102 to i32
  call void @__asan_load4_noabort(i32 %35)
  %.pn = load ptr, ptr %.pn102, align 4
  %cmp8.not = icmp eq ptr %.pn, %crtc_list
  br i1 %cmp8.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %land.lhs.true53.cleanup_crit_edge, %if.then33.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 255, %entry.cleanup_crit_edge ], [ 255, %if.end.cleanup_crit_edge ], [ %22, %if.then33.cleanup_crit_edge ], [ %34, %land.lhs.true53.cleanup_crit_edge ], [ 255, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

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

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 16)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 16)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !13, !14, !15, !16, !17, !18, !20, !22, !24, !26}
!llvm.module.flags = !{!28, !29, !30, !31, !32, !33, !34, !35}
!llvm.ident = !{!36}

!0 = !{ptr @vga_control_regs, !1, !"vga_control_regs", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/radeon/atombios_crtc.c", i32 216, i32 18}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/radeon/atombios_crtc.c", i32 1163, i32 3}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/radeon/atombios_crtc.c", i32 1269, i32 3}
!6 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/radeon/atombios_crtc.c", i32 1293, i32 6}
!8 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/radeon/atombios_crtc.c", i32 1415, i32 3}
!10 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/radeon/radeon_object.h", i32 71, i32 4}
!12 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.7, !11, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.8, !11, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @radeon_bo_reserve._entry, !11, !"_entry", i1 false, i1 false}
!17 = !{ptr @radeon_bo_reserve._entry_ptr, !11, !"_entry_ptr", i1 false, i1 false}
!18 = distinct !{null, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../include/drm/ttm/ttm_bo_driver.h", i32 140, i32 7}
!20 = !{ptr @.str.10, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/gpu/drm/radeon/atombios_crtc.c", i32 811, i32 4}
!22 = !{ptr @atombios_helper_funcs, !23, !"atombios_helper_funcs", i1 false, i1 false}
!23 = !{!"../drivers/gpu/drm/radeon/atombios_crtc.c", i32 2222, i32 43}
!24 = !{ptr @.str.11, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/gpu/drm/radeon/atombios_crtc.c", i32 1907, i32 4}
!26 = !{ptr @.str.12, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/gpu/drm/radeon/atombios_crtc.c", i32 2169, i32 4}
!28 = !{i32 1, !"wchar_size", i32 2}
!29 = !{i32 1, !"min_enum_size", i32 4}
!30 = !{i32 8, !"branch-target-enforcement", i32 0}
!31 = !{i32 8, !"sign-return-address", i32 0}
!32 = !{i32 8, !"sign-return-address-all", i32 0}
!33 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!34 = !{i32 7, !"uwtable", i32 1}
!35 = !{i32 7, !"frame-pointer", i32 2}
!36 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!37 = !{i8 0, i8 2}
!38 = !{i64 4558521}
!39 = !{i64 2157611463}
!40 = !{i64 2157611870}
!41 = !{i64 4558103}
!42 = !{!"auto-init"}
!43 = !{!"branch_weights", i32 1, i32 4000, i32 1}
!44 = !{!"branch_weights", i32 2000, i32 1}
