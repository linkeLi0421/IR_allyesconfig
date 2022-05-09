; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/radeon/radeon_display.c_pt.bc'
source_filename = "../drivers/gpu/drm/radeon/radeon_display.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.drm_framebuffer_funcs = type { ptr, ptr, ptr }
%struct.drm_mode_config_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.drm_prop_enum_list = type { i32, ptr }
%struct.drm_crtc_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.dma_fence_ops = type { i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_crtc = type { ptr, ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, ptr, ptr, i32, i32, i32, i8, %struct.drm_display_mode, %struct.drm_display_mode, i32, i32, ptr, i32, ptr, ptr, %struct.drm_object_properties, ptr, ptr, %struct.list_head, %struct.spinlock, ptr, %struct.drm_crtc_crc, i32, %struct.spinlock, i32, [32 x i8], ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.drm_mode_object = type { i32, i32, ptr, %struct.kref, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }
%struct.drm_object_properties = type { i32, [24 x ptr], [24 x i64] }
%struct.list_head = type { ptr, ptr }
%struct.drm_crtc_crc = type { %struct.spinlock, ptr, i8, i8, ptr, i32, i32, i32, %struct.wait_queue_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.78, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.90, ptr, i32, ptr, i8, i32 }
%struct.anon.78 = type { %struct.list_head, ptr, %struct.spinlock }
%struct.drm_mode_config = type { %struct.mutex, %struct.drm_modeset_lock, ptr, %struct.mutex, %struct.idr, %struct.idr, %struct.mutex, i32, %struct.list_head, %struct.spinlock, i32, %struct.ida, %struct.list_head, %struct.llist_head, %struct.work_struct, i32, %struct.list_head, i32, %struct.list_head, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, ptr, i32, i8, i8, i8, %struct.delayed_work, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, ptr, i32, i32, ptr, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.llist_head = type { ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.drm_open_hash = type { ptr, i8 }
%struct.anon.90 = type { i32, ptr }
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
%struct.ttm_pool = type { ptr, i8, i8, [3 x %struct.anon.93] }
%struct.anon.93 = type { [12 x %struct.ttm_pool_type] }
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
%struct.radeon_crtc = type { %struct.drm_crtc, i32, i8, i8, i8, i32, ptr, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, %union.dfixed, %union.dfixed, %struct.drm_display_mode, i32, ptr, ptr, i32, %struct.radeon_atom_ss, i8, i32, i32, i32, i32, i32, ptr, ptr, i32, i32, i32, i32, %struct.drm_display_mode, i32 }
%struct.radeon_atom_ss = type { i16, i16, i8, i16, i8, i8, i8, i16, i16 }
%struct.radeon_asic = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.anon.99, %struct.anon.100, [8 x ptr], %struct.anon.101, %struct.anon.102, %struct.anon.103, %struct.anon.104, %struct.anon.105, %struct.anon.106, %struct.anon.107, %struct.anon.108 }
%struct.anon.99 = type { ptr, ptr, ptr }
%struct.anon.100 = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.anon.101 = type { ptr, ptr }
%struct.anon.102 = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.anon.103 = type { ptr, i32, ptr, i32, ptr, i32 }
%struct.anon.104 = type { ptr, ptr }
%struct.anon.105 = type { ptr, ptr, ptr, ptr }
%struct.anon.106 = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.anon.107 = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.anon.108 = type { ptr, ptr }
%struct.radeon_flip_work = type { %struct.work_struct, %struct.work_struct, ptr, i32, i32, i64, ptr, ptr, ptr, i8 }
%struct.drm_framebuffer = type { ptr, %struct.list_head, %struct.drm_mode_object, [16 x i8], ptr, ptr, [4 x i32], [4 x i32], i64, i32, i32, i32, i32, i32, %struct.list_head, [4 x ptr] }
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
%struct.radeon_i2c_bus_rec = type { i8, i8, i32, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.drm_dp_aux = type { ptr, %struct.i2c_adapter, ptr, ptr, ptr, %struct.mutex, %struct.work_struct, i8, ptr, i32, i32, %struct.drm_dp_aux_cec, i8 }
%struct.drm_dp_aux_cec = type { %struct.mutex, ptr, ptr, %struct.delayed_work }
%struct.radeon_afmt = type { i8, i32, i8, i32 }
%struct.drm_mode_fb_cmd2 = type { i32, i32, i32, i32, i32, [4 x i32], [4 x i32], [4 x i32], [4 x i64] }
%struct.drm_gem_object = type { %struct.kref, i32, ptr, ptr, %struct.drm_vma_offset_node, i32, i32, ptr, ptr, ptr, %struct.dma_resv, ptr }
%struct.drm_vma_offset_node = type { %struct.rwlock_t, %struct.drm_mm_node, %struct.rb_root, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.drm_mm_node = type { i32, i64, i64, ptr, %struct.list_head, %struct.list_head, %struct.rb_node, %struct.rb_node, %struct.rb_node, i64, i64, i64, i32, i32 }
%struct.dma_resv = type { %struct.ww_mutex, %struct.seqcount_ww_mutex, ptr, ptr }
%struct.seqcount_ww_mutex = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.drm_mode_set = type { ptr, ptr, ptr, i32, i32, ptr, i32 }
%struct.drm_plane = type { ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, i32, ptr, i32, i8, ptr, i32, ptr, ptr, ptr, ptr, %struct.drm_object_properties, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dma_fence = type { ptr, ptr, %union.anon.80, i64, i64, i32, %struct.kref, i32 }
%union.anon.80 = type { i64 }
%struct.drm_format_info = type { i32, i8, i8, %union.anon.85, [4 x i8], [4 x i8], i8, i8, i8, i8 }
%union.anon.85 = type { [4 x i8] }
%struct.radeon_bo = type { %struct.list_head, i32, [4 x %struct.ttm_place], %struct.ttm_placement, %struct.ttm_buffer_object, %struct.ttm_bo_kmap_obj, i32, ptr, i32, i32, i32, i32, %struct.list_head, ptr, i32, %struct.mmu_interval_notifier }
%struct.ttm_place = type { i32, i32, i32, i32 }
%struct.ttm_placement = type { i32, ptr, i32, ptr }
%struct.ttm_buffer_object = type { %struct.drm_gem_object, ptr, i32, i32, ptr, %struct.kref, ptr, ptr, i8, %struct.list_head, %struct.list_head, ptr, i32, i32, ptr }
%struct.ttm_bo_kmap_obj = type { ptr, ptr, i32, ptr }
%struct.mmu_interval_notifier = type { %struct.interval_tree_node, ptr, ptr, %struct.hlist_node, i32 }
%struct.interval_tree_node = type { %struct.rb_node, i32, i32, i32 }
%struct.radeon_fence = type { %struct.dma_fence, ptr, i64, i32, i8, %struct.wait_queue_entry }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }

@radeon_use_pflipirq = external dso_local local_unnamed_addr global i32, align 4
@.str = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"radeon_crtc->flip_status = %d != RADEON_FLIP_SUBMITTED(%d)\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"%d - %d, pll dividers - fb: %d.%d ref: %d, post %d\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"PLL freq %llu %u %u\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"%lld %d, pll dividers - fb: %d.%d ref: %d, post %d\0A\00", [44 x i8] zeroinitializer }, align 32
@radeon_fb_funcs = internal constant { %struct.drm_framebuffer_funcs, [20 x i8] } { %struct.drm_framebuffer_funcs { ptr @drm_gem_fb_destroy, ptr @drm_gem_fb_create_handle, ptr null }, [20 x i8] zeroinitializer }, align 32
@radeon_disp_priority = external dso_local local_unnamed_addr global i32, align 4
@radeon_mode_funcs = internal constant { %struct.drm_mode_config_funcs, [60 x i8] } { %struct.drm_mode_config_funcs { ptr @radeon_user_framebuffer_create, ptr null, ptr @drm_fb_helper_output_poll_changed, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Scaling not consistent across encoder.\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d\0A\00", [28 x i8] zeroinitializer }, align 32
@radeon_user_framebuffer_create._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.8, i32 1321, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"No GEM object associated to handle 0x%08X, can't create framebuffer\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"radeon_user_framebuffer_create\00", [33 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"drivers/gpu/drm/radeon/radeon_display.c\00", [56 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@radeon_user_framebuffer_create._entry_ptr = internal global ptr @radeon_user_framebuffer_create._entry, section ".printk_index", align 4
@.str.11 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"Cannot create framebuffer from imported dma_buf\0A\00", [47 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.12 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"coherent\00", [23 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"tmds_pll\00", [23 x i8] zeroinitializer }, align 32
@radeon_tmds_pll_enum_list = internal constant { [2 x %struct.drm_prop_enum_list], [16 x i8] } { [2 x %struct.drm_prop_enum_list] [%struct.drm_prop_enum_list { i32 0, ptr @.str.22 }, %struct.drm_prop_enum_list { i32 1, ptr @.str.23 }], [16 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"load detection\00", [17 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"tv standard\00", [20 x i8] zeroinitializer }, align 32
@radeon_tv_std_enum_list = internal constant { [8 x %struct.drm_prop_enum_list], [32 x i8] } { [8 x %struct.drm_prop_enum_list] [%struct.drm_prop_enum_list { i32 0, ptr @.str.24 }, %struct.drm_prop_enum_list { i32 1, ptr @.str.25 }, %struct.drm_prop_enum_list { i32 2, ptr @.str.26 }, %struct.drm_prop_enum_list { i32 3, ptr @.str.27 }, %struct.drm_prop_enum_list { i32 4, ptr @.str.28 }, %struct.drm_prop_enum_list { i32 5, ptr @.str.29 }, %struct.drm_prop_enum_list { i32 7, ptr @.str.30 }, %struct.drm_prop_enum_list { i32 6, ptr @.str.31 }], [32 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"underscan\00", [22 x i8] zeroinitializer }, align 32
@radeon_underscan_enum_list = internal constant { [3 x %struct.drm_prop_enum_list], [40 x i8] } { [3 x %struct.drm_prop_enum_list] [%struct.drm_prop_enum_list { i32 0, ptr @.str.32 }, %struct.drm_prop_enum_list { i32 1, ptr @.str.33 }, %struct.drm_prop_enum_list { i32 2, ptr @.str.34 }], [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"underscan hborder\00", [46 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"underscan vborder\00", [46 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"audio\00", [26 x i8] zeroinitializer }, align 32
@radeon_audio_enum_list = internal constant { [3 x %struct.drm_prop_enum_list], [40 x i8] } { [3 x %struct.drm_prop_enum_list] [%struct.drm_prop_enum_list { i32 0, ptr @.str.32 }, %struct.drm_prop_enum_list { i32 1, ptr @.str.33 }, %struct.drm_prop_enum_list { i32 2, ptr @.str.34 }], [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"dither\00", [25 x i8] zeroinitializer }, align 32
@radeon_dither_enum_list = internal constant { [2 x %struct.drm_prop_enum_list], [16 x i8] } { [2 x %struct.drm_prop_enum_list] [%struct.drm_prop_enum_list { i32 0, ptr @.str.32 }, %struct.drm_prop_enum_list { i32 1, ptr @.str.33 }], [16 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"output_csc\00", [21 x i8] zeroinitializer }, align 32
@radeon_output_csc_enum_list = internal constant { [4 x %struct.drm_prop_enum_list], [32 x i8] } { [4 x %struct.drm_prop_enum_list] [%struct.drm_prop_enum_list { i32 0, ptr @.str.35 }, %struct.drm_prop_enum_list { i32 1, ptr @.str.36 }, %struct.drm_prop_enum_list { i32 2, ptr @.str.37 }, %struct.drm_prop_enum_list { i32 3, ptr @.str.38 }], [32 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"driver\00", [25 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"bios\00", [27 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ntsc\00", [27 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"pal\00", [28 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"pal-m\00", [26 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"pal-60\00", [25 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ntsc-j\00", [25 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"scart-pal\00", [22 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"pal-cn\00", [25 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"secam\00", [26 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"off\00", [28 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"on\00", [29 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"auto\00", [27 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"bypass\00", [25 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"tvrgb\00", [26 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ycbcr601\00", [23 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ycbcr709\00", [23 x i8] zeroinitializer }, align 32
@radeon_crtc_funcs = internal constant { %struct.drm_crtc_funcs, [32 x i8] } { %struct.drm_crtc_funcs { ptr null, ptr null, ptr @radeon_crtc_cursor_set2, ptr @radeon_crtc_cursor_move, ptr @radeon_crtc_gamma_set, ptr @radeon_crtc_destroy, ptr @radeon_crtc_set_config, ptr null, ptr @radeon_crtc_page_flip_target, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @radeon_get_vblank_counter_kms, ptr @radeon_enable_vblank_kms, ptr @radeon_disable_vblank_kms, ptr @drm_crtc_vblank_helper_get_vblank_timestamp }, [32 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"radeon-crtc\00", [20 x i8] zeroinitializer }, align 32
@radeon_r4xx_atom = external dso_local local_unnamed_addr global i32, align 4
@radeon_crtc_page_flip_target.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.40 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"(work_completion)(&work->flip_work)\00", [60 x i8] zeroinitializer }, align 32
@radeon_crtc_page_flip_target.__key.41 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.42 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"(work_completion)(&work->unpin_work)\00", [59 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"flip-ioctl() cur_rbo = %p, new_rbo = %p\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"failed to reserve new rbo buffer before flip\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"failed to pin new rbo buffer before flip\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"flip queue: crtc already busy\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"failed to reserve new rbo in error path\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"failed to wait on page flip fence (%d)!\0A\00", [55 x i8] zeroinitializer }, align 32
@radeon_fence_ops = external dso_local constant %struct.dma_fence_ops, align 4
@.str.49 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"failed to reserve buffer after flip\0A\00", [59 x i8] zeroinitializer }, align 32
@radeon_bo_reserve._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.51, ptr @.str.52, i32 71, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"%p reserve failed\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"radeon_bo_reserve\00", [46 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"drivers/gpu/drm/radeon/radeon_object.h\00", [57 x i8] zeroinitializer }, align 32
@radeon_bo_reserve._entry_ptr = internal global ptr @radeon_bo_reserve._entry, section ".printk_index", align 4
@dma_resv_excl_fence.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.54 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/dma-resv.h\00", [39 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@radeon_print_display_setup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.57, ptr @.str.8, i32 772, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\016[drm] Radeon Display Connectors\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"radeon_print_display_setup\00", [37 x i8] zeroinitializer }, align 32
@radeon_print_display_setup._entry_ptr = internal global ptr @radeon_print_display_setup._entry, section ".printk_index", align 4
@radeon_print_display_setup._entry.58 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.57, ptr @.str.8, i32 775, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"\016[drm] Connector %d:\0A\00", [41 x i8] zeroinitializer }, align 32
@radeon_print_display_setup._entry_ptr.60 = internal global ptr @radeon_print_display_setup._entry.58, section ".printk_index", align 4
@radeon_print_display_setup._entry.61 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.57, ptr @.str.8, i32 776, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"\016[drm]   %s\0A\00", [18 x i8] zeroinitializer }, align 32
@radeon_print_display_setup._entry_ptr.63 = internal global ptr @radeon_print_display_setup._entry.61, section ".printk_index", align 4
@radeon_print_display_setup._entry.64 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.57, ptr @.str.8, i32 778, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@radeon_print_display_setup._entry_ptr.65 = internal global ptr @radeon_print_display_setup._entry.64, section ".printk_index", align 4
@hpd_names = internal constant { [6 x ptr], [40 x i8] } { [6 x ptr] [ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119], [40 x i8] zeroinitializer }, align 32
@radeon_print_display_setup._entry.66 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.67, ptr @.str.57, ptr @.str.8, i32 788, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\016[drm]   DDC: 0x%x 0x%x 0x%x 0x%x 0x%x 0x%x 0x%x 0x%x\0A\00", [40 x i8] zeroinitializer }, align 32
@radeon_print_display_setup._entry_ptr.68 = internal global ptr @radeon_print_display_setup._entry.66, section ".printk_index", align 4
@radeon_print_display_setup._entry.69 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.70, ptr @.str.57, ptr @.str.8, i32 792, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\016[drm]   DDC Router 0x%x/0x%x\0A\00", [32 x i8] zeroinitializer }, align 32
@radeon_print_display_setup._entry_ptr.71 = internal global ptr @radeon_print_display_setup._entry.69, section ".printk_index", align 4
@radeon_print_display_setup._entry.72 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.73, ptr @.str.57, ptr @.str.8, i32 796, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\016[drm]   Clock/Data Router 0x%x/0x%x\0A\00", [57 x i8] zeroinitializer }, align 32
@radeon_print_display_setup._entry_ptr.74 = internal global ptr @radeon_print_display_setup._entry.72, section ".printk_index", align 4
@radeon_print_display_setup._entry.75 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.76, ptr @.str.57, ptr @.str.8, i32 804, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [94 x i8], [34 x i8] } { [94 x i8] c"\016[drm]   DDC: no ddc bus - possible BIOS bug - please report to xorg-driver-ati@lists.x.org\0A\00", [34 x i8] zeroinitializer }, align 32
@radeon_print_display_setup._entry_ptr.77 = internal global ptr @radeon_print_display_setup._entry.75, section ".printk_index", align 4
@radeon_print_display_setup._entry.78 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.79, ptr @.str.57, ptr @.str.8, i32 806, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"\016[drm]   Encoders:\0A\00", [43 x i8] zeroinitializer }, align 32
@radeon_print_display_setup._entry_ptr.80 = internal global ptr @radeon_print_display_setup._entry.78, section ".printk_index", align 4
@radeon_print_display_setup._entry.81 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.82, ptr @.str.57, ptr @.str.8, i32 812, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\016[drm]     CRT1: %s\0A\00", [42 x i8] zeroinitializer }, align 32
@radeon_print_display_setup._entry_ptr.83 = internal global ptr @radeon_print_display_setup._entry.81, section ".printk_index", align 4
@encoder_names = internal constant { [38 x ptr], [40 x i8] } { [38 x ptr] [ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @.str.133, ptr @.str.134, ptr @.str.135, ptr @.str.136, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.146, ptr @.str.147, ptr @.str.148, ptr @.str.149, ptr @.str.150, ptr @.str.151, ptr @.str.152, ptr @.str.153, ptr @.str.154, ptr @.str.155, ptr @.str.156, ptr @.str.157], [40 x i8] zeroinitializer }, align 32
@radeon_print_display_setup._entry.84 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.85, ptr @.str.57, ptr @.str.8, i32 814, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\016[drm]     CRT2: %s\0A\00", [42 x i8] zeroinitializer }, align 32
@radeon_print_display_setup._entry_ptr.86 = internal global ptr @radeon_print_display_setup._entry.84, section ".printk_index", align 4
@radeon_print_display_setup._entry.87 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.88, ptr @.str.57, ptr @.str.8, i32 816, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\016[drm]     LCD1: %s\0A\00", [42 x i8] zeroinitializer }, align 32
@radeon_print_display_setup._entry_ptr.89 = internal global ptr @radeon_print_display_setup._entry.87, section ".printk_index", align 4
@radeon_print_display_setup._entry.90 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.91, ptr @.str.57, ptr @.str.8, i32 818, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\016[drm]     DFP1: %s\0A\00", [42 x i8] zeroinitializer }, align 32
@radeon_print_display_setup._entry_ptr.92 = internal global ptr @radeon_print_display_setup._entry.90, section ".printk_index", align 4
@radeon_print_display_setup._entry.93 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.94, ptr @.str.57, ptr @.str.8, i32 820, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\016[drm]     DFP2: %s\0A\00", [42 x i8] zeroinitializer }, align 32
@radeon_print_display_setup._entry_ptr.95 = internal global ptr @radeon_print_display_setup._entry.93, section ".printk_index", align 4
@radeon_print_display_setup._entry.96 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.97, ptr @.str.57, ptr @.str.8, i32 822, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\016[drm]     DFP3: %s\0A\00", [42 x i8] zeroinitializer }, align 32
@radeon_print_display_setup._entry_ptr.98 = internal global ptr @radeon_print_display_setup._entry.96, section ".printk_index", align 4
@radeon_print_display_setup._entry.99 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.100, ptr @.str.57, ptr @.str.8, i32 824, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\016[drm]     DFP4: %s\0A\00", [42 x i8] zeroinitializer }, align 32
@radeon_print_display_setup._entry_ptr.101 = internal global ptr @radeon_print_display_setup._entry.99, section ".printk_index", align 4
@radeon_print_display_setup._entry.102 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.103, ptr @.str.57, ptr @.str.8, i32 826, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\016[drm]     DFP5: %s\0A\00", [42 x i8] zeroinitializer }, align 32
@radeon_print_display_setup._entry_ptr.104 = internal global ptr @radeon_print_display_setup._entry.102, section ".printk_index", align 4
@radeon_print_display_setup._entry.105 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.106, ptr @.str.57, ptr @.str.8, i32 828, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\016[drm]     DFP6: %s\0A\00", [42 x i8] zeroinitializer }, align 32
@radeon_print_display_setup._entry_ptr.107 = internal global ptr @radeon_print_display_setup._entry.105, section ".printk_index", align 4
@radeon_print_display_setup._entry.108 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.109, ptr @.str.57, ptr @.str.8, i32 830, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"\016[drm]     TV1: %s\0A\00", [43 x i8] zeroinitializer }, align 32
@radeon_print_display_setup._entry_ptr.110 = internal global ptr @radeon_print_display_setup._entry.108, section ".printk_index", align 4
@radeon_print_display_setup._entry.111 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.112, ptr @.str.57, ptr @.str.8, i32 832, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"\016[drm]     CV: %s\0A\00", [44 x i8] zeroinitializer }, align 32
@radeon_print_display_setup._entry_ptr.113 = internal global ptr @radeon_print_display_setup._entry.111, section ".printk_index", align 4
@.str.114 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"HPD1\00", [27 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"HPD2\00", [27 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"HPD3\00", [27 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"HPD4\00", [27 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"HPD5\00", [27 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"HPD6\00", [27 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"NONE\00", [27 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"INTERNAL_LVDS\00", [18 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"INTERNAL_TMDS1\00", [17 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"INTERNAL_TMDS2\00", [17 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"INTERNAL_DAC1\00", [18 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"INTERNAL_DAC2\00", [18 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"INTERNAL_SDVOA\00", [17 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"INTERNAL_SDVOB\00", [17 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"SI170B\00", [25 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"CH7303\00", [25 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"CH7301\00", [25 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"INTERNAL_DVO1\00", [18 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"EXTERNAL_SDVOA\00", [17 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"EXTERNAL_SDVOB\00", [17 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"TITFP513\00", [23 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"INTERNAL_LVTM1\00", [17 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"VT1623\00", [25 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"HDMI_SI1930\00", [20 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"HDMI_INTERNAL\00", [18 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"INTERNAL_KLDSCP_TMDS1\00", [42 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"INTERNAL_KLDSCP_DVO1\00", [43 x i8] zeroinitializer }, align 32
@.str.141 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"INTERNAL_KLDSCP_DAC1\00", [43 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"INTERNAL_KLDSCP_DAC2\00", [43 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"SI178\00", [26 x i8] zeroinitializer }, align 32
@.str.144 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"MVPU_FPGA\00", [22 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"INTERNAL_DDI\00", [19 x i8] zeroinitializer }, align 32
@.str.146 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"VT1625\00", [25 x i8] zeroinitializer }, align 32
@.str.147 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"HDMI_SI1932\00", [20 x i8] zeroinitializer }, align 32
@.str.148 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"DP_AN9801\00", [22 x i8] zeroinitializer }, align 32
@.str.149 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"DP_DP501\00", [23 x i8] zeroinitializer }, align 32
@.str.150 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"INTERNAL_UNIPHY\00", [16 x i8] zeroinitializer }, align 32
@.str.151 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"INTERNAL_KLDSCP_LVTMA\00", [42 x i8] zeroinitializer }, align 32
@.str.152 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"INTERNAL_UNIPHY1\00", [47 x i8] zeroinitializer }, align 32
@.str.153 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"INTERNAL_UNIPHY2\00", [47 x i8] zeroinitializer }, align 32
@.str.154 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"NUTMEG\00", [25 x i8] zeroinitializer }, align 32
@.str.155 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"TRAVIS\00", [25 x i8] zeroinitializer }, align 32
@.str.156 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"INTERNAL_VCE\00", [19 x i8] zeroinitializer }, align 32
@.str.157 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"INTERNAL_UNIPHY3\00", [47 x i8] zeroinitializer }, align 32
@radeon_afmt_init.eg_offsets = internal constant { [7 x i32], [36 x i8] } { [7 x i32] [i32 0, i32 3072, i32 38912, i32 41984, i32 45056, i32 48128, i32 51200], [36 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5]
@__sancov_gen_cov_switch_values.158 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.159 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.160 = internal global [10 x i64] [i64 8, i64 32, i64 5, i64 7, i64 9, i64 10, i64 11, i64 13, i64 14, i64 15]
@__sancov_gen_cov_switch_values.161 = internal global [12 x i64] [i64 10, i64 32, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15, i64 16, i64 17, i64 21]
@__sancov_gen_cov_switch_values.162 = internal global [8 x i64] [i64 6, i64 32, i64 1, i64 2, i64 3, i64 4, i64 11, i64 12]
@__sancov_gen_cov_switch_values.163 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.164 = internal global [6 x i64] [i64 4, i64 16, i64 480, i64 576, i64 720, i64 1080]
@__sancov_gen_cov_switch_values.165 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294966784]
@__sancov_gen_cov_switch_values.166 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.167 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294966784]
@__sancov_gen_cov_switch_values.168 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294966784]
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.629, i32 307, i32 3 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.629, i32 1088, i32 2 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.629, i32 1127, i32 2 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.629, i32 1280, i32 2 }
@___asan_gen_.181 = private unnamed_addr constant [16 x i8] c"radeon_fb_funcs\00", align 1
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.629, i32 1287, i32 43 }
@___asan_gen_.184 = private unnamed_addr constant [18 x i8] c"radeon_mode_funcs\00", align 1
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.629, i32 1348, i32 43 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.629, i32 1748, i32 5 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.629, i32 129, i32 2 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.629, i32 1320, i32 3 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.629, i32 1327, i32 3 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.629, i32 1400, i32 46 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.629, i32 1409, i32 10 }
@___asan_gen_.220 = private unnamed_addr constant [26 x i8] c"radeon_tmds_pll_enum_list\00", align 1
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.629, i32 1353, i32 40 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.629, i32 1414, i32 44 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.629, i32 1423, i32 9 }
@___asan_gen_.229 = private unnamed_addr constant [24 x i8] c"radeon_tv_std_enum_list\00", align 1
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.629, i32 1358, i32 40 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.629, i32 1429, i32 9 }
@___asan_gen_.235 = private unnamed_addr constant [27 x i8] c"radeon_underscan_enum_list\00", align 1
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.629, i32 1369, i32 40 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.629, i32 1434, i32 6 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.629, i32 1440, i32 6 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.629, i32 1447, i32 7 }
@___asan_gen_.247 = private unnamed_addr constant [23 x i8] c"radeon_audio_enum_list\00", align 1
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.629, i32 1375, i32 40 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.629, i32 1453, i32 7 }
@___asan_gen_.253 = private unnamed_addr constant [24 x i8] c"radeon_dither_enum_list\00", align 1
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.629, i32 1382, i32 40 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.629, i32 1459, i32 7 }
@___asan_gen_.259 = private unnamed_addr constant [28 x i8] c"radeon_output_csc_enum_list\00", align 1
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.629, i32 1387, i32 40 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.629, i32 1354, i32 8 }
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.629, i32 1355, i32 7 }
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.629, i32 1359, i32 18 }
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.629, i32 1360, i32 16 }
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.629, i32 1361, i32 18 }
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.629, i32 1362, i32 19 }
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.629, i32 1363, i32 19 }
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.629, i32 1364, i32 22 }
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.629, i32 1365, i32 19 }
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.629, i32 1366, i32 18 }
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.629, i32 1370, i32 20 }
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.629, i32 1371, i32 18 }
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.629, i32 1372, i32 20 }
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.629, i32 1388, i32 31 }
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.629, i32 1389, i32 29 }
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.629, i32 1390, i32 32 }
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.629, i32 1391, i32 32 }
@___asan_gen_.313 = private unnamed_addr constant [18 x i8] c"radeon_crtc_funcs\00", align 1
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.629, i32 662, i32 36 }
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.629, i32 688, i32 44 }
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.629, i32 500, i32 2 }
@___asan_gen_.325 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.629, i32 501, i32 2 }
@___asan_gen_.333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.629, i32 519, i32 2 }
@___asan_gen_.336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.629, i32 524, i32 3 }
@___asan_gen_.339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.629, i32 533, i32 3 }
@___asan_gen_.342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.629, i32 583, i32 3 }
@___asan_gen_.345 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.629, i32 601, i32 3 }
@___asan_gen_.348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.629, i32 437, i32 4 }
@___asan_gen_.351 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.629, i32 276, i32 3 }
@___asan_gen_.362 = private unnamed_addr constant [42 x i8] c"../drivers/gpu/drm/radeon/radeon_object.h\00", align 1
@___asan_gen_.363 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 71, i32 4 }
@___asan_gen_.368 = private unnamed_addr constant [28 x i8] c"../include/linux/dma-resv.h\00", align 1
@___asan_gen_.369 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.368, i32 440, i32 9 }
@___asan_gen_.378 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.629, i32 772, i32 2 }
@___asan_gen_.384 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.629, i32 775, i32 3 }
@___asan_gen_.390 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.629, i32 776, i32 3 }
@___asan_gen_.393 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.629, i32 778, i32 4 }
@___asan_gen_.394 = private unnamed_addr constant [10 x i8] c"hpd_names\00", align 1
@___asan_gen_.396 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.629, i32 754, i32 20 }
@___asan_gen_.402 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.629, i32 780, i32 4 }
@___asan_gen_.408 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.629, i32 790, i32 5 }
@___asan_gen_.414 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.629, i32 794, i32 5 }
@___asan_gen_.420 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.629, i32 804, i32 5 }
@___asan_gen_.426 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.629, i32 806, i32 3 }
@___asan_gen_.432 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.629, i32 812, i32 6 }
@___asan_gen_.433 = private unnamed_addr constant [14 x i8] c"encoder_names\00", align 1
@___asan_gen_.435 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.629, i32 713, i32 20 }
@___asan_gen_.441 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.629, i32 814, i32 6 }
@___asan_gen_.447 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.629, i32 816, i32 6 }
@___asan_gen_.453 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.629, i32 818, i32 6 }
@___asan_gen_.459 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.629, i32 820, i32 6 }
@___asan_gen_.465 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.629, i32 822, i32 6 }
@___asan_gen_.471 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.629, i32 824, i32 6 }
@___asan_gen_.477 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.629, i32 826, i32 6 }
@___asan_gen_.483 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.629, i32 828, i32 6 }
@___asan_gen_.489 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.629, i32 830, i32 6 }
@___asan_gen_.490 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.495 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.629, i32 832, i32 6 }
@___asan_gen_.498 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.629, i32 755, i32 2 }
@___asan_gen_.501 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.629, i32 756, i32 2 }
@___asan_gen_.504 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.629, i32 757, i32 2 }
@___asan_gen_.507 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.629, i32 758, i32 2 }
@___asan_gen_.510 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.629, i32 759, i32 2 }
@___asan_gen_.513 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.629, i32 760, i32 2 }
@___asan_gen_.516 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.629, i32 714, i32 2 }
@___asan_gen_.519 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.629, i32 715, i32 2 }
@___asan_gen_.522 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.629, i32 716, i32 2 }
@___asan_gen_.525 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.629, i32 717, i32 2 }
@___asan_gen_.528 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.629, i32 718, i32 2 }
@___asan_gen_.531 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.629, i32 719, i32 2 }
@___asan_gen_.534 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.629, i32 720, i32 2 }
@___asan_gen_.537 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.629, i32 721, i32 2 }
@___asan_gen_.540 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.629, i32 722, i32 2 }
@___asan_gen_.543 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.629, i32 723, i32 2 }
@___asan_gen_.546 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.629, i32 724, i32 2 }
@___asan_gen_.549 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.629, i32 725, i32 2 }
@___asan_gen_.552 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.629, i32 726, i32 2 }
@___asan_gen_.555 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.629, i32 727, i32 2 }
@___asan_gen_.558 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.629, i32 728, i32 2 }
@___asan_gen_.561 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.629, i32 729, i32 2 }
@___asan_gen_.564 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.629, i32 730, i32 2 }
@___asan_gen_.567 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.629, i32 731, i32 2 }
@___asan_gen_.570 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.629, i32 732, i32 2 }
@___asan_gen_.573 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.629, i32 733, i32 2 }
@___asan_gen_.576 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.629, i32 734, i32 2 }
@___asan_gen_.579 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.629, i32 735, i32 2 }
@___asan_gen_.582 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.629, i32 736, i32 2 }
@___asan_gen_.585 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.629, i32 737, i32 2 }
@___asan_gen_.588 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.629, i32 738, i32 2 }
@___asan_gen_.591 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.629, i32 739, i32 2 }
@___asan_gen_.594 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.629, i32 740, i32 2 }
@___asan_gen_.597 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.629, i32 741, i32 2 }
@___asan_gen_.600 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.629, i32 742, i32 2 }
@___asan_gen_.603 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.629, i32 743, i32 2 }
@___asan_gen_.606 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.629, i32 744, i32 2 }
@___asan_gen_.609 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.629, i32 745, i32 2 }
@___asan_gen_.612 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.629, i32 746, i32 2 }
@___asan_gen_.615 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.629, i32 747, i32 2 }
@___asan_gen_.618 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.629, i32 748, i32 2 }
@___asan_gen_.621 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.629, i32 749, i32 2 }
@___asan_gen_.624 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.629, i32 750, i32 2 }
@___asan_gen_.625 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.627 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.629, i32 751, i32 2 }
@___asan_gen_.628 = private unnamed_addr constant [11 x i8] c"eg_offsets\00", align 1
@___asan_gen_.629 = private constant [43 x i8] c"../drivers/gpu/drm/radeon/radeon_display.c\00", align 1
@___asan_gen_.630 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.629, i32 1498, i32 19 }
@llvm.compiler.used = appending global [176 x ptr] [ptr @radeon_bo_reserve._entry, ptr @radeon_bo_reserve._entry_ptr, ptr @radeon_print_display_setup._entry, ptr @radeon_print_display_setup._entry.102, ptr @radeon_print_display_setup._entry.105, ptr @radeon_print_display_setup._entry.108, ptr @radeon_print_display_setup._entry.111, ptr @radeon_print_display_setup._entry.58, ptr @radeon_print_display_setup._entry.61, ptr @radeon_print_display_setup._entry.64, ptr @radeon_print_display_setup._entry.66, ptr @radeon_print_display_setup._entry.69, ptr @radeon_print_display_setup._entry.72, ptr @radeon_print_display_setup._entry.75, ptr @radeon_print_display_setup._entry.78, ptr @radeon_print_display_setup._entry.81, ptr @radeon_print_display_setup._entry.84, ptr @radeon_print_display_setup._entry.87, ptr @radeon_print_display_setup._entry.90, ptr @radeon_print_display_setup._entry.93, ptr @radeon_print_display_setup._entry.96, ptr @radeon_print_display_setup._entry.99, ptr @radeon_print_display_setup._entry_ptr, ptr @radeon_print_display_setup._entry_ptr.101, ptr @radeon_print_display_setup._entry_ptr.104, ptr @radeon_print_display_setup._entry_ptr.107, ptr @radeon_print_display_setup._entry_ptr.110, ptr @radeon_print_display_setup._entry_ptr.113, ptr @radeon_print_display_setup._entry_ptr.60, ptr @radeon_print_display_setup._entry_ptr.63, ptr @radeon_print_display_setup._entry_ptr.65, ptr @radeon_print_display_setup._entry_ptr.68, ptr @radeon_print_display_setup._entry_ptr.71, ptr @radeon_print_display_setup._entry_ptr.74, ptr @radeon_print_display_setup._entry_ptr.77, ptr @radeon_print_display_setup._entry_ptr.80, ptr @radeon_print_display_setup._entry_ptr.83, ptr @radeon_print_display_setup._entry_ptr.86, ptr @radeon_print_display_setup._entry_ptr.89, ptr @radeon_print_display_setup._entry_ptr.92, ptr @radeon_print_display_setup._entry_ptr.95, ptr @radeon_print_display_setup._entry_ptr.98, ptr @radeon_user_framebuffer_create._entry, ptr @radeon_user_framebuffer_create._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @radeon_fb_funcs, ptr @radeon_mode_funcs, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @radeon_tmds_pll_enum_list, ptr @.str.14, ptr @.str.15, ptr @radeon_tv_std_enum_list, ptr @.str.16, ptr @radeon_underscan_enum_list, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @radeon_audio_enum_list, ptr @.str.20, ptr @radeon_dither_enum_list, ptr @.str.21, ptr @radeon_output_csc_enum_list, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @radeon_crtc_funcs, ptr @.str.39, ptr @radeon_crtc_page_flip_target.__key, ptr @.str.40, ptr @radeon_crtc_page_flip_target.__key.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.59, ptr @.str.62, ptr @hpd_names, ptr @.str.67, ptr @.str.70, ptr @.str.73, ptr @.str.76, ptr @.str.79, ptr @.str.82, ptr @encoder_names, ptr @.str.85, ptr @.str.88, ptr @.str.91, ptr @.str.94, ptr @.str.97, ptr @.str.100, ptr @.str.103, ptr @.str.106, ptr @.str.109, ptr @.str.112, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @.str.133, ptr @.str.134, ptr @.str.135, ptr @.str.136, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.146, ptr @.str.147, ptr @.str.148, ptr @.str.149, ptr @.str.150, ptr @.str.151, ptr @.str.152, ptr @.str.153, ptr @.str.154, ptr @.str.155, ptr @.str.156, ptr @.str.157, ptr @radeon_afmt_init.eg_offsets], section "llvm.metadata"
@0 = internal global [154 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radeon_fb_funcs to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radeon_mode_funcs to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radeon_user_framebuffer_create._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radeon_tmds_pll_enum_list to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radeon_tv_std_enum_list to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radeon_underscan_enum_list to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radeon_audio_enum_list to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radeon_dither_enum_list to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radeon_output_csc_enum_list to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radeon_crtc_funcs to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radeon_crtc_page_flip_target.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radeon_crtc_page_flip_target.__key.41 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radeon_bo_reserve._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radeon_print_display_setup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radeon_print_display_setup._entry.58 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radeon_print_display_setup._entry.61 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radeon_print_display_setup._entry.64 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hpd_names to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radeon_print_display_setup._entry.66 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radeon_print_display_setup._entry.69 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radeon_print_display_setup._entry.72 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radeon_print_display_setup._entry.75 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 94, i32 128, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radeon_print_display_setup._entry.78 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radeon_print_display_setup._entry.81 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @encoder_names to i32), i32 152, i32 192, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radeon_print_display_setup._entry.84 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radeon_print_display_setup._entry.87 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radeon_print_display_setup._entry.90 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radeon_print_display_setup._entry.93 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radeon_print_display_setup._entry.96 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radeon_print_display_setup._entry.99 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radeon_print_display_setup._entry.102 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radeon_print_display_setup._entry.105 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radeon_print_display_setup._entry.108 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radeon_print_display_setup._entry.111 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.154 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.155 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.156 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.157 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radeon_afmt_init.eg_offsets to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @radeon_crtc_load_lut(ptr noundef readonly %crtc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %enabled = getelementptr inbounds %struct.drm_crtc, ptr %crtc, i32 0, i32 11
  %0 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %enabled, align 8, !range !311
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %crtc, align 8
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev_private, align 4
  %family = getelementptr inbounds %struct.radeon_device, ptr %5, i32 0, i32 6
  %6 = ptrtoint ptr %family to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %family, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 46, i32 %7)
  %cmp = icmp ugt i32 %7, 46
  br i1 %cmp, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.end
  %crtc_id.i = getelementptr inbounds %struct.radeon_crtc, ptr %crtc, i32 0, i32 1
  %8 = ptrtoint ptr %crtc_id.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %crtc_id.i, align 8
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.5, i32 noundef %9) #10
  tail call void @msleep(i32 noundef 10) #10
  %crtc_offset.i = getelementptr inbounds %struct.radeon_crtc, ptr %crtc, i32 0, i32 5
  %10 = ptrtoint ptr %crtc_offset.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %crtc_offset.i, align 8
  %add.i = add i32 %11, 26836
  %rmmio_size.i.i = getelementptr inbounds %struct.radeon_device, ptr %5, i32 0, i32 18
  %12 = ptrtoint ptr %rmmio_size.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %rmmio_size.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %add.i)
  %cmp.i.i = icmp ugt i32 %13, %add.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %add.i)
  %cmp1.i.i = icmp ult i32 %add.i, 65536
  %or.cond.i.i = or i1 %cmp1.i.i, %cmp.i.i
  br i1 %or.cond.i.i, label %do.body.i.i, label %if.else.i.i

do.body.i.i:                                      ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !312
  tail call void @arm_heavy_mb() #10
  %rmmio.i.i = getelementptr inbounds %struct.radeon_device, ptr %5, i32 0, i32 31
  %14 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %15, i32 %add.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 0) #10, !srcloc !313
  br label %r100_mm_wreg.exit.i

if.else.i.i:                                      ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @r100_mm_wreg_slow(ptr noundef %5, i32 noundef %add.i, i32 noundef 0) #10
  br label %r100_mm_wreg.exit.i

r100_mm_wreg.exit.i:                              ; preds = %if.else.i.i, %do.body.i.i
  %16 = ptrtoint ptr %crtc_offset.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %crtc_offset.i, align 8
  %add3.i = add i32 %17, 26804
  %18 = ptrtoint ptr %rmmio_size.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %rmmio_size.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %add3.i)
  %cmp.i108.i = icmp ugt i32 %19, %add3.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %add3.i)
  %cmp1.i109.i = icmp ult i32 %add3.i, 65536
  %or.cond.i110.i = or i1 %cmp1.i109.i, %cmp.i108.i
  br i1 %or.cond.i110.i, label %do.body.i113.i, label %if.else.i114.i

do.body.i113.i:                                   ; preds = %r100_mm_wreg.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !312
  tail call void @arm_heavy_mb() #10
  %rmmio.i111.i = getelementptr inbounds %struct.radeon_device, ptr %5, i32 0, i32 31
  %20 = ptrtoint ptr %rmmio.i111.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %rmmio.i111.i, align 4
  %add.ptr.i112.i = getelementptr i8, ptr %21, i32 %add3.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i112.i, i32 268435456) #10, !srcloc !313
  br label %r100_mm_wreg.exit115.i

if.else.i114.i:                                   ; preds = %r100_mm_wreg.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @r100_mm_wreg_slow(ptr noundef %5, i32 noundef %add3.i, i32 noundef 16) #10
  br label %r100_mm_wreg.exit115.i

r100_mm_wreg.exit115.i:                           ; preds = %if.else.i114.i, %do.body.i113.i
  %22 = ptrtoint ptr %crtc_offset.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %crtc_offset.i, align 8
  %add5.i = add i32 %23, 26820
  %24 = ptrtoint ptr %rmmio_size.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %rmmio_size.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %25, i32 %add5.i)
  %cmp.i117.i = icmp ugt i32 %25, %add5.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %add5.i)
  %cmp1.i118.i = icmp ult i32 %add5.i, 65536
  %or.cond.i119.i = or i1 %cmp1.i118.i, %cmp.i117.i
  br i1 %or.cond.i119.i, label %do.body.i122.i, label %if.else.i123.i

do.body.i122.i:                                   ; preds = %r100_mm_wreg.exit115.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !312
  tail call void @arm_heavy_mb() #10
  %rmmio.i120.i = getelementptr inbounds %struct.radeon_device, ptr %5, i32 0, i32 31
  %26 = ptrtoint ptr %rmmio.i120.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %rmmio.i120.i, align 4
  %add.ptr.i121.i = getelementptr i8, ptr %27, i32 %add5.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i121.i, i32 268435456) #10, !srcloc !313
  br label %r100_mm_wreg.exit124.i

if.else.i123.i:                                   ; preds = %r100_mm_wreg.exit115.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @r100_mm_wreg_slow(ptr noundef %5, i32 noundef %add5.i, i32 noundef 16) #10
  br label %r100_mm_wreg.exit124.i

r100_mm_wreg.exit124.i:                           ; preds = %if.else.i123.i, %do.body.i122.i
  %28 = ptrtoint ptr %crtc_offset.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %crtc_offset.i, align 8
  %add7.i = add i32 %29, 26688
  %30 = ptrtoint ptr %rmmio_size.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %rmmio_size.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %31, i32 %add7.i)
  %cmp.i126.i = icmp ugt i32 %31, %add7.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %add7.i)
  %cmp1.i127.i = icmp ult i32 %add7.i, 65536
  %or.cond.i128.i = or i1 %cmp1.i127.i, %cmp.i126.i
  br i1 %or.cond.i128.i, label %do.body.i131.i, label %if.else.i132.i

do.body.i131.i:                                   ; preds = %r100_mm_wreg.exit124.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !312
  tail call void @arm_heavy_mb() #10
  %rmmio.i129.i = getelementptr inbounds %struct.radeon_device, ptr %5, i32 0, i32 31
  %32 = ptrtoint ptr %rmmio.i129.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %rmmio.i129.i, align 4
  %add.ptr.i130.i = getelementptr i8, ptr %33, i32 %add7.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i130.i, i32 0) #10, !srcloc !313
  br label %r100_mm_wreg.exit133.i

if.else.i132.i:                                   ; preds = %r100_mm_wreg.exit124.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @r100_mm_wreg_slow(ptr noundef %5, i32 noundef %add7.i, i32 noundef 0) #10
  br label %r100_mm_wreg.exit133.i

r100_mm_wreg.exit133.i:                           ; preds = %if.else.i132.i, %do.body.i131.i
  %34 = ptrtoint ptr %crtc_offset.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %crtc_offset.i, align 8
  %add9.i = add i32 %35, 27136
  %36 = ptrtoint ptr %rmmio_size.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %rmmio_size.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %37, i32 %add9.i)
  %cmp.i135.i = icmp ugt i32 %37, %add9.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %add9.i)
  %cmp1.i136.i = icmp ult i32 %add9.i, 65536
  %or.cond.i137.i = or i1 %cmp1.i136.i, %cmp.i135.i
  br i1 %or.cond.i137.i, label %do.body.i140.i, label %if.else.i141.i

do.body.i140.i:                                   ; preds = %r100_mm_wreg.exit133.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !312
  tail call void @arm_heavy_mb() #10
  %rmmio.i138.i = getelementptr inbounds %struct.radeon_device, ptr %5, i32 0, i32 31
  %38 = ptrtoint ptr %rmmio.i138.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %rmmio.i138.i, align 4
  %add.ptr.i139.i = getelementptr i8, ptr %39, i32 %add9.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i139.i, i32 0) #10, !srcloc !313
  br label %r100_mm_wreg.exit142.i

if.else.i141.i:                                   ; preds = %r100_mm_wreg.exit133.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @r100_mm_wreg_slow(ptr noundef %5, i32 noundef %add9.i, i32 noundef 0) #10
  br label %r100_mm_wreg.exit142.i

r100_mm_wreg.exit142.i:                           ; preds = %if.else.i141.i, %do.body.i140.i
  %40 = ptrtoint ptr %crtc_offset.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %crtc_offset.i, align 8
  %add11.i = add i32 %41, 27140
  %42 = ptrtoint ptr %rmmio_size.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %rmmio_size.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %43, i32 %add11.i)
  %cmp.i144.i = icmp ugt i32 %43, %add11.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %add11.i)
  %cmp1.i145.i = icmp ult i32 %add11.i, 65536
  %or.cond.i146.i = or i1 %cmp1.i145.i, %cmp.i144.i
  br i1 %or.cond.i146.i, label %do.body.i149.i, label %if.else.i150.i

do.body.i149.i:                                   ; preds = %r100_mm_wreg.exit142.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !312
  tail call void @arm_heavy_mb() #10
  %rmmio.i147.i = getelementptr inbounds %struct.radeon_device, ptr %5, i32 0, i32 31
  %44 = ptrtoint ptr %rmmio.i147.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %rmmio.i147.i, align 4
  %add.ptr.i148.i = getelementptr i8, ptr %45, i32 %add11.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i148.i, i32 0) #10, !srcloc !313
  br label %r100_mm_wreg.exit151.i

if.else.i150.i:                                   ; preds = %r100_mm_wreg.exit142.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @r100_mm_wreg_slow(ptr noundef %5, i32 noundef %add11.i, i32 noundef 0) #10
  br label %r100_mm_wreg.exit151.i

r100_mm_wreg.exit151.i:                           ; preds = %if.else.i150.i, %do.body.i149.i
  %46 = ptrtoint ptr %crtc_offset.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %crtc_offset.i, align 8
  %add13.i = add i32 %47, 27144
  %48 = ptrtoint ptr %rmmio_size.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %rmmio_size.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %49, i32 %add13.i)
  %cmp.i153.i = icmp ugt i32 %49, %add13.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %add13.i)
  %cmp1.i154.i = icmp ult i32 %add13.i, 65536
  %or.cond.i155.i = or i1 %cmp1.i154.i, %cmp.i153.i
  br i1 %or.cond.i155.i, label %do.body.i158.i, label %if.else.i159.i

do.body.i158.i:                                   ; preds = %r100_mm_wreg.exit151.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !312
  tail call void @arm_heavy_mb() #10
  %rmmio.i156.i = getelementptr inbounds %struct.radeon_device, ptr %5, i32 0, i32 31
  %50 = ptrtoint ptr %rmmio.i156.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %rmmio.i156.i, align 4
  %add.ptr.i157.i = getelementptr i8, ptr %51, i32 %add13.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i157.i, i32 0) #10, !srcloc !313
  br label %r100_mm_wreg.exit160.i

if.else.i159.i:                                   ; preds = %r100_mm_wreg.exit151.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @r100_mm_wreg_slow(ptr noundef %5, i32 noundef %add13.i, i32 noundef 0) #10
  br label %r100_mm_wreg.exit160.i

r100_mm_wreg.exit160.i:                           ; preds = %if.else.i159.i, %do.body.i158.i
  %52 = ptrtoint ptr %crtc_offset.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %crtc_offset.i, align 8
  %add15.i = add i32 %53, 27148
  %54 = ptrtoint ptr %rmmio_size.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %rmmio_size.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %55, i32 %add15.i)
  %cmp.i162.i = icmp ugt i32 %55, %add15.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %add15.i)
  %cmp1.i163.i = icmp ult i32 %add15.i, 65536
  %or.cond.i164.i = or i1 %cmp1.i163.i, %cmp.i162.i
  br i1 %or.cond.i164.i, label %do.body.i167.i, label %if.else.i168.i

do.body.i167.i:                                   ; preds = %r100_mm_wreg.exit160.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !312
  tail call void @arm_heavy_mb() #10
  %rmmio.i165.i = getelementptr inbounds %struct.radeon_device, ptr %5, i32 0, i32 31
  %56 = ptrtoint ptr %rmmio.i165.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %rmmio.i165.i, align 4
  %add.ptr.i166.i = getelementptr i8, ptr %57, i32 %add15.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i166.i, i32 0) #10, !srcloc !313
  br label %r100_mm_wreg.exit169.i

if.else.i168.i:                                   ; preds = %r100_mm_wreg.exit160.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @r100_mm_wreg_slow(ptr noundef %5, i32 noundef %add15.i, i32 noundef 0) #10
  br label %r100_mm_wreg.exit169.i

r100_mm_wreg.exit169.i:                           ; preds = %if.else.i168.i, %do.body.i167.i
  %58 = ptrtoint ptr %crtc_offset.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %crtc_offset.i, align 8
  %add17.i = add i32 %59, 27152
  %60 = ptrtoint ptr %rmmio_size.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %rmmio_size.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %61, i32 %add17.i)
  %cmp.i171.i = icmp ugt i32 %61, %add17.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %add17.i)
  %cmp1.i172.i = icmp ult i32 %add17.i, 65536
  %or.cond.i173.i = or i1 %cmp1.i172.i, %cmp.i171.i
  br i1 %or.cond.i173.i, label %do.body.i176.i, label %if.else.i177.i

do.body.i176.i:                                   ; preds = %r100_mm_wreg.exit169.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !312
  tail call void @arm_heavy_mb() #10
  %rmmio.i174.i = getelementptr inbounds %struct.radeon_device, ptr %5, i32 0, i32 31
  %62 = ptrtoint ptr %rmmio.i174.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %rmmio.i174.i, align 4
  %add.ptr.i175.i = getelementptr i8, ptr %63, i32 %add17.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i175.i, i32 -65536) #10, !srcloc !313
  br label %r100_mm_wreg.exit178.i

if.else.i177.i:                                   ; preds = %r100_mm_wreg.exit169.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @r100_mm_wreg_slow(ptr noundef %5, i32 noundef %add17.i, i32 noundef 65535) #10
  br label %r100_mm_wreg.exit178.i

r100_mm_wreg.exit178.i:                           ; preds = %if.else.i177.i, %do.body.i176.i
  %64 = ptrtoint ptr %crtc_offset.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %crtc_offset.i, align 8
  %add19.i = add i32 %65, 27156
  %66 = ptrtoint ptr %rmmio_size.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %rmmio_size.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %67, i32 %add19.i)
  %cmp.i180.i = icmp ugt i32 %67, %add19.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %add19.i)
  %cmp1.i181.i = icmp ult i32 %add19.i, 65536
  %or.cond.i182.i = or i1 %cmp1.i181.i, %cmp.i180.i
  br i1 %or.cond.i182.i, label %do.body.i185.i, label %if.else.i186.i

do.body.i185.i:                                   ; preds = %r100_mm_wreg.exit178.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !312
  tail call void @arm_heavy_mb() #10
  %rmmio.i183.i = getelementptr inbounds %struct.radeon_device, ptr %5, i32 0, i32 31
  %68 = ptrtoint ptr %rmmio.i183.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %rmmio.i183.i, align 4
  %add.ptr.i184.i = getelementptr i8, ptr %69, i32 %add19.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i184.i, i32 -65536) #10, !srcloc !313
  br label %r100_mm_wreg.exit187.i

if.else.i186.i:                                   ; preds = %r100_mm_wreg.exit178.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @r100_mm_wreg_slow(ptr noundef %5, i32 noundef %add19.i, i32 noundef 65535) #10
  br label %r100_mm_wreg.exit187.i

r100_mm_wreg.exit187.i:                           ; preds = %if.else.i186.i, %do.body.i185.i
  %70 = ptrtoint ptr %crtc_offset.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %crtc_offset.i, align 8
  %add21.i = add i32 %71, 27160
  %72 = ptrtoint ptr %rmmio_size.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %rmmio_size.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %73, i32 %add21.i)
  %cmp.i189.i = icmp ugt i32 %73, %add21.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %add21.i)
  %cmp1.i190.i = icmp ult i32 %add21.i, 65536
  %or.cond.i191.i = or i1 %cmp1.i190.i, %cmp.i189.i
  br i1 %or.cond.i191.i, label %do.body.i194.i, label %if.else.i195.i

do.body.i194.i:                                   ; preds = %r100_mm_wreg.exit187.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !312
  tail call void @arm_heavy_mb() #10
  %rmmio.i192.i = getelementptr inbounds %struct.radeon_device, ptr %5, i32 0, i32 31
  %74 = ptrtoint ptr %rmmio.i192.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %rmmio.i192.i, align 4
  %add.ptr.i193.i = getelementptr i8, ptr %75, i32 %add21.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i193.i, i32 -65536) #10, !srcloc !313
  br label %r100_mm_wreg.exit196.i

if.else.i195.i:                                   ; preds = %r100_mm_wreg.exit187.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @r100_mm_wreg_slow(ptr noundef %5, i32 noundef %add21.i, i32 noundef 65535) #10
  br label %r100_mm_wreg.exit196.i

r100_mm_wreg.exit196.i:                           ; preds = %if.else.i195.i, %do.body.i194.i
  %76 = ptrtoint ptr %crtc_offset.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %crtc_offset.i, align 8
  %add23.i = add i32 %77, 27104
  %78 = ptrtoint ptr %rmmio_size.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %rmmio_size.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %79, i32 %add23.i)
  %cmp.i198.i = icmp ugt i32 %79, %add23.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %add23.i)
  %cmp1.i199.i = icmp ult i32 %add23.i, 65536
  %or.cond.i200.i = or i1 %cmp1.i199.i, %cmp.i198.i
  br i1 %or.cond.i200.i, label %do.body.i203.i, label %if.else.i204.i

do.body.i203.i:                                   ; preds = %r100_mm_wreg.exit196.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !312
  tail call void @arm_heavy_mb() #10
  %rmmio.i201.i = getelementptr inbounds %struct.radeon_device, ptr %5, i32 0, i32 31
  %80 = ptrtoint ptr %rmmio.i201.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %rmmio.i201.i, align 4
  %add.ptr.i202.i = getelementptr i8, ptr %81, i32 %add23.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i202.i, i32 0) #10, !srcloc !313
  br label %r100_mm_wreg.exit205.i

if.else.i204.i:                                   ; preds = %r100_mm_wreg.exit196.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @r100_mm_wreg_slow(ptr noundef %5, i32 noundef %add23.i, i32 noundef 0) #10
  br label %r100_mm_wreg.exit205.i

r100_mm_wreg.exit205.i:                           ; preds = %if.else.i204.i, %do.body.i203.i
  %82 = ptrtoint ptr %crtc_offset.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %crtc_offset.i, align 8
  %add25.i = add i32 %83, 27128
  %84 = ptrtoint ptr %rmmio_size.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %rmmio_size.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %85, i32 %add25.i)
  %cmp.i207.i = icmp ugt i32 %85, %add25.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %add25.i)
  %cmp1.i208.i = icmp ult i32 %add25.i, 65536
  %or.cond.i209.i = or i1 %cmp1.i208.i, %cmp.i207.i
  br i1 %or.cond.i209.i, label %do.body.i212.i, label %if.else.i213.i

do.body.i212.i:                                   ; preds = %r100_mm_wreg.exit205.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !312
  tail call void @arm_heavy_mb() #10
  %rmmio.i210.i = getelementptr inbounds %struct.radeon_device, ptr %5, i32 0, i32 31
  %86 = ptrtoint ptr %rmmio.i210.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %rmmio.i210.i, align 4
  %add.ptr.i211.i = getelementptr i8, ptr %87, i32 %add25.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i211.i, i32 117440512) #10, !srcloc !313
  br label %r100_mm_wreg.exit214.i

if.else.i213.i:                                   ; preds = %r100_mm_wreg.exit205.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @r100_mm_wreg_slow(ptr noundef %5, i32 noundef %add25.i, i32 noundef 7) #10
  br label %r100_mm_wreg.exit214.i

r100_mm_wreg.exit214.i:                           ; preds = %if.else.i213.i, %do.body.i212.i
  %88 = ptrtoint ptr %crtc_offset.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %crtc_offset.i, align 8
  %add27.i = add i32 %89, 27108
  %90 = ptrtoint ptr %rmmio_size.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %rmmio_size.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %91, i32 %add27.i)
  %cmp.i216.i = icmp ugt i32 %91, %add27.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %add27.i)
  %cmp1.i217.i = icmp ult i32 %add27.i, 65536
  %or.cond.i218.i = or i1 %cmp1.i217.i, %cmp.i216.i
  br i1 %or.cond.i218.i, label %do.body.i221.i, label %if.else.i222.i

do.body.i221.i:                                   ; preds = %r100_mm_wreg.exit214.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !312
  tail call void @arm_heavy_mb() #10
  %rmmio.i219.i = getelementptr inbounds %struct.radeon_device, ptr %5, i32 0, i32 31
  %92 = ptrtoint ptr %rmmio.i219.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %rmmio.i219.i, align 4
  %add.ptr.i220.i = getelementptr i8, ptr %93, i32 %add27.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i220.i, i32 0) #10, !srcloc !313
  br label %r100_mm_wreg.exit223.i

if.else.i222.i:                                   ; preds = %r100_mm_wreg.exit214.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @r100_mm_wreg_slow(ptr noundef %5, i32 noundef %add27.i, i32 noundef 0) #10
  br label %r100_mm_wreg.exit223.i

r100_mm_wreg.exit223.i:                           ; preds = %if.else.i222.i, %do.body.i221.i
  %gamma_store.i = getelementptr inbounds %struct.drm_crtc, ptr %crtc, i32 0, i32 18
  %94 = ptrtoint ptr %gamma_store.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %gamma_store.i, align 4
  %gamma_size.i = getelementptr inbounds %struct.drm_crtc, ptr %crtc, i32 0, i32 17
  %96 = ptrtoint ptr %gamma_size.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %gamma_size.i, align 8
  %add.ptr28.i = getelementptr i16, ptr %95, i32 %97
  %add.ptr30.i = getelementptr i16, ptr %add.ptr28.i, i32 %97
  %rmmio.i228.i = getelementptr inbounds %struct.radeon_device, ptr %5, i32 0, i32 31
  br label %for.body.i

for.body.i:                                       ; preds = %r100_mm_wreg.exit232.i.for.body.i_crit_edge, %r100_mm_wreg.exit223.i
  %i.0290.i = phi i32 [ 0, %r100_mm_wreg.exit223.i ], [ %inc.i, %r100_mm_wreg.exit232.i.for.body.i_crit_edge ]
  %b.0289.i = phi ptr [ %add.ptr30.i, %r100_mm_wreg.exit223.i ], [ %incdec.ptr37.i, %r100_mm_wreg.exit232.i.for.body.i_crit_edge ]
  %g.0288.i = phi ptr [ %add.ptr28.i, %r100_mm_wreg.exit223.i ], [ %incdec.ptr33.i, %r100_mm_wreg.exit232.i.for.body.i_crit_edge ]
  %r.0287.i = phi ptr [ %95, %r100_mm_wreg.exit223.i ], [ %incdec.ptr.i, %r100_mm_wreg.exit232.i.for.body.i_crit_edge ]
  %98 = ptrtoint ptr %crtc_offset.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %crtc_offset.i, align 8
  %add32.i = add i32 %99, 27120
  %incdec.ptr.i = getelementptr i16, ptr %r.0287.i, i32 1
  %100 = ptrtoint ptr %r.0287.i to i32
  call void @__asan_load2_noabort(i32 %100)
  %101 = load i16, ptr %r.0287.i, align 2
  %102 = and i16 %101, -64
  %and.i = zext i16 %102 to i32
  %shl.i = shl nuw nsw i32 %and.i, 14
  %incdec.ptr33.i = getelementptr i16, ptr %g.0288.i, i32 1
  %103 = ptrtoint ptr %g.0288.i to i32
  call void @__asan_load2_noabort(i32 %103)
  %104 = load i16, ptr %g.0288.i, align 2
  %105 = and i16 %104, -64
  %and35.i = zext i16 %105 to i32
  %shl36.i = shl nuw nsw i32 %and35.i, 4
  %or.i = or i32 %shl36.i, %shl.i
  %incdec.ptr37.i = getelementptr i16, ptr %b.0289.i, i32 1
  %106 = ptrtoint ptr %b.0289.i to i32
  call void @__asan_load2_noabort(i32 %106)
  %107 = load i16, ptr %b.0289.i, align 2
  %108 = lshr i16 %107, 6
  %109 = zext i16 %108 to i32
  %or39.i = or i32 %or.i, %109
  %110 = ptrtoint ptr %rmmio_size.i.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %rmmio_size.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %111, i32 %add32.i)
  %cmp.i225.i = icmp ugt i32 %111, %add32.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %add32.i)
  %cmp1.i226.i = icmp ult i32 %add32.i, 65536
  %or.cond.i227.i = or i1 %cmp1.i226.i, %cmp.i225.i
  br i1 %or.cond.i227.i, label %do.body.i230.i, label %if.else.i231.i

do.body.i230.i:                                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !312
  tail call void @arm_heavy_mb() #10
  %112 = tail call i32 @llvm.bswap.i32(i32 %or39.i) #10
  %113 = ptrtoint ptr %rmmio.i228.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %rmmio.i228.i, align 4
  %add.ptr.i229.i = getelementptr i8, ptr %114, i32 %add32.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i229.i, i32 %112) #10, !srcloc !313
  br label %r100_mm_wreg.exit232.i

if.else.i231.i:                                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @r100_mm_wreg_slow(ptr noundef %5, i32 noundef %add32.i, i32 noundef %or39.i) #10
  br label %r100_mm_wreg.exit232.i

r100_mm_wreg.exit232.i:                           ; preds = %if.else.i231.i, %do.body.i230.i
  %inc.i = add nuw nsw i32 %i.0290.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 256
  br i1 %exitcond.not.i, label %for.end.i, label %r100_mm_wreg.exit232.i.for.body.i_crit_edge

r100_mm_wreg.exit232.i.for.body.i_crit_edge:      ; preds = %r100_mm_wreg.exit232.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.end.i:                                        ; preds = %r100_mm_wreg.exit232.i
  %115 = ptrtoint ptr %crtc_offset.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %crtc_offset.i, align 8
  %add41.i = add i32 %116, 26976
  %117 = ptrtoint ptr %rmmio_size.i.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %rmmio_size.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %118, i32 %add41.i)
  %cmp.i234.i = icmp ugt i32 %118, %add41.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %add41.i)
  %cmp1.i235.i = icmp ult i32 %add41.i, 65536
  %or.cond.i236.i = or i1 %cmp1.i235.i, %cmp.i234.i
  br i1 %or.cond.i236.i, label %do.body.i239.i, label %if.else.i240.i

do.body.i239.i:                                   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !312
  tail call void @arm_heavy_mb() #10
  %119 = ptrtoint ptr %rmmio.i228.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %rmmio.i228.i, align 4
  %add.ptr.i238.i = getelementptr i8, ptr %120, i32 %add41.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i238.i, i32 0) #10, !srcloc !313
  br label %r100_mm_wreg.exit241.i

if.else.i240.i:                                   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @r100_mm_wreg_slow(ptr noundef %5, i32 noundef %add41.i, i32 noundef 0) #10
  br label %r100_mm_wreg.exit241.i

r100_mm_wreg.exit241.i:                           ; preds = %if.else.i240.i, %do.body.i239.i
  %121 = ptrtoint ptr %crtc_offset.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %crtc_offset.i, align 8
  %add43.i = add i32 %122, 26980
  %123 = ptrtoint ptr %rmmio_size.i.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %rmmio_size.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %124, i32 %add43.i)
  %cmp.i243.i = icmp ugt i32 %124, %add43.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %add43.i)
  %cmp1.i244.i = icmp ult i32 %add43.i, 65536
  %or.cond.i245.i = or i1 %cmp1.i244.i, %cmp.i243.i
  br i1 %or.cond.i245.i, label %do.body.i248.i, label %if.else.i249.i

do.body.i248.i:                                   ; preds = %r100_mm_wreg.exit241.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !312
  tail call void @arm_heavy_mb() #10
  %125 = ptrtoint ptr %rmmio.i228.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %rmmio.i228.i, align 4
  %add.ptr.i247.i = getelementptr i8, ptr %126, i32 %add43.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i247.i, i32 0) #10, !srcloc !313
  br label %r100_mm_wreg.exit250.i

if.else.i249.i:                                   ; preds = %r100_mm_wreg.exit241.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @r100_mm_wreg_slow(ptr noundef %5, i32 noundef %add43.i, i32 noundef 0) #10
  br label %r100_mm_wreg.exit250.i

r100_mm_wreg.exit250.i:                           ; preds = %if.else.i249.i, %do.body.i248.i
  %127 = ptrtoint ptr %crtc_offset.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %crtc_offset.i, align 8
  %add45.i = add i32 %128, 27264
  %129 = ptrtoint ptr %rmmio_size.i.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %rmmio_size.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %130, i32 %add45.i)
  %cmp.i252.i = icmp ugt i32 %130, %add45.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %add45.i)
  %cmp1.i253.i = icmp ult i32 %add45.i, 65536
  %or.cond.i254.i = or i1 %cmp1.i253.i, %cmp.i252.i
  br i1 %or.cond.i254.i, label %do.body.i257.i, label %if.else.i258.i

do.body.i257.i:                                   ; preds = %r100_mm_wreg.exit250.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !312
  tail call void @arm_heavy_mb() #10
  %131 = ptrtoint ptr %rmmio.i228.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %rmmio.i228.i, align 4
  %add.ptr.i256.i = getelementptr i8, ptr %132, i32 %add45.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i256.i, i32 0) #10, !srcloc !313
  br label %r100_mm_wreg.exit259.i

if.else.i258.i:                                   ; preds = %r100_mm_wreg.exit250.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @r100_mm_wreg_slow(ptr noundef %5, i32 noundef %add45.i, i32 noundef 0) #10
  br label %r100_mm_wreg.exit259.i

r100_mm_wreg.exit259.i:                           ; preds = %if.else.i258.i, %do.body.i257.i
  %133 = ptrtoint ptr %crtc_offset.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %crtc_offset.i, align 8
  %add47.i = add i32 %134, 26864
  %output_csc.i = getelementptr inbounds %struct.radeon_crtc, ptr %crtc, i32 0, i32 41
  %135 = ptrtoint ptr %output_csc.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %output_csc.i, align 4
  %and48.i = and i32 %136, 7
  %137 = ptrtoint ptr %rmmio_size.i.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %rmmio_size.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %138, i32 %add47.i)
  %cmp.i261.i = icmp ugt i32 %138, %add47.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %add47.i)
  %cmp1.i262.i = icmp ult i32 %add47.i, 65536
  %or.cond.i263.i = or i1 %cmp1.i262.i, %cmp.i261.i
  br i1 %or.cond.i263.i, label %do.body.i266.i, label %if.else.i267.i

do.body.i266.i:                                   ; preds = %r100_mm_wreg.exit259.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !312
  tail call void @arm_heavy_mb() #10
  %139 = shl nuw nsw i32 %and48.i, 24
  %140 = ptrtoint ptr %rmmio.i228.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %rmmio.i228.i, align 4
  %add.ptr.i265.i = getelementptr i8, ptr %141, i32 %add47.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i265.i, i32 %139) #10, !srcloc !313
  br label %r100_mm_wreg.exit268.i

if.else.i267.i:                                   ; preds = %r100_mm_wreg.exit259.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @r100_mm_wreg_slow(ptr noundef %5, i32 noundef %add47.i, i32 noundef %and48.i) #10
  br label %r100_mm_wreg.exit268.i

r100_mm_wreg.exit268.i:                           ; preds = %if.else.i267.i, %do.body.i266.i
  %142 = ptrtoint ptr %crtc_offset.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %crtc_offset.i, align 8
  %add52.i = add i32 %143, 26944
  %144 = ptrtoint ptr %rmmio_size.i.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %rmmio_size.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %145, i32 %add52.i)
  %cmp.i270.i = icmp ugt i32 %145, %add52.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %add52.i)
  %cmp1.i271.i = icmp ult i32 %add52.i, 65536
  %or.cond.i272.i = or i1 %cmp1.i271.i, %cmp.i270.i
  br i1 %or.cond.i272.i, label %do.body.i275.i, label %if.else.i276.i

do.body.i275.i:                                   ; preds = %r100_mm_wreg.exit268.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !312
  tail call void @arm_heavy_mb() #10
  %146 = ptrtoint ptr %rmmio.i228.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %rmmio.i228.i, align 4
  %add.ptr.i274.i = getelementptr i8, ptr %147, i32 %add52.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i274.i, i32 0) #10, !srcloc !313
  br label %r100_mm_wreg.exit277.i

if.else.i276.i:                                   ; preds = %r100_mm_wreg.exit268.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @r100_mm_wreg_slow(ptr noundef %5, i32 noundef %add52.i, i32 noundef 0) #10
  br label %r100_mm_wreg.exit277.i

r100_mm_wreg.exit277.i:                           ; preds = %if.else.i276.i, %do.body.i275.i
  %148 = ptrtoint ptr %family to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %family, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 56, i32 %149)
  %cmp53.i = icmp ugt i32 %149, 56
  br i1 %cmp53.i, label %if.then.i, label %r100_mm_wreg.exit277.i.cleanup_crit_edge

r100_mm_wreg.exit277.i.cleanup_crit_edge:         ; preds = %r100_mm_wreg.exit277.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then.i:                                        ; preds = %r100_mm_wreg.exit277.i
  %150 = ptrtoint ptr %crtc_offset.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %crtc_offset.i, align 8
  %add56.i = add i32 %151, 27376
  %152 = ptrtoint ptr %rmmio_size.i.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %rmmio_size.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %153, i32 %add56.i)
  %cmp.i279.i = icmp ugt i32 %153, %add56.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %add56.i)
  %cmp1.i280.i = icmp ult i32 %add56.i, 65536
  %or.cond.i281.i = or i1 %cmp1.i280.i, %cmp.i279.i
  br i1 %or.cond.i281.i, label %do.body.i284.i, label %if.else.i285.i

do.body.i284.i:                                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !312
  tail call void @arm_heavy_mb() #10
  %154 = ptrtoint ptr %rmmio.i228.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %rmmio.i228.i, align 4
  %add.ptr.i283.i = getelementptr i8, ptr %155, i32 %add56.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i283.i, i32 33554432) #10, !srcloc !313
  br label %cleanup

if.else.i285.i:                                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @r100_mm_wreg_slow(ptr noundef %5, i32 noundef %add56.i, i32 noundef 2) #10
  br label %cleanup

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 38, i32 %7)
  %cmp4 = icmp ugt i32 %7, 38
  br i1 %cmp4, label %if.then5, label %if.else6

if.then5:                                         ; preds = %if.else
  %crtc_id.i23 = getelementptr inbounds %struct.radeon_crtc, ptr %crtc, i32 0, i32 1
  %156 = ptrtoint ptr %crtc_id.i23 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %crtc_id.i23, align 8
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.5, i32 noundef %157) #10
  %crtc_offset.i24 = getelementptr inbounds %struct.radeon_crtc, ptr %crtc, i32 0, i32 5
  %158 = ptrtoint ptr %crtc_offset.i24 to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %crtc_offset.i24, align 8
  %add.i25 = add i32 %159, 27136
  %rmmio_size.i.i26 = getelementptr inbounds %struct.radeon_device, ptr %5, i32 0, i32 18
  %160 = ptrtoint ptr %rmmio_size.i.i26 to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %rmmio_size.i.i26, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %161, i32 %add.i25)
  %cmp.i.i27 = icmp ugt i32 %161, %add.i25
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %add.i25)
  %cmp1.i.i28 = icmp ult i32 %add.i25, 65536
  %or.cond.i.i29 = or i1 %cmp1.i.i28, %cmp.i.i27
  br i1 %or.cond.i.i29, label %do.body.i.i32, label %if.else.i.i33

do.body.i.i32:                                    ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !312
  tail call void @arm_heavy_mb() #10
  %rmmio.i.i30 = getelementptr inbounds %struct.radeon_device, ptr %5, i32 0, i32 31
  %162 = ptrtoint ptr %rmmio.i.i30 to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %rmmio.i.i30, align 4
  %add.ptr.i.i31 = getelementptr i8, ptr %163, i32 %add.i25
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i31, i32 0) #10, !srcloc !313
  br label %r100_mm_wreg.exit.i35

if.else.i.i33:                                    ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @r100_mm_wreg_slow(ptr noundef %5, i32 noundef %add.i25, i32 noundef 0) #10
  br label %r100_mm_wreg.exit.i35

r100_mm_wreg.exit.i35:                            ; preds = %if.else.i.i33, %do.body.i.i32
  %164 = ptrtoint ptr %crtc_offset.i24 to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %crtc_offset.i24, align 8
  %add3.i34 = add i32 %165, 27140
  %166 = ptrtoint ptr %rmmio_size.i.i26 to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load i32, ptr %rmmio_size.i.i26, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %167, i32 %add3.i34)
  %cmp.i61.i = icmp ugt i32 %167, %add3.i34
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %add3.i34)
  %cmp1.i62.i = icmp ult i32 %add3.i34, 65536
  %or.cond.i63.i = or i1 %cmp1.i62.i, %cmp.i61.i
  br i1 %or.cond.i63.i, label %do.body.i66.i, label %if.else.i67.i

do.body.i66.i:                                    ; preds = %r100_mm_wreg.exit.i35
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !312
  tail call void @arm_heavy_mb() #10
  %rmmio.i64.i = getelementptr inbounds %struct.radeon_device, ptr %5, i32 0, i32 31
  %168 = ptrtoint ptr %rmmio.i64.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %rmmio.i64.i, align 4
  %add.ptr.i65.i = getelementptr i8, ptr %169, i32 %add3.i34
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i65.i, i32 0) #10, !srcloc !313
  br label %r100_mm_wreg.exit68.i

if.else.i67.i:                                    ; preds = %r100_mm_wreg.exit.i35
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @r100_mm_wreg_slow(ptr noundef %5, i32 noundef %add3.i34, i32 noundef 0) #10
  br label %r100_mm_wreg.exit68.i

r100_mm_wreg.exit68.i:                            ; preds = %if.else.i67.i, %do.body.i66.i
  %170 = ptrtoint ptr %crtc_offset.i24 to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load i32, ptr %crtc_offset.i24, align 8
  %add5.i36 = add i32 %171, 27144
  %172 = ptrtoint ptr %rmmio_size.i.i26 to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load i32, ptr %rmmio_size.i.i26, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %173, i32 %add5.i36)
  %cmp.i70.i = icmp ugt i32 %173, %add5.i36
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %add5.i36)
  %cmp1.i71.i = icmp ult i32 %add5.i36, 65536
  %or.cond.i72.i = or i1 %cmp1.i71.i, %cmp.i70.i
  br i1 %or.cond.i72.i, label %do.body.i75.i, label %if.else.i76.i

do.body.i75.i:                                    ; preds = %r100_mm_wreg.exit68.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !312
  tail call void @arm_heavy_mb() #10
  %rmmio.i73.i = getelementptr inbounds %struct.radeon_device, ptr %5, i32 0, i32 31
  %174 = ptrtoint ptr %rmmio.i73.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %rmmio.i73.i, align 4
  %add.ptr.i74.i = getelementptr i8, ptr %175, i32 %add5.i36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i74.i, i32 0) #10, !srcloc !313
  br label %r100_mm_wreg.exit77.i

if.else.i76.i:                                    ; preds = %r100_mm_wreg.exit68.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @r100_mm_wreg_slow(ptr noundef %5, i32 noundef %add5.i36, i32 noundef 0) #10
  br label %r100_mm_wreg.exit77.i

r100_mm_wreg.exit77.i:                            ; preds = %if.else.i76.i, %do.body.i75.i
  %176 = ptrtoint ptr %crtc_offset.i24 to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load i32, ptr %crtc_offset.i24, align 8
  %add7.i37 = add i32 %177, 27148
  %178 = ptrtoint ptr %rmmio_size.i.i26 to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load i32, ptr %rmmio_size.i.i26, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %179, i32 %add7.i37)
  %cmp.i79.i = icmp ugt i32 %179, %add7.i37
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %add7.i37)
  %cmp1.i80.i = icmp ult i32 %add7.i37, 65536
  %or.cond.i81.i = or i1 %cmp1.i80.i, %cmp.i79.i
  br i1 %or.cond.i81.i, label %do.body.i84.i, label %if.else.i85.i

do.body.i84.i:                                    ; preds = %r100_mm_wreg.exit77.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !312
  tail call void @arm_heavy_mb() #10
  %rmmio.i82.i = getelementptr inbounds %struct.radeon_device, ptr %5, i32 0, i32 31
  %180 = ptrtoint ptr %rmmio.i82.i to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %rmmio.i82.i, align 4
  %add.ptr.i83.i = getelementptr i8, ptr %181, i32 %add7.i37
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i83.i, i32 0) #10, !srcloc !313
  br label %r100_mm_wreg.exit86.i

if.else.i85.i:                                    ; preds = %r100_mm_wreg.exit77.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @r100_mm_wreg_slow(ptr noundef %5, i32 noundef %add7.i37, i32 noundef 0) #10
  br label %r100_mm_wreg.exit86.i

r100_mm_wreg.exit86.i:                            ; preds = %if.else.i85.i, %do.body.i84.i
  %182 = ptrtoint ptr %crtc_offset.i24 to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load i32, ptr %crtc_offset.i24, align 8
  %add9.i38 = add i32 %183, 27152
  %184 = ptrtoint ptr %rmmio_size.i.i26 to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load i32, ptr %rmmio_size.i.i26, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %185, i32 %add9.i38)
  %cmp.i88.i = icmp ugt i32 %185, %add9.i38
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %add9.i38)
  %cmp1.i89.i = icmp ult i32 %add9.i38, 65536
  %or.cond.i90.i = or i1 %cmp1.i89.i, %cmp.i88.i
  br i1 %or.cond.i90.i, label %do.body.i93.i, label %if.else.i94.i

do.body.i93.i:                                    ; preds = %r100_mm_wreg.exit86.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !312
  tail call void @arm_heavy_mb() #10
  %rmmio.i91.i = getelementptr inbounds %struct.radeon_device, ptr %5, i32 0, i32 31
  %186 = ptrtoint ptr %rmmio.i91.i to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %rmmio.i91.i, align 4
  %add.ptr.i92.i = getelementptr i8, ptr %187, i32 %add9.i38
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i92.i, i32 -65536) #10, !srcloc !313
  br label %r100_mm_wreg.exit95.i

if.else.i94.i:                                    ; preds = %r100_mm_wreg.exit86.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @r100_mm_wreg_slow(ptr noundef %5, i32 noundef %add9.i38, i32 noundef 65535) #10
  br label %r100_mm_wreg.exit95.i

r100_mm_wreg.exit95.i:                            ; preds = %if.else.i94.i, %do.body.i93.i
  %188 = ptrtoint ptr %crtc_offset.i24 to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load i32, ptr %crtc_offset.i24, align 8
  %add11.i39 = add i32 %189, 27156
  %190 = ptrtoint ptr %rmmio_size.i.i26 to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load i32, ptr %rmmio_size.i.i26, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %191, i32 %add11.i39)
  %cmp.i97.i = icmp ugt i32 %191, %add11.i39
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %add11.i39)
  %cmp1.i98.i = icmp ult i32 %add11.i39, 65536
  %or.cond.i99.i = or i1 %cmp1.i98.i, %cmp.i97.i
  br i1 %or.cond.i99.i, label %do.body.i102.i, label %if.else.i103.i

do.body.i102.i:                                   ; preds = %r100_mm_wreg.exit95.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !312
  tail call void @arm_heavy_mb() #10
  %rmmio.i100.i = getelementptr inbounds %struct.radeon_device, ptr %5, i32 0, i32 31
  %192 = ptrtoint ptr %rmmio.i100.i to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %rmmio.i100.i, align 4
  %add.ptr.i101.i = getelementptr i8, ptr %193, i32 %add11.i39
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i101.i, i32 -65536) #10, !srcloc !313
  br label %r100_mm_wreg.exit104.i

if.else.i103.i:                                   ; preds = %r100_mm_wreg.exit95.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @r100_mm_wreg_slow(ptr noundef %5, i32 noundef %add11.i39, i32 noundef 65535) #10
  br label %r100_mm_wreg.exit104.i

r100_mm_wreg.exit104.i:                           ; preds = %if.else.i103.i, %do.body.i102.i
  %194 = ptrtoint ptr %crtc_offset.i24 to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load i32, ptr %crtc_offset.i24, align 8
  %add13.i40 = add i32 %195, 27160
  %196 = ptrtoint ptr %rmmio_size.i.i26 to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load i32, ptr %rmmio_size.i.i26, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %197, i32 %add13.i40)
  %cmp.i106.i = icmp ugt i32 %197, %add13.i40
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %add13.i40)
  %cmp1.i107.i = icmp ult i32 %add13.i40, 65536
  %or.cond.i108.i = or i1 %cmp1.i107.i, %cmp.i106.i
  br i1 %or.cond.i108.i, label %do.body.i111.i, label %if.else.i112.i

do.body.i111.i:                                   ; preds = %r100_mm_wreg.exit104.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !312
  tail call void @arm_heavy_mb() #10
  %rmmio.i109.i = getelementptr inbounds %struct.radeon_device, ptr %5, i32 0, i32 31
  %198 = ptrtoint ptr %rmmio.i109.i to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %rmmio.i109.i, align 4
  %add.ptr.i110.i = getelementptr i8, ptr %199, i32 %add13.i40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i110.i, i32 -65536) #10, !srcloc !313
  br label %r100_mm_wreg.exit113.i

if.else.i112.i:                                   ; preds = %r100_mm_wreg.exit104.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @r100_mm_wreg_slow(ptr noundef %5, i32 noundef %add13.i40, i32 noundef 65535) #10
  br label %r100_mm_wreg.exit113.i

r100_mm_wreg.exit113.i:                           ; preds = %if.else.i112.i, %do.body.i111.i
  %200 = ptrtoint ptr %crtc_offset.i24 to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load i32, ptr %crtc_offset.i24, align 8
  %add15.i41 = add i32 %201, 27104
  %202 = ptrtoint ptr %rmmio_size.i.i26 to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load i32, ptr %rmmio_size.i.i26, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %203, i32 %add15.i41)
  %cmp.i115.i = icmp ugt i32 %203, %add15.i41
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %add15.i41)
  %cmp1.i116.i = icmp ult i32 %add15.i41, 65536
  %or.cond.i117.i = or i1 %cmp1.i116.i, %cmp.i115.i
  br i1 %or.cond.i117.i, label %do.body.i120.i, label %if.else.i121.i

do.body.i120.i:                                   ; preds = %r100_mm_wreg.exit113.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !312
  tail call void @arm_heavy_mb() #10
  %rmmio.i118.i = getelementptr inbounds %struct.radeon_device, ptr %5, i32 0, i32 31
  %204 = ptrtoint ptr %rmmio.i118.i to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load ptr, ptr %rmmio.i118.i, align 4
  %add.ptr.i119.i = getelementptr i8, ptr %205, i32 %add15.i41
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i119.i, i32 0) #10, !srcloc !313
  br label %r100_mm_wreg.exit122.i

if.else.i121.i:                                   ; preds = %r100_mm_wreg.exit113.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @r100_mm_wreg_slow(ptr noundef %5, i32 noundef %add15.i41, i32 noundef 0) #10
  br label %r100_mm_wreg.exit122.i

r100_mm_wreg.exit122.i:                           ; preds = %if.else.i121.i, %do.body.i120.i
  %206 = ptrtoint ptr %crtc_offset.i24 to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load i32, ptr %crtc_offset.i24, align 8
  %add17.i42 = add i32 %207, 27128
  %208 = ptrtoint ptr %rmmio_size.i.i26 to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load i32, ptr %rmmio_size.i.i26, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %209, i32 %add17.i42)
  %cmp.i124.i = icmp ugt i32 %209, %add17.i42
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %add17.i42)
  %cmp1.i125.i = icmp ult i32 %add17.i42, 65536
  %or.cond.i126.i = or i1 %cmp1.i125.i, %cmp.i124.i
  br i1 %or.cond.i126.i, label %do.body.i129.i, label %if.else.i130.i

do.body.i129.i:                                   ; preds = %r100_mm_wreg.exit122.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !312
  tail call void @arm_heavy_mb() #10
  %rmmio.i127.i = getelementptr inbounds %struct.radeon_device, ptr %5, i32 0, i32 31
  %210 = ptrtoint ptr %rmmio.i127.i to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load ptr, ptr %rmmio.i127.i, align 4
  %add.ptr.i128.i = getelementptr i8, ptr %211, i32 %add17.i42
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i128.i, i32 117440512) #10, !srcloc !313
  br label %r100_mm_wreg.exit131.i

if.else.i130.i:                                   ; preds = %r100_mm_wreg.exit122.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @r100_mm_wreg_slow(ptr noundef %5, i32 noundef %add17.i42, i32 noundef 7) #10
  br label %r100_mm_wreg.exit131.i

r100_mm_wreg.exit131.i:                           ; preds = %if.else.i130.i, %do.body.i129.i
  %212 = ptrtoint ptr %crtc_offset.i24 to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load i32, ptr %crtc_offset.i24, align 8
  %add19.i43 = add i32 %213, 27108
  %214 = ptrtoint ptr %rmmio_size.i.i26 to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load i32, ptr %rmmio_size.i.i26, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %215, i32 %add19.i43)
  %cmp.i133.i = icmp ugt i32 %215, %add19.i43
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %add19.i43)
  %cmp1.i134.i = icmp ult i32 %add19.i43, 65536
  %or.cond.i135.i = or i1 %cmp1.i134.i, %cmp.i133.i
  br i1 %or.cond.i135.i, label %do.body.i138.i, label %if.else.i139.i

do.body.i138.i:                                   ; preds = %r100_mm_wreg.exit131.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !312
  tail call void @arm_heavy_mb() #10
  %rmmio.i136.i = getelementptr inbounds %struct.radeon_device, ptr %5, i32 0, i32 31
  %216 = ptrtoint ptr %rmmio.i136.i to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load ptr, ptr %rmmio.i136.i, align 4
  %add.ptr.i137.i = getelementptr i8, ptr %217, i32 %add19.i43
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i137.i, i32 0) #10, !srcloc !313
  br label %r100_mm_wreg.exit140.i

if.else.i139.i:                                   ; preds = %r100_mm_wreg.exit131.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @r100_mm_wreg_slow(ptr noundef %5, i32 noundef %add19.i43, i32 noundef 0) #10
  br label %r100_mm_wreg.exit140.i

r100_mm_wreg.exit140.i:                           ; preds = %if.else.i139.i, %do.body.i138.i
  %gamma_store.i44 = getelementptr inbounds %struct.drm_crtc, ptr %crtc, i32 0, i32 18
  %218 = ptrtoint ptr %gamma_store.i44 to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load ptr, ptr %gamma_store.i44, align 4
  %gamma_size.i45 = getelementptr inbounds %struct.drm_crtc, ptr %crtc, i32 0, i32 17
  %220 = ptrtoint ptr %gamma_size.i45 to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load i32, ptr %gamma_size.i45, align 8
  %add.ptr20.i = getelementptr i16, ptr %219, i32 %221
  %add.ptr22.i = getelementptr i16, ptr %add.ptr20.i, i32 %221
  %rmmio.i145.i = getelementptr inbounds %struct.radeon_device, ptr %5, i32 0, i32 31
  br label %for.body.i50

for.body.i50:                                     ; preds = %r100_mm_wreg.exit149.i.for.body.i50_crit_edge, %r100_mm_wreg.exit140.i
  %i.0153.i = phi i32 [ 0, %r100_mm_wreg.exit140.i ], [ %inc.i51, %r100_mm_wreg.exit149.i.for.body.i50_crit_edge ]
  %b.0152.i = phi ptr [ %add.ptr22.i, %r100_mm_wreg.exit140.i ], [ %incdec.ptr29.i, %r100_mm_wreg.exit149.i.for.body.i50_crit_edge ]
  %g.0151.i = phi ptr [ %add.ptr20.i, %r100_mm_wreg.exit140.i ], [ %incdec.ptr25.i, %r100_mm_wreg.exit149.i.for.body.i50_crit_edge ]
  %r.0150.i = phi ptr [ %219, %r100_mm_wreg.exit140.i ], [ %incdec.ptr.i46, %r100_mm_wreg.exit149.i.for.body.i50_crit_edge ]
  %222 = ptrtoint ptr %crtc_offset.i24 to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load i32, ptr %crtc_offset.i24, align 8
  %add24.i = add i32 %223, 27120
  %incdec.ptr.i46 = getelementptr i16, ptr %r.0150.i, i32 1
  %224 = ptrtoint ptr %r.0150.i to i32
  call void @__asan_load2_noabort(i32 %224)
  %225 = load i16, ptr %r.0150.i, align 2
  %226 = and i16 %225, -64
  %and.i47 = zext i16 %226 to i32
  %shl.i48 = shl nuw nsw i32 %and.i47, 14
  %incdec.ptr25.i = getelementptr i16, ptr %g.0151.i, i32 1
  %227 = ptrtoint ptr %g.0151.i to i32
  call void @__asan_load2_noabort(i32 %227)
  %228 = load i16, ptr %g.0151.i, align 2
  %229 = and i16 %228, -64
  %and27.i = zext i16 %229 to i32
  %shl28.i = shl nuw nsw i32 %and27.i, 4
  %or.i49 = or i32 %shl28.i, %shl.i48
  %incdec.ptr29.i = getelementptr i16, ptr %b.0152.i, i32 1
  %230 = ptrtoint ptr %b.0152.i to i32
  call void @__asan_load2_noabort(i32 %230)
  %231 = load i16, ptr %b.0152.i, align 2
  %232 = lshr i16 %231, 6
  %233 = zext i16 %232 to i32
  %or31.i = or i32 %or.i49, %233
  %234 = ptrtoint ptr %rmmio_size.i.i26 to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load i32, ptr %rmmio_size.i.i26, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %235, i32 %add24.i)
  %cmp.i142.i = icmp ugt i32 %235, %add24.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %add24.i)
  %cmp1.i143.i = icmp ult i32 %add24.i, 65536
  %or.cond.i144.i = or i1 %cmp1.i143.i, %cmp.i142.i
  br i1 %or.cond.i144.i, label %do.body.i147.i, label %if.else.i148.i

do.body.i147.i:                                   ; preds = %for.body.i50
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !312
  tail call void @arm_heavy_mb() #10
  %236 = tail call i32 @llvm.bswap.i32(i32 %or31.i) #10
  %237 = ptrtoint ptr %rmmio.i145.i to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load ptr, ptr %rmmio.i145.i, align 4
  %add.ptr.i146.i = getelementptr i8, ptr %238, i32 %add24.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i146.i, i32 %236) #10, !srcloc !313
  br label %r100_mm_wreg.exit149.i

if.else.i148.i:                                   ; preds = %for.body.i50
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @r100_mm_wreg_slow(ptr noundef %5, i32 noundef %add24.i, i32 noundef %or31.i) #10
  br label %r100_mm_wreg.exit149.i

r100_mm_wreg.exit149.i:                           ; preds = %if.else.i148.i, %do.body.i147.i
  %inc.i51 = add nuw nsw i32 %i.0153.i, 1
  %exitcond.not.i52 = icmp eq i32 %inc.i51, 256
  br i1 %exitcond.not.i52, label %r100_mm_wreg.exit149.i.cleanup_crit_edge, label %r100_mm_wreg.exit149.i.for.body.i50_crit_edge

r100_mm_wreg.exit149.i.for.body.i50_crit_edge:    ; preds = %r100_mm_wreg.exit149.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i50

r100_mm_wreg.exit149.i.cleanup_crit_edge:         ; preds = %r100_mm_wreg.exit149.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.else6:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %7)
  %cmp8 = icmp ugt i32 %7, 17
  br i1 %cmp8, label %if.then9, label %if.else10

if.then9:                                         ; preds = %if.else6
  %crtc_id.i55 = getelementptr inbounds %struct.radeon_crtc, ptr %crtc, i32 0, i32 1
  %239 = ptrtoint ptr %crtc_id.i55 to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load i32, ptr %crtc_id.i55, align 8
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.5, i32 noundef %240) #10
  %crtc_offset.i56 = getelementptr inbounds %struct.radeon_crtc, ptr %crtc, i32 0, i32 5
  %241 = ptrtoint ptr %crtc_offset.i56 to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load i32, ptr %crtc_offset.i56, align 8
  %add.i57 = add i32 %242, 25792
  %rmmio_size.i.i58 = getelementptr inbounds %struct.radeon_device, ptr %5, i32 0, i32 18
  %243 = ptrtoint ptr %rmmio_size.i.i58 to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load i32, ptr %rmmio_size.i.i58, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %244, i32 %add.i57)
  %cmp.i.i59 = icmp ugt i32 %244, %add.i57
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %add.i57)
  %cmp1.i.i60 = icmp ult i32 %add.i57, 65536
  %or.cond.i.i61 = or i1 %cmp1.i.i60, %cmp.i.i59
  br i1 %or.cond.i.i61, label %do.body.i.i64, label %if.else.i.i65

do.body.i.i64:                                    ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !312
  tail call void @arm_heavy_mb() #10
  %rmmio.i.i62 = getelementptr inbounds %struct.radeon_device, ptr %5, i32 0, i32 31
  %245 = ptrtoint ptr %rmmio.i.i62 to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load ptr, ptr %rmmio.i.i62, align 4
  %add.ptr.i.i63 = getelementptr i8, ptr %246, i32 %add.i57
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i63, i32 0) #10, !srcloc !313
  br label %r100_mm_wreg.exit.i67

if.else.i.i65:                                    ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @r100_mm_wreg_slow(ptr noundef %5, i32 noundef %add.i57, i32 noundef 0) #10
  br label %r100_mm_wreg.exit.i67

r100_mm_wreg.exit.i67:                            ; preds = %if.else.i.i65, %do.body.i.i64
  %247 = ptrtoint ptr %crtc_offset.i56 to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load i32, ptr %crtc_offset.i56, align 8
  %add3.i66 = add i32 %248, 25796
  %249 = ptrtoint ptr %rmmio_size.i.i58 to i32
  call void @__asan_load4_noabort(i32 %249)
  %250 = load i32, ptr %rmmio_size.i.i58, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %250, i32 %add3.i66)
  %cmp.i71.i = icmp ugt i32 %250, %add3.i66
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %add3.i66)
  %cmp1.i72.i = icmp ult i32 %add3.i66, 65536
  %or.cond.i73.i = or i1 %cmp1.i72.i, %cmp.i71.i
  br i1 %or.cond.i73.i, label %do.body.i76.i, label %if.else.i77.i

do.body.i76.i:                                    ; preds = %r100_mm_wreg.exit.i67
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !312
  tail call void @arm_heavy_mb() #10
  %rmmio.i74.i = getelementptr inbounds %struct.radeon_device, ptr %5, i32 0, i32 31
  %251 = ptrtoint ptr %rmmio.i74.i to i32
  call void @__asan_load4_noabort(i32 %251)
  %252 = load ptr, ptr %rmmio.i74.i, align 4
  %add.ptr.i75.i = getelementptr i8, ptr %252, i32 %add3.i66
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i75.i, i32 0) #10, !srcloc !313
  br label %r100_mm_wreg.exit78.i

if.else.i77.i:                                    ; preds = %r100_mm_wreg.exit.i67
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @r100_mm_wreg_slow(ptr noundef %5, i32 noundef %add3.i66, i32 noundef 0) #10
  br label %r100_mm_wreg.exit78.i

r100_mm_wreg.exit78.i:                            ; preds = %if.else.i77.i, %do.body.i76.i
  %253 = ptrtoint ptr %crtc_offset.i56 to i32
  call void @__asan_load4_noabort(i32 %253)
  %254 = load i32, ptr %crtc_offset.i56, align 8
  %add5.i68 = add i32 %254, 25800
  %255 = ptrtoint ptr %rmmio_size.i.i58 to i32
  call void @__asan_load4_noabort(i32 %255)
  %256 = load i32, ptr %rmmio_size.i.i58, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %256, i32 %add5.i68)
  %cmp.i80.i = icmp ugt i32 %256, %add5.i68
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %add5.i68)
  %cmp1.i81.i = icmp ult i32 %add5.i68, 65536
  %or.cond.i82.i = or i1 %cmp1.i81.i, %cmp.i80.i
  br i1 %or.cond.i82.i, label %do.body.i85.i, label %if.else.i86.i

do.body.i85.i:                                    ; preds = %r100_mm_wreg.exit78.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !312
  tail call void @arm_heavy_mb() #10
  %rmmio.i83.i = getelementptr inbounds %struct.radeon_device, ptr %5, i32 0, i32 31
  %257 = ptrtoint ptr %rmmio.i83.i to i32
  call void @__asan_load4_noabort(i32 %257)
  %258 = load ptr, ptr %rmmio.i83.i, align 4
  %add.ptr.i84.i = getelementptr i8, ptr %258, i32 %add5.i68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i84.i, i32 0) #10, !srcloc !313
  br label %r100_mm_wreg.exit87.i

if.else.i86.i:                                    ; preds = %r100_mm_wreg.exit78.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @r100_mm_wreg_slow(ptr noundef %5, i32 noundef %add5.i68, i32 noundef 0) #10
  br label %r100_mm_wreg.exit87.i

r100_mm_wreg.exit87.i:                            ; preds = %if.else.i86.i, %do.body.i85.i
  %259 = ptrtoint ptr %crtc_offset.i56 to i32
  call void @__asan_load4_noabort(i32 %259)
  %260 = load i32, ptr %crtc_offset.i56, align 8
  %add7.i69 = add i32 %260, 25804
  %261 = ptrtoint ptr %rmmio_size.i.i58 to i32
  call void @__asan_load4_noabort(i32 %261)
  %262 = load i32, ptr %rmmio_size.i.i58, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %262, i32 %add7.i69)
  %cmp.i89.i = icmp ugt i32 %262, %add7.i69
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %add7.i69)
  %cmp1.i90.i = icmp ult i32 %add7.i69, 65536
  %or.cond.i91.i = or i1 %cmp1.i90.i, %cmp.i89.i
  br i1 %or.cond.i91.i, label %do.body.i94.i, label %if.else.i95.i

do.body.i94.i:                                    ; preds = %r100_mm_wreg.exit87.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !312
  tail call void @arm_heavy_mb() #10
  %rmmio.i92.i = getelementptr inbounds %struct.radeon_device, ptr %5, i32 0, i32 31
  %263 = ptrtoint ptr %rmmio.i92.i to i32
  call void @__asan_load4_noabort(i32 %263)
  %264 = load ptr, ptr %rmmio.i92.i, align 4
  %add.ptr.i93.i = getelementptr i8, ptr %264, i32 %add7.i69
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i93.i, i32 0) #10, !srcloc !313
  br label %r100_mm_wreg.exit96.i

if.else.i95.i:                                    ; preds = %r100_mm_wreg.exit87.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @r100_mm_wreg_slow(ptr noundef %5, i32 noundef %add7.i69, i32 noundef 0) #10
  br label %r100_mm_wreg.exit96.i

r100_mm_wreg.exit96.i:                            ; preds = %if.else.i95.i, %do.body.i94.i
  %265 = ptrtoint ptr %crtc_offset.i56 to i32
  call void @__asan_load4_noabort(i32 %265)
  %266 = load i32, ptr %crtc_offset.i56, align 8
  %add9.i70 = add i32 %266, 25808
  %267 = ptrtoint ptr %rmmio_size.i.i58 to i32
  call void @__asan_load4_noabort(i32 %267)
  %268 = load i32, ptr %rmmio_size.i.i58, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %268, i32 %add9.i70)
  %cmp.i98.i = icmp ugt i32 %268, %add9.i70
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %add9.i70)
  %cmp1.i99.i = icmp ult i32 %add9.i70, 65536
  %or.cond.i100.i = or i1 %cmp1.i99.i, %cmp.i98.i
  br i1 %or.cond.i100.i, label %do.body.i103.i, label %if.else.i104.i

do.body.i103.i:                                   ; preds = %r100_mm_wreg.exit96.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !312
  tail call void @arm_heavy_mb() #10
  %rmmio.i101.i = getelementptr inbounds %struct.radeon_device, ptr %5, i32 0, i32 31
  %269 = ptrtoint ptr %rmmio.i101.i to i32
  call void @__asan_load4_noabort(i32 %269)
  %270 = load ptr, ptr %rmmio.i101.i, align 4
  %add.ptr.i102.i = getelementptr i8, ptr %270, i32 %add9.i70
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i102.i, i32 -65536) #10, !srcloc !313
  br label %r100_mm_wreg.exit105.i

if.else.i104.i:                                   ; preds = %r100_mm_wreg.exit96.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @r100_mm_wreg_slow(ptr noundef %5, i32 noundef %add9.i70, i32 noundef 65535) #10
  br label %r100_mm_wreg.exit105.i

r100_mm_wreg.exit105.i:                           ; preds = %if.else.i104.i, %do.body.i103.i
  %271 = ptrtoint ptr %crtc_offset.i56 to i32
  call void @__asan_load4_noabort(i32 %271)
  %272 = load i32, ptr %crtc_offset.i56, align 8
  %add11.i71 = add i32 %272, 25812
  %273 = ptrtoint ptr %rmmio_size.i.i58 to i32
  call void @__asan_load4_noabort(i32 %273)
  %274 = load i32, ptr %rmmio_size.i.i58, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %274, i32 %add11.i71)
  %cmp.i107.i = icmp ugt i32 %274, %add11.i71
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %add11.i71)
  %cmp1.i108.i = icmp ult i32 %add11.i71, 65536
  %or.cond.i109.i = or i1 %cmp1.i108.i, %cmp.i107.i
  br i1 %or.cond.i109.i, label %do.body.i112.i, label %if.else.i113.i

do.body.i112.i:                                   ; preds = %r100_mm_wreg.exit105.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !312
  tail call void @arm_heavy_mb() #10
  %rmmio.i110.i = getelementptr inbounds %struct.radeon_device, ptr %5, i32 0, i32 31
  %275 = ptrtoint ptr %rmmio.i110.i to i32
  call void @__asan_load4_noabort(i32 %275)
  %276 = load ptr, ptr %rmmio.i110.i, align 4
  %add.ptr.i111.i = getelementptr i8, ptr %276, i32 %add11.i71
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i111.i, i32 -65536) #10, !srcloc !313
  br label %r100_mm_wreg.exit114.i

if.else.i113.i:                                   ; preds = %r100_mm_wreg.exit105.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @r100_mm_wreg_slow(ptr noundef %5, i32 noundef %add11.i71, i32 noundef 65535) #10
  br label %r100_mm_wreg.exit114.i

r100_mm_wreg.exit114.i:                           ; preds = %if.else.i113.i, %do.body.i112.i
  %277 = ptrtoint ptr %crtc_offset.i56 to i32
  call void @__asan_load4_noabort(i32 %277)
  %278 = load i32, ptr %crtc_offset.i56, align 8
  %add13.i72 = add i32 %278, 25816
  %279 = ptrtoint ptr %rmmio_size.i.i58 to i32
  call void @__asan_load4_noabort(i32 %279)
  %280 = load i32, ptr %rmmio_size.i.i58, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %280, i32 %add13.i72)
  %cmp.i116.i = icmp ugt i32 %280, %add13.i72
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %add13.i72)
  %cmp1.i117.i = icmp ult i32 %add13.i72, 65536
  %or.cond.i118.i = or i1 %cmp1.i117.i, %cmp.i116.i
  br i1 %or.cond.i118.i, label %do.body.i121.i, label %if.else.i122.i

do.body.i121.i:                                   ; preds = %r100_mm_wreg.exit114.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !312
  tail call void @arm_heavy_mb() #10
  %rmmio.i119.i = getelementptr inbounds %struct.radeon_device, ptr %5, i32 0, i32 31
  %281 = ptrtoint ptr %rmmio.i119.i to i32
  call void @__asan_load4_noabort(i32 %281)
  %282 = load ptr, ptr %rmmio.i119.i, align 4
  %add.ptr.i120.i = getelementptr i8, ptr %282, i32 %add13.i72
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i120.i, i32 -65536) #10, !srcloc !313
  br label %r100_mm_wreg.exit123.i

if.else.i122.i:                                   ; preds = %r100_mm_wreg.exit114.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @r100_mm_wreg_slow(ptr noundef %5, i32 noundef %add13.i72, i32 noundef 65535) #10
  br label %r100_mm_wreg.exit123.i

r100_mm_wreg.exit123.i:                           ; preds = %if.else.i122.i, %do.body.i121.i
  %283 = ptrtoint ptr %crtc_id.i55 to i32
  call void @__asan_load4_noabort(i32 %283)
  %284 = load i32, ptr %crtc_id.i55, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !312
  tail call void @arm_heavy_mb() #10
  %285 = tail call i32 @llvm.bswap.i32(i32 %284) #10
  %rmmio.i126.i = getelementptr inbounds %struct.radeon_device, ptr %5, i32 0, i32 31
  %286 = ptrtoint ptr %rmmio.i126.i to i32
  call void @__asan_load4_noabort(i32 %286)
  %287 = load ptr, ptr %rmmio.i126.i, align 4
  %add.ptr.i127.i = getelementptr i8, ptr %287, i32 25728
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i127.i, i32 %285) #10, !srcloc !313
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !312
  tail call void @arm_heavy_mb() #10
  %288 = ptrtoint ptr %rmmio.i126.i to i32
  call void @__asan_load4_noabort(i32 %288)
  %289 = load ptr, ptr %rmmio.i126.i, align 4
  %add.ptr.i132.i = getelementptr i8, ptr %289, i32 25732
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i132.i, i32 0) #10, !srcloc !313
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !312
  tail call void @arm_heavy_mb() #10
  %290 = ptrtoint ptr %rmmio.i126.i to i32
  call void @__asan_load4_noabort(i32 %290)
  %291 = load ptr, ptr %rmmio.i126.i, align 4
  %add.ptr.i137.i73 = getelementptr i8, ptr %291, i32 25756
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i137.i73, i32 1056964608) #10, !srcloc !313
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !314
  tail call void @arm_heavy_mb() #10
  %292 = ptrtoint ptr %rmmio.i126.i to i32
  call void @__asan_load4_noabort(i32 %292)
  %293 = load ptr, ptr %rmmio.i126.i, align 4
  %add.ptr15.i = getelementptr i8, ptr %293, i32 25736
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr15.i, i8 0) #10, !srcloc !315
  %gamma_store.i74 = getelementptr inbounds %struct.drm_crtc, ptr %crtc, i32 0, i32 18
  %294 = ptrtoint ptr %gamma_store.i74 to i32
  call void @__asan_load4_noabort(i32 %294)
  %295 = load ptr, ptr %gamma_store.i74, align 4
  %gamma_size.i75 = getelementptr inbounds %struct.drm_crtc, ptr %crtc, i32 0, i32 17
  %296 = ptrtoint ptr %gamma_size.i75 to i32
  call void @__asan_load4_noabort(i32 %296)
  %297 = load i32, ptr %gamma_size.i75, align 8
  %add.ptr16.i = getelementptr i16, ptr %295, i32 %297
  %add.ptr18.i = getelementptr i16, ptr %add.ptr16.i, i32 %297
  br label %for.body.i82

for.body.i82:                                     ; preds = %for.body.i82.for.body.i82_crit_edge, %r100_mm_wreg.exit123.i
  %i.0163.i = phi i32 [ 0, %r100_mm_wreg.exit123.i ], [ %inc.i80, %for.body.i82.for.body.i82_crit_edge ]
  %b.0162.i = phi ptr [ %add.ptr18.i, %r100_mm_wreg.exit123.i ], [ %incdec.ptr23.i, %for.body.i82.for.body.i82_crit_edge ]
  %g.0161.i = phi ptr [ %add.ptr16.i, %r100_mm_wreg.exit123.i ], [ %incdec.ptr19.i, %for.body.i82.for.body.i82_crit_edge ]
  %r.0160.i = phi ptr [ %295, %r100_mm_wreg.exit123.i ], [ %incdec.ptr.i76, %for.body.i82.for.body.i82_crit_edge ]
  %incdec.ptr.i76 = getelementptr i16, ptr %r.0160.i, i32 1
  %298 = ptrtoint ptr %r.0160.i to i32
  call void @__asan_load2_noabort(i32 %298)
  %299 = load i16, ptr %r.0160.i, align 2
  %300 = and i16 %299, -64
  %and.i77 = zext i16 %300 to i32
  %shl.i78 = shl nuw nsw i32 %and.i77, 14
  %incdec.ptr19.i = getelementptr i16, ptr %g.0161.i, i32 1
  %301 = ptrtoint ptr %g.0161.i to i32
  call void @__asan_load2_noabort(i32 %301)
  %302 = load i16, ptr %g.0161.i, align 2
  %303 = and i16 %302, -64
  %and21.i = zext i16 %303 to i32
  %shl22.i = shl nuw nsw i32 %and21.i, 4
  %or.i79 = or i32 %shl22.i, %shl.i78
  %incdec.ptr23.i = getelementptr i16, ptr %b.0162.i, i32 1
  %304 = ptrtoint ptr %b.0162.i to i32
  call void @__asan_load2_noabort(i32 %304)
  %305 = load i16, ptr %b.0162.i, align 2
  %306 = lshr i16 %305, 6
  %307 = zext i16 %306 to i32
  %or25.i = or i32 %or.i79, %307
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !312
  tail call void @arm_heavy_mb() #10
  %308 = tail call i32 @llvm.bswap.i32(i32 %or25.i) #10
  %309 = ptrtoint ptr %rmmio.i126.i to i32
  call void @__asan_load4_noabort(i32 %309)
  %310 = load ptr, ptr %rmmio.i126.i, align 4
  %add.ptr.i142.i = getelementptr i8, ptr %310, i32 25748
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i142.i, i32 %308) #10, !srcloc !313
  %inc.i80 = add nuw nsw i32 %i.0163.i, 1
  %exitcond.not.i81 = icmp eq i32 %inc.i80, 256
  br i1 %exitcond.not.i81, label %do.body26.i, label %for.body.i82.for.body.i82_crit_edge

for.body.i82.for.body.i82_crit_edge:              ; preds = %for.body.i82
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i82

do.body26.i:                                      ; preds = %for.body.i82
  %311 = ptrtoint ptr %crtc_offset.i56 to i32
  call void @__asan_load4_noabort(i32 %311)
  %312 = load i32, ptr %crtc_offset.i56, align 8
  %add28.i = add i32 %312, 24840
  %313 = ptrtoint ptr %rmmio_size.i.i58 to i32
  call void @__asan_load4_noabort(i32 %313)
  %314 = load i32, ptr %rmmio_size.i.i58, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %314, i32 %add28.i)
  %cmp.i145.i = icmp ugt i32 %314, %add28.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %add28.i)
  %cmp1.i146.i = icmp ult i32 %add28.i, 65536
  %or.cond.i147.i = or i1 %cmp1.i146.i, %cmp.i145.i
  br i1 %or.cond.i147.i, label %if.then.i.i, label %if.else.i150.i83

if.then.i.i:                                      ; preds = %do.body26.i
  call void @__sanitizer_cov_trace_pc() #12
  %315 = ptrtoint ptr %rmmio.i126.i to i32
  call void @__asan_load4_noabort(i32 %315)
  %316 = load ptr, ptr %rmmio.i126.i, align 4
  %add.ptr.i149.i = getelementptr i8, ptr %316, i32 %add28.i
  %317 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i149.i) #10, !srcloc !316
  %318 = tail call i32 @llvm.bswap.i32(i32 %317) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !317
  br label %r100_mm_rreg.exit.i

if.else.i150.i83:                                 ; preds = %do.body26.i
  call void @__sanitizer_cov_trace_pc() #12
  %call3.i.i = tail call i32 @r100_mm_rreg_slow(ptr noundef %5, i32 noundef %add28.i) #10
  br label %r100_mm_rreg.exit.i

r100_mm_rreg.exit.i:                              ; preds = %if.else.i150.i83, %if.then.i.i
  %retval.0.i.i = phi i32 [ %call3.i.i, %if.else.i150.i83 ], [ %318, %if.then.i.i ]
  %and29.i = and i32 %retval.0.i.i, -2
  %319 = ptrtoint ptr %crtc_id.i55 to i32
  call void @__asan_load4_noabort(i32 %319)
  %320 = load i32, ptr %crtc_id.i55, align 8
  %and31.i = and i32 %320, 1
  %or32.i = or i32 %and31.i, %and29.i
  %321 = ptrtoint ptr %crtc_offset.i56 to i32
  call void @__asan_load4_noabort(i32 %321)
  %322 = load i32, ptr %crtc_offset.i56, align 8
  %add34.i = add i32 %322, 24840
  %323 = ptrtoint ptr %rmmio_size.i.i58 to i32
  call void @__asan_load4_noabort(i32 %323)
  %324 = load i32, ptr %rmmio_size.i.i58, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %324, i32 %add34.i)
  %cmp.i152.i = icmp ugt i32 %324, %add34.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %add34.i)
  %cmp1.i153.i = icmp ult i32 %add34.i, 65536
  %or.cond.i154.i = or i1 %cmp1.i153.i, %cmp.i152.i
  br i1 %or.cond.i154.i, label %do.body.i157.i, label %if.else.i158.i

do.body.i157.i:                                   ; preds = %r100_mm_rreg.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !312
  tail call void @arm_heavy_mb() #10
  %325 = tail call i32 @llvm.bswap.i32(i32 %or32.i) #10
  %326 = ptrtoint ptr %rmmio.i126.i to i32
  call void @__asan_load4_noabort(i32 %326)
  %327 = load ptr, ptr %rmmio.i126.i, align 4
  %add.ptr.i156.i = getelementptr i8, ptr %327, i32 %add34.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i156.i, i32 %325) #10, !srcloc !313
  br label %cleanup

if.else.i158.i:                                   ; preds = %r100_mm_rreg.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @r100_mm_wreg_slow(ptr noundef %5, i32 noundef %add34.i, i32 noundef %or32.i) #10
  br label %cleanup

if.else10:                                        ; preds = %if.else6
  %rmmio.i.i85 = getelementptr inbounds %struct.radeon_device, ptr %5, i32 0, i32 31
  %328 = ptrtoint ptr %rmmio.i.i85 to i32
  call void @__asan_load4_noabort(i32 %328)
  %329 = load ptr, ptr %rmmio.i.i85, align 4
  %add.ptr.i.i86 = getelementptr i8, ptr %329, i32 124
  %330 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i86) #10, !srcloc !316
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !317
  %crtc_id.i87 = getelementptr inbounds %struct.radeon_crtc, ptr %crtc, i32 0, i32 1
  %331 = ptrtoint ptr %crtc_id.i87 to i32
  call void @__asan_load4_noabort(i32 %331)
  %332 = load i32, ptr %crtc_id.i87, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %332)
  %cmp.i = icmp eq i32 %332, 0
  %333 = and i32 %330, -536870913
  %334 = tail call i32 @llvm.bswap.i32(i32 %333) #10
  %masksel.i = select i1 %cmp.i, i32 0, i32 32
  %dac2_cntl.0.i = or i32 %masksel.i, %334
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !312
  tail call void @arm_heavy_mb() #10
  %335 = tail call i32 @llvm.bswap.i32(i32 %dac2_cntl.0.i) #10
  %336 = ptrtoint ptr %rmmio.i.i85 to i32
  call void @__asan_load4_noabort(i32 %336)
  %337 = load ptr, ptr %rmmio.i.i85, align 4
  %add.ptr.i31.i = getelementptr i8, ptr %337, i32 124
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i31.i, i32 %335) #10, !srcloc !313
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !318
  tail call void @arm_heavy_mb() #10
  %338 = ptrtoint ptr %rmmio.i.i85 to i32
  call void @__asan_load4_noabort(i32 %338)
  %339 = load ptr, ptr %rmmio.i.i85, align 4
  %add.ptr2.i = getelementptr i8, ptr %339, i32 176
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr2.i, i8 0) #10, !srcloc !315
  %gamma_store.i88 = getelementptr inbounds %struct.drm_crtc, ptr %crtc, i32 0, i32 18
  %340 = ptrtoint ptr %gamma_store.i88 to i32
  call void @__asan_load4_noabort(i32 %340)
  %341 = load ptr, ptr %gamma_store.i88, align 4
  %gamma_size.i89 = getelementptr inbounds %struct.drm_crtc, ptr %crtc, i32 0, i32 17
  %342 = ptrtoint ptr %gamma_size.i89 to i32
  call void @__asan_load4_noabort(i32 %342)
  %343 = load i32, ptr %gamma_size.i89, align 8
  %add.ptr3.i = getelementptr i16, ptr %341, i32 %343
  %add.ptr5.i = getelementptr i16, ptr %add.ptr3.i, i32 %343
  br label %for.body.i94

for.body.i94:                                     ; preds = %for.body.i94.for.body.i94_crit_edge, %if.else10
  %i.039.i = phi i32 [ 0, %if.else10 ], [ %inc.i92, %for.body.i94.for.body.i94_crit_edge ]
  %b.038.i = phi ptr [ %add.ptr5.i, %if.else10 ], [ %incdec.ptr13.i, %for.body.i94.for.body.i94_crit_edge ]
  %g.037.i = phi ptr [ %add.ptr3.i, %if.else10 ], [ %incdec.ptr8.i, %for.body.i94.for.body.i94_crit_edge ]
  %r.036.i = phi ptr [ %341, %if.else10 ], [ %incdec.ptr.i90, %for.body.i94.for.body.i94_crit_edge ]
  %incdec.ptr.i90 = getelementptr i16, ptr %r.036.i, i32 1
  %344 = ptrtoint ptr %r.036.i to i32
  call void @__asan_load2_noabort(i32 %344)
  %345 = load i16, ptr %r.036.i, align 2
  %346 = and i16 %345, -64
  %and7.i = zext i16 %346 to i32
  %shl.i91 = shl nuw nsw i32 %and7.i, 14
  %incdec.ptr8.i = getelementptr i16, ptr %g.037.i, i32 1
  %347 = ptrtoint ptr %g.037.i to i32
  call void @__asan_load2_noabort(i32 %347)
  %348 = load i16, ptr %g.037.i, align 2
  %349 = and i16 %348, -64
  %and10.i = zext i16 %349 to i32
  %shl11.i = shl nuw nsw i32 %and10.i, 4
  %or12.i = or i32 %shl11.i, %shl.i91
  %incdec.ptr13.i = getelementptr i16, ptr %b.038.i, i32 1
  %350 = ptrtoint ptr %b.038.i to i32
  call void @__asan_load2_noabort(i32 %350)
  %351 = load i16, ptr %b.038.i, align 2
  %352 = lshr i16 %351, 6
  %353 = zext i16 %352 to i32
  %or15.i = or i32 %or12.i, %353
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !312
  tail call void @arm_heavy_mb() #10
  %354 = tail call i32 @llvm.bswap.i32(i32 %or15.i) #10
  %355 = ptrtoint ptr %rmmio.i.i85 to i32
  call void @__asan_load4_noabort(i32 %355)
  %356 = load ptr, ptr %rmmio.i.i85, align 4
  %add.ptr.i35.i = getelementptr i8, ptr %356, i32 184
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i35.i, i32 %354) #10, !srcloc !313
  %inc.i92 = add nuw nsw i32 %i.039.i, 1
  %exitcond.not.i93 = icmp eq i32 %inc.i92, 256
  br i1 %exitcond.not.i93, label %for.body.i94.cleanup_crit_edge, label %for.body.i94.for.body.i94_crit_edge

for.body.i94.for.body.i94_crit_edge:              ; preds = %for.body.i94
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i94

for.body.i94.cleanup_crit_edge:                   ; preds = %for.body.i94
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

cleanup:                                          ; preds = %for.body.i94.cleanup_crit_edge, %if.else.i158.i, %do.body.i157.i, %r100_mm_wreg.exit149.i.cleanup_crit_edge, %if.else.i285.i, %do.body.i284.i, %r100_mm_wreg.exit277.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @radeon_crtc_handle_vblank(ptr noundef %rdev, i32 noundef %crtc_id) local_unnamed_addr #0 align 64 {
entry:
  %vpos = alloca i32, align 4
  %hpos = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 44, i32 4, i32 %crtc_id
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %vpos) #10
  %2 = ptrtoint ptr %vpos to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %vpos, align 4, !annotation !319
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %hpos) #10
  %3 = ptrtoint ptr %hpos to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %hpos, align 4, !annotation !319
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @radeon_use_pflipirq to i32))
  %4 = load i32, ptr @radeon_use_pflipirq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %4)
  %cmp1 = icmp eq i32 %4, 2
  br i1 %cmp1, label %land.lhs.true, label %if.end.do.body5_crit_edge

if.end.do.body5_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body5

land.lhs.true:                                    ; preds = %if.end
  %family = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 6
  %5 = ptrtoint ptr %family to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %family, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 38, i32 %6)
  %cmp2 = icmp ugt i32 %6, 38
  br i1 %cmp2, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.do.body5_crit_edge

land.lhs.true.do.body5_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body5

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.body5:                                         ; preds = %land.lhs.true.do.body5_crit_edge, %if.end.do.body5_crit_edge
  %ddev = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 1
  %7 = ptrtoint ptr %ddev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ddev, align 4
  %event_lock = getelementptr inbounds %struct.drm_device, ptr %8, i32 0, i32 28
  %call7 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %event_lock) #10
  %flip_status = getelementptr inbounds %struct.radeon_crtc, ptr %1, i32 0, i32 26
  %9 = ptrtoint ptr %flip_status to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %flip_status, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %10)
  %cmp10.not = icmp eq i32 %10, 2
  br i1 %cmp10.not, label %if.end16, label %if.then12

if.then12:                                        ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str, i32 noundef %10, i32 noundef 2) #10
  %11 = ptrtoint ptr %ddev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ddev, align 4
  %event_lock15 = getelementptr inbounds %struct.drm_device, ptr %12, i32 0, i32 28
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %event_lock15, i32 noundef %call7) #10
  br label %cleanup

if.end16:                                         ; preds = %do.body5
  %asic = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 56
  %13 = ptrtoint ptr %asic to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %asic, align 8
  %page_flip_pending = getelementptr inbounds %struct.radeon_asic, ptr %14, i32 0, i32 22, i32 1
  %15 = ptrtoint ptr %page_flip_pending to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %page_flip_pending, align 4
  %call17 = tail call zeroext i1 %16(ptr noundef %rdev, i32 noundef %crtc_id) #10
  %17 = ptrtoint ptr %ddev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ddev, align 4
  br i1 %call17, label %land.lhs.true19, label %if.end16.if.then43_crit_edge

if.end16.if.then43_crit_edge:                     ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then43

land.lhs.true19:                                  ; preds = %if.end16
  %19 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx, align 4
  %hwmode = getelementptr inbounds %struct.drm_crtc, ptr %20, i32 0, i32 13
  %call24 = call i32 @radeon_get_crtc_scanoutpos(ptr noundef %18, i32 noundef %crtc_id, i32 noundef -2147483648, ptr noundef nonnull %vpos, ptr noundef nonnull %hpos, ptr noundef null, ptr noundef null, ptr noundef %hwmode)
  %and = and i32 %call24, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool25.not = icmp eq i32 %and, 0
  br i1 %tobool25.not, label %if.end44.critedge71, label %land.lhs.true26

land.lhs.true26:                                  ; preds = %land.lhs.true19
  %21 = ptrtoint ptr %vpos to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %vpos, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %22)
  %cmp27 = icmp sgt i32 %22, -1
  %23 = ptrtoint ptr %hpos to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %hpos, align 4
  br i1 %cmp27, label %land.lhs.true29, label %lor.lhs.false

land.lhs.true29:                                  ; preds = %land.lhs.true26
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp30 = icmp slt i32 %24, 0
  br i1 %cmp30, label %land.lhs.true29.if.then43.critedge_crit_edge, label %land.lhs.true29.land.lhs.true34_crit_edge

land.lhs.true29.land.lhs.true34_crit_edge:        ; preds = %land.lhs.true29
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true34

land.lhs.true29.if.then43.critedge_crit_edge:     ; preds = %land.lhs.true29
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then43.critedge

lor.lhs.false:                                    ; preds = %land.lhs.true26
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %24)
  %cmp32 = icmp sgt i32 %24, -1
  br i1 %cmp32, label %lor.lhs.false.land.lhs.true34_crit_edge, label %if.end44.critedge69

lor.lhs.false.land.lhs.true34_crit_edge:          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true34

land.lhs.true34:                                  ; preds = %lor.lhs.false.land.lhs.true34_crit_edge, %land.lhs.true29.land.lhs.true34_crit_edge
  %family35 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 6
  %25 = ptrtoint ptr %family35 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %family35, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %26)
  %cmp36 = icmp ugt i32 %26, 17
  br i1 %cmp36, label %if.end44.critedge, label %land.lhs.true34.if.then43.critedge_crit_edge

land.lhs.true34.if.then43.critedge_crit_edge:     ; preds = %land.lhs.true34
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then43.critedge

if.then43.critedge:                               ; preds = %land.lhs.true34.if.then43.critedge_crit_edge, %land.lhs.true29.if.then43.critedge_crit_edge
  %27 = ptrtoint ptr %ddev to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %ddev, align 4
  br label %if.then43

if.then43:                                        ; preds = %if.then43.critedge, %if.end16.if.then43_crit_edge
  %.sink = phi ptr [ %28, %if.then43.critedge ], [ %18, %if.end16.if.then43_crit_edge ]
  %event_lock41.c74 = getelementptr inbounds %struct.drm_device, ptr %.sink, i32 0, i32 28
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %event_lock41.c74, i32 noundef %call7) #10
  tail call void @radeon_crtc_handle_flip(ptr noundef %rdev, i32 noundef %crtc_id)
  br label %cleanup

if.end44.critedge:                                ; preds = %land.lhs.true34
  call void @__sanitizer_cov_trace_pc() #12
  %29 = ptrtoint ptr %ddev to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %ddev, align 4
  %event_lock41.c68 = getelementptr inbounds %struct.drm_device, ptr %30, i32 0, i32 28
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %event_lock41.c68, i32 noundef %call7) #10
  br label %cleanup

if.end44.critedge69:                              ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  %31 = ptrtoint ptr %ddev to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %ddev, align 4
  %event_lock41.c70 = getelementptr inbounds %struct.drm_device, ptr %32, i32 0, i32 28
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %event_lock41.c70, i32 noundef %call7) #10
  br label %cleanup

if.end44.critedge71:                              ; preds = %land.lhs.true19
  call void @__sanitizer_cov_trace_pc() #12
  %33 = ptrtoint ptr %ddev to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %ddev, align 4
  %event_lock41.c72 = getelementptr inbounds %struct.drm_device, ptr %34, i32 0, i32 28
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %event_lock41.c72, i32 noundef %call7) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end44.critedge71, %if.end44.critedge69, %if.end44.critedge, %if.then43, %if.then12, %land.lhs.true.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %hpos) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %vpos) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @radeon_get_crtc_scanoutpos(ptr nocapture noundef readonly %dev, i32 noundef %pipe, i32 noundef %flags, ptr nocapture noundef %vpos, ptr nocapture noundef writeonly %hpos, ptr noundef writeonly %stime, ptr noundef writeonly %etime, ptr nocapture noundef readonly %mode) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_private, align 4
  %tobool.not = icmp eq ptr %stime, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call i64 @ktime_get() #10
  %2 = ptrtoint ptr %stime to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 %call, ptr %stime, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %family = getelementptr inbounds %struct.radeon_device, ptr %1, i32 0, i32 6
  %3 = ptrtoint ptr %family to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %family, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 38, i32 %4)
  %cmp = icmp ugt i32 %4, 38
  br i1 %cmp, label %if.then1, label %if.else

if.then1:                                         ; preds = %if.end
  %5 = zext i32 %pipe to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values)
  switch i32 %pipe, label %if.then1.if.end82_crit_edge [
    i32 0, label %if.end6.thread
    i32 1, label %if.then8
    i32 2, label %if.then14
    i32 3, label %if.then20
    i32 4, label %if.then26
    i32 5, label %if.then32
  ]

if.then1.if.end82_crit_edge:                      ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end82

if.end6.thread:                                   ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #12
  %rmmio.i = getelementptr inbounds %struct.radeon_device, ptr %1, i32 0, i32 31
  %6 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %7, i32 28212
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #10, !srcloc !316
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !317
  %10 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i224 = getelementptr i8, ptr %11, i32 28304
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i224) #10, !srcloc !316
  %13 = tail call i32 @llvm.bswap.i32(i32 %12) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !317
  br label %if.end82

if.then8:                                         ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #12
  %rmmio.i227 = getelementptr inbounds %struct.radeon_device, ptr %1, i32 0, i32 31
  %14 = ptrtoint ptr %rmmio.i227 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %rmmio.i227, align 4
  %add.ptr.i228 = getelementptr i8, ptr %15, i32 31284
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i228) #10, !srcloc !316
  %17 = tail call i32 @llvm.bswap.i32(i32 %16) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !317
  %18 = ptrtoint ptr %rmmio.i227 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %rmmio.i227, align 4
  %add.ptr.i232 = getelementptr i8, ptr %19, i32 31376
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i232) #10, !srcloc !316
  %21 = tail call i32 @llvm.bswap.i32(i32 %20) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !317
  br label %if.end82

if.then14:                                        ; preds = %if.then1
  %rmmio_size.i233 = getelementptr inbounds %struct.radeon_device, ptr %1, i32 0, i32 18
  %22 = ptrtoint ptr %rmmio_size.i233 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %rmmio_size.i233, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 67124, i32 %23)
  %cmp.i234 = icmp ugt i32 %23, 67124
  br i1 %cmp.i234, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #12
  %rmmio.i235 = getelementptr inbounds %struct.radeon_device, ptr %1, i32 0, i32 31
  %24 = ptrtoint ptr %rmmio.i235 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %rmmio.i235, align 4
  %add.ptr.i236 = getelementptr i8, ptr %25, i32 67124
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i236) #10, !srcloc !316
  %27 = tail call i32 @llvm.bswap.i32(i32 %26) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !317
  br label %r100_mm_rreg.exit

if.else.i:                                        ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #12
  %call3.i = tail call i32 @r100_mm_rreg_slow(ptr noundef %1, i32 noundef 67124) #10
  br label %r100_mm_rreg.exit

r100_mm_rreg.exit:                                ; preds = %if.else.i, %if.then.i
  %retval.0.i = phi i32 [ %call3.i, %if.else.i ], [ %27, %if.then.i ]
  %28 = ptrtoint ptr %rmmio_size.i233 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %rmmio_size.i233, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 67216, i32 %29)
  %cmp.i238 = icmp ugt i32 %29, 67216
  br i1 %cmp.i238, label %if.then.i241, label %if.else.i243

if.then.i241:                                     ; preds = %r100_mm_rreg.exit
  call void @__sanitizer_cov_trace_pc() #12
  %rmmio.i239 = getelementptr inbounds %struct.radeon_device, ptr %1, i32 0, i32 31
  %30 = ptrtoint ptr %rmmio.i239 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %rmmio.i239, align 4
  %add.ptr.i240 = getelementptr i8, ptr %31, i32 67216
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i240) #10, !srcloc !316
  %33 = tail call i32 @llvm.bswap.i32(i32 %32) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !317
  br label %if.end82

if.else.i243:                                     ; preds = %r100_mm_rreg.exit
  call void @__sanitizer_cov_trace_pc() #12
  %call3.i242 = tail call i32 @r100_mm_rreg_slow(ptr noundef %1, i32 noundef 67216) #10
  br label %if.end82

if.then20:                                        ; preds = %if.then1
  %rmmio_size.i246 = getelementptr inbounds %struct.radeon_device, ptr %1, i32 0, i32 18
  %34 = ptrtoint ptr %rmmio_size.i246 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %rmmio_size.i246, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 70196, i32 %35)
  %cmp.i247 = icmp ugt i32 %35, 70196
  br i1 %cmp.i247, label %if.then.i250, label %if.else.i252

if.then.i250:                                     ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #12
  %rmmio.i248 = getelementptr inbounds %struct.radeon_device, ptr %1, i32 0, i32 31
  %36 = ptrtoint ptr %rmmio.i248 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %rmmio.i248, align 4
  %add.ptr.i249 = getelementptr i8, ptr %37, i32 70196
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i249) #10, !srcloc !316
  %39 = tail call i32 @llvm.bswap.i32(i32 %38) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !317
  br label %r100_mm_rreg.exit254

if.else.i252:                                     ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #12
  %call3.i251 = tail call i32 @r100_mm_rreg_slow(ptr noundef %1, i32 noundef 70196) #10
  br label %r100_mm_rreg.exit254

r100_mm_rreg.exit254:                             ; preds = %if.else.i252, %if.then.i250
  %retval.0.i253 = phi i32 [ %call3.i251, %if.else.i252 ], [ %39, %if.then.i250 ]
  %40 = ptrtoint ptr %rmmio_size.i246 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %rmmio_size.i246, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 70288, i32 %41)
  %cmp.i256 = icmp ugt i32 %41, 70288
  br i1 %cmp.i256, label %if.then.i259, label %if.else.i261

if.then.i259:                                     ; preds = %r100_mm_rreg.exit254
  call void @__sanitizer_cov_trace_pc() #12
  %rmmio.i257 = getelementptr inbounds %struct.radeon_device, ptr %1, i32 0, i32 31
  %42 = ptrtoint ptr %rmmio.i257 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %rmmio.i257, align 4
  %add.ptr.i258 = getelementptr i8, ptr %43, i32 70288
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i258) #10, !srcloc !316
  %45 = tail call i32 @llvm.bswap.i32(i32 %44) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !317
  br label %if.end82

if.else.i261:                                     ; preds = %r100_mm_rreg.exit254
  call void @__sanitizer_cov_trace_pc() #12
  %call3.i260 = tail call i32 @r100_mm_rreg_slow(ptr noundef %1, i32 noundef 70288) #10
  br label %if.end82

if.then26:                                        ; preds = %if.then1
  %rmmio_size.i264 = getelementptr inbounds %struct.radeon_device, ptr %1, i32 0, i32 18
  %46 = ptrtoint ptr %rmmio_size.i264 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %rmmio_size.i264, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 73268, i32 %47)
  %cmp.i265 = icmp ugt i32 %47, 73268
  br i1 %cmp.i265, label %if.then.i268, label %if.else.i270

if.then.i268:                                     ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #12
  %rmmio.i266 = getelementptr inbounds %struct.radeon_device, ptr %1, i32 0, i32 31
  %48 = ptrtoint ptr %rmmio.i266 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %rmmio.i266, align 4
  %add.ptr.i267 = getelementptr i8, ptr %49, i32 73268
  %50 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i267) #10, !srcloc !316
  %51 = tail call i32 @llvm.bswap.i32(i32 %50) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !317
  br label %r100_mm_rreg.exit272

if.else.i270:                                     ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #12
  %call3.i269 = tail call i32 @r100_mm_rreg_slow(ptr noundef %1, i32 noundef 73268) #10
  br label %r100_mm_rreg.exit272

r100_mm_rreg.exit272:                             ; preds = %if.else.i270, %if.then.i268
  %retval.0.i271 = phi i32 [ %call3.i269, %if.else.i270 ], [ %51, %if.then.i268 ]
  %52 = ptrtoint ptr %rmmio_size.i264 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %rmmio_size.i264, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 73360, i32 %53)
  %cmp.i274 = icmp ugt i32 %53, 73360
  br i1 %cmp.i274, label %if.then.i277, label %if.else.i279

if.then.i277:                                     ; preds = %r100_mm_rreg.exit272
  call void @__sanitizer_cov_trace_pc() #12
  %rmmio.i275 = getelementptr inbounds %struct.radeon_device, ptr %1, i32 0, i32 31
  %54 = ptrtoint ptr %rmmio.i275 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %rmmio.i275, align 4
  %add.ptr.i276 = getelementptr i8, ptr %55, i32 73360
  %56 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i276) #10, !srcloc !316
  %57 = tail call i32 @llvm.bswap.i32(i32 %56) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !317
  br label %if.end82

if.else.i279:                                     ; preds = %r100_mm_rreg.exit272
  call void @__sanitizer_cov_trace_pc() #12
  %call3.i278 = tail call i32 @r100_mm_rreg_slow(ptr noundef %1, i32 noundef 73360) #10
  br label %if.end82

if.then32:                                        ; preds = %if.then1
  %rmmio_size.i282 = getelementptr inbounds %struct.radeon_device, ptr %1, i32 0, i32 18
  %58 = ptrtoint ptr %rmmio_size.i282 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %rmmio_size.i282, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 76340, i32 %59)
  %cmp.i283 = icmp ugt i32 %59, 76340
  br i1 %cmp.i283, label %if.then.i286, label %if.else.i288

if.then.i286:                                     ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #12
  %rmmio.i284 = getelementptr inbounds %struct.radeon_device, ptr %1, i32 0, i32 31
  %60 = ptrtoint ptr %rmmio.i284 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %rmmio.i284, align 4
  %add.ptr.i285 = getelementptr i8, ptr %61, i32 76340
  %62 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i285) #10, !srcloc !316
  %63 = tail call i32 @llvm.bswap.i32(i32 %62) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !317
  br label %r100_mm_rreg.exit290

if.else.i288:                                     ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #12
  %call3.i287 = tail call i32 @r100_mm_rreg_slow(ptr noundef %1, i32 noundef 76340) #10
  br label %r100_mm_rreg.exit290

r100_mm_rreg.exit290:                             ; preds = %if.else.i288, %if.then.i286
  %retval.0.i289 = phi i32 [ %call3.i287, %if.else.i288 ], [ %63, %if.then.i286 ]
  %64 = ptrtoint ptr %rmmio_size.i282 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %rmmio_size.i282, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 76432, i32 %65)
  %cmp.i292 = icmp ugt i32 %65, 76432
  br i1 %cmp.i292, label %if.then.i295, label %if.else.i297

if.then.i295:                                     ; preds = %r100_mm_rreg.exit290
  call void @__sanitizer_cov_trace_pc() #12
  %rmmio.i293 = getelementptr inbounds %struct.radeon_device, ptr %1, i32 0, i32 31
  %66 = ptrtoint ptr %rmmio.i293 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %rmmio.i293, align 4
  %add.ptr.i294 = getelementptr i8, ptr %67, i32 76432
  %68 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i294) #10, !srcloc !316
  %69 = tail call i32 @llvm.bswap.i32(i32 %68) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !317
  br label %if.end82

if.else.i297:                                     ; preds = %r100_mm_rreg.exit290
  call void @__sanitizer_cov_trace_pc() #12
  %call3.i296 = tail call i32 @r100_mm_rreg_slow(ptr noundef %1, i32 noundef 76432) #10
  br label %if.end82

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %4)
  %cmp38 = icmp ugt i32 %4, 17
  br i1 %cmp38, label %if.then39, label %if.else52

if.then39:                                        ; preds = %if.else
  %70 = zext i32 %pipe to i64
  call void @__sanitizer_cov_trace_switch(i64 %70, ptr @__sancov_gen_cov_switch_values.158)
  switch i32 %pipe, label %if.then39.if.end82_crit_edge [
    i32 0, label %if.end45.thread
    i32 1, label %if.then47
  ]

if.then39.if.end82_crit_edge:                     ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end82

if.end45.thread:                                  ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #12
  %rmmio.i302 = getelementptr inbounds %struct.radeon_device, ptr %1, i32 0, i32 31
  %71 = ptrtoint ptr %rmmio.i302 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %rmmio.i302, align 4
  %add.ptr.i303 = getelementptr i8, ptr %72, i32 24612
  %73 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i303) #10, !srcloc !316
  %74 = tail call i32 @llvm.bswap.i32(i32 %73) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !317
  %75 = ptrtoint ptr %rmmio.i302 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %rmmio.i302, align 4
  %add.ptr.i309 = getelementptr i8, ptr %76, i32 24736
  %77 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i309) #10, !srcloc !316
  %78 = tail call i32 @llvm.bswap.i32(i32 %77) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !317
  br label %if.end82

if.then47:                                        ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #12
  %rmmio.i314 = getelementptr inbounds %struct.radeon_device, ptr %1, i32 0, i32 31
  %79 = ptrtoint ptr %rmmio.i314 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %rmmio.i314, align 4
  %add.ptr.i315 = getelementptr i8, ptr %80, i32 26660
  %81 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i315) #10, !srcloc !316
  %82 = tail call i32 @llvm.bswap.i32(i32 %81) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !317
  %83 = ptrtoint ptr %rmmio.i314 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %rmmio.i314, align 4
  %add.ptr.i321 = getelementptr i8, ptr %84, i32 26784
  %85 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i321) #10, !srcloc !316
  %86 = tail call i32 @llvm.bswap.i32(i32 %85) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !317
  br label %if.end82

if.else52:                                        ; preds = %if.else
  %87 = zext i32 %pipe to i64
  call void @__sanitizer_cov_trace_switch(i64 %87, ptr @__sancov_gen_cov_switch_values.159)
  switch i32 %pipe, label %if.else52.if.end82_crit_edge [
    i32 0, label %if.end65.thread
    i32 1, label %if.then67
  ]

if.else52.if.end82_crit_edge:                     ; preds = %if.else52
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end82

if.end65.thread:                                  ; preds = %if.else52
  call void @__sanitizer_cov_trace_pc() #12
  %rmmio.i326 = getelementptr inbounds %struct.radeon_device, ptr %1, i32 0, i32 31
  %88 = ptrtoint ptr %rmmio.i326 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %rmmio.i326, align 4
  %add.ptr.i327 = getelementptr i8, ptr %89, i32 520
  %90 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i327) #10, !srcloc !316
  %91 = tail call i32 @llvm.bswap.i32(i32 %90) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !317
  %and = lshr i32 %91, 16
  %shr = and i32 %and, 2047
  %92 = ptrtoint ptr %rmmio.i326 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %rmmio.i326, align 4
  %add.ptr.i333 = getelementptr i8, ptr %93, i32 528
  %94 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i333) #10, !srcloc !316
  %95 = tail call i32 @llvm.bswap.i32(i32 %94) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !317
  %shr57 = lshr i32 %95, 16
  %and58 = and i32 %shr57, 2047
  %96 = ptrtoint ptr %rmmio.i326 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %rmmio.i326, align 4
  %add.ptr.i339 = getelementptr i8, ptr %97, i32 92
  %98 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i339) #10, !srcloc !316
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !317
  %99 = and i32 %98, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %99)
  %tobool61 = icmp ne i32 %99, 0
  br label %if.end82

if.then67:                                        ; preds = %if.else52
  call void @__sanitizer_cov_trace_pc() #12
  %rmmio.i344 = getelementptr inbounds %struct.radeon_device, ptr %1, i32 0, i32 31
  %100 = ptrtoint ptr %rmmio.i344 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %rmmio.i344, align 4
  %add.ptr.i345 = getelementptr i8, ptr %101, i32 776
  %102 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i345) #10, !srcloc !316
  %103 = tail call i32 @llvm.bswap.i32(i32 %102) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !317
  %and69 = lshr i32 %103, 16
  %shr70 = and i32 %and69, 2047
  %104 = ptrtoint ptr %rmmio.i344 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %rmmio.i344, align 4
  %add.ptr.i351 = getelementptr i8, ptr %105, i32 784
  %106 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i351) #10, !srcloc !316
  %107 = tail call i32 @llvm.bswap.i32(i32 %106) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !317
  %shr72 = lshr i32 %107, 16
  %and73 = and i32 %shr72, 2047
  %108 = ptrtoint ptr %rmmio.i344 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %rmmio.i344, align 4
  %add.ptr.i357 = getelementptr i8, ptr %109, i32 1020
  %110 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i357) #10, !srcloc !316
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !317
  %111 = and i32 %110, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %111)
  %tobool76.not = icmp ne i32 %111, 0
  br label %if.end82

if.end82:                                         ; preds = %if.then67, %if.end65.thread, %if.else52.if.end82_crit_edge, %if.then47, %if.end45.thread, %if.then39.if.end82_crit_edge, %if.else.i297, %if.then.i295, %if.else.i279, %if.then.i277, %if.else.i261, %if.then.i259, %if.else.i243, %if.then.i241, %if.then8, %if.end6.thread, %if.then1.if.end82_crit_edge
  %vbl.7 = phi i32 [ %82, %if.then47 ], [ %shr70, %if.then67 ], [ %74, %if.end45.thread ], [ %shr, %if.end65.thread ], [ %retval.0.i253, %if.else.i261 ], [ %retval.0.i253, %if.then.i259 ], [ %retval.0.i, %if.else.i243 ], [ %retval.0.i, %if.then.i241 ], [ %9, %if.end6.thread ], [ %17, %if.then8 ], [ 0, %if.then1.if.end82_crit_edge ], [ 0, %if.then39.if.end82_crit_edge ], [ 0, %if.else52.if.end82_crit_edge ], [ %retval.0.i271, %if.then.i277 ], [ %retval.0.i271, %if.else.i279 ], [ %retval.0.i289, %if.then.i295 ], [ %retval.0.i289, %if.else.i297 ]
  %position.7 = phi i32 [ %86, %if.then47 ], [ %and73, %if.then67 ], [ %78, %if.end45.thread ], [ %and58, %if.end65.thread ], [ %call3.i260, %if.else.i261 ], [ %45, %if.then.i259 ], [ %call3.i242, %if.else.i243 ], [ %33, %if.then.i241 ], [ %13, %if.end6.thread ], [ %21, %if.then8 ], [ 0, %if.then1.if.end82_crit_edge ], [ 0, %if.then39.if.end82_crit_edge ], [ 0, %if.else52.if.end82_crit_edge ], [ %57, %if.then.i277 ], [ %call3.i278, %if.else.i279 ], [ %69, %if.then.i295 ], [ %call3.i296, %if.else.i297 ]
  %ret.7 = phi i32 [ 1, %if.then47 ], [ 1, %if.then67 ], [ 1, %if.end45.thread ], [ 1, %if.end65.thread ], [ 1, %if.else.i261 ], [ 1, %if.then.i259 ], [ 1, %if.else.i243 ], [ 1, %if.then.i241 ], [ 1, %if.end6.thread ], [ 1, %if.then8 ], [ 0, %if.then1.if.end82_crit_edge ], [ 0, %if.then39.if.end82_crit_edge ], [ 0, %if.else52.if.end82_crit_edge ], [ 1, %if.then.i277 ], [ 1, %if.else.i279 ], [ 1, %if.then.i295 ], [ 1, %if.else.i297 ]
  %in_vbl.3.off0 = phi i1 [ true, %if.then47 ], [ %tobool76.not, %if.then67 ], [ true, %if.end45.thread ], [ %tobool61, %if.end65.thread ], [ true, %if.else.i261 ], [ true, %if.then.i259 ], [ true, %if.else.i243 ], [ true, %if.then.i241 ], [ true, %if.end6.thread ], [ true, %if.then8 ], [ true, %if.then1.if.end82_crit_edge ], [ true, %if.then39.if.end82_crit_edge ], [ true, %if.else52.if.end82_crit_edge ], [ true, %if.then.i277 ], [ true, %if.else.i279 ], [ true, %if.then.i295 ], [ true, %if.else.i297 ]
  %tobool83.not = icmp eq ptr %etime, null
  br i1 %tobool83.not, label %if.end82.if.end86_crit_edge, label %if.then84

if.end82.if.end86_crit_edge:                      ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end86

if.then84:                                        ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #12
  %call85 = tail call i64 @ktime_get() #10
  %112 = ptrtoint ptr %etime to i32
  call void @__asan_store8_noabort(i32 %112)
  store i64 %call85, ptr %etime, align 8
  br label %if.end86

if.end86:                                         ; preds = %if.then84, %if.end82.if.end86_crit_edge
  %and87 = and i32 %position.7, 8191
  %113 = ptrtoint ptr %vpos to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 %and87, ptr %vpos, align 4
  %shr88 = lshr i32 %position.7, 16
  %and89 = and i32 %shr88, 8191
  %114 = ptrtoint ptr %hpos to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 %and89, ptr %hpos, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %vbl.7)
  %cmp90.not = icmp eq i32 %vbl.7, 0
  br i1 %cmp90.not, label %if.else96, label %if.then91

if.then91:                                        ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #12
  %or92 = or i32 %ret.7, 4
  %and93 = and i32 %vbl.7, 8191
  %shr94 = lshr i32 %vbl.7, 16
  %and95 = and i32 %shr94, 8191
  br label %if.end97

if.else96:                                        ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #12
  %crtc_vdisplay = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 20
  %115 = ptrtoint ptr %crtc_vdisplay to i32
  call void @__asan_load2_noabort(i32 %115)
  %116 = load i16, ptr %crtc_vdisplay, align 2
  %conv = zext i16 %116 to i32
  br label %if.end97

if.end97:                                         ; preds = %if.else96, %if.then91
  %vbl_start.0 = phi i32 [ %and93, %if.then91 ], [ %conv, %if.else96 ]
  %vbl_end.0 = phi i32 [ %and95, %if.then91 ], [ 0, %if.else96 ]
  %ret.8 = phi i32 [ %or92, %if.then91 ], [ %ret.7, %if.else96 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %flags)
  %tobool99.not = icmp sgt i32 %flags, -1
  br i1 %tobool99.not, label %if.end97.if.end101_crit_edge, label %if.then100

if.end97.if.end101_crit_edge:                     ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end101

if.then100:                                       ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #12
  %117 = ptrtoint ptr %vpos to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %vpos, align 4
  %sub = sub i32 %118, %vbl_start.0
  %119 = ptrtoint ptr %hpos to i32
  call void @__asan_store4_noabort(i32 %119)
  store i32 %sub, ptr %hpos, align 4
  br label %if.end101

if.end101:                                        ; preds = %if.then100, %if.end97.if.end101_crit_edge
  %and102 = and i32 %flags, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and102)
  %tobool103.not = icmp eq i32 %and102, 0
  br i1 %tobool103.not, label %if.then104, label %if.end101.if.end106_crit_edge

if.end101.if.end106_crit_edge:                    ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end106

if.then104:                                       ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx = getelementptr %struct.radeon_device, ptr %1, i32 0, i32 44, i32 4, i32 %pipe
  %120 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %arrayidx, align 4
  %lb_vblank_lead_lines = getelementptr inbounds %struct.radeon_crtc, ptr %121, i32 0, i32 39
  %122 = ptrtoint ptr %lb_vblank_lead_lines to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %lb_vblank_lead_lines, align 8
  %sub105 = sub i32 %vbl_start.0, %123
  br label %if.end106

if.end106:                                        ; preds = %if.then104, %if.end101.if.end106_crit_edge
  %vbl_start.1 = phi i32 [ %vbl_start.0, %if.end101.if.end106_crit_edge ], [ %sub105, %if.then104 ]
  %124 = ptrtoint ptr %vpos to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %vpos, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %125, i32 %vbl_start.1)
  %cmp107 = icmp sge i32 %125, %vbl_start.1
  call void @__sanitizer_cov_trace_cmp4(i32 %125, i32 %vbl_end.0)
  %cmp109.not = icmp slt i32 %125, %vbl_end.0
  %or.cond = select i1 %cmp107, i1 true, i1 %cmp109.not
  %spec.select220 = select i1 %or.cond, i1 %in_vbl.3.off0, i1 false
  br i1 %tobool99.not, label %if.end121, label %if.then119

if.then119:                                       ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #12
  %sub120 = sub i32 %125, %vbl_start.1
  br label %cleanup

if.end121:                                        ; preds = %if.end106
  %spec.select220.not = xor i1 %spec.select220, true
  call void @__sanitizer_cov_trace_cmp4(i32 %125, i32 %vbl_start.1)
  %cmp125.not = icmp slt i32 %125, %vbl_start.1
  %or.cond389 = select i1 %spec.select220.not, i1 true, i1 %cmp125.not
  br i1 %or.cond389, label %if.end121.if.end130_crit_edge, label %if.then127

if.end121.if.end130_crit_edge:                    ; preds = %if.end121
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end130

if.then127:                                       ; preds = %if.end121
  call void @__sanitizer_cov_trace_pc() #12
  %crtc_vtotal = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 25
  %126 = ptrtoint ptr %crtc_vtotal to i32
  call void @__asan_load2_noabort(i32 %126)
  %127 = load i16, ptr %crtc_vtotal, align 4
  %conv128 = zext i16 %127 to i32
  %sub129 = sub i32 %125, %conv128
  %128 = ptrtoint ptr %vpos to i32
  call void @__asan_store4_noabort(i32 %128)
  store i32 %sub129, ptr %vpos, align 4
  br label %if.end130

if.end130:                                        ; preds = %if.then127, %if.end121.if.end130_crit_edge
  %129 = ptrtoint ptr %vpos to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %vpos, align 4
  %sub131 = sub i32 %130, %vbl_end.0
  br label %cleanup

cleanup:                                          ; preds = %if.end130, %if.then119
  %storemerge = phi i32 [ %sub131, %if.end130 ], [ %sub120, %if.then119 ]
  %or115 = or i32 %ret.8, 2
  %spec.select219 = select i1 %spec.select220, i32 %or115, i32 %ret.8
  %131 = ptrtoint ptr %vpos to i32
  call void @__asan_store4_noabort(i32 %131)
  store i32 %storemerge, ptr %vpos, align 4
  ret i32 %spec.select219
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @radeon_crtc_handle_flip(ptr noundef %rdev, i32 noundef %crtc_id) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 44, i32 4, i32 %crtc_id
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %do.body1

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.body1:                                         ; preds = %entry
  %ddev = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 1
  %2 = ptrtoint ptr %ddev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ddev, align 4
  %event_lock = getelementptr inbounds %struct.drm_device, ptr %3, i32 0, i32 28
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %event_lock) #10
  %flip_work = getelementptr inbounds %struct.radeon_crtc, ptr %1, i32 0, i32 25
  %4 = ptrtoint ptr %flip_work to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %flip_work, align 4
  %flip_status = getelementptr inbounds %struct.radeon_crtc, ptr %1, i32 0, i32 26
  %6 = ptrtoint ptr %flip_status to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %flip_status, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %7)
  %cmp6.not = icmp eq i32 %7, 2
  br i1 %cmp6.not, label %if.end12, label %if.then8

if.then8:                                         ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str, i32 noundef %7, i32 noundef 2) #10
  %8 = ptrtoint ptr %ddev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ddev, align 4
  %event_lock11 = getelementptr inbounds %struct.drm_device, ptr %9, i32 0, i32 28
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %event_lock11, i32 noundef %call3) #10
  br label %cleanup

if.end12:                                         ; preds = %do.body1
  %10 = ptrtoint ptr %flip_status to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %flip_status, align 8
  %11 = ptrtoint ptr %flip_work to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %flip_work, align 4
  %event = getelementptr inbounds %struct.radeon_flip_work, ptr %5, i32 0, i32 6
  %12 = ptrtoint ptr %event to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %event, align 8
  %tobool.not = icmp eq ptr %13, null
  br i1 %tobool.not, label %if.end12.if.end17_crit_edge, label %if.then15

if.end12.if.end17_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end17

if.then15:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @drm_crtc_send_vblank_event(ptr noundef nonnull %1, ptr noundef nonnull %13) #10
  br label %if.end17

if.end17:                                         ; preds = %if.then15, %if.end12.if.end17_crit_edge
  %14 = ptrtoint ptr %ddev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ddev, align 4
  %event_lock19 = getelementptr inbounds %struct.drm_device, ptr %15, i32 0, i32 28
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %event_lock19, i32 noundef %call3) #10
  tail call void @drm_crtc_vblank_put(ptr noundef nonnull %1) #10
  %crtc_id21 = getelementptr inbounds %struct.radeon_flip_work, ptr %5, i32 0, i32 3
  %16 = ptrtoint ptr %crtc_id21 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %crtc_id21, align 4
  tail call void @radeon_irq_kms_pflip_irq_put(ptr noundef %rdev, i32 noundef %17) #10
  %flip_queue = getelementptr inbounds %struct.radeon_crtc, ptr %1, i32 0, i32 24
  %18 = ptrtoint ptr %flip_queue to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %flip_queue, align 8
  %unpin_work = getelementptr inbounds %struct.radeon_flip_work, ptr %5, i32 0, i32 1
  %call.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %19, ptr noundef %unpin_work) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end17, %if.then8, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_crtc_send_vblank_event(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_crtc_vblank_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @radeon_irq_kms_pflip_irq_put(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @radeon_compute_pll_avivo(ptr nocapture noundef readonly %pll, i32 noundef %freq, ptr nocapture noundef %dot_clock_p, ptr nocapture noundef %fb_div_p, ptr nocapture noundef %frac_fb_div_p, ptr nocapture noundef writeonly %ref_div_p, ptr nocapture noundef writeonly %post_div_p) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.radeon_pll, ptr %pll, i32 0, i32 18
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 4
  %and = and i32 %1, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %div = udiv i32 %freq, 10
  %cond = select i1 %tobool.not, i32 %div, i32 %freq
  %min_feedback_div = getelementptr inbounds %struct.radeon_pll, ptr %pll, i32 0, i32 14
  %2 = ptrtoint ptr %min_feedback_div to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %min_feedback_div, align 4
  %max_feedback_div = getelementptr inbounds %struct.radeon_pll, ptr %pll, i32 0, i32 15
  %4 = ptrtoint ptr %max_feedback_div to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %max_feedback_div, align 4
  %mul = mul i32 %3, 10
  %mul4 = mul i32 %5, 10
  %fb_div_max.0 = select i1 %tobool.not, i32 %5, i32 %mul4
  %fb_div_min.0 = select i1 %tobool.not, i32 %3, i32 %mul
  %and6 = and i32 %1, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool7.not = icmp eq i32 %and6, 0
  %reference_div = getelementptr inbounds %struct.radeon_pll, ptr %pll, i32 0, i32 1
  %min_ref_div = getelementptr inbounds %struct.radeon_pll, ptr %pll, i32 0, i32 10
  %ref_div_min.0.in = select i1 %tobool7.not, ptr %min_ref_div, ptr %reference_div
  %6 = ptrtoint ptr %ref_div_min.0.in to i32
  call void @__asan_load4_noabort(i32 %6)
  %ref_div_min.0 = load i32, ptr %ref_div_min.0.in, align 4
  %7 = and i32 %1, 1028
  call void @__sanitizer_cov_trace_const_cmp4(i32 1028, i32 %7)
  %.not = icmp eq i32 %7, 1028
  br i1 %.not, label %if.then16, label %if.else18

if.then16:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %8 = ptrtoint ptr %reference_div to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %reference_div, align 4
  br label %if.end30

if.else18:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %and20 = and i32 %1, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20)
  %tobool21.not = icmp eq i32 %and20, 0
  %max_ref_div28 = getelementptr inbounds %struct.radeon_pll, ptr %pll, i32 0, i32 11
  %10 = ptrtoint ptr %max_ref_div28 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %max_ref_div28, align 4
  %12 = tail call i32 @llvm.umin.i32(i32 %11, i32 7)
  %spec.select = select i1 %tobool21.not, i32 %11, i32 %12
  br label %if.end30

if.end30:                                         ; preds = %if.else18, %if.then16
  %ref_div_max.0 = phi i32 [ %9, %if.then16 ], [ %spec.select, %if.else18 ]
  %and32 = and i32 %1, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and32)
  %tobool33.not = icmp eq i32 %and32, 0
  br i1 %tobool33.not, label %if.else37, label %if.then34

if.then34:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #12
  %post_div35 = getelementptr inbounds %struct.radeon_pll, ptr %pll, i32 0, i32 2
  %13 = ptrtoint ptr %post_div35 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %post_div35, align 4
  br label %if.end69

if.else37:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #12
  %and39 = and i32 %1, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and39)
  %tobool40.not = icmp eq i32 %and39, 0
  %lcd_pll_out_min = getelementptr inbounds %struct.radeon_pll, ptr %pll, i32 0, i32 7
  %lcd_pll_out_max = getelementptr inbounds %struct.radeon_pll, ptr %pll, i32 0, i32 8
  %pll_out_min = getelementptr inbounds %struct.radeon_pll, ptr %pll, i32 0, i32 5
  %pll_out_max = getelementptr inbounds %struct.radeon_pll, ptr %pll, i32 0, i32 6
  %vco_min.0.in = select i1 %tobool40.not, ptr %pll_out_min, ptr %lcd_pll_out_min
  %vco_max.0.in = select i1 %tobool40.not, ptr %pll_out_max, ptr %lcd_pll_out_max
  %15 = ptrtoint ptr %vco_max.0.in to i32
  call void @__asan_load4_noabort(i32 %15)
  %vco_max.0 = load i32, ptr %vco_max.0.in, align 4
  %16 = ptrtoint ptr %vco_min.0.in to i32
  call void @__asan_load4_noabort(i32 %16)
  %vco_min.0 = load i32, ptr %vco_min.0.in, align 4
  %mul48 = mul i32 %vco_min.0, 10
  %mul49 = mul i32 %vco_max.0, 10
  %vco_min.1 = select i1 %tobool.not, i32 %vco_min.0, i32 %mul48
  %vco_max.1 = select i1 %tobool.not, i32 %vco_max.0, i32 %mul49
  %div51 = udiv i32 %vco_min.1, %cond
  %mul52 = mul i32 %div51, %cond
  call void @__sanitizer_cov_trace_cmp4(i32 %mul52, i32 %vco_min.1)
  %cmp53 = icmp ult i32 %mul52, %vco_min.1
  %inc = zext i1 %cmp53 to i32
  %post_div_min.0 = add i32 %div51, %inc
  %min_post_div = getelementptr inbounds %struct.radeon_pll, ptr %pll, i32 0, i32 12
  %17 = ptrtoint ptr %min_post_div to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %min_post_div, align 4
  %19 = tail call i32 @llvm.umax.i32(i32 %post_div_min.0, i32 %18)
  %div60 = udiv i32 %vco_max.1, %cond
  %mul61 = mul i32 %div60, %cond
  call void @__sanitizer_cov_trace_cmp4(i32 %mul61, i32 %vco_max.1)
  %cmp62 = icmp ugt i32 %mul61, %vco_max.1
  %dec = sext i1 %cmp62 to i32
  %post_div_max.0 = add i32 %div60, %dec
  %max_post_div = getelementptr inbounds %struct.radeon_pll, ptr %pll, i32 0, i32 13
  %20 = ptrtoint ptr %max_post_div to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %max_post_div, align 4
  %22 = tail call i32 @llvm.umin.i32(i32 %post_div_max.0, i32 %21)
  br label %if.end69

if.end69:                                         ; preds = %if.else37, %if.then34
  %post_div_max.2 = phi i32 [ %14, %if.then34 ], [ %22, %if.else37 ]
  %post_div_min.2 = phi i32 [ %14, %if.then34 ], [ %19, %if.else37 ]
  %23 = ptrtoint ptr %pll to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %pll, align 4
  %call.i = tail call i32 @gcd(i32 noundef %cond, i32 noundef %24) #13
  %div.i = udiv i32 %cond, %call.i
  %div1.i = udiv i32 %24, %call.i
  call void @__sanitizer_cov_trace_cmp4(i32 %div.i, i32 %fb_div_min.0)
  %cmp.i = icmp ult i32 %div.i, %fb_div_min.0
  br i1 %cmp.i, label %if.then.i, label %if.end69.if.end.i_crit_edge

if.end69.if.end.i_crit_edge:                      ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

if.then.i:                                        ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #12
  %add.i = add i32 %fb_div_min.0, -1
  %sub.i = add i32 %add.i, %div.i
  %div2.i = udiv i32 %sub.i, %div.i
  %mul.i = mul i32 %div2.i, %div.i
  %mul3.i = mul i32 %div2.i, %div1.i
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.end69.if.end.i_crit_edge
  %nom.0 = phi i32 [ %mul.i, %if.then.i ], [ %div.i, %if.end69.if.end.i_crit_edge ]
  %den.0 = phi i32 [ %mul3.i, %if.then.i ], [ %div1.i, %if.end69.if.end.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %den.0, i32 %post_div_min.2)
  %cmp4.i = icmp ult i32 %den.0, %post_div_min.2
  br i1 %cmp4.i, label %if.then5.i, label %if.end.i.avivo_reduce_ratio.exit_crit_edge

if.end.i.avivo_reduce_ratio.exit_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %avivo_reduce_ratio.exit

if.then5.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %add6.i = add i32 %post_div_min.2, -1
  %sub7.i = add i32 %add6.i, %den.0
  %div8.i = udiv i32 %sub7.i, %den.0
  %mul9.i = mul i32 %div8.i, %nom.0
  %mul10.i = mul i32 %div8.i, %den.0
  br label %avivo_reduce_ratio.exit

avivo_reduce_ratio.exit:                          ; preds = %if.then5.i, %if.end.i.avivo_reduce_ratio.exit_crit_edge
  %nom.1 = phi i32 [ %mul9.i, %if.then5.i ], [ %nom.0, %if.end.i.avivo_reduce_ratio.exit_crit_edge ]
  %den.1 = phi i32 [ %mul10.i, %if.then5.i ], [ %den.0, %if.end.i.avivo_reduce_ratio.exit_crit_edge ]
  %and71 = and i32 %1, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and71)
  %tobool72.not = icmp eq i32 %and71, 0
  %post_div_max.2.post_div_min.2 = select i1 %tobool72.not, i32 %post_div_max.2, i32 %post_div_min.2
  call void @__sanitizer_cov_trace_cmp4(i32 %post_div_min.2, i32 %post_div_max.2)
  %cmp76.not298 = icmp ugt i32 %post_div_min.2, %post_div_max.2
  %.pre303 = lshr i32 %den.1, 1
  br i1 %cmp76.not298, label %avivo_reduce_ratio.exit.for.end_crit_edge, label %for.body.lr.ph

avivo_reduce_ratio.exit.for.end_crit_edge:        ; preds = %avivo_reduce_ratio.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.lr.ph:                                   ; preds = %avivo_reduce_ratio.exit
  %tobool72.not.not = xor i1 %tobool72.not, true
  br label %for.body

for.body:                                         ; preds = %avivo_get_fb_ref_div.exit.for.body_crit_edge, %for.body.lr.ph
  %diff_best.0302 = phi i32 [ -1, %for.body.lr.ph ], [ %diff_best.1, %avivo_get_fb_ref_div.exit.for.body_crit_edge ]
  %post_div_best.1301 = phi i32 [ %post_div_max.2.post_div_min.2, %for.body.lr.ph ], [ %post_div_best.2, %avivo_get_fb_ref_div.exit.for.body_crit_edge ]
  %post_div.0299 = phi i32 [ %post_div_min.2, %for.body.lr.ph ], [ %inc96, %avivo_get_fb_ref_div.exit.for.body_crit_edge ]
  %div.i229 = udiv i32 100, %post_div.0299
  %25 = tail call i32 @llvm.umin.i32(i32 %div.i229, i32 %ref_div_max.0) #10
  %26 = tail call i32 @llvm.umax.i32(i32 %25, i32 1) #10
  %div7.i = udiv i32 %den.1, %post_div.0299
  %27 = tail call i32 @llvm.umax.i32(i32 %div7.i, i32 1) #10
  %28 = tail call i32 @llvm.umin.i32(i32 %27, i32 %26) #10
  %mul.i230 = mul i32 %post_div.0299, %nom.1
  %mul20.i = mul i32 %mul.i230, %28
  %add.i231 = add i32 %mul20.i, %.pre303
  %div23.i = udiv i32 %add.i231, %den.1
  call void @__sanitizer_cov_trace_cmp4(i32 %div23.i, i32 %fb_div_max.0)
  %cmp24.i = icmp ugt i32 %div23.i, %fb_div_max.0
  br i1 %cmp24.i, label %if.then.i232, label %for.body.avivo_get_fb_ref_div.exit_crit_edge

for.body.avivo_get_fb_ref_div.exit_crit_edge:     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %avivo_get_fb_ref_div.exit

if.then.i232:                                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %mul25.i = mul i32 %28, %fb_div_max.0
  %div26.i = udiv i32 %mul25.i, %div23.i
  br label %avivo_get_fb_ref_div.exit

avivo_get_fb_ref_div.exit:                        ; preds = %if.then.i232, %for.body.avivo_get_fb_ref_div.exit_crit_edge
  %fb_div.0 = phi i32 [ %fb_div_max.0, %if.then.i232 ], [ %div23.i, %for.body.avivo_get_fb_ref_div.exit_crit_edge ]
  %ref_div.0 = phi i32 [ %div26.i, %if.then.i232 ], [ %28, %for.body.avivo_get_fb_ref_div.exit_crit_edge ]
  %mul78 = mul i32 %fb_div.0, %24
  %mul79 = mul i32 %ref_div.0, %post_div.0299
  %div80 = udiv i32 %mul78, %mul79
  %sub = sub i32 %cond, %div80
  %29 = tail call i32 @llvm.abs.i32(i32 %sub, i1 false)
  call void @__sanitizer_cov_trace_cmp4(i32 %29, i32 %diff_best.0302)
  %cmp88 = icmp uge i32 %29, %diff_best.0302
  call void @__sanitizer_cov_trace_cmp4(i32 %29, i32 %diff_best.0302)
  %cmp89 = icmp ne i32 %29, %diff_best.0302
  %brmerge = select i1 %cmp89, i1 true, i1 %tobool72.not.not
  %or.cond = select i1 %cmp88, i1 %brmerge, i1 false
  %post_div_best.2 = select i1 %or.cond, i32 %post_div_best.1301, i32 %post_div.0299
  %diff_best.1 = select i1 %or.cond, i32 %diff_best.0302, i32 %29
  %inc96 = add i32 %post_div.0299, 1
  %cmp76.not = icmp ugt i32 %inc96, %post_div_max.2
  br i1 %cmp76.not, label %avivo_get_fb_ref_div.exit.for.end_crit_edge, label %avivo_get_fb_ref_div.exit.for.body_crit_edge

avivo_get_fb_ref_div.exit.for.body_crit_edge:     ; preds = %avivo_get_fb_ref_div.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

avivo_get_fb_ref_div.exit.for.end_crit_edge:      ; preds = %avivo_get_fb_ref_div.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %avivo_get_fb_ref_div.exit.for.end_crit_edge, %avivo_reduce_ratio.exit.for.end_crit_edge
  %post_div_best.1.lcssa = phi i32 [ %post_div_max.2.post_div_min.2, %avivo_reduce_ratio.exit.for.end_crit_edge ], [ %post_div_best.2, %avivo_get_fb_ref_div.exit.for.end_crit_edge ]
  %div.i234 = udiv i32 100, %post_div_best.1.lcssa
  %30 = tail call i32 @llvm.umin.i32(i32 %div.i234, i32 %ref_div_max.0) #10
  %31 = tail call i32 @llvm.umax.i32(i32 %30, i32 1) #10
  %div7.i235 = udiv i32 %den.1, %post_div_best.1.lcssa
  %32 = tail call i32 @llvm.umax.i32(i32 %div7.i235, i32 1) #10
  %33 = tail call i32 @llvm.umin.i32(i32 %32, i32 %31) #10
  %mul.i236 = mul i32 %post_div_best.1.lcssa, %nom.1
  %mul20.i237 = mul i32 %mul.i236, %33
  %add.i239 = add i32 %mul20.i237, %.pre303
  %div23.i240 = udiv i32 %add.i239, %den.1
  call void @__sanitizer_cov_trace_cmp4(i32 %div23.i240, i32 %fb_div_max.0)
  %cmp24.i241 = icmp ugt i32 %div23.i240, %fb_div_max.0
  br i1 %cmp24.i241, label %if.then.i244, label %for.end.avivo_get_fb_ref_div.exit246_crit_edge

for.end.avivo_get_fb_ref_div.exit246_crit_edge:   ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %avivo_get_fb_ref_div.exit246

if.then.i244:                                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  %mul25.i242 = mul i32 %33, %fb_div_max.0
  %div26.i243 = udiv i32 %mul25.i242, %div23.i240
  br label %avivo_get_fb_ref_div.exit246

avivo_get_fb_ref_div.exit246:                     ; preds = %if.then.i244, %for.end.avivo_get_fb_ref_div.exit246_crit_edge
  %fb_div.1 = phi i32 [ %fb_div_max.0, %if.then.i244 ], [ %div23.i240, %for.end.avivo_get_fb_ref_div.exit246_crit_edge ]
  %ref_div.1 = phi i32 [ %div26.i243, %if.then.i244 ], [ %33, %for.end.avivo_get_fb_ref_div.exit246_crit_edge ]
  %call.i247 = tail call i32 @gcd(i32 noundef %fb_div.1, i32 noundef %ref_div.1) #13
  %div.i248 = udiv i32 %fb_div.1, %call.i247
  %div1.i249 = udiv i32 %ref_div.1, %call.i247
  call void @__sanitizer_cov_trace_cmp4(i32 %div.i248, i32 %fb_div_min.0)
  %cmp.i250 = icmp ult i32 %div.i248, %fb_div_min.0
  br i1 %cmp.i250, label %if.then.i256, label %avivo_get_fb_ref_div.exit246.if.end.i258_crit_edge

avivo_get_fb_ref_div.exit246.if.end.i258_crit_edge: ; preds = %avivo_get_fb_ref_div.exit246
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i258

if.then.i256:                                     ; preds = %avivo_get_fb_ref_div.exit246
  call void @__sanitizer_cov_trace_pc() #12
  %add.i251 = add i32 %fb_div_min.0, -1
  %sub.i252 = add i32 %add.i251, %div.i248
  %div2.i253 = udiv i32 %sub.i252, %div.i248
  %mul.i254 = mul i32 %div2.i253, %div.i248
  %mul3.i255 = mul i32 %div2.i253, %div1.i249
  br label %if.end.i258

if.end.i258:                                      ; preds = %if.then.i256, %avivo_get_fb_ref_div.exit246.if.end.i258_crit_edge
  %fb_div.2 = phi i32 [ %mul.i254, %if.then.i256 ], [ %div.i248, %avivo_get_fb_ref_div.exit246.if.end.i258_crit_edge ]
  %ref_div.2 = phi i32 [ %mul3.i255, %if.then.i256 ], [ %div1.i249, %avivo_get_fb_ref_div.exit246.if.end.i258_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %ref_div.2, i32 %ref_div_min.0)
  %cmp4.i257 = icmp ult i32 %ref_div.2, %ref_div_min.0
  br i1 %cmp4.i257, label %if.then5.i264, label %if.end.i258.avivo_reduce_ratio.exit265_crit_edge

if.end.i258.avivo_reduce_ratio.exit265_crit_edge: ; preds = %if.end.i258
  call void @__sanitizer_cov_trace_pc() #12
  br label %avivo_reduce_ratio.exit265

if.then5.i264:                                    ; preds = %if.end.i258
  call void @__sanitizer_cov_trace_pc() #12
  %add6.i259 = add i32 %ref_div_min.0, -1
  %sub7.i260 = add i32 %add6.i259, %ref_div.2
  %div8.i261 = udiv i32 %sub7.i260, %ref_div.2
  %mul9.i262 = mul i32 %div8.i261, %fb_div.2
  %mul10.i263 = mul i32 %div8.i261, %ref_div.2
  br label %avivo_reduce_ratio.exit265

avivo_reduce_ratio.exit265:                       ; preds = %if.then5.i264, %if.end.i258.avivo_reduce_ratio.exit265_crit_edge
  %fb_div.3 = phi i32 [ %mul9.i262, %if.then5.i264 ], [ %fb_div.2, %if.end.i258.avivo_reduce_ratio.exit265_crit_edge ]
  %ref_div.3 = phi i32 [ %mul10.i263, %if.then5.i264 ], [ %ref_div.2, %if.end.i258.avivo_reduce_ratio.exit265_crit_edge ]
  br i1 %tobool.not, label %avivo_reduce_ratio.exit265.if.end129_crit_edge, label %land.lhs.true100

avivo_reduce_ratio.exit265.if.end129_crit_edge:   ; preds = %avivo_reduce_ratio.exit265
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end129

land.lhs.true100:                                 ; preds = %avivo_reduce_ratio.exit265
  %rem = urem i32 %fb_div.3, 10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %tobool101.not = icmp eq i32 %rem, 0
  br i1 %tobool101.not, label %land.lhs.true100.if.then125_crit_edge, label %if.then102

land.lhs.true100.if.then125_crit_edge:            ; preds = %land.lhs.true100
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then125

if.then102:                                       ; preds = %land.lhs.true100
  %sub104 = sub nuw nsw i32 9, %rem
  %mul105 = mul nuw nsw i32 %sub104, 20
  %add = add nuw nsw i32 %mul105, 50
  %34 = tail call i32 @llvm.umax.i32(i32 %fb_div_min.0, i32 %add)
  call void @__sanitizer_cov_trace_cmp4(i32 %fb_div.3, i32 %34)
  %cmp112 = icmp ult i32 %fb_div.3, %34
  br i1 %cmp112, label %if.then113, label %if.then102.if.then125_crit_edge

if.then102.if.then125_crit_edge:                  ; preds = %if.then102
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then125

if.then113:                                       ; preds = %if.then102
  call void @__sanitizer_cov_trace_pc() #12
  %add115 = add i32 %fb_div.3, -1
  %sub116 = add i32 %add115, %34
  %div117 = udiv i32 %sub116, %fb_div.3
  %mul118 = mul i32 %div117, %fb_div.3
  %mul119 = mul i32 %div117, %ref_div.3
  %.pre = urem i32 %mul118, 10
  br label %if.then125

if.then125:                                       ; preds = %if.then113, %if.then102.if.then125_crit_edge, %land.lhs.true100.if.then125_crit_edge
  %rem127.pre-phi = phi i32 [ %rem, %if.then102.if.then125_crit_edge ], [ %.pre, %if.then113 ], [ 0, %land.lhs.true100.if.then125_crit_edge ]
  %fb_div.4.ph = phi i32 [ %fb_div.3, %if.then102.if.then125_crit_edge ], [ %mul118, %if.then113 ], [ %fb_div.3, %land.lhs.true100.if.then125_crit_edge ]
  %ref_div.4.ph = phi i32 [ %ref_div.3, %if.then102.if.then125_crit_edge ], [ %mul119, %if.then113 ], [ %ref_div.3, %land.lhs.true100.if.then125_crit_edge ]
  %div126 = udiv i32 %fb_div.4.ph, 10
  br label %if.end129

if.end129:                                        ; preds = %if.then125, %avivo_reduce_ratio.exit265.if.end129_crit_edge
  %storemerge304 = phi i32 [ %div126, %if.then125 ], [ %fb_div.3, %avivo_reduce_ratio.exit265.if.end129_crit_edge ]
  %ref_div.4296 = phi i32 [ %ref_div.4.ph, %if.then125 ], [ %ref_div.3, %avivo_reduce_ratio.exit265.if.end129_crit_edge ]
  %storemerge = phi i32 [ %rem127.pre-phi, %if.then125 ], [ 0, %avivo_reduce_ratio.exit265.if.end129_crit_edge ]
  %35 = ptrtoint ptr %fb_div_p to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %storemerge304, ptr %fb_div_p, align 4
  %36 = ptrtoint ptr %frac_fb_div_p to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %storemerge, ptr %frac_fb_div_p, align 4
  %37 = ptrtoint ptr %pll to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %pll, align 4
  %39 = load i32, ptr %fb_div_p, align 4
  %mul132 = mul i32 %39, 10
  %reass.add = add i32 %mul132, %storemerge
  %reass.mul = mul i32 %reass.add, %38
  %mul136 = mul i32 %post_div_best.1.lcssa, 10
  %mul137 = mul i32 %mul136, %ref_div.4296
  %div138 = udiv i32 %reass.mul, %mul137
  %40 = ptrtoint ptr %dot_clock_p to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %div138, ptr %dot_clock_p, align 4
  %41 = ptrtoint ptr %ref_div_p to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %ref_div.4296, ptr %ref_div_p, align 4
  %42 = ptrtoint ptr %post_div_p to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %post_div_best.1.lcssa, ptr %post_div_p, align 4
  %43 = load i32, ptr %dot_clock_p, align 4
  %mul139 = mul i32 %43, 10
  %44 = load i32, ptr %fb_div_p, align 4
  %45 = load i32, ptr %frac_fb_div_p, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.1, i32 noundef %freq, i32 noundef %mul139, i32 noundef %44, i32 noundef %45, i32 noundef %ref_div.4296, i32 noundef %post_div_best.1.lcssa) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @radeon_compute_pll_legacy(ptr noundef readonly %pll, i64 noundef %freq, ptr nocapture noundef writeonly %dot_clock_p, ptr nocapture noundef writeonly %fb_div_p, ptr nocapture noundef writeonly %frac_fb_div_p, ptr nocapture noundef writeonly %ref_div_p, ptr nocapture noundef writeonly %post_div_p) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %min_ref_div1 = getelementptr inbounds %struct.radeon_pll, ptr %pll, i32 0, i32 10
  %0 = ptrtoint ptr %min_ref_div1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %min_ref_div1, align 4
  %max_ref_div2 = getelementptr inbounds %struct.radeon_pll, ptr %pll, i32 0, i32 11
  %2 = ptrtoint ptr %max_ref_div2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %max_ref_div2, align 4
  %min_post_div3 = getelementptr inbounds %struct.radeon_pll, ptr %pll, i32 0, i32 12
  %4 = ptrtoint ptr %min_post_div3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %min_post_div3, align 4
  %max_post_div4 = getelementptr inbounds %struct.radeon_pll, ptr %pll, i32 0, i32 13
  %6 = ptrtoint ptr %max_post_div4 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %max_post_div4, align 4
  %best_vco5 = getelementptr inbounds %struct.radeon_pll, ptr %pll, i32 0, i32 9
  %8 = ptrtoint ptr %best_vco5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %best_vco5, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.2, i64 noundef %freq, i32 noundef %1, i32 noundef %3) #10
  %mul = mul i64 %freq, 1000
  %flags = getelementptr inbounds %struct.radeon_pll, ptr %pll, i32 0, i32 18
  %10 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %flags, align 4
  %and = and i32 %11, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %lcd_pll_out_min = getelementptr inbounds %struct.radeon_pll, ptr %pll, i32 0, i32 7
  %lcd_pll_out_max = getelementptr inbounds %struct.radeon_pll, ptr %pll, i32 0, i32 8
  %pll_out_min8 = getelementptr inbounds %struct.radeon_pll, ptr %pll, i32 0, i32 5
  %pll_out_max9 = getelementptr inbounds %struct.radeon_pll, ptr %pll, i32 0, i32 6
  %pll_out_min.0.in = select i1 %tobool.not, ptr %pll_out_min8, ptr %lcd_pll_out_min
  %pll_out_max.0.in = select i1 %tobool.not, ptr %pll_out_max9, ptr %lcd_pll_out_max
  %12 = ptrtoint ptr %pll_out_max.0.in to i32
  call void @__asan_load4_noabort(i32 %12)
  %pll_out_max.0 = load i32, ptr %pll_out_max.0.in, align 4
  %13 = ptrtoint ptr %pll_out_min.0.in to i32
  call void @__asan_load4_noabort(i32 %13)
  %pll_out_min.0 = load i32, ptr %pll_out_min.0.in, align 4
  %14 = tail call i32 @llvm.umin.i32(i32 %pll_out_min.0, i32 64800)
  %and13 = and i32 %11, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %tobool14.not = icmp eq i32 %and13, 0
  br i1 %tobool14.not, label %while.cond.preheader, label %if.then15

while.cond.preheader:                             ; preds = %entry
  %pll_in_max = getelementptr inbounds %struct.radeon_pll, ptr %pll, i32 0, i32 4
  %sub557 = add i32 %3, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %sub557)
  %cmp17558 = icmp ult i32 %1, %sub557
  br i1 %cmp17558, label %while.body.lr.ph, label %while.cond.preheader.if.end28_crit_edge

while.cond.preheader.if.end28_crit_edge:          ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end28

while.body.lr.ph:                                 ; preds = %while.cond.preheader
  %15 = ptrtoint ptr %pll to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %pll, align 4
  %pll_in_min = getelementptr inbounds %struct.radeon_pll, ptr %pll, i32 0, i32 3
  %17 = ptrtoint ptr %pll_in_min to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %pll_in_min, align 4
  br label %while.body

if.then15:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %reference_div = getelementptr inbounds %struct.radeon_pll, ptr %pll, i32 0, i32 1
  %19 = ptrtoint ptr %reference_div to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %reference_div, align 4
  br label %if.end28

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %while.body.lr.ph
  %min_ref_div.0560 = phi i32 [ %1, %while.body.lr.ph ], [ %min_ref_div.1, %cleanup.while.body_crit_edge ]
  %max_ref_div.0559 = phi i32 [ %3, %while.body.lr.ph ], [ %max_ref_div.1, %cleanup.while.body_crit_edge ]
  %add = add i32 %min_ref_div.0560, %max_ref_div.0559
  %div424 = lshr i32 %add, 1
  %div18 = udiv i32 %16, %div424
  call void @__sanitizer_cov_trace_cmp4(i32 %div18, i32 %18)
  %cmp19 = icmp ult i32 %div18, %18
  br i1 %cmp19, label %while.body.cleanup_crit_edge, label %if.else21

while.body.cleanup_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.else21:                                        ; preds = %while.body
  %21 = ptrtoint ptr %pll_in_max to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %pll_in_max, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %div18, i32 %22)
  %cmp22 = icmp ugt i32 %div18, %22
  br i1 %cmp22, label %if.else21.cleanup_crit_edge, label %if.else21.if.end28_crit_edge

if.else21.if.end28_crit_edge:                     ; preds = %if.else21
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end28

if.else21.cleanup_crit_edge:                      ; preds = %if.else21
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

cleanup:                                          ; preds = %if.else21.cleanup_crit_edge, %while.body.cleanup_crit_edge
  %max_ref_div.1 = phi i32 [ %div424, %while.body.cleanup_crit_edge ], [ %max_ref_div.0559, %if.else21.cleanup_crit_edge ]
  %min_ref_div.1 = phi i32 [ %min_ref_div.0560, %while.body.cleanup_crit_edge ], [ %div424, %if.else21.cleanup_crit_edge ]
  %sub = add i32 %max_ref_div.1, -1
  %cmp17 = icmp ult i32 %min_ref_div.1, %sub
  br i1 %cmp17, label %cleanup.while.body_crit_edge, label %cleanup.if.end28_crit_edge

cleanup.if.end28_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end28

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

if.end28:                                         ; preds = %cleanup.if.end28_crit_edge, %if.else21.if.end28_crit_edge, %if.then15, %while.cond.preheader.if.end28_crit_edge
  %max_ref_div.3 = phi i32 [ %20, %if.then15 ], [ %3, %while.cond.preheader.if.end28_crit_edge ], [ %max_ref_div.1, %cleanup.if.end28_crit_edge ], [ %max_ref_div.0559, %if.else21.if.end28_crit_edge ]
  %min_ref_div.3 = phi i32 [ %20, %if.then15 ], [ %1, %while.cond.preheader.if.end28_crit_edge ], [ %min_ref_div.1, %cleanup.if.end28_crit_edge ], [ %min_ref_div.0560, %if.else21.if.end28_crit_edge ]
  %and30 = and i32 %11, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and30)
  %tobool31.not = icmp eq i32 %and30, 0
  br i1 %tobool31.not, label %if.end28.if.end34_crit_edge, label %if.then32

if.end28.if.end34_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end34

if.then32:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #12
  %post_div33 = getelementptr inbounds %struct.radeon_pll, ptr %pll, i32 0, i32 2
  %23 = ptrtoint ptr %post_div33 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %post_div33, align 4
  br label %if.end34

if.end34:                                         ; preds = %if.then32, %if.end28.if.end34_crit_edge
  %min_post_div.0 = phi i32 [ %24, %if.then32 ], [ %5, %if.end28.if.end34_crit_edge ]
  %max_post_div.0 = phi i32 [ %24, %if.then32 ], [ %7, %if.end28.if.end34_crit_edge ]
  %and36 = and i32 %11, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and36)
  %tobool37.not = icmp eq i32 %and36, 0
  br i1 %tobool37.not, label %if.end34.if.end39_crit_edge, label %if.then38

if.end34.if.end39_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end39

if.then38:                                        ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #12
  %min_frac_feedback_div = getelementptr inbounds %struct.radeon_pll, ptr %pll, i32 0, i32 16
  %25 = ptrtoint ptr %min_frac_feedback_div to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %min_frac_feedback_div, align 4
  %max_frac_feedback_div = getelementptr inbounds %struct.radeon_pll, ptr %pll, i32 0, i32 17
  %27 = ptrtoint ptr %max_frac_feedback_div to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %max_frac_feedback_div, align 4
  %phi.bo = add i32 %28, 1
  br label %if.end39

if.end39:                                         ; preds = %if.then38, %if.end34.if.end39_crit_edge
  %min_fractional_feed_div.0 = phi i32 [ %26, %if.then38 ], [ 0, %if.end34.if.end39_crit_edge ]
  %max_fractional_feed_div.0 = phi i32 [ %phi.bo, %if.then38 ], [ 1, %if.end34.if.end39_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %max_post_div.0, i32 %min_post_div.0)
  %cmp40.not618 = icmp ult i32 %max_post_div.0, %min_post_div.0
  br i1 %cmp40.not618, label %if.end39.for.end276_crit_edge, label %for.body.lr.ph

if.end39.for.end276_crit_edge:                    ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end276

for.body.lr.ph:                                   ; preds = %if.end39
  %and42 = and i32 %11, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and42)
  %tobool43.not = icmp eq i32 %and42, 0
  %and49 = and i32 %11, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and49)
  %tobool50.not = icmp eq i32 %and49, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %min_ref_div.3, i32 %max_ref_div.3)
  %cmp70.not600 = icmp ugt i32 %min_ref_div.3, %max_ref_div.3
  %pll_in_min76 = getelementptr inbounds %struct.radeon_pll, ptr %pll, i32 0, i32 3
  %max_feedback_div = getelementptr inbounds %struct.radeon_pll, ptr %pll, i32 0, i32 15
  %min_feedback_div = getelementptr inbounds %struct.radeon_pll, ptr %pll, i32 0, i32 14
  %pll_in_max79 = getelementptr inbounds %struct.radeon_pll, ptr %pll, i32 0, i32 4
  call void @__sanitizer_cov_trace_cmp4(i32 %min_fractional_feed_div.0, i32 %max_fractional_feed_div.0)
  %cmp103564 = icmp ult i32 %min_fractional_feed_div.0, %max_fractional_feed_div.0
  %and122 = and i32 %11, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and122)
  %tobool123.not = icmp eq i32 %and122, 0
  %29 = trunc i64 %mul to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp153 = icmp eq i32 %9, 0
  %and195 = and i32 %11, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and195)
  %tobool196.not = icmp ne i32 %and195, 0
  %and202 = and i32 %11, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and202)
  %tobool203.not = icmp ne i32 %and202, 0
  %and209 = and i32 %11, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and209)
  %tobool210.not = icmp ne i32 %and209, 0
  %and216 = and i32 %11, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and216)
  %tobool217.not = icmp ne i32 %and216, 0
  %and223 = and i32 %11, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and223)
  %tobool224.not = icmp ne i32 %and223, 0
  %and230 = and i32 %11, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and230)
  %tobool231.not = icmp ne i32 %and230, 0
  br label %for.body

for.body:                                         ; preds = %cleanup272.for.body_crit_edge, %for.body.lr.ph
  %post_div.0626 = phi i32 [ %max_post_div.0, %for.body.lr.ph ], [ %dec, %cleanup272.for.body_crit_edge ]
  %best_vco_diff.0625 = phi i32 [ 1, %for.body.lr.ph ], [ %best_vco_diff.7, %cleanup272.for.body_crit_edge ]
  %best_error.0624 = phi i32 [ -1, %for.body.lr.ph ], [ %best_error.7, %cleanup272.for.body_crit_edge ]
  %best_freq.0623 = phi i32 [ -1, %for.body.lr.ph ], [ %best_freq.7, %cleanup272.for.body_crit_edge ]
  %best_frac_feedback_div.0622 = phi i32 [ 0, %for.body.lr.ph ], [ %best_frac_feedback_div.7, %cleanup272.for.body_crit_edge ]
  %best_feedback_div.0621 = phi i32 [ 1, %for.body.lr.ph ], [ %best_feedback_div.7, %cleanup272.for.body_crit_edge ]
  %best_ref_div.0620 = phi i32 [ 1, %for.body.lr.ph ], [ %best_ref_div.7, %cleanup272.for.body_crit_edge ]
  %best_post_div.0619 = phi i32 [ 1, %for.body.lr.ph ], [ %best_post_div.7, %cleanup272.for.body_crit_edge ]
  %and44 = and i32 %post_div.0626, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and44)
  %tobool45.not = icmp eq i32 %and44, 0
  %or.cond = select i1 %tobool43.not, i1 true, i1 %tobool45.not
  br i1 %or.cond, label %if.end47, label %for.body.cleanup272_crit_edge

for.body.cleanup272_crit_edge:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup272

if.end47:                                         ; preds = %for.body
  br i1 %tobool50.not, label %if.end47.if.end68_crit_edge, label %if.then51

if.end47.if.end68_crit_edge:                      ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end68

if.then51:                                        ; preds = %if.end47
  %30 = zext i32 %post_div.0626 to i64
  call void @__sanitizer_cov_trace_switch(i64 %30, ptr @__sancov_gen_cov_switch_values.160)
  switch i32 %post_div.0626, label %if.then51.if.end68_crit_edge [
    i32 5, label %if.then51.cleanup272_crit_edge
    i32 7, label %if.then51.cleanup272_crit_edge640
    i32 9, label %if.then51.cleanup272_crit_edge641
    i32 10, label %if.then51.cleanup272_crit_edge642
    i32 11, label %if.then51.cleanup272_crit_edge643
    i32 13, label %if.then51.cleanup272_crit_edge644
    i32 14, label %if.then51.cleanup272_crit_edge645
    i32 15, label %if.then51.cleanup272_crit_edge646
  ]

if.then51.cleanup272_crit_edge646:                ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup272

if.then51.cleanup272_crit_edge645:                ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup272

if.then51.cleanup272_crit_edge644:                ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup272

if.then51.cleanup272_crit_edge643:                ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup272

if.then51.cleanup272_crit_edge642:                ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup272

if.then51.cleanup272_crit_edge641:                ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup272

if.then51.cleanup272_crit_edge640:                ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup272

if.then51.cleanup272_crit_edge:                   ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup272

if.then51.if.end68_crit_edge:                     ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end68

if.end68:                                         ; preds = %if.then51.if.end68_crit_edge, %if.end47.if.end68_crit_edge
  br i1 %cmp70.not600, label %if.end68.cleanup272_crit_edge, label %for.body71.lr.ph

if.end68.cleanup272_crit_edge:                    ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup272

for.body71.lr.ph:                                 ; preds = %if.end68
  %31 = ptrtoint ptr %pll to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %pll, align 4
  %33 = ptrtoint ptr %pll_in_min76 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %pll_in_min76, align 4
  %conv = zext i32 %32 to i64
  br label %for.body71

for.body71:                                       ; preds = %cleanup263.for.body71_crit_edge, %for.body71.lr.ph
  %ref_div.0608 = phi i32 [ %min_ref_div.3, %for.body71.lr.ph ], [ %inc, %cleanup263.for.body71_crit_edge ]
  %best_vco_diff.1607 = phi i32 [ %best_vco_diff.0625, %for.body71.lr.ph ], [ %best_vco_diff.6, %cleanup263.for.body71_crit_edge ]
  %best_error.1606 = phi i32 [ %best_error.0624, %for.body71.lr.ph ], [ %best_error.6, %cleanup263.for.body71_crit_edge ]
  %best_freq.1605 = phi i32 [ %best_freq.0623, %for.body71.lr.ph ], [ %best_freq.6, %cleanup263.for.body71_crit_edge ]
  %best_frac_feedback_div.1604 = phi i32 [ %best_frac_feedback_div.0622, %for.body71.lr.ph ], [ %best_frac_feedback_div.6, %cleanup263.for.body71_crit_edge ]
  %best_feedback_div.1603 = phi i32 [ %best_feedback_div.0621, %for.body71.lr.ph ], [ %best_feedback_div.6, %cleanup263.for.body71_crit_edge ]
  %best_ref_div.1602 = phi i32 [ %best_ref_div.0620, %for.body71.lr.ph ], [ %best_ref_div.6, %cleanup263.for.body71_crit_edge ]
  %best_post_div.1601 = phi i32 [ %best_post_div.0619, %for.body71.lr.ph ], [ %best_post_div.6, %cleanup263.for.body71_crit_edge ]
  %div74 = udiv i32 %32, %ref_div.0608
  call void @__sanitizer_cov_trace_cmp4(i32 %div74, i32 %34)
  %cmp77 = icmp ult i32 %div74, %34
  br i1 %cmp77, label %for.body71.cleanup263_crit_edge, label %lor.lhs.false78

for.body71.cleanup263_crit_edge:                  ; preds = %for.body71
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup263

lor.lhs.false78:                                  ; preds = %for.body71
  %35 = ptrtoint ptr %max_feedback_div to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %max_feedback_div, align 4
  %add75 = add i32 %36, 1
  %37 = ptrtoint ptr %min_feedback_div to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %min_feedback_div, align 4
  %39 = ptrtoint ptr %pll_in_max79 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %pll_in_max79, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %div74, i32 %40)
  %cmp80 = icmp ule i32 %div74, %40
  call void @__sanitizer_cov_trace_cmp4(i32 %38, i32 %add75)
  %cmp84582 = icmp ult i32 %38, %add75
  %or.cond639 = select i1 %cmp80, i1 %cmp84582, i1 false
  br i1 %or.cond639, label %while.body85.lr.ph, label %lor.lhs.false78.cleanup263_crit_edge

lor.lhs.false78.cleanup263_crit_edge:             ; preds = %lor.lhs.false78
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup263

while.body85.lr.ph:                               ; preds = %lor.lhs.false78
  %div265.i = lshr i32 %ref_div.0608, 1
  %conv.i = zext i32 %div265.i to i64
  %mul119 = mul i32 %ref_div.0608, %post_div.0626
  %div265.i434 = lshr i32 %mul119, 1
  %conv.i435 = zext i32 %div265.i434 to i64
  br label %while.body85

while.body85:                                     ; preds = %cleanup255.while.body85_crit_edge, %while.body85.lr.ph
  %max_feed_div.0592 = phi i32 [ %add75, %while.body85.lr.ph ], [ %max_feed_div.2, %cleanup255.while.body85_crit_edge ]
  %min_feed_div.0591 = phi i32 [ %38, %while.body85.lr.ph ], [ %min_feed_div.2, %cleanup255.while.body85_crit_edge ]
  %current_freq.0590 = phi i32 [ 0, %while.body85.lr.ph ], [ %current_freq.2, %cleanup255.while.body85_crit_edge ]
  %best_vco_diff.2589 = phi i32 [ %best_vco_diff.1607, %while.body85.lr.ph ], [ %best_vco_diff.5, %cleanup255.while.body85_crit_edge ]
  %best_error.2588 = phi i32 [ %best_error.1606, %while.body85.lr.ph ], [ %best_error.5, %cleanup255.while.body85_crit_edge ]
  %best_freq.2587 = phi i32 [ %best_freq.1605, %while.body85.lr.ph ], [ %best_freq.5, %cleanup255.while.body85_crit_edge ]
  %best_frac_feedback_div.2586 = phi i32 [ %best_frac_feedback_div.1604, %while.body85.lr.ph ], [ %best_frac_feedback_div.5, %cleanup255.while.body85_crit_edge ]
  %best_feedback_div.2585 = phi i32 [ %best_feedback_div.1603, %while.body85.lr.ph ], [ %best_feedback_div.5, %cleanup255.while.body85_crit_edge ]
  %best_ref_div.2584 = phi i32 [ %best_ref_div.1602, %while.body85.lr.ph ], [ %best_ref_div.5, %cleanup255.while.body85_crit_edge ]
  %best_post_div.2583 = phi i32 [ %best_post_div.1601, %while.body85.lr.ph ], [ %best_post_div.5, %cleanup255.while.body85_crit_edge ]
  %add87 = add i32 %max_feed_div.0592, %min_feed_div.0591
  %div88421 = lshr i32 %add87, 1
  %conv90 = zext i32 %div88421 to i64
  %mul91 = mul nuw nsw i64 %conv90, %conv
  %add.i = add nuw nsw i64 %mul91, %conv.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %add.i)
  %cmp168.i = icmp ult i64 %add.i, 4294967296
  br i1 %cmp168.i, label %if.then172.i, label %if.else178.i, !prof !320

if.then172.i:                                     ; preds = %while.body85
  call void @__sanitizer_cov_trace_pc() #12
  %conv173.i = trunc i64 %add.i to i32
  %div176.i = udiv i32 %conv173.i, %ref_div.0608
  br label %radeon_div.exit

if.else178.i:                                     ; preds = %while.body85
  call void @__sanitizer_cov_trace_pc() #12
  %41 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %ref_div.0608, i64 %add.i) #14, !srcloc !321
  %asmresult1.i.i = extractvalue { i64, i64 } %41, 1
  %extract.t291.i = trunc i64 %asmresult1.i.i to i32
  br label %radeon_div.exit

radeon_div.exit:                                  ; preds = %if.else178.i, %if.then172.i
  %n.addr.0.off0.i = phi i32 [ %div176.i, %if.then172.i ], [ %extract.t291.i, %if.else178.i ]
  call void @__sanitizer_cov_trace_cmp4(i32 %n.addr.0.off0.i, i32 %14)
  %cmp92 = icmp ult i32 %n.addr.0.off0.i, %14
  br i1 %cmp92, label %if.then94, label %if.else96

if.then94:                                        ; preds = %radeon_div.exit
  call void @__sanitizer_cov_trace_pc() #12
  %add95 = add nuw i32 %div88421, 1
  br label %cleanup255

if.else96:                                        ; preds = %radeon_div.exit
  call void @__sanitizer_cov_trace_cmp4(i32 %n.addr.0.off0.i, i32 %pll_out_max.0)
  %cmp97 = icmp ugt i32 %n.addr.0.off0.i, %pll_out_max.0
  br i1 %cmp97, label %if.else96.cleanup255_crit_edge, label %while.cond102.preheader

if.else96.cleanup255_crit_edge:                   ; preds = %if.else96
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup255

while.cond102.preheader:                          ; preds = %if.else96
  br i1 %cmp103564, label %while.body105.lr.ph, label %while.cond102.preheader.while.end247_crit_edge

while.cond102.preheader.while.end247_crit_edge:   ; preds = %while.cond102.preheader
  call void @__sanitizer_cov_trace_pc() #12
  %.pre = zext i32 %current_freq.0590 to i64
  br label %while.end247

while.body105.lr.ph:                              ; preds = %while.cond102.preheader
  %mul112 = mul nuw nsw i64 %conv90, 10000
  %sub144 = sub i32 %n.addr.0.off0.i, %9
  %42 = tail call i32 @llvm.abs.i32(i32 %sub144, i1 false)
  br label %while.body105

while.body105:                                    ; preds = %if.end239.while.body105_crit_edge, %while.body105.lr.ph
  %max_frac_feed_div.0573 = phi i32 [ %max_fractional_feed_div.0, %while.body105.lr.ph ], [ %max_frac_feed_div.1, %if.end239.while.body105_crit_edge ]
  %min_frac_feed_div.0572 = phi i32 [ %min_fractional_feed_div.0, %while.body105.lr.ph ], [ %min_frac_feed_div.1, %if.end239.while.body105_crit_edge ]
  %best_vco_diff.3571 = phi i32 [ %best_vco_diff.2589, %while.body105.lr.ph ], [ %best_vco_diff.4, %if.end239.while.body105_crit_edge ]
  %best_error.3570 = phi i32 [ %best_error.2588, %while.body105.lr.ph ], [ %best_error.4, %if.end239.while.body105_crit_edge ]
  %best_freq.3569 = phi i32 [ %best_freq.2587, %while.body105.lr.ph ], [ %best_freq.4, %if.end239.while.body105_crit_edge ]
  %best_frac_feedback_div.3568 = phi i32 [ %best_frac_feedback_div.2586, %while.body105.lr.ph ], [ %best_frac_feedback_div.4, %if.end239.while.body105_crit_edge ]
  %best_feedback_div.3567 = phi i32 [ %best_feedback_div.2585, %while.body105.lr.ph ], [ %best_feedback_div.4, %if.end239.while.body105_crit_edge ]
  %best_ref_div.3566 = phi i32 [ %best_ref_div.2584, %while.body105.lr.ph ], [ %best_ref_div.4, %if.end239.while.body105_crit_edge ]
  %best_post_div.3565 = phi i32 [ %best_post_div.2583, %while.body105.lr.ph ], [ %best_post_div.4, %if.end239.while.body105_crit_edge ]
  %add106 = add i32 %max_frac_feed_div.0573, %min_frac_feed_div.0572
  %div107422 = lshr i32 %add106, 1
  %conv116 = zext i32 %div107422 to i64
  %mul117 = mul nuw nsw i64 %conv116, 1000
  %reass.add = add nuw nsw i64 %mul117, %mul112
  %reass.mul = mul i64 %reass.add, %conv
  %add.i436 = add i64 %reass.mul, %conv.i435
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %add.i436)
  %cmp168.i543 = icmp ult i64 %add.i436, 4294967296
  br i1 %cmp168.i543, label %if.then172.i547, label %if.else178.i550, !prof !320

if.then172.i547:                                  ; preds = %while.body105
  call void @__sanitizer_cov_trace_pc() #12
  %conv173.i545 = trunc i64 %add.i436 to i32
  %div176.i546 = udiv i32 %conv173.i545, %mul119
  br label %radeon_div.exit552

if.else178.i550:                                  ; preds = %while.body105
  call void @__sanitizer_cov_trace_pc() #12
  %43 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %mul119, i64 %add.i436) #14, !srcloc !321
  %asmresult1.i.i548 = extractvalue { i64, i64 } %43, 1
  %extract.t291.i549 = trunc i64 %asmresult1.i.i548 to i32
  br label %radeon_div.exit552

radeon_div.exit552:                               ; preds = %if.else178.i550, %if.then172.i547
  %n.addr.0.off0.i551 = phi i32 [ %div176.i546, %if.then172.i547 ], [ %extract.t291.i549, %if.else178.i550 ]
  %conv135 = zext i32 %n.addr.0.off0.i551 to i64
  br i1 %tobool123.not, label %if.else134, label %if.then124

if.then124:                                       ; preds = %radeon_div.exit552
  call void @__sanitizer_cov_trace_pc() #12
  call void @__sanitizer_cov_trace_cmp8(i64 %mul, i64 %conv135)
  %cmp126 = icmp ult i64 %mul, %conv135
  %conv132 = sub i32 %29, %n.addr.0.off0.i551
  %spec.select = select i1 %cmp126, i32 -1, i32 %conv132
  br label %if.end142

if.else134:                                       ; preds = %radeon_div.exit552
  call void @__sanitizer_cov_trace_pc() #12
  %sub136 = sub i64 %conv135, %mul
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %sub136)
  %cmp138 = icmp slt i64 %sub136, 0
  %44 = trunc i64 %sub136 to i32
  %extract.t = sub i32 0, %44
  %cond.off0 = select i1 %cmp138, i32 %extract.t, i32 %44
  br label %if.end142

if.end142:                                        ; preds = %if.else134, %if.then124
  %error.0 = phi i32 [ %cond.off0, %if.else134 ], [ %spec.select, %if.then124 ]
  call void @__sanitizer_cov_trace_cmp4(i32 %error.0, i32 %best_error.3570)
  %cmp156 = icmp ult i32 %error.0, %best_error.3570
  %or.cond425 = select i1 %cmp153, i1 %cmp156, i1 false
  br i1 %or.cond425, label %if.end142.if.end239_crit_edge, label %lor.lhs.false158

if.end142.if.end239_crit_edge:                    ; preds = %if.end142
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end239

lor.lhs.false158:                                 ; preds = %if.end142
  br i1 %cmp153, label %lor.lhs.false158.if.else185_crit_edge, label %land.lhs.true161

lor.lhs.false158.if.else185_crit_edge:            ; preds = %lor.lhs.false158
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else185

land.lhs.true161:                                 ; preds = %lor.lhs.false158
  call void @__sanitizer_cov_trace_const_cmp4(i32 100, i32 %best_error.3570)
  %cmp162 = icmp ugt i32 %best_error.3570, 100
  %sub165 = add i32 %best_error.3570, -100
  call void @__sanitizer_cov_trace_cmp4(i32 %error.0, i32 %sub165)
  %cmp166 = icmp ult i32 %error.0, %sub165
  %or.cond426 = select i1 %cmp162, i1 %cmp166, i1 false
  br i1 %or.cond426, label %land.lhs.true161.if.end239_crit_edge, label %lor.lhs.false168

land.lhs.true161.if.end239_crit_edge:             ; preds = %land.lhs.true161
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end239

lor.lhs.false168:                                 ; preds = %land.lhs.true161
  %sub170 = sub i32 %error.0, %best_error.3570
  %45 = tail call i32 @llvm.abs.i32(i32 %sub170, i1 false)
  call void @__sanitizer_cov_trace_const_cmp4(i32 100, i32 %45)
  %cmp179 = icmp slt i32 %45, 100
  call void @__sanitizer_cov_trace_cmp4(i32 %42, i32 %best_vco_diff.3571)
  %cmp182 = icmp ult i32 %42, %best_vco_diff.3571
  %or.cond427 = select i1 %cmp179, i1 %cmp182, i1 false
  br i1 %or.cond427, label %lor.lhs.false168.if.end239_crit_edge, label %lor.lhs.false168.if.else185_crit_edge

lor.lhs.false168.if.else185_crit_edge:            ; preds = %lor.lhs.false168
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else185

lor.lhs.false168.if.end239_crit_edge:             ; preds = %lor.lhs.false168
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end239

if.else185:                                       ; preds = %lor.lhs.false168.if.else185_crit_edge, %lor.lhs.false158.if.else185_crit_edge
  %conv186 = zext i32 %n.addr.0.off0.i551 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %mul, i64 %conv186)
  %cmp187 = icmp eq i64 %mul, %conv186
  br i1 %cmp187, label %if.then189, label %if.else185.if.end239_crit_edge

if.else185.if.end239_crit_edge:                   ; preds = %if.else185
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end239

if.then189:                                       ; preds = %if.else185
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %best_freq.3569)
  %cmp190 = icmp eq i32 %best_freq.3569, -1
  br i1 %cmp190, label %if.then189.if.end239_crit_edge, label %if.else193

if.then189.if.end239_crit_edge:                   ; preds = %if.then189
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end239

if.else193:                                       ; preds = %if.then189
  call void @__sanitizer_cov_trace_cmp4(i32 %ref_div.0608, i32 %best_ref_div.3566)
  %cmp198 = icmp ult i32 %ref_div.0608, %best_ref_div.3566
  %or.cond428 = select i1 %tobool196.not, i1 %cmp198, i1 false
  call void @__sanitizer_cov_trace_cmp4(i32 %ref_div.0608, i32 %best_ref_div.3566)
  %cmp205 = icmp ugt i32 %ref_div.0608, %best_ref_div.3566
  %or.cond429 = select i1 %tobool203.not, i1 %cmp205, i1 false
  %or.cond634 = select i1 %or.cond428, i1 true, i1 %or.cond429
  call void @__sanitizer_cov_trace_cmp4(i32 %div88421, i32 %best_feedback_div.3567)
  %cmp212 = icmp ult i32 %div88421, %best_feedback_div.3567
  %or.cond430 = select i1 %tobool210.not, i1 %cmp212, i1 false
  %or.cond635 = select i1 %or.cond634, i1 true, i1 %or.cond430
  call void @__sanitizer_cov_trace_cmp4(i32 %div88421, i32 %best_feedback_div.3567)
  %cmp219 = icmp ugt i32 %div88421, %best_feedback_div.3567
  %or.cond431 = select i1 %tobool217.not, i1 %cmp219, i1 false
  %or.cond636 = select i1 %or.cond635, i1 true, i1 %or.cond431
  call void @__sanitizer_cov_trace_cmp4(i32 %post_div.0626, i32 %best_post_div.3565)
  %cmp226 = icmp ult i32 %post_div.0626, %best_post_div.3565
  %or.cond432 = select i1 %tobool224.not, i1 %cmp226, i1 false
  %or.cond637 = select i1 %or.cond636, i1 true, i1 %or.cond432
  call void @__sanitizer_cov_trace_cmp4(i32 %post_div.0626, i32 %best_post_div.3565)
  %cmp233 = icmp ugt i32 %post_div.0626, %best_post_div.3565
  %or.cond433 = select i1 %tobool231.not, i1 %cmp233, i1 false
  %or.cond638 = select i1 %or.cond637, i1 true, i1 %or.cond433
  br i1 %or.cond638, label %if.then235, label %if.else193.if.end239_crit_edge

if.else193.if.end239_crit_edge:                   ; preds = %if.else193
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end239

if.then235:                                       ; preds = %if.else193
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end239

if.end239:                                        ; preds = %if.then235, %if.else193.if.end239_crit_edge, %if.then189.if.end239_crit_edge, %if.else185.if.end239_crit_edge, %lor.lhs.false168.if.end239_crit_edge, %land.lhs.true161.if.end239_crit_edge, %if.end142.if.end239_crit_edge
  %best_post_div.4 = phi i32 [ %post_div.0626, %if.then235 ], [ %best_post_div.3565, %if.else185.if.end239_crit_edge ], [ %post_div.0626, %lor.lhs.false168.if.end239_crit_edge ], [ %post_div.0626, %land.lhs.true161.if.end239_crit_edge ], [ %post_div.0626, %if.end142.if.end239_crit_edge ], [ %post_div.0626, %if.then189.if.end239_crit_edge ], [ %best_post_div.3565, %if.else193.if.end239_crit_edge ]
  %best_ref_div.4 = phi i32 [ %ref_div.0608, %if.then235 ], [ %best_ref_div.3566, %if.else185.if.end239_crit_edge ], [ %ref_div.0608, %lor.lhs.false168.if.end239_crit_edge ], [ %ref_div.0608, %land.lhs.true161.if.end239_crit_edge ], [ %ref_div.0608, %if.end142.if.end239_crit_edge ], [ %ref_div.0608, %if.then189.if.end239_crit_edge ], [ %best_ref_div.3566, %if.else193.if.end239_crit_edge ]
  %best_feedback_div.4 = phi i32 [ %div88421, %if.then235 ], [ %best_feedback_div.3567, %if.else185.if.end239_crit_edge ], [ %div88421, %lor.lhs.false168.if.end239_crit_edge ], [ %div88421, %land.lhs.true161.if.end239_crit_edge ], [ %div88421, %if.end142.if.end239_crit_edge ], [ %div88421, %if.then189.if.end239_crit_edge ], [ %best_feedback_div.3567, %if.else193.if.end239_crit_edge ]
  %best_frac_feedback_div.4 = phi i32 [ %div107422, %if.then235 ], [ %best_frac_feedback_div.3568, %if.else185.if.end239_crit_edge ], [ %div107422, %lor.lhs.false168.if.end239_crit_edge ], [ %div107422, %land.lhs.true161.if.end239_crit_edge ], [ %div107422, %if.end142.if.end239_crit_edge ], [ %div107422, %if.then189.if.end239_crit_edge ], [ %best_frac_feedback_div.3568, %if.else193.if.end239_crit_edge ]
  %best_freq.4 = phi i32 [ %n.addr.0.off0.i551, %if.then235 ], [ %best_freq.3569, %if.else185.if.end239_crit_edge ], [ %n.addr.0.off0.i551, %lor.lhs.false168.if.end239_crit_edge ], [ %n.addr.0.off0.i551, %land.lhs.true161.if.end239_crit_edge ], [ %n.addr.0.off0.i551, %if.end142.if.end239_crit_edge ], [ %n.addr.0.off0.i551, %if.then189.if.end239_crit_edge ], [ %best_freq.3569, %if.else193.if.end239_crit_edge ]
  %best_error.4 = phi i32 [ %error.0, %if.then235 ], [ %best_error.3570, %if.else185.if.end239_crit_edge ], [ %error.0, %lor.lhs.false168.if.end239_crit_edge ], [ %error.0, %land.lhs.true161.if.end239_crit_edge ], [ %error.0, %if.end142.if.end239_crit_edge ], [ %error.0, %if.then189.if.end239_crit_edge ], [ %best_error.3570, %if.else193.if.end239_crit_edge ]
  %best_vco_diff.4 = phi i32 [ %42, %if.then235 ], [ %best_vco_diff.3571, %if.else185.if.end239_crit_edge ], [ %42, %lor.lhs.false168.if.end239_crit_edge ], [ %42, %land.lhs.true161.if.end239_crit_edge ], [ %42, %if.end142.if.end239_crit_edge ], [ %42, %if.then189.if.end239_crit_edge ], [ %best_vco_diff.3571, %if.else193.if.end239_crit_edge ]
  %conv240 = zext i32 %n.addr.0.off0.i551 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %mul, i64 %conv240)
  %cmp241 = icmp ugt i64 %mul, %conv240
  %add244 = add nuw i32 %div107422, 1
  %min_frac_feed_div.1 = select i1 %cmp241, i32 %add244, i32 %min_frac_feed_div.0572
  %max_frac_feed_div.1 = select i1 %cmp241, i32 %max_frac_feed_div.0573, i32 %div107422
  %cmp103 = icmp ult i32 %min_frac_feed_div.1, %max_frac_feed_div.1
  br i1 %cmp103, label %if.end239.while.body105_crit_edge, label %if.end239.while.end247_crit_edge

if.end239.while.end247_crit_edge:                 ; preds = %if.end239
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end247

if.end239.while.body105_crit_edge:                ; preds = %if.end239
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body105

while.end247:                                     ; preds = %if.end239.while.end247_crit_edge, %while.cond102.preheader.while.end247_crit_edge
  %conv248.pre-phi = phi i64 [ %.pre, %while.cond102.preheader.while.end247_crit_edge ], [ %conv240, %if.end239.while.end247_crit_edge ]
  %best_post_div.3.lcssa = phi i32 [ %best_post_div.2583, %while.cond102.preheader.while.end247_crit_edge ], [ %best_post_div.4, %if.end239.while.end247_crit_edge ]
  %best_ref_div.3.lcssa = phi i32 [ %best_ref_div.2584, %while.cond102.preheader.while.end247_crit_edge ], [ %best_ref_div.4, %if.end239.while.end247_crit_edge ]
  %best_feedback_div.3.lcssa = phi i32 [ %best_feedback_div.2585, %while.cond102.preheader.while.end247_crit_edge ], [ %best_feedback_div.4, %if.end239.while.end247_crit_edge ]
  %best_frac_feedback_div.3.lcssa = phi i32 [ %best_frac_feedback_div.2586, %while.cond102.preheader.while.end247_crit_edge ], [ %best_frac_feedback_div.4, %if.end239.while.end247_crit_edge ]
  %best_freq.3.lcssa = phi i32 [ %best_freq.2587, %while.cond102.preheader.while.end247_crit_edge ], [ %best_freq.4, %if.end239.while.end247_crit_edge ]
  %best_error.3.lcssa = phi i32 [ %best_error.2588, %while.cond102.preheader.while.end247_crit_edge ], [ %best_error.4, %if.end239.while.end247_crit_edge ]
  %best_vco_diff.3.lcssa = phi i32 [ %best_vco_diff.2589, %while.cond102.preheader.while.end247_crit_edge ], [ %best_vco_diff.4, %if.end239.while.end247_crit_edge ]
  %current_freq.1.lcssa = phi i32 [ %current_freq.0590, %while.cond102.preheader.while.end247_crit_edge ], [ %n.addr.0.off0.i551, %if.end239.while.end247_crit_edge ]
  call void @__sanitizer_cov_trace_cmp8(i64 %mul, i64 %conv248.pre-phi)
  %cmp249 = icmp ugt i64 %mul, %conv248.pre-phi
  %add252 = add nuw i32 %div88421, 1
  %min_feed_div.1 = select i1 %cmp249, i32 %add252, i32 %min_feed_div.0591
  %max_feed_div.1 = select i1 %cmp249, i32 %max_feed_div.0592, i32 %div88421
  br label %cleanup255

cleanup255:                                       ; preds = %while.end247, %if.else96.cleanup255_crit_edge, %if.then94
  %best_post_div.5 = phi i32 [ %best_post_div.2583, %if.then94 ], [ %best_post_div.3.lcssa, %while.end247 ], [ %best_post_div.2583, %if.else96.cleanup255_crit_edge ]
  %best_ref_div.5 = phi i32 [ %best_ref_div.2584, %if.then94 ], [ %best_ref_div.3.lcssa, %while.end247 ], [ %best_ref_div.2584, %if.else96.cleanup255_crit_edge ]
  %best_feedback_div.5 = phi i32 [ %best_feedback_div.2585, %if.then94 ], [ %best_feedback_div.3.lcssa, %while.end247 ], [ %best_feedback_div.2585, %if.else96.cleanup255_crit_edge ]
  %best_frac_feedback_div.5 = phi i32 [ %best_frac_feedback_div.2586, %if.then94 ], [ %best_frac_feedback_div.3.lcssa, %while.end247 ], [ %best_frac_feedback_div.2586, %if.else96.cleanup255_crit_edge ]
  %best_freq.5 = phi i32 [ %best_freq.2587, %if.then94 ], [ %best_freq.3.lcssa, %while.end247 ], [ %best_freq.2587, %if.else96.cleanup255_crit_edge ]
  %best_error.5 = phi i32 [ %best_error.2588, %if.then94 ], [ %best_error.3.lcssa, %while.end247 ], [ %best_error.2588, %if.else96.cleanup255_crit_edge ]
  %best_vco_diff.5 = phi i32 [ %best_vco_diff.2589, %if.then94 ], [ %best_vco_diff.3.lcssa, %while.end247 ], [ %best_vco_diff.2589, %if.else96.cleanup255_crit_edge ]
  %current_freq.2 = phi i32 [ %current_freq.0590, %if.then94 ], [ %current_freq.1.lcssa, %while.end247 ], [ %current_freq.0590, %if.else96.cleanup255_crit_edge ]
  %min_feed_div.2 = phi i32 [ %add95, %if.then94 ], [ %min_feed_div.1, %while.end247 ], [ %min_feed_div.0591, %if.else96.cleanup255_crit_edge ]
  %max_feed_div.2 = phi i32 [ %max_feed_div.0592, %if.then94 ], [ %max_feed_div.1, %while.end247 ], [ %div88421, %if.else96.cleanup255_crit_edge ]
  %cmp84 = icmp ult i32 %min_feed_div.2, %max_feed_div.2
  br i1 %cmp84, label %cleanup255.while.body85_crit_edge, label %cleanup255.cleanup263_crit_edge

cleanup255.cleanup263_crit_edge:                  ; preds = %cleanup255
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup263

cleanup255.while.body85_crit_edge:                ; preds = %cleanup255
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body85

cleanup263:                                       ; preds = %cleanup255.cleanup263_crit_edge, %lor.lhs.false78.cleanup263_crit_edge, %for.body71.cleanup263_crit_edge
  %best_post_div.6 = phi i32 [ %best_post_div.1601, %lor.lhs.false78.cleanup263_crit_edge ], [ %best_post_div.1601, %for.body71.cleanup263_crit_edge ], [ %best_post_div.5, %cleanup255.cleanup263_crit_edge ]
  %best_ref_div.6 = phi i32 [ %best_ref_div.1602, %lor.lhs.false78.cleanup263_crit_edge ], [ %best_ref_div.1602, %for.body71.cleanup263_crit_edge ], [ %best_ref_div.5, %cleanup255.cleanup263_crit_edge ]
  %best_feedback_div.6 = phi i32 [ %best_feedback_div.1603, %lor.lhs.false78.cleanup263_crit_edge ], [ %best_feedback_div.1603, %for.body71.cleanup263_crit_edge ], [ %best_feedback_div.5, %cleanup255.cleanup263_crit_edge ]
  %best_frac_feedback_div.6 = phi i32 [ %best_frac_feedback_div.1604, %lor.lhs.false78.cleanup263_crit_edge ], [ %best_frac_feedback_div.1604, %for.body71.cleanup263_crit_edge ], [ %best_frac_feedback_div.5, %cleanup255.cleanup263_crit_edge ]
  %best_freq.6 = phi i32 [ %best_freq.1605, %lor.lhs.false78.cleanup263_crit_edge ], [ %best_freq.1605, %for.body71.cleanup263_crit_edge ], [ %best_freq.5, %cleanup255.cleanup263_crit_edge ]
  %best_error.6 = phi i32 [ %best_error.1606, %lor.lhs.false78.cleanup263_crit_edge ], [ %best_error.1606, %for.body71.cleanup263_crit_edge ], [ %best_error.5, %cleanup255.cleanup263_crit_edge ]
  %best_vco_diff.6 = phi i32 [ %best_vco_diff.1607, %lor.lhs.false78.cleanup263_crit_edge ], [ %best_vco_diff.1607, %for.body71.cleanup263_crit_edge ], [ %best_vco_diff.5, %cleanup255.cleanup263_crit_edge ]
  %inc = add i32 %ref_div.0608, 1
  %cmp70.not = icmp ugt i32 %inc, %max_ref_div.3
  br i1 %cmp70.not, label %cleanup263.cleanup272_crit_edge, label %cleanup263.for.body71_crit_edge

cleanup263.for.body71_crit_edge:                  ; preds = %cleanup263
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body71

cleanup263.cleanup272_crit_edge:                  ; preds = %cleanup263
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup272

cleanup272:                                       ; preds = %cleanup263.cleanup272_crit_edge, %if.end68.cleanup272_crit_edge, %if.then51.cleanup272_crit_edge, %if.then51.cleanup272_crit_edge640, %if.then51.cleanup272_crit_edge641, %if.then51.cleanup272_crit_edge642, %if.then51.cleanup272_crit_edge643, %if.then51.cleanup272_crit_edge644, %if.then51.cleanup272_crit_edge645, %if.then51.cleanup272_crit_edge646, %for.body.cleanup272_crit_edge
  %best_post_div.7 = phi i32 [ %best_post_div.0619, %for.body.cleanup272_crit_edge ], [ %best_post_div.0619, %if.then51.cleanup272_crit_edge ], [ %best_post_div.0619, %if.then51.cleanup272_crit_edge640 ], [ %best_post_div.0619, %if.then51.cleanup272_crit_edge641 ], [ %best_post_div.0619, %if.then51.cleanup272_crit_edge642 ], [ %best_post_div.0619, %if.then51.cleanup272_crit_edge643 ], [ %best_post_div.0619, %if.then51.cleanup272_crit_edge644 ], [ %best_post_div.0619, %if.then51.cleanup272_crit_edge645 ], [ %best_post_div.0619, %if.then51.cleanup272_crit_edge646 ], [ %best_post_div.0619, %if.end68.cleanup272_crit_edge ], [ %best_post_div.6, %cleanup263.cleanup272_crit_edge ]
  %best_ref_div.7 = phi i32 [ %best_ref_div.0620, %for.body.cleanup272_crit_edge ], [ %best_ref_div.0620, %if.then51.cleanup272_crit_edge ], [ %best_ref_div.0620, %if.then51.cleanup272_crit_edge640 ], [ %best_ref_div.0620, %if.then51.cleanup272_crit_edge641 ], [ %best_ref_div.0620, %if.then51.cleanup272_crit_edge642 ], [ %best_ref_div.0620, %if.then51.cleanup272_crit_edge643 ], [ %best_ref_div.0620, %if.then51.cleanup272_crit_edge644 ], [ %best_ref_div.0620, %if.then51.cleanup272_crit_edge645 ], [ %best_ref_div.0620, %if.then51.cleanup272_crit_edge646 ], [ %best_ref_div.0620, %if.end68.cleanup272_crit_edge ], [ %best_ref_div.6, %cleanup263.cleanup272_crit_edge ]
  %best_feedback_div.7 = phi i32 [ %best_feedback_div.0621, %for.body.cleanup272_crit_edge ], [ %best_feedback_div.0621, %if.then51.cleanup272_crit_edge ], [ %best_feedback_div.0621, %if.then51.cleanup272_crit_edge640 ], [ %best_feedback_div.0621, %if.then51.cleanup272_crit_edge641 ], [ %best_feedback_div.0621, %if.then51.cleanup272_crit_edge642 ], [ %best_feedback_div.0621, %if.then51.cleanup272_crit_edge643 ], [ %best_feedback_div.0621, %if.then51.cleanup272_crit_edge644 ], [ %best_feedback_div.0621, %if.then51.cleanup272_crit_edge645 ], [ %best_feedback_div.0621, %if.then51.cleanup272_crit_edge646 ], [ %best_feedback_div.0621, %if.end68.cleanup272_crit_edge ], [ %best_feedback_div.6, %cleanup263.cleanup272_crit_edge ]
  %best_frac_feedback_div.7 = phi i32 [ %best_frac_feedback_div.0622, %for.body.cleanup272_crit_edge ], [ %best_frac_feedback_div.0622, %if.then51.cleanup272_crit_edge ], [ %best_frac_feedback_div.0622, %if.then51.cleanup272_crit_edge640 ], [ %best_frac_feedback_div.0622, %if.then51.cleanup272_crit_edge641 ], [ %best_frac_feedback_div.0622, %if.then51.cleanup272_crit_edge642 ], [ %best_frac_feedback_div.0622, %if.then51.cleanup272_crit_edge643 ], [ %best_frac_feedback_div.0622, %if.then51.cleanup272_crit_edge644 ], [ %best_frac_feedback_div.0622, %if.then51.cleanup272_crit_edge645 ], [ %best_frac_feedback_div.0622, %if.then51.cleanup272_crit_edge646 ], [ %best_frac_feedback_div.0622, %if.end68.cleanup272_crit_edge ], [ %best_frac_feedback_div.6, %cleanup263.cleanup272_crit_edge ]
  %best_freq.7 = phi i32 [ %best_freq.0623, %for.body.cleanup272_crit_edge ], [ %best_freq.0623, %if.then51.cleanup272_crit_edge ], [ %best_freq.0623, %if.then51.cleanup272_crit_edge640 ], [ %best_freq.0623, %if.then51.cleanup272_crit_edge641 ], [ %best_freq.0623, %if.then51.cleanup272_crit_edge642 ], [ %best_freq.0623, %if.then51.cleanup272_crit_edge643 ], [ %best_freq.0623, %if.then51.cleanup272_crit_edge644 ], [ %best_freq.0623, %if.then51.cleanup272_crit_edge645 ], [ %best_freq.0623, %if.then51.cleanup272_crit_edge646 ], [ %best_freq.0623, %if.end68.cleanup272_crit_edge ], [ %best_freq.6, %cleanup263.cleanup272_crit_edge ]
  %best_error.7 = phi i32 [ %best_error.0624, %for.body.cleanup272_crit_edge ], [ %best_error.0624, %if.then51.cleanup272_crit_edge ], [ %best_error.0624, %if.then51.cleanup272_crit_edge640 ], [ %best_error.0624, %if.then51.cleanup272_crit_edge641 ], [ %best_error.0624, %if.then51.cleanup272_crit_edge642 ], [ %best_error.0624, %if.then51.cleanup272_crit_edge643 ], [ %best_error.0624, %if.then51.cleanup272_crit_edge644 ], [ %best_error.0624, %if.then51.cleanup272_crit_edge645 ], [ %best_error.0624, %if.then51.cleanup272_crit_edge646 ], [ %best_error.0624, %if.end68.cleanup272_crit_edge ], [ %best_error.6, %cleanup263.cleanup272_crit_edge ]
  %best_vco_diff.7 = phi i32 [ %best_vco_diff.0625, %for.body.cleanup272_crit_edge ], [ %best_vco_diff.0625, %if.then51.cleanup272_crit_edge ], [ %best_vco_diff.0625, %if.then51.cleanup272_crit_edge640 ], [ %best_vco_diff.0625, %if.then51.cleanup272_crit_edge641 ], [ %best_vco_diff.0625, %if.then51.cleanup272_crit_edge642 ], [ %best_vco_diff.0625, %if.then51.cleanup272_crit_edge643 ], [ %best_vco_diff.0625, %if.then51.cleanup272_crit_edge644 ], [ %best_vco_diff.0625, %if.then51.cleanup272_crit_edge645 ], [ %best_vco_diff.0625, %if.then51.cleanup272_crit_edge646 ], [ %best_vco_diff.0625, %if.end68.cleanup272_crit_edge ], [ %best_vco_diff.6, %cleanup263.cleanup272_crit_edge ]
  %dec = add i32 %post_div.0626, -1
  %cmp40.not = icmp ult i32 %dec, %min_post_div.0
  br i1 %cmp40.not, label %cleanup272.for.end276_crit_edge, label %cleanup272.for.body_crit_edge

cleanup272.for.body_crit_edge:                    ; preds = %cleanup272
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

cleanup272.for.end276_crit_edge:                  ; preds = %cleanup272
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end276

for.end276:                                       ; preds = %cleanup272.for.end276_crit_edge, %if.end39.for.end276_crit_edge
  %best_post_div.0.lcssa = phi i32 [ 1, %if.end39.for.end276_crit_edge ], [ %best_post_div.7, %cleanup272.for.end276_crit_edge ]
  %best_ref_div.0.lcssa = phi i32 [ 1, %if.end39.for.end276_crit_edge ], [ %best_ref_div.7, %cleanup272.for.end276_crit_edge ]
  %best_feedback_div.0.lcssa = phi i32 [ 1, %if.end39.for.end276_crit_edge ], [ %best_feedback_div.7, %cleanup272.for.end276_crit_edge ]
  %best_frac_feedback_div.0.lcssa = phi i32 [ 0, %if.end39.for.end276_crit_edge ], [ %best_frac_feedback_div.7, %cleanup272.for.end276_crit_edge ]
  %best_freq.0.lcssa = phi i32 [ -1, %if.end39.for.end276_crit_edge ], [ %best_freq.7, %cleanup272.for.end276_crit_edge ]
  %div277 = udiv i32 %best_freq.0.lcssa, 10000
  %46 = ptrtoint ptr %dot_clock_p to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %div277, ptr %dot_clock_p, align 4
  %47 = ptrtoint ptr %fb_div_p to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %best_feedback_div.0.lcssa, ptr %fb_div_p, align 4
  %48 = ptrtoint ptr %frac_fb_div_p to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %best_frac_feedback_div.0.lcssa, ptr %frac_fb_div_p, align 4
  %49 = ptrtoint ptr %ref_div_p to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %best_ref_div.0.lcssa, ptr %ref_div_p, align 4
  %50 = ptrtoint ptr %post_div_p to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %best_post_div.0.lcssa, ptr %post_div_p, align 4
  %div278 = udiv i32 %best_freq.0.lcssa, 1000
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.3, i64 noundef %mul, i32 noundef %div278, i32 noundef %best_feedback_div.0.lcssa, i32 noundef %best_frac_feedback_div.0.lcssa, i32 noundef %best_ref_div.0.lcssa, i32 noundef %best_post_div.0.lcssa) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @radeon_framebuffer_init(ptr noundef %dev, ptr noundef %fb, ptr noundef %mode_cmd, ptr noundef %obj) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %obj1 = getelementptr inbounds %struct.drm_framebuffer, ptr %fb, i32 0, i32 15
  %0 = ptrtoint ptr %obj1 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %obj, ptr %obj1, align 4
  tail call void @drm_helper_mode_fill_fb_struct(ptr noundef %dev, ptr noundef %fb, ptr noundef %mode_cmd) #10
  %call = tail call i32 @drm_framebuffer_init(ptr noundef %dev, ptr noundef %fb, ptr noundef nonnull @radeon_fb_funcs) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %1 = ptrtoint ptr %obj1 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr null, ptr %obj1, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then, %entry.cleanup_crit_edge
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_helper_mode_fill_fb_struct(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_framebuffer_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @radeon_update_display_priority(ptr nocapture noundef %rdev) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @radeon_disp_priority to i32))
  %0 = load i32, ptr @radeon_disp_priority, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %cmp = icmp eq i32 %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %0)
  %cmp1 = icmp sgt i32 %0, 2
  %or.cond = or i1 %cmp, %cmp1
  br i1 %or.cond, label %if.then, label %entry.if.end34_crit_edge

entry.if.end34_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end34

if.then:                                          ; preds = %entry
  %family = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 6
  %1 = ptrtoint ptr %family to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %family, align 4
  %3 = zext i32 %2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.161)
  switch i32 %2, label %if.then.if.else_crit_edge [
    i32 9, label %if.then.land.lhs.true_crit_edge
    i32 11, label %if.then.land.lhs.true_crit_edge49
    i32 10, label %if.then.land.lhs.true_crit_edge50
    i32 12, label %if.then.land.lhs.true_crit_edge51
    i32 13, label %if.then.land.lhs.true_crit_edge52
    i32 14, label %if.then.land.lhs.true_crit_edge53
    i32 15, label %if.then.land.lhs.true_crit_edge54
    i32 16, label %if.then.land.lhs.true_crit_edge55
    i32 17, label %if.then.land.lhs.true_crit_edge56
    i32 21, label %if.then.land.lhs.true_crit_edge57
  ]

if.then.land.lhs.true_crit_edge57:                ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true

if.then.land.lhs.true_crit_edge56:                ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true

if.then.land.lhs.true_crit_edge55:                ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true

if.then.land.lhs.true_crit_edge54:                ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true

if.then.land.lhs.true_crit_edge53:                ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true

if.then.land.lhs.true_crit_edge52:                ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true

if.then.land.lhs.true_crit_edge51:                ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true

if.then.land.lhs.true_crit_edge50:                ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true

if.then.land.lhs.true_crit_edge49:                ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true

if.then.land.lhs.true_crit_edge:                  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true

if.then.if.else_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

land.lhs.true:                                    ; preds = %if.then.land.lhs.true_crit_edge, %if.then.land.lhs.true_crit_edge49, %if.then.land.lhs.true_crit_edge50, %if.then.land.lhs.true_crit_edge51, %if.then.land.lhs.true_crit_edge52, %if.then.land.lhs.true_crit_edge53, %if.then.land.lhs.true_crit_edge54, %if.then.land.lhs.true_crit_edge55, %if.then.land.lhs.true_crit_edge56, %if.then.land.lhs.true_crit_edge57
  %flags = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 7
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags, align 8
  %and = and i32 %5, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %land.lhs.true.if.end34_crit_edge, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

land.lhs.true.if.end34_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end34

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %if.then.if.else_crit_edge
  br label %if.end34

if.end34:                                         ; preds = %if.else, %land.lhs.true.if.end34_crit_edge, %entry.if.end34_crit_edge
  %.sink = phi i32 [ 0, %if.else ], [ 2, %land.lhs.true.if.end34_crit_edge ], [ %0, %entry.if.end34_crit_edge ]
  %disp_priority = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 12
  %6 = ptrtoint ptr %disp_priority to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %.sink, ptr %disp_priority, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @radeon_modeset_init(ptr noundef %rdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %ddev = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 1
  %0 = ptrtoint ptr %ddev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ddev, align 4
  %call.i = tail call i32 @drmm_mode_config_init(ptr noundef %1) #10
  %mode_config_initialized = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 44, i32 3
  %2 = ptrtoint ptr %mode_config_initialized to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 1, ptr %mode_config_initialized, align 4
  %3 = ptrtoint ptr %ddev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ddev, align 4
  %funcs = getelementptr inbounds %struct.drm_device, ptr %4, i32 0, i32 30, i32 27
  %5 = ptrtoint ptr %funcs to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @radeon_mode_funcs, ptr %funcs, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @radeon_use_pflipirq to i32))
  %6 = load i32, ptr @radeon_use_pflipirq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %6)
  %cmp = icmp eq i32 %6, 2
  br i1 %cmp, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %family = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 6
  %7 = ptrtoint ptr %family to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %family, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 26, i32 %8)
  %cmp2 = icmp ugt i32 %8, 26
  br i1 %cmp2, label %if.then, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  %9 = ptrtoint ptr %ddev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ddev, align 4
  %async_page_flip = getelementptr inbounds %struct.drm_device, ptr %10, i32 0, i32 30, i32 96
  %11 = ptrtoint ptr %async_page_flip to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 1, ptr %async_page_flip, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %family5 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 6
  %12 = ptrtoint ptr %family5 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %family5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 46, i32 %13)
  %cmp6 = icmp ugt i32 %13, 46
  br i1 %cmp6, label %if.then7, label %if.else

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %14 = ptrtoint ptr %ddev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ddev, align 4
  %max_width = getelementptr inbounds %struct.drm_device, ptr %15, i32 0, i32 30, i32 25
  %16 = ptrtoint ptr %max_width to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 16384, ptr %max_width, align 4
  br label %if.end29

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %13)
  %cmp13 = icmp ugt i32 %13, 17
  %17 = ptrtoint ptr %ddev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ddev, align 4
  %max_width17 = getelementptr inbounds %struct.drm_device, ptr %18, i32 0, i32 30, i32 25
  br i1 %cmp13, label %if.then14, label %if.else21

if.then14:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %19 = ptrtoint ptr %max_width17 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 8192, ptr %max_width17, align 4
  br label %if.end29

if.else21:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %20 = ptrtoint ptr %max_width17 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 4096, ptr %max_width17, align 4
  br label %if.end29

if.end29:                                         ; preds = %if.else21, %if.then14, %if.then7
  %.sink = phi i32 [ 8192, %if.then14 ], [ 4096, %if.else21 ], [ 16384, %if.then7 ]
  %21 = ptrtoint ptr %ddev to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ddev, align 4
  %max_height20 = getelementptr inbounds %struct.drm_device, ptr %22, i32 0, i32 30, i32 26
  %23 = ptrtoint ptr %max_height20 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %.sink, ptr %max_height20, align 4
  %24 = load ptr, ptr %ddev, align 4
  %preferred_depth = getelementptr inbounds %struct.drm_device, ptr %24, i32 0, i32 30, i32 91
  %25 = ptrtoint ptr %preferred_depth to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 24, ptr %preferred_depth, align 4
  %26 = load ptr, ptr %ddev, align 4
  %prefer_shadow = getelementptr inbounds %struct.drm_device, ptr %26, i32 0, i32 30, i32 92
  %27 = ptrtoint ptr %prefer_shadow to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 1, ptr %prefer_shadow, align 4
  %aper_base = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 42, i32 1
  %28 = ptrtoint ptr %aper_base to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %aper_base, align 4
  %30 = load ptr, ptr %ddev, align 4
  %fb_base = getelementptr inbounds %struct.drm_device, ptr %30, i32 0, i32 30, i32 28
  %31 = ptrtoint ptr %fb_base to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %29, ptr %fb_base, align 4
  %is_atom_bios.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 14
  %32 = ptrtoint ptr %is_atom_bios.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %is_atom_bios.i, align 4, !range !311
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %tobool.not.i = icmp eq i8 %33, 0
  br i1 %tobool.not.i, label %if.end29.if.end5.i_crit_edge, label %if.then.i

if.end29.if.end5.i_crit_edge:                     ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end5.i

if.then.i:                                        ; preds = %if.end29
  %34 = ptrtoint ptr %ddev to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %ddev, align 4
  %call.i95 = tail call ptr @drm_property_create_range(ptr noundef %35, i32 noundef 0, ptr noundef nonnull @.str.12, i64 noundef 0, i64 noundef 1) #10
  %coherent_mode_property.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 44, i32 6
  %36 = ptrtoint ptr %coherent_mode_property.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %call.i95, ptr %coherent_mode_property.i, align 4
  %tobool3.not.i = icmp eq ptr %call.i95, null
  br i1 %tobool3.not.i, label %if.then.i.cleanup_crit_edge, label %if.then.i.if.end5.i_crit_edge

if.then.i.if.end5.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end5.i

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end5.i:                                        ; preds = %if.then.i.if.end5.i_crit_edge, %if.end29.if.end5.i_crit_edge
  %37 = ptrtoint ptr %family5 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %family5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %38)
  %cmp.i = icmp ugt i32 %38, 17
  br i1 %cmp.i, label %if.end5.i.if.end10.i_crit_edge, label %if.then6.i

if.end5.i.if.end10.i_crit_edge:                   ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end10.i

if.then6.i:                                       ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #12
  %39 = ptrtoint ptr %ddev to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %ddev, align 4
  %call8.i = tail call ptr @drm_property_create_enum(ptr noundef %40, i32 noundef 0, ptr noundef nonnull @.str.13, ptr noundef nonnull @radeon_tmds_pll_enum_list, i32 noundef 2) #10
  %tmds_pll_property.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 44, i32 9
  %41 = ptrtoint ptr %tmds_pll_property.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %call8.i, ptr %tmds_pll_property.i, align 4
  br label %if.end10.i

if.end10.i:                                       ; preds = %if.then6.i, %if.end5.i.if.end10.i_crit_edge
  %42 = ptrtoint ptr %ddev to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %ddev, align 4
  %call12.i = tail call ptr @drm_property_create_range(ptr noundef %43, i32 noundef 0, ptr noundef nonnull @.str.14, i64 noundef 0, i64 noundef 1) #10
  %load_detect_property.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 44, i32 7
  %44 = ptrtoint ptr %load_detect_property.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %call12.i, ptr %load_detect_property.i, align 4
  %tobool16.not.i = icmp eq ptr %call12.i, null
  br i1 %tobool16.not.i, label %if.end10.i.cleanup_crit_edge, label %if.end18.i

if.end10.i.cleanup_crit_edge:                     ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end18.i:                                       ; preds = %if.end10.i
  %45 = ptrtoint ptr %ddev to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %ddev, align 4
  %call20.i = tail call i32 @drm_mode_create_scaling_mode_property(ptr noundef %46) #10
  %47 = ptrtoint ptr %ddev to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %ddev, align 4
  %call22.i = tail call ptr @drm_property_create_enum(ptr noundef %48, i32 noundef 0, ptr noundef nonnull @.str.15, ptr noundef nonnull @radeon_tv_std_enum_list, i32 noundef 8) #10
  %tv_std_property.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 44, i32 8
  %49 = ptrtoint ptr %tv_std_property.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %call22.i, ptr %tv_std_property.i, align 4
  %50 = ptrtoint ptr %ddev to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %ddev, align 4
  %call25.i = tail call ptr @drm_property_create_enum(ptr noundef %51, i32 noundef 0, ptr noundef nonnull @.str.16, ptr noundef nonnull @radeon_underscan_enum_list, i32 noundef 3) #10
  %underscan_property.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 44, i32 10
  %52 = ptrtoint ptr %underscan_property.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %call25.i, ptr %underscan_property.i, align 4
  %53 = ptrtoint ptr %ddev to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %ddev, align 4
  %call28.i = tail call ptr @drm_property_create_range(ptr noundef %54, i32 noundef 0, ptr noundef nonnull @.str.17, i64 noundef 0, i64 noundef 128) #10
  %underscan_hborder_property.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 44, i32 11
  %55 = ptrtoint ptr %underscan_hborder_property.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %call28.i, ptr %underscan_hborder_property.i, align 4
  %tobool32.not.i = icmp eq ptr %call28.i, null
  br i1 %tobool32.not.i, label %if.end18.i.cleanup_crit_edge, label %if.end34.i

if.end18.i.cleanup_crit_edge:                     ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end34.i:                                       ; preds = %if.end18.i
  %56 = ptrtoint ptr %ddev to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %ddev, align 4
  %call36.i = tail call ptr @drm_property_create_range(ptr noundef %57, i32 noundef 0, ptr noundef nonnull @.str.18, i64 noundef 0, i64 noundef 128) #10
  %underscan_vborder_property.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 44, i32 12
  %58 = ptrtoint ptr %underscan_vborder_property.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %call36.i, ptr %underscan_vborder_property.i, align 4
  %tobool40.not.i = icmp eq ptr %call36.i, null
  br i1 %tobool40.not.i, label %if.end34.i.cleanup_crit_edge, label %if.end38

if.end34.i.cleanup_crit_edge:                     ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end38:                                         ; preds = %if.end34.i
  %59 = ptrtoint ptr %ddev to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %ddev, align 4
  %call44.i = tail call ptr @drm_property_create_enum(ptr noundef %60, i32 noundef 0, ptr noundef nonnull @.str.19, ptr noundef nonnull @radeon_audio_enum_list, i32 noundef 3) #10
  %audio_property.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 44, i32 13
  %61 = ptrtoint ptr %audio_property.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %call44.i, ptr %audio_property.i, align 4
  %62 = ptrtoint ptr %ddev to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %ddev, align 4
  %call47.i = tail call ptr @drm_property_create_enum(ptr noundef %63, i32 noundef 0, ptr noundef nonnull @.str.20, ptr noundef nonnull @radeon_dither_enum_list, i32 noundef 2) #10
  %dither_property.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 44, i32 14
  %64 = ptrtoint ptr %dither_property.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %call47.i, ptr %dither_property.i, align 4
  %65 = ptrtoint ptr %ddev to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %ddev, align 4
  %call50.i = tail call ptr @drm_property_create_enum(ptr noundef %66, i32 noundef 0, ptr noundef nonnull @.str.21, ptr noundef nonnull @radeon_output_csc_enum_list, i32 noundef 4) #10
  %output_csc_property.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 44, i32 15
  %67 = ptrtoint ptr %output_csc_property.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %call50.i, ptr %output_csc_property.i, align 4
  tail call void @radeon_i2c_init(ptr noundef %rdev) #10
  %68 = ptrtoint ptr %is_atom_bios.i to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %is_atom_bios.i, align 4, !range !311
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %69)
  %tobool39.not = icmp eq i8 %69, 0
  br i1 %tobool39.not, label %if.then40, label %if.end38.if.end42_crit_edge

if.end38.if.end42_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end42

if.then40:                                        ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #12
  %call41 = tail call zeroext i1 @radeon_combios_check_hardcoded_edid(ptr noundef %rdev) #10
  br label %if.end42

if.end42:                                         ; preds = %if.then40, %if.end38.if.end42_crit_edge
  %num_crtc = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 91
  %70 = ptrtoint ptr %num_crtc to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %num_crtc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %71)
  %cmp43118 = icmp sgt i32 %71, 0
  br i1 %cmp43118, label %if.end42.for.body_crit_edge, label %if.end42.for.end_crit_edge

if.end42.for.end_crit_edge:                       ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

if.end42.for.body_crit_edge:                      ; preds = %if.end42
  br label %for.body

for.body:                                         ; preds = %radeon_crtc_init.exit.for.body_crit_edge, %if.end42.for.body_crit_edge
  %i.0119 = phi i32 [ %inc, %radeon_crtc_init.exit.for.body_crit_edge ], [ 0, %if.end42.for.body_crit_edge ]
  %72 = ptrtoint ptr %ddev to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %ddev, align 4
  %dev_private.i = getelementptr inbounds %struct.drm_device, ptr %73, i32 0, i32 5
  %74 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %dev_private.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %76 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %76, i32 noundef 3520, i32 noundef 1392) #15
  %cmp.i96 = icmp eq ptr %call7.i.i.i, null
  br i1 %cmp.i96, label %for.body.radeon_crtc_init.exit_crit_edge, label %if.end.i

for.body.radeon_crtc_init.exit_crit_edge:         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %radeon_crtc_init.exit

if.end.i:                                         ; preds = %for.body
  %call1.i = tail call i32 @drm_crtc_init(ptr noundef %73, ptr noundef nonnull %call7.i.i.i, ptr noundef nonnull @radeon_crtc_funcs) #10
  %call3.i = tail call i32 @drm_mode_crtc_set_gamma_size(ptr noundef nonnull %call7.i.i.i, i32 noundef 256) #10
  %crtc_id.i = getelementptr inbounds %struct.radeon_crtc, ptr %call7.i.i.i, i32 0, i32 1
  %77 = ptrtoint ptr %crtc_id.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %i.0119, ptr %crtc_id.i, align 8
  %call4.i = tail call ptr (ptr, i32, i32, ...) @alloc_workqueue(ptr noundef nonnull @.str.39, i32 noundef 16, i32 noundef 0) #10
  %flip_queue.i = getelementptr inbounds %struct.radeon_crtc, ptr %call7.i.i.i, i32 0, i32 24
  %78 = ptrtoint ptr %flip_queue.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr %call4.i, ptr %flip_queue.i, align 8
  %arrayidx.i = getelementptr %struct.radeon_device, ptr %75, i32 0, i32 44, i32 4, i32 %i.0119
  %79 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr %call7.i.i.i, ptr %arrayidx.i, align 4
  %family.i97 = getelementptr inbounds %struct.radeon_device, ptr %75, i32 0, i32 6
  %80 = ptrtoint ptr %family.i97 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %family.i97, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 56, i32 %81)
  %cmp5.i = icmp ugt i32 %81, 56
  %spec.select.i = select i1 %cmp5.i, i32 128, i32 64
  %82 = getelementptr inbounds %struct.radeon_crtc, ptr %call7.i.i.i, i32 0, i32 14
  %83 = ptrtoint ptr %82 to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %spec.select.i, ptr %82, align 8
  %84 = getelementptr inbounds %struct.radeon_crtc, ptr %call7.i.i.i, i32 0, i32 15
  %85 = ptrtoint ptr %84 to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 %spec.select.i, ptr %84, align 4
  %cursor_width.i = getelementptr inbounds %struct.drm_device, ptr %73, i32 0, i32 30, i32 100
  %86 = ptrtoint ptr %cursor_width.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 %spec.select.i, ptr %cursor_width.i, align 4
  %cursor_height.i = getelementptr inbounds %struct.drm_device, ptr %73, i32 0, i32 30, i32 101
  %87 = ptrtoint ptr %cursor_height.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %spec.select.i, ptr %cursor_height.i, align 4
  %is_atom_bios.i98 = getelementptr inbounds %struct.radeon_device, ptr %75, i32 0, i32 14
  %88 = ptrtoint ptr %is_atom_bios.i98 to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %is_atom_bios.i98, align 4, !range !311
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %89)
  %tobool.not.i99 = icmp eq i8 %89, 0
  br i1 %tobool.not.i99, label %if.end.i.if.else17.i_crit_edge, label %land.lhs.true.i

if.end.i.if.else17.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else17.i

land.lhs.true.i:                                  ; preds = %if.end.i
  %90 = ptrtoint ptr %family.i97 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %family.i97, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %91)
  %cmp14.i = icmp ugt i32 %91, 17
  br i1 %cmp14.i, label %land.lhs.true.i.if.then16.i_crit_edge, label %lor.lhs.false.i

land.lhs.true.i.if.then16.i_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then16.i

lor.lhs.false.i:                                  ; preds = %land.lhs.true.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @radeon_r4xx_atom to i32))
  %92 = load i32, ptr @radeon_r4xx_atom, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %92)
  %tobool15.not.i = icmp eq i32 %92, 0
  br i1 %tobool15.not.i, label %lor.lhs.false.i.if.else17.i_crit_edge, label %lor.lhs.false.i.if.then16.i_crit_edge

lor.lhs.false.i.if.then16.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then16.i

lor.lhs.false.i.if.else17.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else17.i

if.then16.i:                                      ; preds = %lor.lhs.false.i.if.then16.i_crit_edge, %land.lhs.true.i.if.then16.i_crit_edge
  tail call void @radeon_atombios_init_crtc(ptr noundef %73, ptr noundef nonnull %call7.i.i.i) #10
  br label %radeon_crtc_init.exit

if.else17.i:                                      ; preds = %lor.lhs.false.i.if.else17.i_crit_edge, %if.end.i.if.else17.i_crit_edge
  tail call void @radeon_legacy_init_crtc(ptr noundef %73, ptr noundef nonnull %call7.i.i.i) #10
  br label %radeon_crtc_init.exit

radeon_crtc_init.exit:                            ; preds = %if.else17.i, %if.then16.i, %for.body.radeon_crtc_init.exit_crit_edge
  %inc = add nuw nsw i32 %i.0119, 1
  %93 = ptrtoint ptr %num_crtc to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %num_crtc, align 4
  %cmp43 = icmp slt i32 %inc, %94
  br i1 %cmp43, label %radeon_crtc_init.exit.for.body_crit_edge, label %radeon_crtc_init.exit.for.end_crit_edge

radeon_crtc_init.exit.for.end_crit_edge:          ; preds = %radeon_crtc_init.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

radeon_crtc_init.exit.for.body_crit_edge:         ; preds = %radeon_crtc_init.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %radeon_crtc_init.exit.for.end_crit_edge, %if.end42.for.end_crit_edge
  %95 = ptrtoint ptr %ddev to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %ddev, align 4
  %dev_private.i100 = getelementptr inbounds %struct.drm_device, ptr %96, i32 0, i32 5
  %97 = ptrtoint ptr %dev_private.i100 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %dev_private.i100, align 4
  %bios.i = getelementptr inbounds %struct.radeon_device, ptr %98, i32 0, i32 13
  %99 = ptrtoint ptr %bios.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %bios.i, align 8
  %tobool.not.i101 = icmp eq ptr %100, null
  br i1 %tobool.not.i101, label %if.else15.i, label %if.then.i103

if.then.i103:                                     ; preds = %for.end
  %is_atom_bios.i102 = getelementptr inbounds %struct.radeon_device, ptr %98, i32 0, i32 14
  %101 = ptrtoint ptr %is_atom_bios.i102 to i32
  call void @__asan_load1_noabort(i32 %101)
  %102 = load i8, ptr %is_atom_bios.i102, align 4, !range !311
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %102)
  %tobool1.not.i = icmp eq i8 %102, 0
  br i1 %tobool1.not.i, label %if.else.i, label %if.then2.i

if.then2.i:                                       ; preds = %if.then.i103
  %call.i104 = tail call zeroext i1 @radeon_get_atom_connector_info_from_supported_devices_table(ptr noundef %96) #10
  br i1 %call.i104, label %if.then2.i.if.then22.i_crit_edge, label %if.then4.i

if.then2.i.if.then22.i_crit_edge:                 ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then22.i

if.then4.i:                                       ; preds = %if.then2.i
  %call5.i = tail call zeroext i1 @radeon_get_atom_connector_info_from_object_table(ptr noundef %96) #10
  br i1 %call5.i, label %if.then4.i.if.then22.i_crit_edge, label %if.then4.i.cleanup_crit_edge

if.then4.i.cleanup_crit_edge:                     ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then4.i.if.then22.i_crit_edge:                 ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then22.i

if.else.i:                                        ; preds = %if.then.i103
  %call7.i = tail call zeroext i1 @radeon_get_legacy_connector_info_from_bios(ptr noundef %96) #10
  br i1 %call7.i, label %if.else.i.if.then22.i_crit_edge, label %if.then10.i

if.else.i.if.then22.i_crit_edge:                  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then22.i

if.then10.i:                                      ; preds = %if.else.i
  %call11.i = tail call zeroext i1 @radeon_get_legacy_connector_info_from_table(ptr noundef %96) #10
  br i1 %call11.i, label %if.then10.i.if.then22.i_crit_edge, label %if.then10.i.cleanup_crit_edge

if.then10.i.cleanup_crit_edge:                    ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then10.i.if.then22.i_crit_edge:                ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then22.i

if.else15.i:                                      ; preds = %for.end
  %family.i105 = getelementptr inbounds %struct.radeon_device, ptr %98, i32 0, i32 6
  %103 = ptrtoint ptr %family.i105 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %family.i105, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %104)
  %cmp.i106 = icmp ugt i32 %104, 17
  br i1 %cmp.i106, label %if.else15.i.cleanup_crit_edge, label %if.end20.i

if.else15.i.cleanup_crit_edge:                    ; preds = %if.else15.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end20.i:                                       ; preds = %if.else15.i
  %call17.i = tail call zeroext i1 @radeon_get_legacy_connector_info_from_table(ptr noundef %96) #10
  br i1 %call17.i, label %if.end20.i.if.then22.i_crit_edge, label %if.end20.i.cleanup_crit_edge

if.end20.i.cleanup_crit_edge:                     ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end20.i.if.then22.i_crit_edge:                 ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then22.i

if.then22.i:                                      ; preds = %if.end20.i.if.then22.i_crit_edge, %if.then10.i.if.then22.i_crit_edge, %if.else.i.if.then22.i_crit_edge, %if.then4.i.if.then22.i_crit_edge, %if.then2.i.if.then22.i_crit_edge
  tail call void @radeon_setup_encoder_clones(ptr noundef %96) #10
  %call.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.56) #16
  %connector_list.i.i = getelementptr inbounds %struct.drm_device, ptr %96, i32 0, i32 30, i32 12
  %105 = ptrtoint ptr %connector_list.i.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %.pn318.i.i = load ptr, ptr %connector_list.i.i, align 4
  %cmp.not319.i.i = icmp eq ptr %.pn318.i.i, %connector_list.i.i
  br i1 %cmp.not319.i.i, label %if.then22.i.if.end49_crit_edge, label %for.body.lr.ph.i.i

if.then22.i.if.end49_crit_edge:                   ; preds = %if.then22.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end49

for.body.lr.ph.i.i:                               ; preds = %if.then22.i
  %encoder_list.i.i = getelementptr inbounds %struct.drm_device, ptr %96, i32 0, i32 30, i32 16
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.end.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %.pn321.i.i = phi ptr [ %.pn318.i.i, %for.body.lr.ph.i.i ], [ %.pn.i.i, %for.end.i.i.for.body.i.i_crit_edge ]
  %i.0320.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc.i.i, %for.end.i.i.for.body.i.i_crit_edge ]
  %call11.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.59, i32 noundef %i.0320.i.i) #16
  %name.i.i = getelementptr i8, ptr %.pn321.i.i, i32 36
  %106 = ptrtoint ptr %name.i.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %name.i.i, align 4
  %call16.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.62, ptr noundef %107) #16
  %hpd.i.i = getelementptr i8, ptr %.pn321.i.i, i32 1056
  %108 = ptrtoint ptr %hpd.i.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %hpd.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %109)
  %cmp18.not.i.i = icmp eq i32 %109, 255
  br i1 %cmp18.not.i.i, label %for.body.i.i.if.end.i.i_crit_edge, label %do.end21.i.i

for.body.i.i.if.end.i.i_crit_edge:                ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i.i

do.end21.i.i:                                     ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx.i.i = getelementptr [6 x ptr], ptr @hpd_names, i32 0, i32 %109
  %110 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %arrayidx.i.i, align 4
  %call25.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.62, ptr noundef %111) #16
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %do.end21.i.i, %for.body.i.i.if.end.i.i_crit_edge
  %ddc_bus.i.i = getelementptr i8, ptr %.pn321.i.i, i32 1032
  %112 = ptrtoint ptr %ddc_bus.i.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %ddc_bus.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %113, null
  br i1 %tobool.not.i.i, label %if.else.i.i, label %do.end29.i.i

do.end29.i.i:                                     ; preds = %if.end.i.i
  %mask_clk_reg.i.i = getelementptr inbounds %struct.radeon_i2c_chan, ptr %113, i32 0, i32 3, i32 5
  %114 = ptrtoint ptr %mask_clk_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %mask_clk_reg.i.i, align 4
  %mask_data_reg.i.i = getelementptr inbounds %struct.radeon_i2c_chan, ptr %113, i32 0, i32 3, i32 6
  %116 = ptrtoint ptr %mask_data_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %mask_data_reg.i.i, align 4
  %a_clk_reg.i.i = getelementptr inbounds %struct.radeon_i2c_chan, ptr %113, i32 0, i32 3, i32 7
  %118 = ptrtoint ptr %a_clk_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %a_clk_reg.i.i, align 4
  %a_data_reg.i.i = getelementptr inbounds %struct.radeon_i2c_chan, ptr %113, i32 0, i32 3, i32 8
  %120 = ptrtoint ptr %a_data_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %a_data_reg.i.i, align 4
  %en_clk_reg.i.i = getelementptr inbounds %struct.radeon_i2c_chan, ptr %113, i32 0, i32 3, i32 9
  %122 = ptrtoint ptr %en_clk_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %en_clk_reg.i.i, align 4
  %en_data_reg.i.i = getelementptr inbounds %struct.radeon_i2c_chan, ptr %113, i32 0, i32 3, i32 10
  %124 = ptrtoint ptr %en_data_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %en_data_reg.i.i, align 4
  %y_clk_reg.i.i = getelementptr inbounds %struct.radeon_i2c_chan, ptr %113, i32 0, i32 3, i32 11
  %126 = ptrtoint ptr %y_clk_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %y_clk_reg.i.i, align 4
  %y_data_reg.i.i = getelementptr inbounds %struct.radeon_i2c_chan, ptr %113, i32 0, i32 3, i32 12
  %128 = ptrtoint ptr %y_data_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %y_data_reg.i.i, align 4
  %call46.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.67, i32 noundef %115, i32 noundef %117, i32 noundef %119, i32 noundef %121, i32 noundef %123, i32 noundef %125, i32 noundef %127, i32 noundef %129) #16
  %ddc_valid.i.i = getelementptr i8, ptr %.pn321.i.i, i32 1161
  %130 = ptrtoint ptr %ddc_valid.i.i to i32
  call void @__asan_load1_noabort(i32 %130)
  %131 = load i8, ptr %ddc_valid.i.i, align 1, !range !311
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %131)
  %tobool47.not.i.i = icmp eq i8 %131, 0
  br i1 %tobool47.not.i.i, label %do.end29.i.i.if.end57.i.i_crit_edge, label %do.end51.i.i

do.end29.i.i.if.end57.i.i_crit_edge:              ; preds = %do.end29.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end57.i.i

do.end51.i.i:                                     ; preds = %do.end29.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %ddc_mux_control_pin.i.i = getelementptr i8, ptr %.pn321.i.i, i32 1163
  %132 = ptrtoint ptr %ddc_mux_control_pin.i.i to i32
  call void @__asan_load1_noabort(i32 %132)
  %133 = load i8, ptr %ddc_mux_control_pin.i.i, align 1
  %conv.i.i = zext i8 %133 to i32
  %ddc_mux_state.i.i = getelementptr i8, ptr %.pn321.i.i, i32 1164
  %134 = ptrtoint ptr %ddc_mux_state.i.i to i32
  call void @__asan_load1_noabort(i32 %134)
  %135 = load i8, ptr %ddc_mux_state.i.i, align 4
  %conv55.i.i = zext i8 %135 to i32
  %call56.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.70, i32 noundef %conv.i.i, i32 noundef %conv55.i.i) #16
  br label %if.end57.i.i

if.end57.i.i:                                     ; preds = %do.end51.i.i, %do.end29.i.i.if.end57.i.i_crit_edge
  %cd_valid.i.i = getelementptr i8, ptr %.pn321.i.i, i32 1165
  %136 = ptrtoint ptr %cd_valid.i.i to i32
  call void @__asan_load1_noabort(i32 %136)
  %137 = load i8, ptr %cd_valid.i.i, align 1, !range !311
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %137)
  %tobool59.not.i.i = icmp eq i8 %137, 0
  br i1 %tobool59.not.i.i, label %if.end57.i.i.do.end102.i.i_crit_edge, label %do.end63.i.i

if.end57.i.i.do.end102.i.i_crit_edge:             ; preds = %if.end57.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end102.i.i

do.end63.i.i:                                     ; preds = %if.end57.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %cd_mux_control_pin.i.i = getelementptr i8, ptr %.pn321.i.i, i32 1167
  %138 = ptrtoint ptr %cd_mux_control_pin.i.i to i32
  call void @__asan_load1_noabort(i32 %138)
  %139 = load i8, ptr %cd_mux_control_pin.i.i, align 1
  %conv66.i.i = zext i8 %139 to i32
  %cd_mux_state.i.i = getelementptr i8, ptr %.pn321.i.i, i32 1168
  %140 = ptrtoint ptr %cd_mux_state.i.i to i32
  call void @__asan_load1_noabort(i32 %140)
  %141 = load i8, ptr %cd_mux_state.i.i, align 8
  %conv68.i.i = zext i8 %141 to i32
  %call69.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.73, i32 noundef %conv66.i.i, i32 noundef %conv68.i.i) #16
  br label %do.end102.i.i

if.else.i.i:                                      ; preds = %if.end.i.i
  %connector_type.i.i = getelementptr i8, ptr %.pn321.i.i, i32 136
  %142 = ptrtoint ptr %connector_type.i.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %connector_type.i.i, align 8
  %144 = zext i32 %143 to i64
  call void @__sanitizer_cov_trace_switch(i64 %144, ptr @__sancov_gen_cov_switch_values.162)
  switch i32 %143, label %if.else.i.i.do.end102.i.i_crit_edge [
    i32 1, label %if.else.i.i.do.end95.i.i_crit_edge
    i32 2, label %if.else.i.i.do.end95.i.i_crit_edge122
    i32 3, label %if.else.i.i.do.end95.i.i_crit_edge123
    i32 4, label %if.else.i.i.do.end95.i.i_crit_edge124
    i32 11, label %if.else.i.i.do.end95.i.i_crit_edge125
    i32 12, label %if.else.i.i.do.end95.i.i_crit_edge126
  ]

if.else.i.i.do.end95.i.i_crit_edge126:            ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end95.i.i

if.else.i.i.do.end95.i.i_crit_edge125:            ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end95.i.i

if.else.i.i.do.end95.i.i_crit_edge124:            ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end95.i.i

if.else.i.i.do.end95.i.i_crit_edge123:            ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end95.i.i

if.else.i.i.do.end95.i.i_crit_edge122:            ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end95.i.i

if.else.i.i.do.end95.i.i_crit_edge:               ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end95.i.i

if.else.i.i.do.end102.i.i_crit_edge:              ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end102.i.i

do.end95.i.i:                                     ; preds = %if.else.i.i.do.end95.i.i_crit_edge, %if.else.i.i.do.end95.i.i_crit_edge122, %if.else.i.i.do.end95.i.i_crit_edge123, %if.else.i.i.do.end95.i.i_crit_edge124, %if.else.i.i.do.end95.i.i_crit_edge125, %if.else.i.i.do.end95.i.i_crit_edge126
  %call97.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.76) #16
  br label %do.end102.i.i

do.end102.i.i:                                    ; preds = %do.end95.i.i, %if.else.i.i.do.end102.i.i_crit_edge, %do.end63.i.i, %if.end57.i.i.do.end102.i.i_crit_edge
  %call104.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.79) #16
  %145 = ptrtoint ptr %encoder_list.i.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %.pn314315.i.i = load ptr, ptr %encoder_list.i.i, align 4
  %cmp114.not316.i.i = icmp eq ptr %.pn314315.i.i, %encoder_list.i.i
  br i1 %cmp114.not316.i.i, label %do.end102.i.i.for.end.i.i_crit_edge, label %for.body117.lr.ph.i.i

do.end102.i.i.for.end.i.i_crit_edge:              ; preds = %do.end102.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i.i

for.body117.lr.ph.i.i:                            ; preds = %do.end102.i.i
  %devices122.i.i = getelementptr i8, ptr %.pn321.i.i, i32 1028
  br label %for.body117.i.i

for.body117.i.i:                                  ; preds = %for.inc.i.i.for.body117.i.i_crit_edge, %for.body117.lr.ph.i.i
  %.pn314317.i.i = phi ptr [ %.pn314315.i.i, %for.body117.lr.ph.i.i ], [ %.pn314.i.i, %for.inc.i.i.for.body117.i.i_crit_edge ]
  %devices121.i.i = getelementptr i8, ptr %.pn314317.i.i, i32 76
  %146 = ptrtoint ptr %devices121.i.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %devices121.i.i, align 4
  %148 = ptrtoint ptr %devices122.i.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %devices122.i.i, align 4
  %and.i.i = and i32 %149, %147
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool123.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool123.not.i.i, label %for.body117.i.i.for.inc.i.i_crit_edge, label %if.then124.i.i

for.body117.i.i.for.inc.i.i_crit_edge:            ; preds = %for.body117.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i.i

if.then124.i.i:                                   ; preds = %for.body117.i.i
  %and125.i.i = and i32 %and.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and125.i.i)
  %tobool126.not.i.i = icmp eq i32 %and125.i.i, 0
  br i1 %tobool126.not.i.i, label %if.then124.i.i.if.end134.i.i_crit_edge, label %do.end130.i.i

if.then124.i.i.if.end134.i.i_crit_edge:           ; preds = %if.then124.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end134.i.i

do.end130.i.i:                                    ; preds = %if.then124.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %encoder_id.i.i = getelementptr i8, ptr %.pn314317.i.i, i32 72
  %150 = ptrtoint ptr %encoder_id.i.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %encoder_id.i.i, align 4
  %arrayidx132.i.i = getelementptr [38 x ptr], ptr @encoder_names, i32 0, i32 %151
  %152 = ptrtoint ptr %arrayidx132.i.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %arrayidx132.i.i, align 4
  %call133.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.82, ptr noundef %153) #16
  br label %if.end134.i.i

if.end134.i.i:                                    ; preds = %do.end130.i.i, %if.then124.i.i.if.end134.i.i_crit_edge
  %and135.i.i = and i32 %and.i.i, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and135.i.i)
  %tobool136.not.i.i = icmp eq i32 %and135.i.i, 0
  br i1 %tobool136.not.i.i, label %if.end134.i.i.if.end145.i.i_crit_edge, label %do.end140.i.i

if.end134.i.i.if.end145.i.i_crit_edge:            ; preds = %if.end134.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end145.i.i

do.end140.i.i:                                    ; preds = %if.end134.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %encoder_id142.i.i = getelementptr i8, ptr %.pn314317.i.i, i32 72
  %154 = ptrtoint ptr %encoder_id142.i.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %encoder_id142.i.i, align 4
  %arrayidx143.i.i = getelementptr [38 x ptr], ptr @encoder_names, i32 0, i32 %155
  %156 = ptrtoint ptr %arrayidx143.i.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %arrayidx143.i.i, align 4
  %call144.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.85, ptr noundef %157) #16
  br label %if.end145.i.i

if.end145.i.i:                                    ; preds = %do.end140.i.i, %if.end134.i.i.if.end145.i.i_crit_edge
  %and146.i.i = and i32 %and.i.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and146.i.i)
  %tobool147.not.i.i = icmp eq i32 %and146.i.i, 0
  br i1 %tobool147.not.i.i, label %if.end145.i.i.if.end156.i.i_crit_edge, label %do.end151.i.i

if.end145.i.i.if.end156.i.i_crit_edge:            ; preds = %if.end145.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end156.i.i

do.end151.i.i:                                    ; preds = %if.end145.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %encoder_id153.i.i = getelementptr i8, ptr %.pn314317.i.i, i32 72
  %158 = ptrtoint ptr %encoder_id153.i.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %encoder_id153.i.i, align 4
  %arrayidx154.i.i = getelementptr [38 x ptr], ptr @encoder_names, i32 0, i32 %159
  %160 = ptrtoint ptr %arrayidx154.i.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %arrayidx154.i.i, align 4
  %call155.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.88, ptr noundef %161) #16
  br label %if.end156.i.i

if.end156.i.i:                                    ; preds = %do.end151.i.i, %if.end145.i.i.if.end156.i.i_crit_edge
  %and157.i.i = and i32 %and.i.i, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and157.i.i)
  %tobool158.not.i.i = icmp eq i32 %and157.i.i, 0
  br i1 %tobool158.not.i.i, label %if.end156.i.i.if.end167.i.i_crit_edge, label %do.end162.i.i

if.end156.i.i.if.end167.i.i_crit_edge:            ; preds = %if.end156.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end167.i.i

do.end162.i.i:                                    ; preds = %if.end156.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %encoder_id164.i.i = getelementptr i8, ptr %.pn314317.i.i, i32 72
  %162 = ptrtoint ptr %encoder_id164.i.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %encoder_id164.i.i, align 4
  %arrayidx165.i.i = getelementptr [38 x ptr], ptr @encoder_names, i32 0, i32 %163
  %164 = ptrtoint ptr %arrayidx165.i.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %arrayidx165.i.i, align 4
  %call166.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.91, ptr noundef %165) #16
  br label %if.end167.i.i

if.end167.i.i:                                    ; preds = %do.end162.i.i, %if.end156.i.i.if.end167.i.i_crit_edge
  %and168.i.i = and i32 %and.i.i, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and168.i.i)
  %tobool169.not.i.i = icmp eq i32 %and168.i.i, 0
  br i1 %tobool169.not.i.i, label %if.end167.i.i.if.end178.i.i_crit_edge, label %do.end173.i.i

if.end167.i.i.if.end178.i.i_crit_edge:            ; preds = %if.end167.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end178.i.i

do.end173.i.i:                                    ; preds = %if.end167.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %encoder_id175.i.i = getelementptr i8, ptr %.pn314317.i.i, i32 72
  %166 = ptrtoint ptr %encoder_id175.i.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load i32, ptr %encoder_id175.i.i, align 4
  %arrayidx176.i.i = getelementptr [38 x ptr], ptr @encoder_names, i32 0, i32 %167
  %168 = ptrtoint ptr %arrayidx176.i.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %arrayidx176.i.i, align 4
  %call177.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.94, ptr noundef %169) #16
  br label %if.end178.i.i

if.end178.i.i:                                    ; preds = %do.end173.i.i, %if.end167.i.i.if.end178.i.i_crit_edge
  %and179.i.i = and i32 %and.i.i, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and179.i.i)
  %tobool180.not.i.i = icmp eq i32 %and179.i.i, 0
  br i1 %tobool180.not.i.i, label %if.end178.i.i.if.end189.i.i_crit_edge, label %do.end184.i.i

if.end178.i.i.if.end189.i.i_crit_edge:            ; preds = %if.end178.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end189.i.i

do.end184.i.i:                                    ; preds = %if.end178.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %encoder_id186.i.i = getelementptr i8, ptr %.pn314317.i.i, i32 72
  %170 = ptrtoint ptr %encoder_id186.i.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load i32, ptr %encoder_id186.i.i, align 4
  %arrayidx187.i.i = getelementptr [38 x ptr], ptr @encoder_names, i32 0, i32 %171
  %172 = ptrtoint ptr %arrayidx187.i.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %arrayidx187.i.i, align 4
  %call188.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.97, ptr noundef %173) #16
  br label %if.end189.i.i

if.end189.i.i:                                    ; preds = %do.end184.i.i, %if.end178.i.i.if.end189.i.i_crit_edge
  %and190.i.i = and i32 %and.i.i, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and190.i.i)
  %tobool191.not.i.i = icmp eq i32 %and190.i.i, 0
  br i1 %tobool191.not.i.i, label %if.end189.i.i.if.end200.i.i_crit_edge, label %do.end195.i.i

if.end189.i.i.if.end200.i.i_crit_edge:            ; preds = %if.end189.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end200.i.i

do.end195.i.i:                                    ; preds = %if.end189.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %encoder_id197.i.i = getelementptr i8, ptr %.pn314317.i.i, i32 72
  %174 = ptrtoint ptr %encoder_id197.i.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load i32, ptr %encoder_id197.i.i, align 4
  %arrayidx198.i.i = getelementptr [38 x ptr], ptr @encoder_names, i32 0, i32 %175
  %176 = ptrtoint ptr %arrayidx198.i.i to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %arrayidx198.i.i, align 4
  %call199.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.100, ptr noundef %177) #16
  br label %if.end200.i.i

if.end200.i.i:                                    ; preds = %do.end195.i.i, %if.end189.i.i.if.end200.i.i_crit_edge
  %and201.i.i = and i32 %and.i.i, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and201.i.i)
  %tobool202.not.i.i = icmp eq i32 %and201.i.i, 0
  br i1 %tobool202.not.i.i, label %if.end200.i.i.if.end211.i.i_crit_edge, label %do.end206.i.i

if.end200.i.i.if.end211.i.i_crit_edge:            ; preds = %if.end200.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end211.i.i

do.end206.i.i:                                    ; preds = %if.end200.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %encoder_id208.i.i = getelementptr i8, ptr %.pn314317.i.i, i32 72
  %178 = ptrtoint ptr %encoder_id208.i.i to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load i32, ptr %encoder_id208.i.i, align 4
  %arrayidx209.i.i = getelementptr [38 x ptr], ptr @encoder_names, i32 0, i32 %179
  %180 = ptrtoint ptr %arrayidx209.i.i to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %arrayidx209.i.i, align 4
  %call210.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.103, ptr noundef %181) #16
  br label %if.end211.i.i

if.end211.i.i:                                    ; preds = %do.end206.i.i, %if.end200.i.i.if.end211.i.i_crit_edge
  %and212.i.i = and i32 %and.i.i, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and212.i.i)
  %tobool213.not.i.i = icmp eq i32 %and212.i.i, 0
  br i1 %tobool213.not.i.i, label %if.end211.i.i.if.end222.i.i_crit_edge, label %do.end217.i.i

if.end211.i.i.if.end222.i.i_crit_edge:            ; preds = %if.end211.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end222.i.i

do.end217.i.i:                                    ; preds = %if.end211.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %encoder_id219.i.i = getelementptr i8, ptr %.pn314317.i.i, i32 72
  %182 = ptrtoint ptr %encoder_id219.i.i to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load i32, ptr %encoder_id219.i.i, align 4
  %arrayidx220.i.i = getelementptr [38 x ptr], ptr @encoder_names, i32 0, i32 %183
  %184 = ptrtoint ptr %arrayidx220.i.i to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %arrayidx220.i.i, align 4
  %call221.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.106, ptr noundef %185) #16
  br label %if.end222.i.i

if.end222.i.i:                                    ; preds = %do.end217.i.i, %if.end211.i.i.if.end222.i.i_crit_edge
  %and223.i.i = and i32 %and.i.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and223.i.i)
  %tobool224.not.i.i = icmp eq i32 %and223.i.i, 0
  br i1 %tobool224.not.i.i, label %if.end222.i.i.if.end233.i.i_crit_edge, label %do.end228.i.i

if.end222.i.i.if.end233.i.i_crit_edge:            ; preds = %if.end222.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end233.i.i

do.end228.i.i:                                    ; preds = %if.end222.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %encoder_id230.i.i = getelementptr i8, ptr %.pn314317.i.i, i32 72
  %186 = ptrtoint ptr %encoder_id230.i.i to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load i32, ptr %encoder_id230.i.i, align 4
  %arrayidx231.i.i = getelementptr [38 x ptr], ptr @encoder_names, i32 0, i32 %187
  %188 = ptrtoint ptr %arrayidx231.i.i to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %arrayidx231.i.i, align 4
  %call232.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.109, ptr noundef %189) #16
  br label %if.end233.i.i

if.end233.i.i:                                    ; preds = %do.end228.i.i, %if.end222.i.i.if.end233.i.i_crit_edge
  %and234.i.i = and i32 %and.i.i, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and234.i.i)
  %tobool235.not.i.i = icmp eq i32 %and234.i.i, 0
  br i1 %tobool235.not.i.i, label %if.end233.i.i.for.inc.i.i_crit_edge, label %do.end239.i.i

if.end233.i.i.for.inc.i.i_crit_edge:              ; preds = %if.end233.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i.i

do.end239.i.i:                                    ; preds = %if.end233.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %encoder_id241.i.i = getelementptr i8, ptr %.pn314317.i.i, i32 72
  %190 = ptrtoint ptr %encoder_id241.i.i to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load i32, ptr %encoder_id241.i.i, align 4
  %arrayidx242.i.i = getelementptr [38 x ptr], ptr @encoder_names, i32 0, i32 %191
  %192 = ptrtoint ptr %arrayidx242.i.i to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %arrayidx242.i.i, align 4
  %call243.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.112, ptr noundef %193) #16
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %do.end239.i.i, %if.end233.i.i.for.inc.i.i_crit_edge, %for.body117.i.i.for.inc.i.i_crit_edge
  %194 = ptrtoint ptr %.pn314317.i.i to i32
  call void @__asan_load4_noabort(i32 %194)
  %.pn314.i.i = load ptr, ptr %.pn314317.i.i, align 4
  %cmp114.not.i.i = icmp eq ptr %.pn314.i.i, %encoder_list.i.i
  br i1 %cmp114.not.i.i, label %for.inc.i.i.for.end.i.i_crit_edge, label %for.inc.i.i.for.body117.i.i_crit_edge

for.inc.i.i.for.body117.i.i_crit_edge:            ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body117.i.i

for.inc.i.i.for.end.i.i_crit_edge:                ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i.i

for.end.i.i:                                      ; preds = %for.inc.i.i.for.end.i.i_crit_edge, %do.end102.i.i.for.end.i.i_crit_edge
  %inc.i.i = add i32 %i.0320.i.i, 1
  %195 = ptrtoint ptr %.pn321.i.i to i32
  call void @__asan_load4_noabort(i32 %195)
  %.pn.i.i = load ptr, ptr %.pn321.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %.pn.i.i, %connector_list.i.i
  br i1 %cmp.not.i.i, label %for.end.i.i.if.end49_crit_edge, label %for.end.i.i.for.body.i.i_crit_edge

for.end.i.i.for.body.i.i_crit_edge:               ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i

for.end.i.i.if.end49_crit_edge:                   ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end49

if.end49:                                         ; preds = %for.end.i.i.if.end49_crit_edge, %if.then22.i.if.end49_crit_edge
  %196 = ptrtoint ptr %is_atom_bios.i to i32
  call void @__asan_load1_noabort(i32 %196)
  %197 = load i8, ptr %is_atom_bios.i, align 4, !range !311
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %197)
  %tobool51.not = icmp eq i8 %197, 0
  br i1 %tobool51.not, label %if.end49.if.end53_crit_edge, label %if.then52

if.end49.if.end53_crit_edge:                      ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end53

if.then52:                                        ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @radeon_atom_encoder_init(ptr noundef %rdev) #10
  tail call void @radeon_atom_disp_eng_pll_init(ptr noundef %rdev) #10
  br label %if.end53

if.end53:                                         ; preds = %if.then52, %if.end49.if.end53_crit_edge
  %asic = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 56
  %198 = ptrtoint ptr %asic to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %asic, align 8
  %hpd = getelementptr inbounds %struct.radeon_asic, ptr %199, i32 0, i32 19
  %200 = ptrtoint ptr %hpd to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load ptr, ptr %hpd, align 4
  tail call void %201(ptr noundef %rdev) #10
  %uglygep.i = getelementptr i8, ptr %rdev, i32 1636
  %202 = call ptr @memset(ptr %uglygep.i, i32 0, i32 28)
  %203 = ptrtoint ptr %family5 to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load i32, ptr %family5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 56, i32 %204)
  %cmp1.i = icmp eq i32 %204, 56
  br i1 %cmp1.i, label %if.end53.radeon_afmt_init.exit_crit_edge, label %if.else.i108

if.end53.radeon_afmt_init.exit_crit_edge:         ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #12
  br label %radeon_afmt_init.exit

if.else.i108:                                     ; preds = %if.end53
  call void @__sanitizer_cov_trace_const_cmp4(i32 38, i32 %204)
  %cmp3.i = icmp ugt i32 %204, 38
  br i1 %cmp3.i, label %if.then4.i109, label %if.else57.i

if.then4.i109:                                    ; preds = %if.else.i108
  call void @__sanitizer_cov_trace_const_cmp4(i32 56, i32 %204)
  %cmp6.i = icmp ugt i32 %204, 56
  br i1 %cmp6.i, label %if.then4.i109.for.body37.i_crit_edge, label %if.else8.i

if.then4.i109.for.body37.i_crit_edge:             ; preds = %if.then4.i109
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body37.i

if.else8.i:                                       ; preds = %if.then4.i109
  call void @__sanitizer_cov_trace_const_cmp4(i32 46, i32 %204)
  %cmp14.i110 = icmp ugt i32 %204, 46
  br i1 %cmp14.i110, label %if.else8.i.for.body37.i_crit_edge, label %if.else16.i

if.else8.i.for.body37.i_crit_edge:                ; preds = %if.else8.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body37.i

if.else16.i:                                      ; preds = %if.else8.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 43, i32 %204)
  %cmp18.i = icmp ugt i32 %204, 43
  br i1 %cmp18.i, label %land.lhs.true.i112, label %if.else16.i.if.else20.i_crit_edge

if.else16.i.if.else20.i_crit_edge:                ; preds = %if.else16.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else20.i

land.lhs.true.i112:                               ; preds = %if.else16.i
  %flags.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 7
  %205 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load i32, ptr %flags.i, align 8
  %and.i = and i32 %206, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i111 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i111, label %land.lhs.true.i112.if.else20.i_crit_edge, label %land.lhs.true.i112.for.body37.i_crit_edge

land.lhs.true.i112.for.body37.i_crit_edge:        ; preds = %land.lhs.true.i112
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body37.i

land.lhs.true.i112.if.else20.i_crit_edge:         ; preds = %land.lhs.true.i112
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else20.i

if.else20.i:                                      ; preds = %land.lhs.true.i112.if.else20.i_crit_edge, %if.else16.i.if.else20.i_crit_edge
  br label %for.body37.i

for.body37.i:                                     ; preds = %if.else20.i, %land.lhs.true.i112.for.body37.i_crit_edge, %if.else8.i.for.body37.i_crit_edge, %if.then4.i109.for.body37.i_crit_edge
  %exitcond.not.i.1 = phi i1 [ false, %if.else20.i ], [ true, %land.lhs.true.i112.for.body37.i_crit_edge ], [ false, %if.else8.i.for.body37.i_crit_edge ], [ false, %if.then4.i109.for.body37.i_crit_edge ]
  %exitcond.not.i.5 = phi i1 [ true, %if.else20.i ], [ false, %land.lhs.true.i112.for.body37.i_crit_edge ], [ true, %if.else8.i.for.body37.i_crit_edge ], [ false, %if.then4.i109.for.body37.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %207 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i113 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %207, i32 noundef 3520, i32 noundef 16) #15
  %arrayidx40.i = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 44, i32 5, i32 0
  %208 = ptrtoint ptr %arrayidx40.i to i32
  call void @__asan_store4_noabort(i32 %208)
  store ptr %call7.i.i.i113, ptr %arrayidx40.i, align 4
  %tobool44.not.i = icmp eq ptr %call7.i.i.i113, null
  br i1 %tobool44.not.i, label %for.body37.i.for.body37.i.1_crit_edge, label %if.then45.i

for.body37.i.for.body37.i.1_crit_edge:            ; preds = %for.body37.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body37.i.1

if.then45.i:                                      ; preds = %for.body37.i
  call void @__sanitizer_cov_trace_pc() #12
  %offset.i = getelementptr inbounds %struct.radeon_afmt, ptr %call7.i.i.i113, i32 0, i32 1
  %209 = ptrtoint ptr %offset.i to i32
  call void @__asan_store4_noabort(i32 %209)
  store i32 0, ptr %offset.i, align 4
  %id.i = getelementptr inbounds %struct.radeon_afmt, ptr %call7.i.i.i113, i32 0, i32 3
  %210 = ptrtoint ptr %id.i to i32
  call void @__asan_store4_noabort(i32 %210)
  store i32 0, ptr %id.i, align 4
  br label %for.body37.i.1

for.body37.i.1:                                   ; preds = %if.then45.i, %for.body37.i.for.body37.i.1_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %211 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i113.1 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %211, i32 noundef 3520, i32 noundef 16) #15
  %arrayidx40.i.1 = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 44, i32 5, i32 1
  %212 = ptrtoint ptr %arrayidx40.i.1 to i32
  call void @__asan_store4_noabort(i32 %212)
  store ptr %call7.i.i.i113.1, ptr %arrayidx40.i.1, align 4
  %tobool44.not.i.1 = icmp eq ptr %call7.i.i.i113.1, null
  br i1 %tobool44.not.i.1, label %for.body37.i.1.for.inc54.i.1_crit_edge, label %if.then45.i.1

for.body37.i.1.for.inc54.i.1_crit_edge:           ; preds = %for.body37.i.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc54.i.1

if.then45.i.1:                                    ; preds = %for.body37.i.1
  call void @__sanitizer_cov_trace_pc() #12
  %offset.i.1 = getelementptr inbounds %struct.radeon_afmt, ptr %call7.i.i.i113.1, i32 0, i32 1
  %213 = ptrtoint ptr %offset.i.1 to i32
  call void @__asan_store4_noabort(i32 %213)
  store i32 3072, ptr %offset.i.1, align 4
  %id.i.1 = getelementptr inbounds %struct.radeon_afmt, ptr %call7.i.i.i113.1, i32 0, i32 3
  %214 = ptrtoint ptr %id.i.1 to i32
  call void @__asan_store4_noabort(i32 %214)
  store i32 1, ptr %id.i.1, align 4
  br label %for.inc54.i.1

for.inc54.i.1:                                    ; preds = %if.then45.i.1, %for.body37.i.1.for.inc54.i.1_crit_edge
  br i1 %exitcond.not.i.1, label %for.inc54.i.1.radeon_afmt_init.exit_crit_edge, label %for.body37.i.2

for.inc54.i.1.radeon_afmt_init.exit_crit_edge:    ; preds = %for.inc54.i.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %radeon_afmt_init.exit

for.body37.i.2:                                   ; preds = %for.inc54.i.1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %215 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i113.2 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %215, i32 noundef 3520, i32 noundef 16) #15
  %arrayidx40.i.2 = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 44, i32 5, i32 2
  %216 = ptrtoint ptr %arrayidx40.i.2 to i32
  call void @__asan_store4_noabort(i32 %216)
  store ptr %call7.i.i.i113.2, ptr %arrayidx40.i.2, align 4
  %tobool44.not.i.2 = icmp eq ptr %call7.i.i.i113.2, null
  br i1 %tobool44.not.i.2, label %for.body37.i.2.for.body37.i.3_crit_edge, label %if.then45.i.2

for.body37.i.2.for.body37.i.3_crit_edge:          ; preds = %for.body37.i.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body37.i.3

if.then45.i.2:                                    ; preds = %for.body37.i.2
  call void @__sanitizer_cov_trace_pc() #12
  %offset.i.2 = getelementptr inbounds %struct.radeon_afmt, ptr %call7.i.i.i113.2, i32 0, i32 1
  %217 = ptrtoint ptr %offset.i.2 to i32
  call void @__asan_store4_noabort(i32 %217)
  store i32 38912, ptr %offset.i.2, align 4
  %id.i.2 = getelementptr inbounds %struct.radeon_afmt, ptr %call7.i.i.i113.2, i32 0, i32 3
  %218 = ptrtoint ptr %id.i.2 to i32
  call void @__asan_store4_noabort(i32 %218)
  store i32 2, ptr %id.i.2, align 4
  br label %for.body37.i.3

for.body37.i.3:                                   ; preds = %if.then45.i.2, %for.body37.i.2.for.body37.i.3_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %219 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i113.3 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %219, i32 noundef 3520, i32 noundef 16) #15
  %arrayidx40.i.3 = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 44, i32 5, i32 3
  %220 = ptrtoint ptr %arrayidx40.i.3 to i32
  call void @__asan_store4_noabort(i32 %220)
  store ptr %call7.i.i.i113.3, ptr %arrayidx40.i.3, align 4
  %tobool44.not.i.3 = icmp eq ptr %call7.i.i.i113.3, null
  br i1 %tobool44.not.i.3, label %for.body37.i.3.for.body37.i.4_crit_edge, label %if.then45.i.3

for.body37.i.3.for.body37.i.4_crit_edge:          ; preds = %for.body37.i.3
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body37.i.4

if.then45.i.3:                                    ; preds = %for.body37.i.3
  call void @__sanitizer_cov_trace_pc() #12
  %offset.i.3 = getelementptr inbounds %struct.radeon_afmt, ptr %call7.i.i.i113.3, i32 0, i32 1
  %221 = ptrtoint ptr %offset.i.3 to i32
  call void @__asan_store4_noabort(i32 %221)
  store i32 41984, ptr %offset.i.3, align 4
  %id.i.3 = getelementptr inbounds %struct.radeon_afmt, ptr %call7.i.i.i113.3, i32 0, i32 3
  %222 = ptrtoint ptr %id.i.3 to i32
  call void @__asan_store4_noabort(i32 %222)
  store i32 3, ptr %id.i.3, align 4
  br label %for.body37.i.4

for.body37.i.4:                                   ; preds = %if.then45.i.3, %for.body37.i.3.for.body37.i.4_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %223 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i113.4 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %223, i32 noundef 3520, i32 noundef 16) #15
  %arrayidx40.i.4 = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 44, i32 5, i32 4
  %224 = ptrtoint ptr %arrayidx40.i.4 to i32
  call void @__asan_store4_noabort(i32 %224)
  store ptr %call7.i.i.i113.4, ptr %arrayidx40.i.4, align 4
  %tobool44.not.i.4 = icmp eq ptr %call7.i.i.i113.4, null
  br i1 %tobool44.not.i.4, label %for.body37.i.4.for.body37.i.5_crit_edge, label %if.then45.i.4

for.body37.i.4.for.body37.i.5_crit_edge:          ; preds = %for.body37.i.4
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body37.i.5

if.then45.i.4:                                    ; preds = %for.body37.i.4
  call void @__sanitizer_cov_trace_pc() #12
  %offset.i.4 = getelementptr inbounds %struct.radeon_afmt, ptr %call7.i.i.i113.4, i32 0, i32 1
  %225 = ptrtoint ptr %offset.i.4 to i32
  call void @__asan_store4_noabort(i32 %225)
  store i32 45056, ptr %offset.i.4, align 4
  %id.i.4 = getelementptr inbounds %struct.radeon_afmt, ptr %call7.i.i.i113.4, i32 0, i32 3
  %226 = ptrtoint ptr %id.i.4 to i32
  call void @__asan_store4_noabort(i32 %226)
  store i32 4, ptr %id.i.4, align 4
  br label %for.body37.i.5

for.body37.i.5:                                   ; preds = %if.then45.i.4, %for.body37.i.4.for.body37.i.5_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %227 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i113.5 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %227, i32 noundef 3520, i32 noundef 16) #15
  %arrayidx40.i.5 = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 44, i32 5, i32 5
  %228 = ptrtoint ptr %arrayidx40.i.5 to i32
  call void @__asan_store4_noabort(i32 %228)
  store ptr %call7.i.i.i113.5, ptr %arrayidx40.i.5, align 4
  %tobool44.not.i.5 = icmp eq ptr %call7.i.i.i113.5, null
  br i1 %tobool44.not.i.5, label %for.body37.i.5.for.inc54.i.5_crit_edge, label %if.then45.i.5

for.body37.i.5.for.inc54.i.5_crit_edge:           ; preds = %for.body37.i.5
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc54.i.5

if.then45.i.5:                                    ; preds = %for.body37.i.5
  call void @__sanitizer_cov_trace_pc() #12
  %offset.i.5 = getelementptr inbounds %struct.radeon_afmt, ptr %call7.i.i.i113.5, i32 0, i32 1
  %229 = ptrtoint ptr %offset.i.5 to i32
  call void @__asan_store4_noabort(i32 %229)
  store i32 48128, ptr %offset.i.5, align 4
  %id.i.5 = getelementptr inbounds %struct.radeon_afmt, ptr %call7.i.i.i113.5, i32 0, i32 3
  %230 = ptrtoint ptr %id.i.5 to i32
  call void @__asan_store4_noabort(i32 %230)
  store i32 5, ptr %id.i.5, align 4
  br label %for.inc54.i.5

for.inc54.i.5:                                    ; preds = %if.then45.i.5, %for.body37.i.5.for.inc54.i.5_crit_edge
  br i1 %exitcond.not.i.5, label %for.inc54.i.5.radeon_afmt_init.exit_crit_edge, label %for.body37.i.6

for.inc54.i.5.radeon_afmt_init.exit_crit_edge:    ; preds = %for.inc54.i.5
  call void @__sanitizer_cov_trace_pc() #12
  br label %radeon_afmt_init.exit

for.body37.i.6:                                   ; preds = %for.inc54.i.5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %231 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i113.6 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %231, i32 noundef 3520, i32 noundef 16) #15
  %arrayidx40.i.6 = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 44, i32 5, i32 6
  %232 = ptrtoint ptr %arrayidx40.i.6 to i32
  call void @__asan_store4_noabort(i32 %232)
  store ptr %call7.i.i.i113.6, ptr %arrayidx40.i.6, align 4
  %tobool44.not.i.6 = icmp eq ptr %call7.i.i.i113.6, null
  br i1 %tobool44.not.i.6, label %for.body37.i.6.radeon_afmt_init.exit_crit_edge, label %if.then45.i.6

for.body37.i.6.radeon_afmt_init.exit_crit_edge:   ; preds = %for.body37.i.6
  call void @__sanitizer_cov_trace_pc() #12
  br label %radeon_afmt_init.exit

if.then45.i.6:                                    ; preds = %for.body37.i.6
  call void @__sanitizer_cov_trace_pc() #12
  %offset.i.6 = getelementptr inbounds %struct.radeon_afmt, ptr %call7.i.i.i113.6, i32 0, i32 1
  %233 = ptrtoint ptr %offset.i.6 to i32
  call void @__asan_store4_noabort(i32 %233)
  store i32 51200, ptr %offset.i.6, align 4
  %id.i.6 = getelementptr inbounds %struct.radeon_afmt, ptr %call7.i.i.i113.6, i32 0, i32 3
  %234 = ptrtoint ptr %id.i.6 to i32
  call void @__asan_store4_noabort(i32 %234)
  store i32 6, ptr %id.i.6, align 4
  br label %radeon_afmt_init.exit

if.else57.i:                                      ; preds = %if.else.i108
  call void @__sanitizer_cov_trace_const_cmp4(i32 30, i32 %204)
  %cmp59.i = icmp ugt i32 %204, 30
  br i1 %cmp59.i, label %if.then60.i, label %if.else97.i

if.then60.i:                                      ; preds = %if.else57.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %235 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i198.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %235, i32 noundef 3520, i32 noundef 16) #15
  %236 = ptrtoint ptr %uglygep.i to i32
  call void @__asan_store4_noabort(i32 %236)
  store ptr %call7.i.i198.i, ptr %uglygep.i, align 4
  %tobool68.not.i = icmp eq ptr %call7.i.i198.i, null
  br i1 %tobool68.not.i, label %if.then60.i.if.end78.i_crit_edge, label %if.then69.i

if.then60.i.if.end78.i_crit_edge:                 ; preds = %if.then60.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end78.i

if.then69.i:                                      ; preds = %if.then60.i
  call void @__sanitizer_cov_trace_pc() #12
  %offset73.i = getelementptr inbounds %struct.radeon_afmt, ptr %call7.i.i198.i, i32 0, i32 1
  %237 = ptrtoint ptr %offset73.i to i32
  call void @__asan_store4_noabort(i32 %237)
  store i32 0, ptr %offset73.i, align 4
  %id77.i = getelementptr inbounds %struct.radeon_afmt, ptr %call7.i.i198.i, i32 0, i32 3
  %238 = ptrtoint ptr %id77.i to i32
  call void @__asan_store4_noabort(i32 %238)
  store i32 0, ptr %id77.i, align 4
  br label %if.end78.i

if.end78.i:                                       ; preds = %if.then69.i, %if.then60.i.if.end78.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %239 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i199.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %239, i32 noundef 3520, i32 noundef 16) #15
  %arrayidx82.i = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 44, i32 5, i32 1
  %240 = ptrtoint ptr %arrayidx82.i to i32
  call void @__asan_store4_noabort(i32 %240)
  store ptr %call7.i.i199.i, ptr %arrayidx82.i, align 4
  %tobool86.not.i = icmp eq ptr %call7.i.i199.i, null
  br i1 %tobool86.not.i, label %if.end78.i.radeon_afmt_init.exit_crit_edge, label %if.end78.i.if.end152.sink.split.i_crit_edge

if.end78.i.if.end152.sink.split.i_crit_edge:      ; preds = %if.end78.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end152.sink.split.i

if.end78.i.radeon_afmt_init.exit_crit_edge:       ; preds = %if.end78.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %radeon_afmt_init.exit

if.else97.i:                                      ; preds = %if.else57.i
  %.off.i = add nsw i32 %204, -18
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.off.i)
  %switch.i = icmp ult i32 %.off.i, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 26, i32 %204)
  %cmp107.i = icmp ugt i32 %204, 26
  %or.cond197.i = or i1 %cmp107.i, %switch.i
  br i1 %or.cond197.i, label %if.then108.i, label %if.else97.i.radeon_afmt_init.exit_crit_edge

if.else97.i.radeon_afmt_init.exit_crit_edge:      ; preds = %if.else97.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %radeon_afmt_init.exit

if.then108.i:                                     ; preds = %if.else97.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %241 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i200.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %241, i32 noundef 3520, i32 noundef 16) #15
  %242 = ptrtoint ptr %uglygep.i to i32
  call void @__asan_store4_noabort(i32 %242)
  store ptr %call7.i.i200.i, ptr %uglygep.i, align 4
  %tobool116.not.i = icmp eq ptr %call7.i.i200.i, null
  br i1 %tobool116.not.i, label %if.then108.i.if.end126.i_crit_edge, label %if.then117.i

if.then108.i.if.end126.i_crit_edge:               ; preds = %if.then108.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end126.i

if.then117.i:                                     ; preds = %if.then108.i
  call void @__sanitizer_cov_trace_pc() #12
  %offset121.i = getelementptr inbounds %struct.radeon_afmt, ptr %call7.i.i200.i, i32 0, i32 1
  %243 = ptrtoint ptr %offset121.i to i32
  call void @__asan_store4_noabort(i32 %243)
  store i32 0, ptr %offset121.i, align 4
  %id125.i = getelementptr inbounds %struct.radeon_afmt, ptr %call7.i.i200.i, i32 0, i32 3
  %244 = ptrtoint ptr %id125.i to i32
  call void @__asan_store4_noabort(i32 %244)
  store i32 0, ptr %id125.i, align 4
  br label %if.end126.i

if.end126.i:                                      ; preds = %if.then117.i, %if.then108.i.if.end126.i_crit_edge
  %245 = ptrtoint ptr %family5 to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load i32, ptr %family5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 26, i32 %246)
  %cmp128.i = icmp ugt i32 %246, 26
  br i1 %cmp128.i, label %if.then129.i, label %if.end126.i.radeon_afmt_init.exit_crit_edge

if.end126.i.radeon_afmt_init.exit_crit_edge:      ; preds = %if.end126.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %radeon_afmt_init.exit

if.then129.i:                                     ; preds = %if.end126.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %247 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i201.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %247, i32 noundef 3520, i32 noundef 16) #15
  %arrayidx133.i = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 44, i32 5, i32 1
  %248 = ptrtoint ptr %arrayidx133.i to i32
  call void @__asan_store4_noabort(i32 %248)
  store ptr %call7.i.i201.i, ptr %arrayidx133.i, align 4
  %tobool137.not.i = icmp eq ptr %call7.i.i201.i, null
  br i1 %tobool137.not.i, label %if.then129.i.radeon_afmt_init.exit_crit_edge, label %if.then129.i.if.end152.sink.split.i_crit_edge

if.then129.i.if.end152.sink.split.i_crit_edge:    ; preds = %if.then129.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end152.sink.split.i

if.then129.i.radeon_afmt_init.exit_crit_edge:     ; preds = %if.then129.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %radeon_afmt_init.exit

if.end152.sink.split.i:                           ; preds = %if.then129.i.if.end152.sink.split.i_crit_edge, %if.end78.i.if.end152.sink.split.i_crit_edge
  %call7.i.i201.sink205.i = phi ptr [ %call7.i.i199.i, %if.end78.i.if.end152.sink.split.i_crit_edge ], [ %call7.i.i201.i, %if.then129.i.if.end152.sink.split.i_crit_edge ]
  %.sink.i = phi i32 [ 1024, %if.end78.i.if.end152.sink.split.i_crit_edge ], [ 768, %if.then129.i.if.end152.sink.split.i_crit_edge ]
  %offset142.i = getelementptr inbounds %struct.radeon_afmt, ptr %call7.i.i201.sink205.i, i32 0, i32 1
  %249 = ptrtoint ptr %offset142.i to i32
  call void @__asan_store4_noabort(i32 %249)
  store i32 %.sink.i, ptr %offset142.i, align 4
  %id146.i = getelementptr inbounds %struct.radeon_afmt, ptr %call7.i.i201.sink205.i, i32 0, i32 3
  %250 = ptrtoint ptr %id146.i to i32
  call void @__asan_store4_noabort(i32 %250)
  store i32 1, ptr %id146.i, align 4
  br label %radeon_afmt_init.exit

radeon_afmt_init.exit:                            ; preds = %if.end152.sink.split.i, %if.then129.i.radeon_afmt_init.exit_crit_edge, %if.end126.i.radeon_afmt_init.exit_crit_edge, %if.else97.i.radeon_afmt_init.exit_crit_edge, %if.end78.i.radeon_afmt_init.exit_crit_edge, %if.then45.i.6, %for.body37.i.6.radeon_afmt_init.exit_crit_edge, %for.inc54.i.5.radeon_afmt_init.exit_crit_edge, %for.inc54.i.1.radeon_afmt_init.exit_crit_edge, %if.end53.radeon_afmt_init.exit_crit_edge
  %call54 = tail call i32 @radeon_fbdev_init(ptr noundef %rdev) #10
  %251 = ptrtoint ptr %ddev to i32
  call void @__asan_load4_noabort(i32 %251)
  %252 = load ptr, ptr %ddev, align 4
  tail call void @drm_kms_helper_poll_init(ptr noundef %252) #10
  %call56 = tail call i32 @radeon_pm_late_init(ptr noundef %rdev) #10
  br label %cleanup

cleanup:                                          ; preds = %radeon_afmt_init.exit, %if.end20.i.cleanup_crit_edge, %if.else15.i.cleanup_crit_edge, %if.then10.i.cleanup_crit_edge, %if.then4.i.cleanup_crit_edge, %if.end34.i.cleanup_crit_edge, %if.end18.i.cleanup_crit_edge, %if.end10.i.cleanup_crit_edge, %if.then.i.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %radeon_afmt_init.exit ], [ -12, %if.then.i.cleanup_crit_edge ], [ -12, %if.end10.i.cleanup_crit_edge ], [ -12, %if.end18.i.cleanup_crit_edge ], [ -12, %if.end34.i.cleanup_crit_edge ], [ 0, %if.end20.i.cleanup_crit_edge ], [ 0, %if.then4.i.cleanup_crit_edge ], [ 0, %if.then10.i.cleanup_crit_edge ], [ 0, %if.else15.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @radeon_i2c_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @radeon_combios_check_hardcoded_edid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @radeon_atom_encoder_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @radeon_atom_disp_eng_pll_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @radeon_fbdev_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_kms_helper_poll_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @radeon_pm_late_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @radeon_modeset_fini(ptr noundef %rdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %mode_config_initialized = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 44, i32 3
  %0 = ptrtoint ptr %mode_config_initialized to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %mode_config_initialized, align 4, !range !311
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %ddev = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 1
  %2 = ptrtoint ptr %ddev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ddev, align 4
  tail call void @drm_kms_helper_poll_fini(ptr noundef %3) #10
  %asic = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 56
  %4 = ptrtoint ptr %asic to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %asic, align 8
  %fini = getelementptr inbounds %struct.radeon_asic, ptr %5, i32 0, i32 19, i32 1
  %6 = ptrtoint ptr %fini to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %fini, align 4
  tail call void %7(ptr noundef %rdev) #10
  %8 = ptrtoint ptr %ddev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ddev, align 4
  %call = tail call i32 @drm_helper_force_disable_all(ptr noundef %9) #10
  tail call void @radeon_fbdev_fini(ptr noundef %rdev) #10
  %arrayidx.i = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 44, i32 5, i32 0
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx.i, align 4
  tail call void @kfree(ptr noundef %11) #10
  %12 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %arrayidx.i, align 4
  %arrayidx.1.i = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 44, i32 5, i32 1
  %13 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx.1.i, align 4
  tail call void @kfree(ptr noundef %14) #10
  %15 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %arrayidx.1.i, align 4
  %arrayidx.2.i = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 44, i32 5, i32 2
  %16 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx.2.i, align 4
  tail call void @kfree(ptr noundef %17) #10
  %18 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %arrayidx.2.i, align 4
  %arrayidx.3.i = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 44, i32 5, i32 3
  %19 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx.3.i, align 4
  tail call void @kfree(ptr noundef %20) #10
  %21 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr null, ptr %arrayidx.3.i, align 4
  %arrayidx.4.i = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 44, i32 5, i32 4
  %22 = ptrtoint ptr %arrayidx.4.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx.4.i, align 4
  tail call void @kfree(ptr noundef %23) #10
  %24 = ptrtoint ptr %arrayidx.4.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr null, ptr %arrayidx.4.i, align 4
  %arrayidx.5.i = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 44, i32 5, i32 5
  %25 = ptrtoint ptr %arrayidx.5.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %arrayidx.5.i, align 4
  tail call void @kfree(ptr noundef %26) #10
  %27 = ptrtoint ptr %arrayidx.5.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr null, ptr %arrayidx.5.i, align 4
  %arrayidx.6.i = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 44, i32 5, i32 6
  %28 = ptrtoint ptr %arrayidx.6.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %arrayidx.6.i, align 4
  tail call void @kfree(ptr noundef %29) #10
  %30 = ptrtoint ptr %arrayidx.6.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr null, ptr %arrayidx.6.i, align 4
  %31 = ptrtoint ptr %ddev to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %ddev, align 4
  tail call void @drm_mode_config_cleanup(ptr noundef %32) #10
  %33 = ptrtoint ptr %mode_config_initialized to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 0, ptr %mode_config_initialized, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %bios_hardcoded_edid = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 44, i32 16
  %34 = ptrtoint ptr %bios_hardcoded_edid to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %bios_hardcoded_edid, align 4
  tail call void @kfree(ptr noundef %35) #10
  tail call void @radeon_i2c_fini(ptr noundef %rdev) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_kms_helper_poll_fini(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_helper_force_disable_all(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @radeon_fbdev_fini(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_mode_config_cleanup(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @radeon_i2c_fini(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @radeon_crtc_scaling_mode_fixup(ptr noundef %crtc, ptr nocapture noundef readonly %mode, ptr nocapture noundef readnone %adjusted_mode) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %crtc, align 8
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_private, align 4
  %h_border = getelementptr inbounds %struct.radeon_crtc, ptr %crtc, i32 0, i32 18
  %4 = ptrtoint ptr %h_border to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %h_border, align 8
  %v_border = getelementptr inbounds %struct.radeon_crtc, ptr %crtc, i32 0, i32 19
  %5 = ptrtoint ptr %v_border to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %v_border, align 1
  %encoder_list = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 30, i32 16
  %6 = ptrtoint ptr %encoder_list to i32
  call void @__asan_load4_noabort(i32 %6)
  %.pn342 = load ptr, ptr %encoder_list, align 4
  %cmp.not344 = icmp eq ptr %.pn342, %encoder_list
  br i1 %cmp.not344, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %rmx_type112 = getelementptr inbounds %struct.radeon_crtc, ptr %crtc, i32 0, i32 17
  %hdisplay = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 1
  %vdisplay = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 6
  %native_mode33 = getelementptr inbounds %struct.radeon_crtc, ptr %crtc, i32 0, i32 22
  %vdisplay36 = getelementptr inbounds %struct.drm_crtc, ptr %crtc, i32 0, i32 12, i32 6
  %vdisplay39 = getelementptr inbounds %struct.radeon_crtc, ptr %crtc, i32 0, i32 22, i32 6
  %hdisplay42 = getelementptr inbounds %struct.drm_crtc, ptr %crtc, i32 0, i32 12, i32 1
  %hdisplay45 = getelementptr inbounds %struct.radeon_crtc, ptr %crtc, i32 0, i32 22, i32 1
  %family = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 6
  %flags = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 11
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %.pn350 = phi ptr [ %.pn342, %for.body.lr.ph ], [ %.pn, %for.inc.for.body_crit_edge ]
  %first.0.off0349 = phi i1 [ true, %for.body.lr.ph ], [ %first.1.off0, %for.inc.for.body_crit_edge ]
  %dst_h.0348 = phi i32 [ 1, %for.body.lr.ph ], [ %dst_h.2, %for.inc.for.body_crit_edge ]
  %src_h.0347 = phi i32 [ 1, %for.body.lr.ph ], [ %src_h.2, %for.inc.for.body_crit_edge ]
  %dst_v.0346 = phi i32 [ 1, %for.body.lr.ph ], [ %dst_v.2, %for.inc.for.body_crit_edge ]
  %src_v.0345 = phi i32 [ 1, %for.body.lr.ph ], [ %src_v.2, %for.inc.for.body_crit_edge ]
  %crtc7 = getelementptr i8, ptr %.pn350, i32 48
  %7 = ptrtoint ptr %crtc7 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %crtc7, align 4
  %cmp8.not = icmp eq ptr %8, %crtc
  br i1 %cmp8.not, label %if.end, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.end:                                           ; preds = %for.body
  %encoder.0351 = getelementptr i8, ptr %.pn350, i32 -4
  %call = tail call ptr @radeon_get_connector_for_encoder(ptr noundef %encoder.0351) #10
  br i1 %first.0.off0349, label %if.then12, label %if.else111

if.then12:                                        ; preds = %if.end
  %rmx_type = getelementptr i8, ptr %.pn350, i32 92
  %9 = ptrtoint ptr %rmx_type to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %rmx_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp13 = icmp eq i32 %10, 0
  br i1 %cmp13, label %if.then12.if.end32_crit_edge, label %if.else

if.then12.if.end32_crit_edge:                     ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end32

if.else:                                          ; preds = %if.then12
  %11 = ptrtoint ptr %hdisplay to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %hdisplay, align 4
  %hdisplay16 = getelementptr i8, ptr %.pn350, i32 112
  %13 = ptrtoint ptr %hdisplay16 to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %hdisplay16, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %12, i16 %14)
  %cmp18 = icmp ult i16 %12, %14
  br i1 %cmp18, label %if.else.if.end32_crit_edge, label %lor.lhs.false

if.else.if.end32_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end32

lor.lhs.false:                                    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %15 = ptrtoint ptr %vdisplay to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %vdisplay, align 2
  %vdisplay22 = getelementptr i8, ptr %.pn350, i32 122
  %17 = ptrtoint ptr %vdisplay22 to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %vdisplay22, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %16, i16 %18)
  %cmp24 = icmp ult i16 %16, %18
  %spec.select = select i1 %cmp24, i32 %10, i32 0
  br label %if.end32

if.end32:                                         ; preds = %lor.lhs.false, %if.else.if.end32_crit_edge, %if.then12.if.end32_crit_edge
  %.sink = phi i32 [ 0, %if.then12.if.end32_crit_edge ], [ %10, %if.else.if.end32_crit_edge ], [ %spec.select, %lor.lhs.false ]
  %19 = ptrtoint ptr %rmx_type112 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %.sink, ptr %rmx_type112, align 4
  %native_mode34 = getelementptr i8, ptr %.pn350, i32 108
  %20 = call ptr @memcpy(ptr %native_mode33, ptr %native_mode34, i32 112)
  %21 = ptrtoint ptr %vdisplay36 to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %vdisplay36, align 2
  %conv37 = zext i16 %22 to i32
  %23 = ptrtoint ptr %vdisplay39 to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %vdisplay39, align 2
  %conv40 = zext i16 %24 to i32
  %25 = ptrtoint ptr %hdisplay42 to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %hdisplay42, align 4
  %conv43 = zext i16 %26 to i32
  %27 = ptrtoint ptr %hdisplay45 to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %hdisplay45, align 4
  %conv46 = zext i16 %28 to i32
  %29 = ptrtoint ptr %family to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %family, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %30)
  %cmp47 = icmp ugt i32 %30, 17
  br i1 %cmp47, label %land.lhs.true, label %if.end32.for.inc_crit_edge

if.end32.for.inc_crit_edge:                       ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

land.lhs.true:                                    ; preds = %if.end32
  %31 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %flags, align 4
  %and = and i32 %32, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool49.not = icmp eq i32 %and, 0
  br i1 %tobool49.not, label %land.lhs.true50, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

land.lhs.true50:                                  ; preds = %land.lhs.true
  %underscan_type = getelementptr i8, ptr %.pn350, i32 96
  %33 = ptrtoint ptr %underscan_type to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %underscan_type, align 4
  %35 = zext i32 %34 to i64
  call void @__sanitizer_cov_trace_switch(i64 %35, ptr @__sancov_gen_cov_switch_values.163)
  switch i32 %34, label %land.lhs.true50.for.inc_crit_edge [
    i32 1, label %land.lhs.true50.if.then64_crit_edge
    i32 2, label %land.lhs.true57
  ]

land.lhs.true50.if.then64_crit_edge:              ; preds = %land.lhs.true50
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then64

land.lhs.true50.for.inc_crit_edge:                ; preds = %land.lhs.true50
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

land.lhs.true57:                                  ; preds = %land.lhs.true50
  %call58 = tail call ptr @radeon_connector_edid(ptr noundef %call) #10
  %call59 = tail call zeroext i1 @drm_detect_hdmi_monitor(ptr noundef %call58) #10
  br i1 %call59, label %land.lhs.true61, label %land.lhs.true57.for.inc_crit_edge

land.lhs.true57.for.inc_crit_edge:                ; preds = %land.lhs.true57
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

land.lhs.true61:                                  ; preds = %land.lhs.true57
  %36 = ptrtoint ptr %vdisplay to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %vdisplay, align 2
  %38 = zext i16 %37 to i64
  call void @__sanitizer_cov_trace_switch(i64 %38, ptr @__sancov_gen_cov_switch_values.164)
  switch i16 %37, label %land.lhs.true61.for.inc_crit_edge [
    i16 480, label %land.lhs.true.i
    i16 576, label %land.lhs.true61.if.then64_crit_edge
    i16 720, label %land.lhs.true61.if.then64_crit_edge359
    i16 1080, label %land.lhs.true61.if.then64_crit_edge360
  ]

land.lhs.true61.if.then64_crit_edge360:           ; preds = %land.lhs.true61
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then64

land.lhs.true61.if.then64_crit_edge359:           ; preds = %land.lhs.true61
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then64

land.lhs.true61.if.then64_crit_edge:              ; preds = %land.lhs.true61
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then64

land.lhs.true61.for.inc_crit_edge:                ; preds = %land.lhs.true61
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

land.lhs.true.i:                                  ; preds = %land.lhs.true61
  %39 = ptrtoint ptr %hdisplay to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %hdisplay, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 720, i16 %40)
  %cmp3.i = icmp eq i16 %40, 720
  br i1 %cmp3.i, label %land.lhs.true.i.if.then64_crit_edge, label %land.lhs.true.i.for.inc_crit_edge

land.lhs.true.i.for.inc_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

land.lhs.true.i.if.then64_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then64

if.then64:                                        ; preds = %land.lhs.true.i.if.then64_crit_edge, %land.lhs.true61.if.then64_crit_edge, %land.lhs.true61.if.then64_crit_edge359, %land.lhs.true61.if.then64_crit_edge360, %land.lhs.true50.if.then64_crit_edge
  %underscan_hborder = getelementptr i8, ptr %.pn350, i32 100
  %41 = ptrtoint ptr %underscan_hborder to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %underscan_hborder, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %cmp65.not = icmp eq i32 %42, 0
  br i1 %cmp65.not, label %if.else71, label %if.then67

if.then67:                                        ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #12
  %conv69 = trunc i32 %42 to i8
  br label %if.end76

if.else71:                                        ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #12
  %43 = ptrtoint ptr %hdisplay to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %hdisplay, align 4
  %45 = lshr i16 %44, 5
  %46 = trunc i16 %45 to i8
  %conv74 = add i8 %46, 16
  br label %if.end76

if.end76:                                         ; preds = %if.else71, %if.then67
  %storemerge = phi i8 [ %conv74, %if.else71 ], [ %conv69, %if.then67 ]
  %47 = ptrtoint ptr %h_border to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 %storemerge, ptr %h_border, align 8
  %underscan_vborder = getelementptr i8, ptr %.pn350, i32 104
  %48 = ptrtoint ptr %underscan_vborder to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %underscan_vborder, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %cmp77.not = icmp eq i32 %49, 0
  br i1 %cmp77.not, label %if.else83, label %if.then79

if.then79:                                        ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #12
  %conv81 = trunc i32 %49 to i8
  br label %if.end90

if.else83:                                        ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #12
  %50 = ptrtoint ptr %vdisplay to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %vdisplay, align 2
  %52 = lshr i16 %51, 5
  %53 = trunc i16 %52 to i8
  %conv88 = add i8 %53, 16
  br label %if.end90

if.end90:                                         ; preds = %if.else83, %if.then79
  %storemerge213 = phi i8 [ %conv88, %if.else83 ], [ %conv81, %if.then79 ]
  %54 = ptrtoint ptr %v_border to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 %storemerge213, ptr %v_border, align 1
  %55 = ptrtoint ptr %rmx_type112 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 1, ptr %rmx_type112, align 4
  %56 = ptrtoint ptr %vdisplay36 to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %vdisplay36, align 2
  %conv94 = zext i16 %57 to i32
  %conv99 = zext i8 %storemerge213 to i32
  %mul.neg = mul nsw i32 %conv99, -2
  %sub = add nsw i32 %mul.neg, %conv94
  %58 = ptrtoint ptr %hdisplay42 to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %hdisplay42, align 4
  %conv102 = zext i16 %59 to i32
  %conv107 = zext i8 %storemerge to i32
  %mul108.neg = mul nsw i32 %conv107, -2
  %sub109 = add nsw i32 %mul108.neg, %conv102
  br label %for.inc

if.else111:                                       ; preds = %if.end
  %60 = ptrtoint ptr %rmx_type112 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %rmx_type112, align 4
  %rmx_type113 = getelementptr i8, ptr %.pn350, i32 92
  %62 = ptrtoint ptr %rmx_type113 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %rmx_type113, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %61, i32 %63)
  %cmp114.not = icmp eq i32 %61, %63
  br i1 %cmp114.not, label %if.else111.for.inc_crit_edge, label %if.then116

if.else111.for.inc_crit_edge:                     ; preds = %if.else111
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.then116:                                       ; preds = %if.else111
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.4) #10
  br label %cleanup

for.inc:                                          ; preds = %if.else111.for.inc_crit_edge, %if.end90, %land.lhs.true.i.for.inc_crit_edge, %land.lhs.true61.for.inc_crit_edge, %land.lhs.true57.for.inc_crit_edge, %land.lhs.true50.for.inc_crit_edge, %land.lhs.true.for.inc_crit_edge, %if.end32.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %src_v.2 = phi i32 [ %src_v.0345, %for.body.for.inc_crit_edge ], [ %src_v.0345, %if.else111.for.inc_crit_edge ], [ %conv37, %land.lhs.true.for.inc_crit_edge ], [ %conv94, %if.end90 ], [ %conv37, %land.lhs.true57.for.inc_crit_edge ], [ %conv37, %if.end32.for.inc_crit_edge ], [ %conv37, %land.lhs.true50.for.inc_crit_edge ], [ %conv37, %land.lhs.true61.for.inc_crit_edge ], [ %conv37, %land.lhs.true.i.for.inc_crit_edge ]
  %dst_v.2 = phi i32 [ %dst_v.0346, %for.body.for.inc_crit_edge ], [ %dst_v.0346, %if.else111.for.inc_crit_edge ], [ %conv40, %land.lhs.true.for.inc_crit_edge ], [ %sub, %if.end90 ], [ %conv40, %land.lhs.true57.for.inc_crit_edge ], [ %conv40, %if.end32.for.inc_crit_edge ], [ %conv40, %land.lhs.true50.for.inc_crit_edge ], [ %conv40, %land.lhs.true61.for.inc_crit_edge ], [ %conv40, %land.lhs.true.i.for.inc_crit_edge ]
  %src_h.2 = phi i32 [ %src_h.0347, %for.body.for.inc_crit_edge ], [ %src_h.0347, %if.else111.for.inc_crit_edge ], [ %conv43, %land.lhs.true.for.inc_crit_edge ], [ %conv102, %if.end90 ], [ %conv43, %land.lhs.true57.for.inc_crit_edge ], [ %conv43, %if.end32.for.inc_crit_edge ], [ %conv43, %land.lhs.true50.for.inc_crit_edge ], [ %conv43, %land.lhs.true61.for.inc_crit_edge ], [ %conv43, %land.lhs.true.i.for.inc_crit_edge ]
  %dst_h.2 = phi i32 [ %dst_h.0348, %for.body.for.inc_crit_edge ], [ %dst_h.0348, %if.else111.for.inc_crit_edge ], [ %conv46, %land.lhs.true.for.inc_crit_edge ], [ %sub109, %if.end90 ], [ %conv46, %land.lhs.true57.for.inc_crit_edge ], [ %conv46, %if.end32.for.inc_crit_edge ], [ %conv46, %land.lhs.true50.for.inc_crit_edge ], [ %conv46, %land.lhs.true61.for.inc_crit_edge ], [ %conv46, %land.lhs.true.i.for.inc_crit_edge ]
  %first.1.off0 = phi i1 [ %first.0.off0349, %for.body.for.inc_crit_edge ], [ false, %if.else111.for.inc_crit_edge ], [ false, %land.lhs.true.for.inc_crit_edge ], [ false, %if.end90 ], [ false, %land.lhs.true57.for.inc_crit_edge ], [ false, %if.end32.for.inc_crit_edge ], [ false, %land.lhs.true50.for.inc_crit_edge ], [ false, %land.lhs.true61.for.inc_crit_edge ], [ false, %land.lhs.true.i.for.inc_crit_edge ]
  %64 = ptrtoint ptr %.pn350 to i32
  call void @__asan_load4_noabort(i32 %64)
  %.pn = load ptr, ptr %.pn350, align 4
  %cmp.not = icmp eq ptr %.pn, %encoder_list
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %src_v.0.lcssa = phi i32 [ 1, %entry.for.end_crit_edge ], [ %src_v.2, %for.inc.for.end_crit_edge ]
  %dst_v.0.lcssa = phi i32 [ 1, %entry.for.end_crit_edge ], [ %dst_v.2, %for.inc.for.end_crit_edge ]
  %src_h.0.lcssa = phi i32 [ 1, %entry.for.end_crit_edge ], [ %src_h.2, %for.inc.for.end_crit_edge ]
  %dst_h.0.lcssa = phi i32 [ 1, %entry.for.end_crit_edge ], [ %dst_h.2, %for.inc.for.end_crit_edge ]
  %rmx_type124 = getelementptr inbounds %struct.radeon_crtc, ptr %crtc, i32 0, i32 17
  %65 = ptrtoint ptr %rmx_type124 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %rmx_type124, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %66)
  %cmp125.not = icmp eq i32 %66, 0
  br i1 %cmp125.not, label %if.else136, label %if.then127

if.then127:                                       ; preds = %for.end
  %shl = shl i32 %src_v.0.lcssa, 12
  %shl128 = shl i32 %dst_v.0.lcssa, 12
  %conv.i = zext i32 %shl to i64
  %shl.i = shl nuw nsw i64 %conv.i, 13
  call void @__sanitizer_cov_trace_const_cmp4(i32 524288, i32 %shl)
  %cmp169.i = icmp ult i32 %shl, 524288
  br i1 %cmp169.i, label %if.then173.i, label %if.else179.i, !prof !320

if.then173.i:                                     ; preds = %if.then127
  call void @__sanitizer_cov_trace_pc() #12
  %conv174.i = trunc i64 %shl.i to i32
  %div177.i = udiv i32 %conv174.i, %shl128
  %conv178.i = zext i32 %div177.i to i64
  br label %dfixed_div.exit

if.else179.i:                                     ; preds = %if.then127
  call void @__sanitizer_cov_trace_pc() #12
  %67 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %shl128, i64 %shl.i) #14, !srcloc !321
  %asmresult1.i.i = extractvalue { i64, i64 } %67, 1
  br label %dfixed_div.exit

dfixed_div.exit:                                  ; preds = %if.else179.i, %if.then173.i
  %tmp.0.i = phi i64 [ %conv178.i, %if.then173.i ], [ %asmresult1.i.i, %if.else179.i ]
  %add185.i = add i64 %tmp.0.i, 1
  %div186268.i = lshr i64 %add185.i, 1
  %conv188.i = trunc i64 %div186268.i to i32
  %vsc = getelementptr inbounds %struct.radeon_crtc, ptr %crtc, i32 0, i32 20
  %68 = ptrtoint ptr %vsc to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %conv188.i, ptr %vsc, align 4
  %shl131 = shl i32 %src_h.0.lcssa, 12
  %shl132 = shl i32 %dst_h.0.lcssa, 12
  %conv.i214 = zext i32 %shl131 to i64
  %shl.i215 = shl nuw nsw i64 %conv.i214, 13
  call void @__sanitizer_cov_trace_const_cmp4(i32 524288, i32 %shl131)
  %cmp169.i322 = icmp ult i32 %shl131, 524288
  br i1 %cmp169.i322, label %if.then173.i327, label %if.else179.i329, !prof !320

if.then173.i327:                                  ; preds = %dfixed_div.exit
  call void @__sanitizer_cov_trace_pc() #12
  %conv174.i324 = trunc i64 %shl.i215 to i32
  %div177.i325 = udiv i32 %conv174.i324, %shl132
  %conv178.i326 = zext i32 %div177.i325 to i64
  br label %dfixed_div.exit334

if.else179.i329:                                  ; preds = %dfixed_div.exit
  call void @__sanitizer_cov_trace_pc() #12
  %69 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %shl132, i64 %shl.i215) #14, !srcloc !321
  %asmresult1.i.i328 = extractvalue { i64, i64 } %69, 1
  br label %dfixed_div.exit334

dfixed_div.exit334:                               ; preds = %if.else179.i329, %if.then173.i327
  %tmp.0.i330 = phi i64 [ %conv178.i326, %if.then173.i327 ], [ %asmresult1.i.i328, %if.else179.i329 ]
  %add185.i331 = add i64 %tmp.0.i330, 1
  %div186268.i332 = lshr i64 %add185.i331, 1
  %conv188.i333 = trunc i64 %div186268.i332 to i32
  %hsc = getelementptr inbounds %struct.radeon_crtc, ptr %crtc, i32 0, i32 21
  %70 = ptrtoint ptr %hsc to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %conv188.i333, ptr %hsc, align 8
  br label %cleanup

if.else136:                                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  %vsc137 = getelementptr inbounds %struct.radeon_crtc, ptr %crtc, i32 0, i32 20
  %71 = ptrtoint ptr %vsc137 to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 4096, ptr %vsc137, align 4
  %hsc138 = getelementptr inbounds %struct.radeon_crtc, ptr %crtc, i32 0, i32 21
  %72 = ptrtoint ptr %hsc138 to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 4096, ptr %hsc138, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.else136, %dfixed_div.exit334, %if.then116
  %cmp.not337 = phi i1 [ true, %dfixed_div.exit334 ], [ true, %if.else136 ], [ false, %if.then116 ]
  ret i1 %cmp.not337
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @radeon_get_connector_for_encoder(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @drm_detect_hdmi_monitor(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @radeon_connector_edid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_err(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @radeon_get_crtc_scanout_position(ptr nocapture noundef readonly %crtc, i1 noundef zeroext %in_vblank_irq, ptr nocapture noundef %vpos, ptr nocapture noundef writeonly %hpos, ptr noundef %stime, ptr noundef %etime, ptr nocapture noundef readonly %mode) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %crtc, align 8
  %index = getelementptr inbounds %struct.drm_crtc, ptr %crtc, i32 0, i32 8
  %2 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %index, align 4
  %call = tail call i32 @radeon_get_crtc_scanoutpos(ptr noundef %1, i32 noundef %3, i32 noundef 0, ptr noundef %vpos, ptr noundef %hpos, ptr noundef %stime, ptr noundef %etime, ptr noundef %mode)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool = icmp ne i32 %call, 0
  ret i1 %tobool
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @r100_mm_wreg_slow(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn
declare dso_local i32 @gcd(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_gem_fb_destroy(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_gem_fb_create_handle(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drmm_mode_config_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @radeon_user_framebuffer_create(ptr noundef %dev, ptr noundef %file_priv, ptr noundef %mode_cmd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %handles = getelementptr inbounds %struct.drm_mode_fb_cmd2, ptr %mode_cmd, i32 0, i32 5
  %0 = ptrtoint ptr %handles to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %handles, align 4
  %call = tail call ptr @drm_gem_object_lookup(ptr noundef %file_priv, i32 noundef %1) #10
  %cmp = icmp eq ptr %call, null
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %dev1 = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 2
  %2 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev1, align 4
  %4 = ptrtoint ptr %handles to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %handles, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.6, i32 noundef %5) #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %import_attach = getelementptr inbounds %struct.drm_gem_object, ptr %call, i32 0, i32 8
  %6 = ptrtoint ptr %import_attach to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %import_attach, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %if.end7, label %if.then.i

if.then.i:                                        ; preds = %if.end
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.11) #10
  %call.i.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !322
  tail call void @llvm.prefetch.p0(ptr nonnull %call, i32 1, i32 3, i32 1) #10
  %8 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %call, ptr nonnull %call, i32 1, ptr nonnull elementtype(i32) %call) #10, !srcloc !323
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %8, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i.i, label %if.then.i.i.i, label %if.end5.i.i.i.i.i.i

if.end5.i.i.i.i.i.i:                              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i, label %if.end5.i.i.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i.i.i, !prof !320

if.end5.i.i.i.i.i.i.cleanup_crit_edge:            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then10.i.i.i.i.i.i:                            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef nonnull %call, i32 noundef 3) #10
  br label %cleanup

if.then.i.i.i:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !324
  tail call void @drm_gem_object_free(ptr noundef nonnull %call) #10, !callees !325
  br label %cleanup

if.end7:                                          ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %9 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %9, i32 noundef 3520, i32 noundef 144) #15
  %cmp9 = icmp eq ptr %call7.i.i, null
  br i1 %cmp9, label %if.then.i36, label %if.end12

if.then.i36:                                      ; preds = %if.end7
  %call.i.i.i.i.i.i.i.i33 = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !322
  tail call void @llvm.prefetch.p0(ptr nonnull %call, i32 1, i32 3, i32 1) #10
  %10 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %call, ptr nonnull %call, i32 1, ptr nonnull elementtype(i32) %call) #10, !srcloc !323
  %asmresult.i.i.i.i.i.i.i.i.i34 = extractvalue { i32, i32, i32 } %10, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i34)
  %cmp.i.i.i.i.i.i35 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i34, 1
  br i1 %cmp.i.i.i.i.i.i35, label %if.then.i.i.i40, label %if.end5.i.i.i.i.i.i38

if.end5.i.i.i.i.i.i38:                            ; preds = %if.then.i36
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i34)
  %.not.i.i.i.i.i.i37 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i34, 0
  br i1 %.not.i.i.i.i.i.i37, label %if.end5.i.i.i.i.i.i38.cleanup_crit_edge, label %if.then10.i.i.i.i.i.i39, !prof !320

if.end5.i.i.i.i.i.i38.cleanup_crit_edge:          ; preds = %if.end5.i.i.i.i.i.i38
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then10.i.i.i.i.i.i39:                          ; preds = %if.end5.i.i.i.i.i.i38
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef nonnull %call, i32 noundef 3) #10
  br label %cleanup

if.then.i.i.i40:                                  ; preds = %if.then.i36
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !324
  tail call void @drm_gem_object_free(ptr noundef nonnull %call) #10, !callees !325
  br label %cleanup

if.end12:                                         ; preds = %if.end7
  %obj1.i = getelementptr inbounds %struct.drm_framebuffer, ptr %call7.i.i, i32 0, i32 15
  %11 = ptrtoint ptr %obj1.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call, ptr %obj1.i, align 4
  tail call void @drm_helper_mode_fill_fb_struct(ptr noundef %dev, ptr noundef nonnull %call7.i.i, ptr noundef %mode_cmd) #10
  %call.i = tail call i32 @drm_framebuffer_init(ptr noundef %dev, ptr noundef nonnull %call7.i.i, ptr noundef nonnull @radeon_fb_funcs) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i42 = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i42, label %if.end12.cleanup_crit_edge, label %if.then.i48

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then.i48:                                      ; preds = %if.end12
  %12 = ptrtoint ptr %obj1.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %obj1.i, align 4
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #10
  %call.i.i.i.i.i.i.i.i45 = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !322
  tail call void @llvm.prefetch.p0(ptr nonnull %call, i32 1, i32 3, i32 1) #10
  %13 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %call, ptr nonnull %call, i32 1, ptr nonnull elementtype(i32) %call) #10, !srcloc !323
  %asmresult.i.i.i.i.i.i.i.i.i46 = extractvalue { i32, i32, i32 } %13, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i46)
  %cmp.i.i.i.i.i.i47 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i46, 1
  br i1 %cmp.i.i.i.i.i.i47, label %if.then.i.i.i52, label %if.end5.i.i.i.i.i.i50

if.end5.i.i.i.i.i.i50:                            ; preds = %if.then.i48
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i46)
  %.not.i.i.i.i.i.i49 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i46, 0
  br i1 %.not.i.i.i.i.i.i49, label %if.end5.i.i.i.i.i.i50.drm_gem_object_put.exit53_crit_edge, label %if.then10.i.i.i.i.i.i51, !prof !320

if.end5.i.i.i.i.i.i50.drm_gem_object_put.exit53_crit_edge: ; preds = %if.end5.i.i.i.i.i.i50
  call void @__sanitizer_cov_trace_pc() #12
  br label %drm_gem_object_put.exit53

if.then10.i.i.i.i.i.i51:                          ; preds = %if.end5.i.i.i.i.i.i50
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef nonnull %call, i32 noundef 3) #10
  br label %drm_gem_object_put.exit53

if.then.i.i.i52:                                  ; preds = %if.then.i48
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !324
  tail call void @drm_gem_object_free(ptr noundef nonnull %call) #10, !callees !325
  br label %drm_gem_object_put.exit53

drm_gem_object_put.exit53:                        ; preds = %if.then.i.i.i52, %if.then10.i.i.i.i.i.i51, %if.end5.i.i.i.i.i.i50.drm_gem_object_put.exit53_crit_edge
  %14 = inttoptr i32 %call.i to ptr
  br label %cleanup

cleanup:                                          ; preds = %drm_gem_object_put.exit53, %if.end12.cleanup_crit_edge, %if.then.i.i.i40, %if.then10.i.i.i.i.i.i39, %if.end5.i.i.i.i.i.i38.cleanup_crit_edge, %if.then.i.i.i, %if.then10.i.i.i.i.i.i, %if.end5.i.i.i.i.i.i.cleanup_crit_edge, %do.end
  %retval.0 = phi ptr [ inttoptr (i32 -2 to ptr), %do.end ], [ %14, %drm_gem_object_put.exit53 ], [ inttoptr (i32 -22 to ptr), %if.end5.i.i.i.i.i.i.cleanup_crit_edge ], [ inttoptr (i32 -22 to ptr), %if.then10.i.i.i.i.i.i ], [ inttoptr (i32 -22 to ptr), %if.then.i.i.i ], [ inttoptr (i32 -12 to ptr), %if.end5.i.i.i.i.i.i38.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.then10.i.i.i.i.i.i39 ], [ inttoptr (i32 -12 to ptr), %if.then.i.i.i40 ], [ %call7.i.i, %if.end12.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_fb_helper_output_poll_changed(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_gem_object_lookup(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_gem_object_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #7

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_property_create_range(ptr noundef, i32 noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_property_create_enum(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_mode_create_scaling_mode_property(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_crtc_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_mode_crtc_set_gamma_size(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_workqueue(ptr noundef, i32 noundef, i32 noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @radeon_atombios_init_crtc(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @radeon_legacy_init_crtc(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @radeon_crtc_cursor_set2(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @radeon_crtc_cursor_move(ptr noundef, i32 noundef, i32 noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @radeon_crtc_gamma_set(ptr noundef %crtc, ptr nocapture noundef readnone %red, ptr nocapture noundef readnone %green, ptr nocapture noundef readnone %blue, i32 noundef %size, ptr nocapture noundef readnone %ctx) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @radeon_crtc_load_lut(ptr noundef %crtc)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @radeon_crtc_destroy(ptr noundef %crtc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @drm_crtc_cleanup(ptr noundef %crtc) #10
  %flip_queue = getelementptr inbounds %struct.radeon_crtc, ptr %crtc, i32 0, i32 24
  %0 = ptrtoint ptr %flip_queue to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %flip_queue, align 8
  tail call void @destroy_workqueue(ptr noundef %1) #10
  tail call void @kfree(ptr noundef %crtc) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @radeon_crtc_set_config(ptr noundef %set, ptr noundef %ctx) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %set, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %crtc1 = getelementptr inbounds %struct.drm_mode_set, ptr %set, i32 0, i32 1
  %0 = ptrtoint ptr %crtc1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %crtc1, align 4
  %tobool2.not = icmp eq ptr %1, null
  br i1 %tobool2.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %dev5 = getelementptr inbounds %struct.drm_device, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %dev5 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev5, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %5, i32 noundef 4) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %if.then6, label %if.end9

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %6 = ptrtoint ptr %dev5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev5, align 4
  %call.i63 = tail call i32 @__pm_runtime_suspend(ptr noundef %7, i32 noundef 13) #10
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %call10 = tail call i32 @drm_crtc_helper_set_config(ptr noundef nonnull %set, ptr noundef %ctx) #10
  %crtc_list = getelementptr inbounds %struct.drm_device, ptr %3, i32 0, i32 30, i32 20
  %8 = ptrtoint ptr %crtc_list to i32
  call void @__asan_load4_noabort(i32 %8)
  %.pn67 = load ptr, ptr %crtc_list, align 4
  %cmp13.not68 = icmp eq ptr %.pn67, %crtc_list
  br i1 %cmp13.not68, label %if.end9.for.end_crit_edge, label %if.end9.for.body_crit_edge

if.end9.for.body_crit_edge:                       ; preds = %if.end9
  br label %for.body

if.end9.for.end_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end9.for.body_crit_edge
  %.pn70 = phi ptr [ %.pn, %for.body.for.body_crit_edge ], [ %.pn67, %if.end9.for.body_crit_edge ]
  %active.0.off069 = phi i1 [ %spec.select, %for.body.for.body_crit_edge ], [ false, %if.end9.for.body_crit_edge ]
  %enabled = getelementptr i8, ptr %.pn70, i32 160
  %9 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %enabled, align 8, !range !311
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool14.not = icmp ne i8 %10, 0
  %spec.select = select i1 %tobool14.not, i1 true, i1 %active.0.off069
  %11 = ptrtoint ptr %.pn70 to i32
  call void @__asan_load4_noabort(i32 %11)
  %.pn = load ptr, ptr %.pn70, align 4
  %cmp13.not = icmp eq ptr %.pn, %crtc_list
  br i1 %cmp13.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end9.for.end_crit_edge
  %active.0.off0.lcssa = phi i1 [ false, %if.end9.for.end_crit_edge ], [ %spec.select, %for.body.for.end_crit_edge ]
  %12 = ptrtoint ptr %dev5 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev5, align 4
  %call.i64 = tail call i64 @ktime_get_mono_fast_ns() #10
  %last_busy.i = getelementptr inbounds %struct.device, ptr %13, i32 0, i32 12, i32 22
  %14 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %14)
  store volatile i64 %call.i64, ptr %last_busy.i, align 8
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %3, i32 0, i32 5
  %15 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev_private, align 4
  %have_disp_power_ref = getelementptr inbounds %struct.radeon_device, ptr %16, i32 0, i32 112
  %17 = ptrtoint ptr %have_disp_power_ref to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %have_disp_power_ref, align 4, !range !311
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool24.not = icmp eq i8 %18, 0
  br i1 %active.0.off0.lcssa, label %land.lhs.true, label %land.lhs.true29.critedge

land.lhs.true:                                    ; preds = %for.end
  br i1 %tobool24.not, label %if.then25, label %land.lhs.true.if.end36_crit_edge

land.lhs.true.if.end36_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end36

if.then25:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  %19 = ptrtoint ptr %have_disp_power_ref to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 1, ptr %have_disp_power_ref, align 4
  br label %cleanup

land.lhs.true29.critedge:                         ; preds = %for.end
  br i1 %tobool24.not, label %land.lhs.true29.critedge.if.end36_crit_edge, label %if.then32

land.lhs.true29.critedge.if.end36_crit_edge:      ; preds = %land.lhs.true29.critedge
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end36

if.then32:                                        ; preds = %land.lhs.true29.critedge
  call void @__sanitizer_cov_trace_pc() #12
  %20 = ptrtoint ptr %dev5 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev5, align 4
  %call.i65 = tail call i32 @__pm_runtime_suspend(ptr noundef %21, i32 noundef 13) #10
  %22 = ptrtoint ptr %have_disp_power_ref to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 0, ptr %have_disp_power_ref, align 4
  br label %if.end36

if.end36:                                         ; preds = %if.then32, %land.lhs.true29.critedge.if.end36_crit_edge, %land.lhs.true.if.end36_crit_edge
  %23 = ptrtoint ptr %dev5 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev5, align 4
  %call.i66 = tail call i32 @__pm_runtime_suspend(ptr noundef %24, i32 noundef 13) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end36, %if.then25, %if.then6, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %if.then6 ], [ %call10, %if.end36 ], [ %call10, %if.then25 ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @radeon_crtc_page_flip_target(ptr noundef %crtc, ptr noundef %fb, ptr noundef %event, i32 noundef %page_flip_flags, i32 noundef %target, ptr nocapture noundef readnone %ctx) #0 align 64 {
entry:
  %tiling_flags = alloca i32, align 4
  %base = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %crtc, align 8
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_private, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tiling_flags) #10
  %4 = ptrtoint ptr %tiling_flags to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %tiling_flags, align 4, !annotation !319
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %base) #10
  %5 = ptrtoint ptr %base to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 -1, ptr %base, align 8, !annotation !319
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %6 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3520, i32 noundef 128) #15
  %cmp = icmp eq ptr %call7.i.i, null
  br i1 %cmp, label %entry.cleanup187_crit_edge, label %do.body

entry.cleanup187_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup187

do.body:                                          ; preds = %entry
  tail call void @__init_work(ptr noundef nonnull %call7.i.i, i32 noundef 0) #10
  %7 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -64, ptr %call7.i.i, align 8
  %lockdep_map = getelementptr inbounds %struct.work_struct, ptr %call7.i.i, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.40, ptr noundef nonnull @radeon_crtc_page_flip_target.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #10
  %entry5 = getelementptr inbounds %struct.work_struct, ptr %call7.i.i, i32 0, i32 1
  %8 = ptrtoint ptr %entry5 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %entry5, ptr %entry5, align 4
  %prev.i = getelementptr inbounds %struct.work_struct, ptr %call7.i.i, i32 0, i32 1, i32 1
  %9 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %entry5, ptr %prev.i, align 8
  %func = getelementptr inbounds %struct.work_struct, ptr %call7.i.i, i32 0, i32 2
  %10 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @radeon_flip_work_func, ptr %func, align 4
  %unpin_work = getelementptr inbounds %struct.radeon_flip_work, ptr %call7.i.i, i32 0, i32 1
  tail call void @__init_work(ptr noundef %unpin_work, i32 noundef 0) #10
  %11 = ptrtoint ptr %unpin_work to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 -64, ptr %unpin_work, align 4
  %lockdep_map13 = getelementptr inbounds %struct.radeon_flip_work, ptr %call7.i.i, i32 0, i32 1, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map13, ptr noundef nonnull @.str.42, ptr noundef nonnull @radeon_crtc_page_flip_target.__key.41, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #10
  %entry15 = getelementptr inbounds %struct.radeon_flip_work, ptr %call7.i.i, i32 0, i32 1, i32 1
  %12 = ptrtoint ptr %entry15 to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %entry15, ptr %entry15, align 8
  %prev.i278 = getelementptr inbounds %struct.radeon_flip_work, ptr %call7.i.i, i32 0, i32 1, i32 1, i32 1
  %13 = ptrtoint ptr %prev.i278 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %entry15, ptr %prev.i278, align 4
  %func17 = getelementptr inbounds %struct.radeon_flip_work, ptr %call7.i.i, i32 0, i32 1, i32 2
  %14 = ptrtoint ptr %func17 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @radeon_unpin_work_func, ptr %func17, align 8
  %rdev20 = getelementptr inbounds %struct.radeon_flip_work, ptr %call7.i.i, i32 0, i32 2
  %15 = ptrtoint ptr %rdev20 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %3, ptr %rdev20, align 8
  %crtc_id = getelementptr inbounds %struct.radeon_crtc, ptr %crtc, i32 0, i32 1
  %16 = ptrtoint ptr %crtc_id to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %crtc_id, align 8
  %crtc_id21 = getelementptr inbounds %struct.radeon_flip_work, ptr %call7.i.i, i32 0, i32 3
  %18 = ptrtoint ptr %crtc_id21 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %crtc_id21, align 4
  %event22 = getelementptr inbounds %struct.radeon_flip_work, ptr %call7.i.i, i32 0, i32 6
  %19 = ptrtoint ptr %event22 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %event, ptr %event22, align 8
  %async = getelementptr inbounds %struct.radeon_flip_work, ptr %call7.i.i, i32 0, i32 9
  %20 = trunc i32 %page_flip_flags to i8
  %21 = lshr i8 %20, 1
  %22 = and i8 %21, 1
  %23 = ptrtoint ptr %async to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %22, ptr %async, align 4
  %primary = getelementptr inbounds %struct.drm_crtc, ptr %crtc, i32 0, i32 6
  %24 = ptrtoint ptr %primary to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %primary, align 4
  %fb24 = getelementptr inbounds %struct.drm_plane, ptr %25, i32 0, i32 12
  %26 = ptrtoint ptr %fb24 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %fb24, align 4
  %obj25 = getelementptr inbounds %struct.drm_framebuffer, ptr %27, i32 0, i32 15
  %28 = ptrtoint ptr %obj25 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %obj25, align 4
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %29, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %29, i32 1, i32 3, i32 1) #10
  %30 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %29, ptr %29, i32 1, ptr elementtype(i32) %29) #10, !srcloc !326
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %30, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %do.body.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !327

do.body.if.end15.sink.split.i.i.i.i.i_crit_edge:  ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %do.body
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %31 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %31)
  %.not.i.i.i.i.i = icmp sgt i32 %31, -1
  br i1 %.not.i.i.i.i.i, label %if.else.i.i.i.i.i.drm_gem_object_get.exit_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !320

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.drm_gem_object_get.exit_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %drm_gem_object_get.exit

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %do.body.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %do.body.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %29, i32 noundef %.sink.i.i.i.i.i) #10
  br label %drm_gem_object_get.exit

drm_gem_object_get.exit:                          ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.drm_gem_object_get.exit_crit_edge
  %add.ptr28 = getelementptr i8, ptr %29, i32 -96
  %old_rbo = getelementptr inbounds %struct.radeon_flip_work, ptr %call7.i.i, i32 0, i32 7
  %32 = ptrtoint ptr %old_rbo to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %add.ptr28, ptr %old_rbo, align 4
  %obj29 = getelementptr inbounds %struct.drm_framebuffer, ptr %fb, i32 0, i32 15
  %33 = ptrtoint ptr %obj29 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %obj29, align 4
  %add.ptr33 = getelementptr i8, ptr %34, i32 -96
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.43, ptr noundef %add.ptr28, ptr noundef %add.ptr33) #10
  %resv32.i.i = getelementptr i8, ptr %34, i32 200
  %35 = ptrtoint ptr %resv32.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %resv32.i.i, align 8
  %call.i.i.i = tail call i32 @ww_mutex_lock_interruptible(ptr noundef %36, ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -4, i32 %call.i.i.i)
  %cmp.i.i = icmp eq i32 %call.i.i.i, -4
  %retval.1.i.i = select i1 %cmp.i.i, i32 -512, i32 %call.i.i.i
  %37 = zext i32 %retval.1.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %37, ptr @__sancov_gen_cov_switch_values.165)
  switch i32 %retval.1.i.i, label %do.end.i [
    i32 0, label %if.end39
    i32 -512, label %drm_gem_object_get.exit.if.then38_crit_edge
  ], !prof !328

drm_gem_object_get.exit.if.then38_crit_edge:      ; preds = %drm_gem_object_get.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then38

do.end.i:                                         ; preds = %drm_gem_object_get.exit
  call void @__sanitizer_cov_trace_pc() #12
  %rdev.i = getelementptr i8, ptr %34, i32 464
  %38 = ptrtoint ptr %rdev.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %rdev.i, align 8
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %39, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %41, ptr noundef nonnull @.str.50, ptr noundef %add.ptr33) #16
  br label %if.then38

if.then38:                                        ; preds = %do.end.i, %drm_gem_object_get.exit.if.then38_crit_edge
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.44) #10
  br label %cleanup

if.end39:                                         ; preds = %drm_gem_object_get.exit
  %family = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 6
  %42 = ptrtoint ptr %family to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %family, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %43)
  %cmp40 = icmp ugt i32 %43, 17
  %cond = select i1 %cmp40, i32 0, i32 134217728
  %44 = zext i32 %cond to i64
  %call41 = call i32 @radeon_bo_pin_restricted(ptr noundef %add.ptr33, i32 noundef 4, i64 noundef %44, ptr noundef nonnull %base) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41)
  %cmp42.not = icmp eq i32 %call41, 0
  br i1 %cmp42.not, label %if.end51, label %if.then50, !prof !320

if.then50:                                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @radeon_bo_unreserve(ptr noundef %add.ptr33)
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.45) #10
  br label %cleanup

if.end51:                                         ; preds = %if.end39
  %45 = ptrtoint ptr %resv32.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %resv32.i.i, align 8
  %fence_excl.i = getelementptr inbounds %struct.dma_resv, ptr %46, i32 0, i32 2
  %47 = ptrtoint ptr %fence_excl.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load volatile ptr, ptr %fence_excl.i, align 4
  %dep_map.i = getelementptr inbounds %struct.mutex, ptr %46, i32 0, i32 5
  %call.i.i = call i32 @lock_is_held_type(ptr noundef %dep_map.i, i32 noundef -1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %lor.lhs.false.i, label %if.end51.dma_resv_excl_fence.exit_crit_edge

if.end51.dma_resv_excl_fence.exit_crit_edge:      ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #12
  br label %dma_resv_excl_fence.exit

lor.lhs.false.i:                                  ; preds = %if.end51
  %call2.i = call i32 @rcu_read_lock_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %land.lhs.true.i, label %lor.lhs.false.i.dma_resv_excl_fence.exit_crit_edge

lor.lhs.false.i.dma_resv_excl_fence.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dma_resv_excl_fence.exit

land.lhs.true.i:                                  ; preds = %lor.lhs.false.i
  %call4.i = call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool5.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool5.not.i, label %land.lhs.true.i.dma_resv_excl_fence.exit_crit_edge, label %land.lhs.true6.i

land.lhs.true.i.dma_resv_excl_fence.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dma_resv_excl_fence.exit

land.lhs.true6.i:                                 ; preds = %land.lhs.true.i
  %.b12.i = load i1, ptr @dma_resv_excl_fence.__warned, align 1
  br i1 %.b12.i, label %land.lhs.true6.i.dma_resv_excl_fence.exit_crit_edge, label %if.then.i

land.lhs.true6.i.dma_resv_excl_fence.exit_crit_edge: ; preds = %land.lhs.true6.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dma_resv_excl_fence.exit

if.then.i:                                        ; preds = %land.lhs.true6.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @dma_resv_excl_fence.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.54, i32 noundef 440, ptr noundef nonnull @.str.55) #10
  br label %dma_resv_excl_fence.exit

dma_resv_excl_fence.exit:                         ; preds = %if.then.i, %land.lhs.true6.i.dma_resv_excl_fence.exit_crit_edge, %land.lhs.true.i.dma_resv_excl_fence.exit_crit_edge, %lor.lhs.false.i.dma_resv_excl_fence.exit_crit_edge, %if.end51.dma_resv_excl_fence.exit_crit_edge
  %tobool.not.i279 = icmp eq ptr %48, null
  br i1 %tobool.not.i279, label %dma_resv_excl_fence.exit.dma_fence_get.exit_crit_edge, label %if.then.i283

dma_resv_excl_fence.exit.dma_fence_get.exit_crit_edge: ; preds = %dma_resv_excl_fence.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %dma_fence_get.exit

if.then.i283:                                     ; preds = %dma_resv_excl_fence.exit
  %refcount.i = getelementptr inbounds %struct.dma_fence, ptr %48, i32 0, i32 6
  %call.i.i.i.i.i.i.i280 = call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #10
  call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #10
  %49 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #10, !srcloc !326
  %asmresult.i.i.i.i.i.i.i281 = extractvalue { i32, i32, i32 } %49, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i281)
  %tobool1.not.i.i.i.i.i282 = icmp eq i32 %asmresult.i.i.i.i.i.i.i281, 0
  br i1 %tobool1.not.i.i.i.i.i282, label %if.then.i283.if.end15.sink.split.i.i.i.i.i288_crit_edge, label %if.else.i.i.i.i.i286, !prof !327

if.then.i283.if.end15.sink.split.i.i.i.i.i288_crit_edge: ; preds = %if.then.i283
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i.i288

if.else.i.i.i.i.i286:                             ; preds = %if.then.i283
  %add.i.i.i.i.i284 = add i32 %asmresult.i.i.i.i.i.i.i281, 1
  %50 = or i32 %add.i.i.i.i.i284, %asmresult.i.i.i.i.i.i.i281
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %50)
  %.not.i.i.i.i.i285 = icmp sgt i32 %50, -1
  br i1 %.not.i.i.i.i.i285, label %if.else.i.i.i.i.i286.dma_fence_get.exit_crit_edge, label %if.else.i.i.i.i.i286.if.end15.sink.split.i.i.i.i.i288_crit_edge, !prof !320

if.else.i.i.i.i.i286.if.end15.sink.split.i.i.i.i.i288_crit_edge: ; preds = %if.else.i.i.i.i.i286
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i.i288

if.else.i.i.i.i.i286.dma_fence_get.exit_crit_edge: ; preds = %if.else.i.i.i.i.i286
  call void @__sanitizer_cov_trace_pc() #12
  br label %dma_fence_get.exit

if.end15.sink.split.i.i.i.i.i288:                 ; preds = %if.else.i.i.i.i.i286.if.end15.sink.split.i.i.i.i.i288_crit_edge, %if.then.i283.if.end15.sink.split.i.i.i.i.i288_crit_edge
  %.sink.i.i.i.i.i287 = phi i32 [ 2, %if.then.i283.if.end15.sink.split.i.i.i.i.i288_crit_edge ], [ 1, %if.else.i.i.i.i.i286.if.end15.sink.split.i.i.i.i.i288_crit_edge ]
  call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef %.sink.i.i.i.i.i287) #10
  br label %dma_fence_get.exit

dma_fence_get.exit:                               ; preds = %if.end15.sink.split.i.i.i.i.i288, %if.else.i.i.i.i.i286.dma_fence_get.exit_crit_edge, %dma_resv_excl_fence.exit.dma_fence_get.exit_crit_edge
  %fence = getelementptr inbounds %struct.radeon_flip_work, ptr %call7.i.i, i32 0, i32 8
  %51 = ptrtoint ptr %fence to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %48, ptr %fence, align 8
  call void @radeon_bo_get_tiling_flags(ptr noundef %add.ptr33, ptr noundef nonnull %tiling_flags, ptr noundef null) #10
  %bdev.i.i.i = getelementptr i8, ptr %34, i32 352
  %52 = ptrtoint ptr %bdev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %bdev.i.i.i, align 8
  %lru_lock.i.i.i = getelementptr inbounds %struct.ttm_device, ptr %53, i32 0, i32 6
  call void @_raw_spin_lock(ptr noundef %lru_lock.i.i.i) #10
  %resource.i.i.i = getelementptr i8, ptr %34, i32 372
  %54 = ptrtoint ptr %resource.i.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %resource.i.i.i, align 4
  call void @ttm_bo_move_to_lru_tail(ptr noundef %34, ptr noundef %55, ptr noundef null) #10
  %56 = ptrtoint ptr %bdev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %bdev.i.i.i, align 8
  %lru_lock2.i.i.i = getelementptr inbounds %struct.ttm_device, ptr %57, i32 0, i32 6
  call void @_raw_spin_unlock(ptr noundef %lru_lock2.i.i.i) #10
  %58 = ptrtoint ptr %resv32.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %resv32.i.i, align 8
  call void @dma_resv_reset_shared_max(ptr noundef %59) #10
  call void @ww_mutex_unlock(ptr noundef %59) #10
  %60 = ptrtoint ptr %family to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %family, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %61)
  %cmp56 = icmp ugt i32 %61, 17
  br i1 %cmp56, label %dma_fence_get.exit.if.end139_crit_edge, label %if.then58

dma_fence_get.exit.if.end139_crit_edge:           ; preds = %dma_fence_get.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end139

if.then58:                                        ; preds = %dma_fence_get.exit
  %legacy_display_base_addr = getelementptr inbounds %struct.radeon_crtc, ptr %crtc, i32 0, i32 16
  %62 = ptrtoint ptr %legacy_display_base_addr to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %legacy_display_base_addr, align 8
  %conv59 = zext i32 %63 to i64
  %64 = ptrtoint ptr %base to i32
  call void @__asan_load8_noabort(i32 %64)
  %65 = load i64, ptr %base, align 8
  %sub = sub i64 %65, %conv59
  store i64 %sub, ptr %base, align 8
  %pitches = getelementptr inbounds %struct.drm_framebuffer, ptr %fb, i32 0, i32 6
  %66 = ptrtoint ptr %pitches to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %pitches, align 8
  %format = getelementptr inbounds %struct.drm_framebuffer, ptr %fb, i32 0, i32 4
  %68 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %format, align 8
  %70 = getelementptr inbounds %struct.drm_format_info, ptr %69, i32 0, i32 3
  %71 = ptrtoint ptr %70 to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %70, align 2
  %conv62 = zext i8 %72 to i32
  %div = udiv i32 %67, %conv62
  %73 = ptrtoint ptr %tiling_flags to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %tiling_flags, align 4
  %and63 = and i32 %74, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and63)
  %tobool64.not = icmp eq i32 %and63, 0
  br i1 %tobool64.not, label %if.else119, label %if.then65

if.then65:                                        ; preds = %if.then58
  %.off = add nsw i32 %61, -9
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %.off)
  %switch = icmp ult i32 %.off, 9
  br i1 %switch, label %if.then100, label %if.else

if.then100:                                       ; preds = %if.then65
  call void @__sanitizer_cov_trace_pc() #12
  %and101 = and i64 %sub, -2048
  %75 = ptrtoint ptr %base to i32
  call void @__asan_store8_noabort(i32 %75)
  store i64 %and101, ptr %base, align 8
  br label %if.end137

if.else:                                          ; preds = %if.then65
  call void @__sanitizer_cov_trace_pc() #12
  %76 = lshr i32 %conv62, 1
  %y = getelementptr inbounds %struct.drm_crtc, ptr %crtc, i32 0, i32 15
  %77 = ptrtoint ptr %y to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %y, align 8
  %shr105 = ashr i32 %78, 3
  %mul106 = mul i32 %shr105, %div
  %x = getelementptr inbounds %struct.drm_crtc, ptr %crtc, i32 0, i32 14
  %79 = ptrtoint ptr %x to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %x, align 4
  %add = add i32 %mul106, %80
  %sub107 = sub nsw i32 8, %76
  %shr108 = lshr i32 %add, %sub107
  %shl = shl i32 %shr108, 11
  %shl110 = shl i32 %80, %76
  %rem = srem i32 %shl110, 256
  %rem113 = srem i32 %78, 8
  %shl114 = shl nsw i32 %rem113, 8
  %add111 = add nsw i32 %rem, %shl114
  %add115 = add i32 %add111, %shl
  %conv116 = sext i32 %add115 to i64
  %add117 = add i64 %sub, %conv116
  %81 = ptrtoint ptr %base to i32
  call void @__asan_store8_noabort(i32 %81)
  store i64 %add117, ptr %base, align 8
  br label %if.end137

if.else119:                                       ; preds = %if.then58
  %y120 = getelementptr inbounds %struct.drm_crtc, ptr %crtc, i32 0, i32 15
  %82 = ptrtoint ptr %y120 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %y120, align 8
  %mul121 = mul i32 %83, %div
  %x122 = getelementptr inbounds %struct.drm_crtc, ptr %crtc, i32 0, i32 14
  %84 = ptrtoint ptr %x122 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %x122, align 4
  %add123 = add i32 %mul121, %85
  %86 = add nuw nsw i32 %conv62, 536870911
  %87 = and i32 %86, 536870911
  %88 = zext i32 %87 to i64
  call void @__sanitizer_cov_trace_switch(i64 %88, ptr @__sancov_gen_cov_switch_values.166)
  switch i32 %87, label %if.else119.sw.epilog_crit_edge [
    i32 2, label %sw.bb131
    i32 3, label %sw.bb133
    i32 1, label %sw.bb129
  ]

if.else119.sw.epilog_crit_edge:                   ; preds = %if.else119
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb129:                                         ; preds = %if.else119
  call void @__sanitizer_cov_trace_pc() #12
  %mul130 = shl i32 %add123, 1
  br label %sw.epilog

sw.bb131:                                         ; preds = %if.else119
  call void @__sanitizer_cov_trace_pc() #12
  %mul132 = mul i32 %add123, 3
  br label %sw.epilog

sw.bb133:                                         ; preds = %if.else119
  call void @__sanitizer_cov_trace_pc() #12
  %mul134 = shl i32 %add123, 2
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb133, %sw.bb131, %sw.bb129, %if.else119.sw.epilog_crit_edge
  %offset.0 = phi i32 [ %mul130, %sw.bb129 ], [ %mul134, %sw.bb133 ], [ %mul132, %sw.bb131 ], [ %add123, %if.else119.sw.epilog_crit_edge ]
  %conv135 = sext i32 %offset.0 to i64
  %add136 = add i64 %sub, %conv135
  %89 = ptrtoint ptr %base to i32
  call void @__asan_store8_noabort(i32 %89)
  store i64 %add136, ptr %base, align 8
  br label %if.end137

if.end137:                                        ; preds = %sw.epilog, %if.else, %if.then100
  %90 = ptrtoint ptr %base to i32
  call void @__asan_load8_noabort(i32 %90)
  %91 = load i64, ptr %base, align 8
  %and138 = and i64 %91, -8
  store i64 %and138, ptr %base, align 8
  br label %if.end139

if.end139:                                        ; preds = %if.end137, %dma_fence_get.exit.if.end139_crit_edge
  %92 = ptrtoint ptr %base to i32
  call void @__asan_load8_noabort(i32 %92)
  %93 = load i64, ptr %base, align 8
  %base140 = getelementptr inbounds %struct.radeon_flip_work, ptr %call7.i.i, i32 0, i32 5
  %94 = ptrtoint ptr %base140 to i32
  call void @__asan_store8_noabort(i32 %94)
  store i64 %93, ptr %base140, align 8
  %call141 = call i64 @drm_crtc_vblank_count(ptr noundef %crtc) #10
  %conv142 = trunc i64 %call141 to i32
  %sub143 = sub i32 %target, %conv142
  %funcs = getelementptr inbounds %struct.drm_crtc, ptr %crtc, i32 0, i32 16
  %95 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %funcs, align 4
  %get_vblank_counter = getelementptr inbounds %struct.drm_crtc_funcs, ptr %96, i32 0, i32 20
  %97 = ptrtoint ptr %get_vblank_counter to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %get_vblank_counter, align 4
  %call144 = call i32 %98(ptr noundef %crtc) #10
  %add145 = add i32 %sub143, %call144
  %target_vblank = getelementptr inbounds %struct.radeon_flip_work, ptr %call7.i.i, i32 0, i32 4
  %99 = ptrtoint ptr %target_vblank to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 %add145, ptr %target_vblank, align 8
  %100 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %crtc, align 8
  %event_lock = getelementptr inbounds %struct.drm_device, ptr %101, i32 0, i32 28
  %call153 = call i32 @_raw_spin_lock_irqsave(ptr noundef %event_lock) #10
  %flip_status = getelementptr inbounds %struct.radeon_crtc, ptr %crtc, i32 0, i32 26
  %102 = ptrtoint ptr %flip_status to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %flip_status, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %103)
  %cmp158.not = icmp eq i32 %103, 0
  br i1 %cmp158.not, label %if.end163, label %if.then160

if.then160:                                       ; preds = %if.end139
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.46) #10
  %104 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %crtc, align 8
  %event_lock162 = getelementptr inbounds %struct.drm_device, ptr %105, i32 0, i32 28
  call void @_raw_spin_unlock_irqrestore(ptr noundef %event_lock162, i32 noundef %call153) #10
  %106 = ptrtoint ptr %resv32.i.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %resv32.i.i, align 8
  %call.i.i.i290 = call i32 @ww_mutex_lock_interruptible(ptr noundef %107, ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -4, i32 %call.i.i.i290)
  %cmp.i.i291 = icmp eq i32 %call.i.i.i290, -4
  %retval.1.i.i292 = select i1 %cmp.i.i291, i32 -512, i32 %call.i.i.i290
  %108 = zext i32 %retval.1.i.i292 to i64
  call void @__sanitizer_cov_trace_switch(i64 %108, ptr @__sancov_gen_cov_switch_values.167)
  switch i32 %retval.1.i.i292, label %do.end.i294 [
    i32 0, label %if.end182
    i32 -512, label %if.then160.if.then181_crit_edge
  ], !prof !328

if.then160.if.then181_crit_edge:                  ; preds = %if.then160
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then181

do.end.i294:                                      ; preds = %if.then160
  call void @__sanitizer_cov_trace_pc() #12
  %rdev.i293 = getelementptr i8, ptr %34, i32 464
  %109 = ptrtoint ptr %rdev.i293 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %rdev.i293, align 8
  %111 = ptrtoint ptr %110 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %110, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %112, ptr noundef nonnull @.str.50, ptr noundef %add.ptr33) #16
  br label %if.then181

if.end163:                                        ; preds = %if.end139
  call void @__sanitizer_cov_trace_pc() #12
  %113 = ptrtoint ptr %flip_status to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 1, ptr %flip_status, align 8
  %flip_work165 = getelementptr inbounds %struct.radeon_crtc, ptr %crtc, i32 0, i32 25
  %114 = ptrtoint ptr %flip_work165 to i32
  call void @__asan_store4_noabort(i32 %114)
  store ptr %call7.i.i, ptr %flip_work165, align 4
  %115 = ptrtoint ptr %primary to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %primary, align 4
  %fb167 = getelementptr inbounds %struct.drm_plane, ptr %116, i32 0, i32 12
  %117 = ptrtoint ptr %fb167 to i32
  call void @__asan_store4_noabort(i32 %117)
  store ptr %fb, ptr %fb167, align 4
  %118 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %crtc, align 8
  %event_lock169 = getelementptr inbounds %struct.drm_device, ptr %119, i32 0, i32 28
  call void @_raw_spin_unlock_irqrestore(ptr noundef %event_lock169, i32 noundef %call153) #10
  %flip_queue = getelementptr inbounds %struct.radeon_crtc, ptr %crtc, i32 0, i32 24
  %120 = ptrtoint ptr %flip_queue to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %flip_queue, align 8
  %call.i = call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %121, ptr noundef nonnull %call7.i.i) #10
  br label %cleanup187

if.then181:                                       ; preds = %do.end.i294, %if.then160.if.then181_crit_edge
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.47) #10
  br label %cleanup

if.end182:                                        ; preds = %if.then160
  call void @__sanitizer_cov_trace_pc() #12
  call void @radeon_bo_unpin(ptr noundef %add.ptr33) #10
  %122 = ptrtoint ptr %bdev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %bdev.i.i.i, align 8
  %lru_lock.i.i.i298 = getelementptr inbounds %struct.ttm_device, ptr %123, i32 0, i32 6
  call void @_raw_spin_lock(ptr noundef %lru_lock.i.i.i298) #10
  %124 = ptrtoint ptr %resource.i.i.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %resource.i.i.i, align 4
  call void @ttm_bo_move_to_lru_tail(ptr noundef %34, ptr noundef %125, ptr noundef null) #10
  %126 = ptrtoint ptr %bdev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %bdev.i.i.i, align 8
  %lru_lock2.i.i.i300 = getelementptr inbounds %struct.ttm_device, ptr %127, i32 0, i32 6
  call void @_raw_spin_unlock(ptr noundef %lru_lock2.i.i.i300) #10
  %128 = ptrtoint ptr %resv32.i.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %resv32.i.i, align 8
  call void @dma_resv_reset_shared_max(ptr noundef %129) #10
  call void @ww_mutex_unlock(ptr noundef %129) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end182, %if.then181, %if.then50, %if.then38
  %r.0 = phi i32 [ %retval.1.i.i, %if.then38 ], [ -22, %if.then50 ], [ -16, %if.then181 ], [ -16, %if.end182 ]
  %130 = ptrtoint ptr %old_rbo to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %old_rbo, align 4
  %tbo184 = getelementptr inbounds %struct.radeon_bo, ptr %131, i32 0, i32 4
  %tobool.not.i302 = icmp eq ptr %tbo184, null
  br i1 %tobool.not.i302, label %cleanup.drm_gem_object_put.exit_crit_edge, label %if.then.i303

cleanup.drm_gem_object_put.exit_crit_edge:        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %drm_gem_object_put.exit

if.then.i303:                                     ; preds = %cleanup
  %call.i.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %tbo184, i32 noundef 4) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !322
  call void @llvm.prefetch.p0(ptr nonnull %tbo184, i32 1, i32 3, i32 1) #10
  %132 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %tbo184, ptr nonnull %tbo184, i32 1, ptr nonnull elementtype(i32) %tbo184) #10, !srcloc !323
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %132, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i.i, label %if.then.i.i.i, label %if.end5.i.i.i.i.i.i

if.end5.i.i.i.i.i.i:                              ; preds = %if.then.i303
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i, label %if.end5.i.i.i.i.i.i.drm_gem_object_put.exit_crit_edge, label %if.then10.i.i.i.i.i.i, !prof !320

if.end5.i.i.i.i.i.i.drm_gem_object_put.exit_crit_edge: ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %drm_gem_object_put.exit

if.then10.i.i.i.i.i.i:                            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @refcount_warn_saturate(ptr noundef nonnull %tbo184, i32 noundef 3) #10
  br label %drm_gem_object_put.exit

if.then.i.i.i:                                    ; preds = %if.then.i303
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !324
  call void @drm_gem_object_free(ptr noundef nonnull %tbo184) #10, !callees !325
  br label %drm_gem_object_put.exit

drm_gem_object_put.exit:                          ; preds = %if.then.i.i.i, %if.then10.i.i.i.i.i.i, %if.end5.i.i.i.i.i.i.drm_gem_object_put.exit_crit_edge, %cleanup.drm_gem_object_put.exit_crit_edge
  %fence186 = getelementptr inbounds %struct.radeon_flip_work, ptr %call7.i.i, i32 0, i32 8
  %133 = ptrtoint ptr %fence186 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %fence186, align 8
  %tobool.not.i304 = icmp eq ptr %134, null
  br i1 %tobool.not.i304, label %drm_gem_object_put.exit.dma_fence_put.exit_crit_edge, label %if.then.i307

drm_gem_object_put.exit.dma_fence_put.exit_crit_edge: ; preds = %drm_gem_object_put.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %dma_fence_put.exit

if.then.i307:                                     ; preds = %drm_gem_object_put.exit
  %refcount.i305 = getelementptr inbounds %struct.dma_fence, ptr %134, i32 0, i32 6
  %call.i.i.i.i.i.i.i306 = call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i305, i32 noundef 4) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !322
  call void @llvm.prefetch.p0(ptr %refcount.i305, i32 1, i32 3, i32 1) #10
  %135 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i305, ptr %refcount.i305, i32 1, ptr elementtype(i32) %refcount.i305) #10, !srcloc !323
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %135, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.then.i307
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i308 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i308, label %if.end5.i.i.i.i.i.dma_fence_put.exit_crit_edge, label %if.then10.i.i.i.i.i, !prof !320

if.end5.i.i.i.i.i.dma_fence_put.exit_crit_edge:   ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dma_fence_put.exit

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @refcount_warn_saturate(ptr noundef %refcount.i305, i32 noundef 3) #10
  br label %dma_fence_put.exit

if.then.i.i:                                      ; preds = %if.then.i307
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !324
  call void @dma_fence_release(ptr noundef %refcount.i305) #10, !callees !325
  br label %dma_fence_put.exit

dma_fence_put.exit:                               ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.dma_fence_put.exit_crit_edge, %drm_gem_object_put.exit.dma_fence_put.exit_crit_edge
  call void @kfree(ptr noundef nonnull %call7.i.i) #10
  br label %cleanup187

cleanup187:                                       ; preds = %dma_fence_put.exit, %if.end163, %entry.cleanup187_crit_edge
  %retval.0 = phi i32 [ %r.0, %dma_fence_put.exit ], [ 0, %if.end163 ], [ -12, %entry.cleanup187_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %base) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tiling_flags) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @radeon_get_vblank_counter_kms(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @radeon_enable_vblank_kms(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @radeon_disable_vblank_kms(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @drm_crtc_vblank_helper_get_vblank_timestamp(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_crtc_cleanup(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @destroy_workqueue(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_crtc_helper_set_config(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_suspend(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_mono_fast_ns() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @radeon_flip_work_func(ptr nocapture noundef %__work) #0 align 64 {
entry:
  %vpos = alloca i32, align 4
  %hpos = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %rdev1 = getelementptr inbounds %struct.radeon_flip_work, ptr %__work, i32 0, i32 2
  %0 = ptrtoint ptr %rdev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rdev1, align 8
  %ddev = getelementptr inbounds %struct.radeon_device, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %ddev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ddev, align 4
  %crtc_id = getelementptr inbounds %struct.radeon_flip_work, ptr %__work, i32 0, i32 3
  %4 = ptrtoint ptr %crtc_id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %crtc_id, align 4
  %arrayidx = getelementptr %struct.radeon_device, ptr %1, i32 0, i32 44, i32 4, i32 %5
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %vpos) #10
  %8 = ptrtoint ptr %vpos to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %vpos, align 4, !annotation !319
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %hpos) #10
  %exclusive_lock = getelementptr inbounds %struct.radeon_device, ptr %1, i32 0, i32 4
  tail call void @down_read(ptr noundef %exclusive_lock) #10
  %fence = getelementptr inbounds %struct.radeon_flip_work, ptr %__work, i32 0, i32 8
  %9 = ptrtoint ptr %fence to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %fence, align 8
  %tobool.not = icmp eq ptr %10, null
  br i1 %tobool.not, label %entry.if.end22_crit_edge, label %if.then

entry.if.end22_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end22

if.then:                                          ; preds = %entry
  %ops.i = getelementptr inbounds %struct.dma_fence, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ops.i, align 4
  %cmp.i.not = icmp eq ptr %12, @radeon_fence_ops
  br i1 %cmp.i.not, label %land.lhs.true, label %if.then.if.else_crit_edge

if.then.if.else_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

land.lhs.true:                                    ; preds = %if.then
  %rdev5 = getelementptr inbounds %struct.radeon_fence, ptr %10, i32 0, i32 1
  %13 = ptrtoint ptr %rdev5 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %rdev5, align 8
  %cmp = icmp eq ptr %14, %1
  br i1 %cmp, label %if.then6, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

if.then6:                                         ; preds = %land.lhs.true
  %call7 = tail call i32 @radeon_fence_wait(ptr noundef nonnull %10, i1 noundef zeroext false) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -35, i32 %call7)
  %cmp8 = icmp eq i32 %call7, -35
  br i1 %cmp8, label %if.then9, label %if.then6.if.end16_crit_edge

if.then6.if.end16_crit_edge:                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end16

if.then9:                                         ; preds = %if.then6
  tail call void @up_read(ptr noundef %exclusive_lock) #10
  br label %do.body

do.body:                                          ; preds = %do.body.do.body_crit_edge, %if.then9
  %call11 = tail call i32 @radeon_gpu_reset(ptr noundef %1) #10
  %cmp12 = icmp eq i32 %call11, -11
  br i1 %cmp12, label %do.body.do.body_crit_edge, label %do.end

do.body.do.body_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @down_read(ptr noundef %exclusive_lock) #10
  br label %if.end16

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %if.then.if.else_crit_edge
  %call.i = tail call i32 @dma_fence_wait_timeout(ptr noundef nonnull %10, i1 noundef zeroext false, i32 noundef 2147483647) #10
  %15 = tail call i32 @llvm.smin.i32(i32 %call.i, i32 0) #10
  br label %if.end16

if.end16:                                         ; preds = %if.else, %do.end, %if.then6.if.end16_crit_edge
  %r.0 = phi i32 [ %call11, %do.end ], [ %call7, %if.then6.if.end16_crit_edge ], [ %15, %if.else ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %r.0)
  %tobool17.not = icmp eq i32 %r.0, 0
  br i1 %tobool17.not, label %if.end16.if.end19_crit_edge, label %if.then18

if.end16.if.end19_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end19

if.then18:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.48, i32 noundef %r.0) #10
  br label %if.end19

if.end19:                                         ; preds = %if.then18, %if.end16.if.end19_crit_edge
  %16 = ptrtoint ptr %fence to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %fence, align 8
  %tobool.not.i = icmp eq ptr %17, null
  br i1 %tobool.not.i, label %if.end19.dma_fence_put.exit_crit_edge, label %if.then.i

if.end19.dma_fence_put.exit_crit_edge:            ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #12
  br label %dma_fence_put.exit

if.then.i:                                        ; preds = %if.end19
  %refcount.i = getelementptr inbounds %struct.dma_fence, ptr %17, i32 0, i32 6
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !322
  tail call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #10
  %18 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #10, !srcloc !323
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %18, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.then.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.dma_fence_put.exit_crit_edge, label %if.then10.i.i.i.i.i, !prof !320

if.end5.i.i.i.i.i.dma_fence_put.exit_crit_edge:   ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dma_fence_put.exit

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef 3) #10
  br label %dma_fence_put.exit

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !324
  tail call void @dma_fence_release(ptr noundef %refcount.i) #10, !callees !325
  br label %dma_fence_put.exit

dma_fence_put.exit:                               ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.dma_fence_put.exit_crit_edge, %if.end19.dma_fence_put.exit_crit_edge
  %19 = ptrtoint ptr %fence to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %fence, align 8
  br label %if.end22

if.end22:                                         ; preds = %dma_fence_put.exit, %entry.if.end22_crit_edge
  %target_vblank = getelementptr inbounds %struct.radeon_flip_work, ptr %__work, i32 0, i32 4
  %enabled = getelementptr inbounds %struct.radeon_crtc, ptr %7, i32 0, i32 2
  %20 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %enabled, align 4, !range !311
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool23.not86 = icmp eq i8 %21, 0
  br i1 %tobool23.not86, label %if.end22.do.body32_crit_edge, label %land.lhs.true24.lr.ph

if.end22.do.body32_crit_edge:                     ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body32

land.lhs.true24.lr.ph:                            ; preds = %if.end22
  %hwmode = getelementptr inbounds %struct.drm_crtc, ptr %7, i32 0, i32 13
  %family = getelementptr inbounds %struct.radeon_device, ptr %1, i32 0, i32 6
  %funcs = getelementptr inbounds %struct.drm_crtc, ptr %7, i32 0, i32 16
  br label %land.lhs.true24

land.lhs.true24:                                  ; preds = %while.body.land.lhs.true24_crit_edge, %land.lhs.true24.lr.ph
  %22 = ptrtoint ptr %crtc_id to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %crtc_id, align 4
  %call26 = call i32 @radeon_get_crtc_scanoutpos(ptr noundef %3, i32 noundef %23, i32 noundef 0, ptr noundef nonnull %vpos, ptr noundef nonnull %hpos, ptr noundef null, ptr noundef null, ptr noundef %hwmode)
  %and = and i32 %call26, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and)
  %cmp27 = icmp eq i32 %and, 3
  br i1 %cmp27, label %land.rhs, label %land.lhs.true24.do.body32_crit_edge

land.lhs.true24.do.body32_crit_edge:              ; preds = %land.lhs.true24
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body32

land.rhs:                                         ; preds = %land.lhs.true24
  %24 = ptrtoint ptr %family to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %family, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %25)
  %cmp28 = icmp ugt i32 %25, 17
  br i1 %cmp28, label %lor.rhs, label %land.rhs.while.body_crit_edge

land.rhs.while.body_crit_edge:                    ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

lor.rhs:                                          ; preds = %land.rhs
  %26 = ptrtoint ptr %target_vblank to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %target_vblank, align 8
  %28 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %funcs, align 4
  %get_vblank_counter = getelementptr inbounds %struct.drm_crtc_funcs, ptr %29, i32 0, i32 20
  %30 = ptrtoint ptr %get_vblank_counter to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %get_vblank_counter, align 4
  %call29 = tail call i32 %31(ptr noundef %7) #10
  %sub = sub i32 %27, %call29
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp30 = icmp sgt i32 %sub, 0
  br i1 %cmp30, label %lor.rhs.while.body_crit_edge, label %lor.rhs.do.body32_crit_edge

lor.rhs.do.body32_crit_edge:                      ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body32

lor.rhs.while.body_crit_edge:                     ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

while.body:                                       ; preds = %lor.rhs.while.body_crit_edge, %land.rhs.while.body_crit_edge
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #10
  %32 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %enabled, align 4, !range !311
  %tobool23.not = icmp eq i8 %33, 0
  br i1 %tobool23.not, label %while.body.do.body32_crit_edge, label %while.body.land.lhs.true24_crit_edge

while.body.land.lhs.true24_crit_edge:             ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true24

while.body.do.body32_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body32

do.body32:                                        ; preds = %while.body.do.body32_crit_edge, %lor.rhs.do.body32_crit_edge, %land.lhs.true24.do.body32_crit_edge, %if.end22.do.body32_crit_edge
  %34 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %7, align 8
  %event_lock = getelementptr inbounds %struct.drm_device, ptr %35, i32 0, i32 28
  %call37 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %event_lock) #10
  %crtc_id42 = getelementptr inbounds %struct.radeon_crtc, ptr %7, i32 0, i32 1
  %36 = ptrtoint ptr %crtc_id42 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %crtc_id42, align 8
  tail call void @radeon_irq_kms_pflip_irq_get(ptr noundef %1, i32 noundef %37) #10
  %asic = getelementptr inbounds %struct.radeon_device, ptr %1, i32 0, i32 56
  %38 = ptrtoint ptr %asic to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %asic, align 8
  %pflip = getelementptr inbounds %struct.radeon_asic, ptr %39, i32 0, i32 22
  %40 = ptrtoint ptr %pflip to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %pflip, align 4
  %42 = ptrtoint ptr %crtc_id42 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %crtc_id42, align 8
  %base44 = getelementptr inbounds %struct.radeon_flip_work, ptr %__work, i32 0, i32 5
  %44 = ptrtoint ptr %base44 to i32
  call void @__asan_load8_noabort(i32 %44)
  %45 = load i64, ptr %base44, align 8
  %async = getelementptr inbounds %struct.radeon_flip_work, ptr %__work, i32 0, i32 9
  %46 = ptrtoint ptr %async to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %async, align 4, !range !311
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %47)
  %tobool45 = icmp ne i8 %47, 0
  tail call void %41(ptr noundef %1, i32 noundef %43, i64 noundef %45, i1 noundef zeroext %tobool45) #10
  %flip_status = getelementptr inbounds %struct.radeon_crtc, ptr %7, i32 0, i32 26
  %48 = ptrtoint ptr %flip_status to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 2, ptr %flip_status, align 8
  %49 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %7, align 8
  %event_lock47 = getelementptr inbounds %struct.drm_device, ptr %50, i32 0, i32 28
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %event_lock47, i32 noundef %call37) #10
  tail call void @up_read(ptr noundef %exclusive_lock) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %hpos) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %vpos) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @radeon_unpin_work_func(ptr noundef %__work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %old_rbo = getelementptr i8, ptr %__work, i32 72
  %0 = ptrtoint ptr %old_rbo to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %old_rbo, align 4
  %resv32.i.i = getelementptr inbounds %struct.radeon_bo, ptr %1, i32 0, i32 4, i32 0, i32 9
  %2 = ptrtoint ptr %resv32.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %resv32.i.i, align 8
  %call.i.i.i = tail call i32 @ww_mutex_lock_interruptible(ptr noundef %3, ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -4, i32 %call.i.i.i)
  %cmp.i.i = icmp eq i32 %call.i.i.i, -4
  %retval.1.i.i = select i1 %cmp.i.i, i32 -512, i32 %call.i.i.i
  %4 = zext i32 %retval.1.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.168)
  switch i32 %retval.1.i.i, label %do.end.i [
    i32 0, label %if.then
    i32 -512, label %entry.if.else_crit_edge
  ], !prof !328

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %rdev.i = getelementptr inbounds %struct.radeon_bo, ptr %1, i32 0, i32 13
  %5 = ptrtoint ptr %rdev.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %rdev.i, align 8
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.50, ptr noundef %1) #16
  br label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %9 = ptrtoint ptr %old_rbo to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %old_rbo, align 4
  tail call void @radeon_bo_unpin(ptr noundef %10) #10
  %11 = ptrtoint ptr %old_rbo to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %old_rbo, align 4
  %tbo.i = getelementptr inbounds %struct.radeon_bo, ptr %12, i32 0, i32 4
  %bdev.i.i.i = getelementptr inbounds %struct.radeon_bo, ptr %12, i32 0, i32 4, i32 1
  %13 = ptrtoint ptr %bdev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %bdev.i.i.i, align 8
  %lru_lock.i.i.i = getelementptr inbounds %struct.ttm_device, ptr %14, i32 0, i32 6
  tail call void @_raw_spin_lock(ptr noundef %lru_lock.i.i.i) #10
  %resource.i.i.i = getelementptr inbounds %struct.radeon_bo, ptr %12, i32 0, i32 4, i32 6
  %15 = ptrtoint ptr %resource.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %resource.i.i.i, align 4
  tail call void @ttm_bo_move_to_lru_tail(ptr noundef %tbo.i, ptr noundef %16, ptr noundef null) #10
  %17 = ptrtoint ptr %bdev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %bdev.i.i.i, align 8
  %lru_lock2.i.i.i = getelementptr inbounds %struct.ttm_device, ptr %18, i32 0, i32 6
  tail call void @_raw_spin_unlock(ptr noundef %lru_lock2.i.i.i) #10
  %resv.i.i = getelementptr inbounds %struct.radeon_bo, ptr %12, i32 0, i32 4, i32 0, i32 9
  %19 = ptrtoint ptr %resv.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %resv.i.i, align 8
  tail call void @dma_resv_reset_shared_max(ptr noundef %20) #10
  tail call void @ww_mutex_unlock(ptr noundef %20) #10
  br label %if.end

if.else:                                          ; preds = %do.end.i, %entry.if.else_crit_edge
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.49) #10
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %21 = ptrtoint ptr %old_rbo to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %old_rbo, align 4
  %tbo = getelementptr inbounds %struct.radeon_bo, ptr %22, i32 0, i32 4
  %tobool.not.i = icmp eq ptr %tbo, null
  br i1 %tobool.not.i, label %if.end.drm_gem_object_put.exit_crit_edge, label %if.then.i

if.end.drm_gem_object_put.exit_crit_edge:         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %drm_gem_object_put.exit

if.then.i:                                        ; preds = %if.end
  %call.i.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %tbo, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !322
  tail call void @llvm.prefetch.p0(ptr nonnull %tbo, i32 1, i32 3, i32 1) #10
  %23 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %tbo, ptr nonnull %tbo, i32 1, ptr nonnull elementtype(i32) %tbo) #10, !srcloc !323
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %23, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i.i, label %if.then.i.i.i, label %if.end5.i.i.i.i.i.i

if.end5.i.i.i.i.i.i:                              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i, label %if.end5.i.i.i.i.i.i.drm_gem_object_put.exit_crit_edge, label %if.then10.i.i.i.i.i.i, !prof !320

if.end5.i.i.i.i.i.i.drm_gem_object_put.exit_crit_edge: ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %drm_gem_object_put.exit

if.then10.i.i.i.i.i.i:                            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef nonnull %tbo, i32 noundef 3) #10
  br label %drm_gem_object_put.exit

if.then.i.i.i:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !324
  tail call void @drm_gem_object_free(ptr noundef nonnull %tbo) #10, !callees !325
  br label %drm_gem_object_put.exit

drm_gem_object_put.exit:                          ; preds = %if.then.i.i.i, %if.then10.i.i.i.i.i.i, %if.end5.i.i.i.i.i.i.drm_gem_object_put.exit_crit_edge, %if.end.drm_gem_object_put.exit_crit_edge
  %add.ptr = getelementptr i8, ptr %__work, i32 -44
  tail call void @kfree(ptr noundef %add.ptr) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @radeon_bo_pin_restricted(ptr noundef, i32 noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @radeon_bo_unreserve(ptr noundef %bo) unnamed_addr #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %tbo = getelementptr inbounds %struct.radeon_bo, ptr %bo, i32 0, i32 4
  %bdev.i.i = getelementptr inbounds %struct.radeon_bo, ptr %bo, i32 0, i32 4, i32 1
  %0 = ptrtoint ptr %bdev.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bdev.i.i, align 8
  %lru_lock.i.i = getelementptr inbounds %struct.ttm_device, ptr %1, i32 0, i32 6
  tail call void @_raw_spin_lock(ptr noundef %lru_lock.i.i) #10
  %resource.i.i = getelementptr inbounds %struct.radeon_bo, ptr %bo, i32 0, i32 4, i32 6
  %2 = ptrtoint ptr %resource.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %resource.i.i, align 4
  tail call void @ttm_bo_move_to_lru_tail(ptr noundef %tbo, ptr noundef %3, ptr noundef null) #10
  %4 = ptrtoint ptr %bdev.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bdev.i.i, align 8
  %lru_lock2.i.i = getelementptr inbounds %struct.ttm_device, ptr %5, i32 0, i32 6
  tail call void @_raw_spin_unlock(ptr noundef %lru_lock2.i.i) #10
  %resv.i = getelementptr inbounds %struct.radeon_bo, ptr %bo, i32 0, i32 4, i32 0, i32 9
  %6 = ptrtoint ptr %resv.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %resv.i, align 8
  tail call void @dma_resv_reset_shared_max(ptr noundef %7) #10
  tail call void @ww_mutex_unlock(ptr noundef %7) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @radeon_bo_get_tiling_flags(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @drm_crtc_vblank_count(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @radeon_bo_unpin(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @radeon_fence_wait(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @radeon_gpu_reset(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @radeon_irq_kms_pflip_irq_get(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_fence_wait_timeout(ptr noundef, i1 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ww_mutex_lock_interruptible(ptr noundef, ptr noundef) local_unnamed_addr #2

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
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_is_held_type(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_fence_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @radeon_get_atom_connector_info_from_supported_devices_table(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @radeon_get_atom_connector_info_from_object_table(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @radeon_get_legacy_connector_info_from_bios(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @radeon_get_legacy_connector_info_from_table(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @radeon_setup_encoder_clones(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @r100_mm_rreg_slow(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

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

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 154)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 154)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #8 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { nounwind readnone willreturn }
attributes #14 = { nounwind readnone }
attributes #15 = { nounwind allocsize(2) }
attributes #16 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !99, !101, !102, !104, !106, !108, !110, !112, !114, !116, !118, !119, !120, !121, !122, !124, !126, !127, !128, !130, !131, !132, !133, !135, !136, !137, !139, !140, !141, !143, !144, !146, !147, !148, !150, !151, !152, !154, !155, !156, !158, !159, !160, !162, !163, !164, !166, !167, !168, !170, !171, !172, !174, !175, !176, !178, !179, !180, !182, !183, !184, !186, !187, !188, !190, !191, !192, !194, !195, !196, !198, !199, !200, !202, !203, !204, !206, !207, !208, !210, !212, !214, !216, !218, !220, !222, !224, !226, !228, !230, !232, !234, !236, !238, !240, !242, !244, !246, !248, !250, !252, !254, !256, !258, !260, !262, !264, !266, !268, !270, !272, !274, !276, !278, !280, !282, !284, !286, !288, !290, !292, !294, !296, !298, !300}
!llvm.module.flags = !{!302, !303, !304, !305, !306, !307, !308, !309}
!llvm.ident = !{!310}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/radeon/radeon_display.c", i32 307, i32 3}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/radeon/radeon_display.c", i32 1088, i32 2}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/radeon/radeon_display.c", i32 1127, i32 2}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/radeon/radeon_display.c", i32 1280, i32 2}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/radeon/radeon_display.c", i32 1748, i32 5}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/radeon/radeon_display.c", i32 129, i32 2}
!12 = !{ptr @radeon_fb_funcs, !13, !"radeon_fb_funcs", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/radeon/radeon_display.c", i32 1287, i32 43}
!14 = !{ptr @radeon_mode_funcs, !15, !"radeon_mode_funcs", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/radeon/radeon_display.c", i32 1348, i32 43}
!16 = !{ptr @.str.6, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/radeon/radeon_display.c", i32 1320, i32 3}
!18 = !{ptr @.str.7, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.9, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.10, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @radeon_user_framebuffer_create._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @radeon_user_framebuffer_create._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.11, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/gpu/drm/radeon/radeon_display.c", i32 1327, i32 3}
!26 = !{ptr @.str.12, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/gpu/drm/radeon/radeon_display.c", i32 1400, i32 46}
!28 = !{ptr @.str.13, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/gpu/drm/radeon/radeon_display.c", i32 1409, i32 10}
!30 = !{ptr @.str.14, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/gpu/drm/radeon/radeon_display.c", i32 1414, i32 44}
!32 = !{ptr @.str.15, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/gpu/drm/radeon/radeon_display.c", i32 1423, i32 9}
!34 = !{ptr @.str.16, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/gpu/drm/radeon/radeon_display.c", i32 1429, i32 9}
!36 = !{ptr @.str.17, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/gpu/drm/radeon/radeon_display.c", i32 1434, i32 6}
!38 = !{ptr @.str.18, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/gpu/drm/radeon/radeon_display.c", i32 1440, i32 6}
!40 = !{ptr @.str.19, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/gpu/drm/radeon/radeon_display.c", i32 1447, i32 7}
!42 = !{ptr @.str.20, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/gpu/drm/radeon/radeon_display.c", i32 1453, i32 7}
!44 = !{ptr @.str.21, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/gpu/drm/radeon/radeon_display.c", i32 1459, i32 7}
!46 = !{ptr @.str.22, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/gpu/drm/radeon/radeon_display.c", i32 1354, i32 8}
!48 = !{ptr @.str.23, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/gpu/drm/radeon/radeon_display.c", i32 1355, i32 7}
!50 = !{ptr @radeon_tmds_pll_enum_list, !51, !"radeon_tmds_pll_enum_list", i1 false, i1 false}
!51 = !{!"../drivers/gpu/drm/radeon/radeon_display.c", i32 1353, i32 40}
!52 = !{ptr @.str.24, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/gpu/drm/radeon/radeon_display.c", i32 1359, i32 18}
!54 = !{ptr @.str.25, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/gpu/drm/radeon/radeon_display.c", i32 1360, i32 16}
!56 = !{ptr @.str.26, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/gpu/drm/radeon/radeon_display.c", i32 1361, i32 18}
!58 = !{ptr @.str.27, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/gpu/drm/radeon/radeon_display.c", i32 1362, i32 19}
!60 = !{ptr @.str.28, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/gpu/drm/radeon/radeon_display.c", i32 1363, i32 19}
!62 = !{ptr @.str.29, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/gpu/drm/radeon/radeon_display.c", i32 1364, i32 22}
!64 = !{ptr @.str.30, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/gpu/drm/radeon/radeon_display.c", i32 1365, i32 19}
!66 = !{ptr @.str.31, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/gpu/drm/radeon/radeon_display.c", i32 1366, i32 18}
!68 = !{ptr @radeon_tv_std_enum_list, !69, !"radeon_tv_std_enum_list", i1 false, i1 false}
!69 = !{!"../drivers/gpu/drm/radeon/radeon_display.c", i32 1358, i32 40}
!70 = !{ptr @.str.32, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/gpu/drm/radeon/radeon_display.c", i32 1370, i32 20}
!72 = !{ptr @.str.33, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/gpu/drm/radeon/radeon_display.c", i32 1371, i32 18}
!74 = !{ptr @.str.34, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/gpu/drm/radeon/radeon_display.c", i32 1372, i32 20}
!76 = !{ptr @radeon_underscan_enum_list, !77, !"radeon_underscan_enum_list", i1 false, i1 false}
!77 = !{!"../drivers/gpu/drm/radeon/radeon_display.c", i32 1369, i32 40}
!78 = !{ptr @radeon_audio_enum_list, !79, !"radeon_audio_enum_list", i1 false, i1 false}
!79 = !{!"../drivers/gpu/drm/radeon/radeon_display.c", i32 1375, i32 40}
!80 = !{ptr @radeon_dither_enum_list, !81, !"radeon_dither_enum_list", i1 false, i1 false}
!81 = !{!"../drivers/gpu/drm/radeon/radeon_display.c", i32 1382, i32 40}
!82 = !{ptr @.str.35, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/gpu/drm/radeon/radeon_display.c", i32 1388, i32 31}
!84 = !{ptr @.str.36, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/gpu/drm/radeon/radeon_display.c", i32 1389, i32 29}
!86 = !{ptr @.str.37, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/gpu/drm/radeon/radeon_display.c", i32 1390, i32 32}
!88 = !{ptr @.str.38, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/gpu/drm/radeon/radeon_display.c", i32 1391, i32 32}
!90 = !{ptr @radeon_output_csc_enum_list, !91, !"radeon_output_csc_enum_list", i1 false, i1 false}
!91 = !{!"../drivers/gpu/drm/radeon/radeon_display.c", i32 1387, i32 40}
!92 = !{ptr @.str.39, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/gpu/drm/radeon/radeon_display.c", i32 688, i32 44}
!94 = !{ptr @radeon_crtc_funcs, !95, !"radeon_crtc_funcs", i1 false, i1 false}
!95 = !{!"../drivers/gpu/drm/radeon/radeon_display.c", i32 662, i32 36}
!96 = !{ptr @radeon_crtc_page_flip_target.__key, !97, !"__key", i1 false, i1 false}
!97 = !{!"../drivers/gpu/drm/radeon/radeon_display.c", i32 500, i32 2}
!98 = !{ptr @.str.40, !97, !"<string literal>", i1 false, i1 false}
!99 = !{ptr @radeon_crtc_page_flip_target.__key.41, !100, !"__key", i1 false, i1 false}
!100 = !{!"../drivers/gpu/drm/radeon/radeon_display.c", i32 501, i32 2}
!101 = !{ptr @.str.42, !100, !"<string literal>", i1 false, i1 false}
!102 = !{ptr @.str.43, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/gpu/drm/radeon/radeon_display.c", i32 519, i32 2}
!104 = !{ptr @.str.44, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/gpu/drm/radeon/radeon_display.c", i32 524, i32 3}
!106 = !{ptr @.str.45, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/gpu/drm/radeon/radeon_display.c", i32 533, i32 3}
!108 = !{ptr @.str.46, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/gpu/drm/radeon/radeon_display.c", i32 583, i32 3}
!110 = !{ptr @.str.47, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/gpu/drm/radeon/radeon_display.c", i32 601, i32 3}
!112 = !{ptr @.str.48, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/gpu/drm/radeon/radeon_display.c", i32 437, i32 4}
!114 = !{ptr @.str.49, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/gpu/drm/radeon/radeon_display.c", i32 276, i32 3}
!116 = !{ptr @.str.50, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/gpu/drm/radeon/radeon_object.h", i32 71, i32 4}
!118 = !{ptr @.str.51, !117, !"<string literal>", i1 false, i1 false}
!119 = !{ptr @.str.52, !117, !"<string literal>", i1 false, i1 false}
!120 = !{ptr @radeon_bo_reserve._entry, !117, !"_entry", i1 false, i1 false}
!121 = !{ptr @radeon_bo_reserve._entry_ptr, !117, !"_entry_ptr", i1 false, i1 false}
!122 = distinct !{null, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../include/drm/ttm/ttm_bo_driver.h", i32 140, i32 7}
!124 = distinct !{null, !125, !"__warned", i1 false, i1 false}
!125 = !{!"../include/linux/dma-resv.h", i32 440, i32 9}
!126 = !{ptr @.str.54, !125, !"<string literal>", i1 false, i1 false}
!127 = !{ptr @.str.55, !125, !"<string literal>", i1 false, i1 false}
!128 = !{ptr @.str.56, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/gpu/drm/radeon/radeon_display.c", i32 772, i32 2}
!130 = !{ptr @.str.57, !129, !"<string literal>", i1 false, i1 false}
!131 = !{ptr @radeon_print_display_setup._entry, !129, !"_entry", i1 false, i1 false}
!132 = !{ptr @radeon_print_display_setup._entry_ptr, !129, !"_entry_ptr", i1 false, i1 false}
!133 = !{ptr @.str.59, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/gpu/drm/radeon/radeon_display.c", i32 775, i32 3}
!135 = !{ptr @radeon_print_display_setup._entry.58, !134, !"_entry", i1 false, i1 false}
!136 = !{ptr @radeon_print_display_setup._entry_ptr.60, !134, !"_entry_ptr", i1 false, i1 false}
!137 = !{ptr @.str.62, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/gpu/drm/radeon/radeon_display.c", i32 776, i32 3}
!139 = !{ptr @radeon_print_display_setup._entry.61, !138, !"_entry", i1 false, i1 false}
!140 = !{ptr @radeon_print_display_setup._entry_ptr.63, !138, !"_entry_ptr", i1 false, i1 false}
!141 = !{ptr @radeon_print_display_setup._entry.64, !142, !"_entry", i1 false, i1 false}
!142 = !{!"../drivers/gpu/drm/radeon/radeon_display.c", i32 778, i32 4}
!143 = !{ptr @radeon_print_display_setup._entry_ptr.65, !142, !"_entry_ptr", i1 false, i1 false}
!144 = !{ptr @.str.67, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/gpu/drm/radeon/radeon_display.c", i32 780, i32 4}
!146 = !{ptr @radeon_print_display_setup._entry.66, !145, !"_entry", i1 false, i1 false}
!147 = !{ptr @radeon_print_display_setup._entry_ptr.68, !145, !"_entry_ptr", i1 false, i1 false}
!148 = !{ptr @.str.70, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/gpu/drm/radeon/radeon_display.c", i32 790, i32 5}
!150 = !{ptr @radeon_print_display_setup._entry.69, !149, !"_entry", i1 false, i1 false}
!151 = !{ptr @radeon_print_display_setup._entry_ptr.71, !149, !"_entry_ptr", i1 false, i1 false}
!152 = !{ptr @.str.73, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/gpu/drm/radeon/radeon_display.c", i32 794, i32 5}
!154 = !{ptr @radeon_print_display_setup._entry.72, !153, !"_entry", i1 false, i1 false}
!155 = !{ptr @radeon_print_display_setup._entry_ptr.74, !153, !"_entry_ptr", i1 false, i1 false}
!156 = !{ptr @.str.76, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/gpu/drm/radeon/radeon_display.c", i32 804, i32 5}
!158 = !{ptr @radeon_print_display_setup._entry.75, !157, !"_entry", i1 false, i1 false}
!159 = !{ptr @radeon_print_display_setup._entry_ptr.77, !157, !"_entry_ptr", i1 false, i1 false}
!160 = !{ptr @.str.79, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/gpu/drm/radeon/radeon_display.c", i32 806, i32 3}
!162 = !{ptr @radeon_print_display_setup._entry.78, !161, !"_entry", i1 false, i1 false}
!163 = !{ptr @radeon_print_display_setup._entry_ptr.80, !161, !"_entry_ptr", i1 false, i1 false}
!164 = !{ptr @.str.82, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/gpu/drm/radeon/radeon_display.c", i32 812, i32 6}
!166 = !{ptr @radeon_print_display_setup._entry.81, !165, !"_entry", i1 false, i1 false}
!167 = !{ptr @radeon_print_display_setup._entry_ptr.83, !165, !"_entry_ptr", i1 false, i1 false}
!168 = !{ptr @.str.85, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/gpu/drm/radeon/radeon_display.c", i32 814, i32 6}
!170 = !{ptr @radeon_print_display_setup._entry.84, !169, !"_entry", i1 false, i1 false}
!171 = !{ptr @radeon_print_display_setup._entry_ptr.86, !169, !"_entry_ptr", i1 false, i1 false}
!172 = !{ptr @.str.88, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/gpu/drm/radeon/radeon_display.c", i32 816, i32 6}
!174 = !{ptr @radeon_print_display_setup._entry.87, !173, !"_entry", i1 false, i1 false}
!175 = !{ptr @radeon_print_display_setup._entry_ptr.89, !173, !"_entry_ptr", i1 false, i1 false}
!176 = !{ptr @.str.91, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../drivers/gpu/drm/radeon/radeon_display.c", i32 818, i32 6}
!178 = !{ptr @radeon_print_display_setup._entry.90, !177, !"_entry", i1 false, i1 false}
!179 = !{ptr @radeon_print_display_setup._entry_ptr.92, !177, !"_entry_ptr", i1 false, i1 false}
!180 = !{ptr @.str.94, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../drivers/gpu/drm/radeon/radeon_display.c", i32 820, i32 6}
!182 = !{ptr @radeon_print_display_setup._entry.93, !181, !"_entry", i1 false, i1 false}
!183 = !{ptr @radeon_print_display_setup._entry_ptr.95, !181, !"_entry_ptr", i1 false, i1 false}
!184 = !{ptr @.str.97, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../drivers/gpu/drm/radeon/radeon_display.c", i32 822, i32 6}
!186 = !{ptr @radeon_print_display_setup._entry.96, !185, !"_entry", i1 false, i1 false}
!187 = !{ptr @radeon_print_display_setup._entry_ptr.98, !185, !"_entry_ptr", i1 false, i1 false}
!188 = !{ptr @.str.100, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../drivers/gpu/drm/radeon/radeon_display.c", i32 824, i32 6}
!190 = !{ptr @radeon_print_display_setup._entry.99, !189, !"_entry", i1 false, i1 false}
!191 = !{ptr @radeon_print_display_setup._entry_ptr.101, !189, !"_entry_ptr", i1 false, i1 false}
!192 = !{ptr @.str.103, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../drivers/gpu/drm/radeon/radeon_display.c", i32 826, i32 6}
!194 = !{ptr @radeon_print_display_setup._entry.102, !193, !"_entry", i1 false, i1 false}
!195 = !{ptr @radeon_print_display_setup._entry_ptr.104, !193, !"_entry_ptr", i1 false, i1 false}
!196 = !{ptr @.str.106, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../drivers/gpu/drm/radeon/radeon_display.c", i32 828, i32 6}
!198 = !{ptr @radeon_print_display_setup._entry.105, !197, !"_entry", i1 false, i1 false}
!199 = !{ptr @radeon_print_display_setup._entry_ptr.107, !197, !"_entry_ptr", i1 false, i1 false}
!200 = !{ptr @.str.109, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../drivers/gpu/drm/radeon/radeon_display.c", i32 830, i32 6}
!202 = !{ptr @radeon_print_display_setup._entry.108, !201, !"_entry", i1 false, i1 false}
!203 = !{ptr @radeon_print_display_setup._entry_ptr.110, !201, !"_entry_ptr", i1 false, i1 false}
!204 = !{ptr @.str.112, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../drivers/gpu/drm/radeon/radeon_display.c", i32 832, i32 6}
!206 = !{ptr @radeon_print_display_setup._entry.111, !205, !"_entry", i1 false, i1 false}
!207 = !{ptr @radeon_print_display_setup._entry_ptr.113, !205, !"_entry_ptr", i1 false, i1 false}
!208 = !{ptr @.str.114, !209, !"<string literal>", i1 false, i1 false}
!209 = !{!"../drivers/gpu/drm/radeon/radeon_display.c", i32 755, i32 2}
!210 = !{ptr @.str.115, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../drivers/gpu/drm/radeon/radeon_display.c", i32 756, i32 2}
!212 = !{ptr @.str.116, !213, !"<string literal>", i1 false, i1 false}
!213 = !{!"../drivers/gpu/drm/radeon/radeon_display.c", i32 757, i32 2}
!214 = !{ptr @.str.117, !215, !"<string literal>", i1 false, i1 false}
!215 = !{!"../drivers/gpu/drm/radeon/radeon_display.c", i32 758, i32 2}
!216 = !{ptr @.str.118, !217, !"<string literal>", i1 false, i1 false}
!217 = !{!"../drivers/gpu/drm/radeon/radeon_display.c", i32 759, i32 2}
!218 = !{ptr @.str.119, !219, !"<string literal>", i1 false, i1 false}
!219 = !{!"../drivers/gpu/drm/radeon/radeon_display.c", i32 760, i32 2}
!220 = !{ptr @hpd_names, !221, !"hpd_names", i1 false, i1 false}
!221 = !{!"../drivers/gpu/drm/radeon/radeon_display.c", i32 754, i32 20}
!222 = !{ptr @.str.120, !223, !"<string literal>", i1 false, i1 false}
!223 = !{!"../drivers/gpu/drm/radeon/radeon_display.c", i32 714, i32 2}
!224 = !{ptr @.str.121, !225, !"<string literal>", i1 false, i1 false}
!225 = !{!"../drivers/gpu/drm/radeon/radeon_display.c", i32 715, i32 2}
!226 = !{ptr @.str.122, !227, !"<string literal>", i1 false, i1 false}
!227 = !{!"../drivers/gpu/drm/radeon/radeon_display.c", i32 716, i32 2}
!228 = !{ptr @.str.123, !229, !"<string literal>", i1 false, i1 false}
!229 = !{!"../drivers/gpu/drm/radeon/radeon_display.c", i32 717, i32 2}
!230 = !{ptr @.str.124, !231, !"<string literal>", i1 false, i1 false}
!231 = !{!"../drivers/gpu/drm/radeon/radeon_display.c", i32 718, i32 2}
!232 = !{ptr @.str.125, !233, !"<string literal>", i1 false, i1 false}
!233 = !{!"../drivers/gpu/drm/radeon/radeon_display.c", i32 719, i32 2}
!234 = !{ptr @.str.126, !235, !"<string literal>", i1 false, i1 false}
!235 = !{!"../drivers/gpu/drm/radeon/radeon_display.c", i32 720, i32 2}
!236 = !{ptr @.str.127, !237, !"<string literal>", i1 false, i1 false}
!237 = !{!"../drivers/gpu/drm/radeon/radeon_display.c", i32 721, i32 2}
!238 = !{ptr @.str.128, !239, !"<string literal>", i1 false, i1 false}
!239 = !{!"../drivers/gpu/drm/radeon/radeon_display.c", i32 722, i32 2}
!240 = !{ptr @.str.129, !241, !"<string literal>", i1 false, i1 false}
!241 = !{!"../drivers/gpu/drm/radeon/radeon_display.c", i32 723, i32 2}
!242 = !{ptr @.str.130, !243, !"<string literal>", i1 false, i1 false}
!243 = !{!"../drivers/gpu/drm/radeon/radeon_display.c", i32 724, i32 2}
!244 = !{ptr @.str.131, !245, !"<string literal>", i1 false, i1 false}
!245 = !{!"../drivers/gpu/drm/radeon/radeon_display.c", i32 725, i32 2}
!246 = !{ptr @.str.132, !247, !"<string literal>", i1 false, i1 false}
!247 = !{!"../drivers/gpu/drm/radeon/radeon_display.c", i32 726, i32 2}
!248 = !{ptr @.str.133, !249, !"<string literal>", i1 false, i1 false}
!249 = !{!"../drivers/gpu/drm/radeon/radeon_display.c", i32 727, i32 2}
!250 = !{ptr @.str.134, !251, !"<string literal>", i1 false, i1 false}
!251 = !{!"../drivers/gpu/drm/radeon/radeon_display.c", i32 728, i32 2}
!252 = !{ptr @.str.135, !253, !"<string literal>", i1 false, i1 false}
!253 = !{!"../drivers/gpu/drm/radeon/radeon_display.c", i32 729, i32 2}
!254 = !{ptr @.str.136, !255, !"<string literal>", i1 false, i1 false}
!255 = !{!"../drivers/gpu/drm/radeon/radeon_display.c", i32 730, i32 2}
!256 = !{ptr @.str.137, !257, !"<string literal>", i1 false, i1 false}
!257 = !{!"../drivers/gpu/drm/radeon/radeon_display.c", i32 731, i32 2}
!258 = !{ptr @.str.138, !259, !"<string literal>", i1 false, i1 false}
!259 = !{!"../drivers/gpu/drm/radeon/radeon_display.c", i32 732, i32 2}
!260 = !{ptr @.str.139, !261, !"<string literal>", i1 false, i1 false}
!261 = !{!"../drivers/gpu/drm/radeon/radeon_display.c", i32 733, i32 2}
!262 = !{ptr @.str.140, !263, !"<string literal>", i1 false, i1 false}
!263 = !{!"../drivers/gpu/drm/radeon/radeon_display.c", i32 734, i32 2}
!264 = !{ptr @.str.141, !265, !"<string literal>", i1 false, i1 false}
!265 = !{!"../drivers/gpu/drm/radeon/radeon_display.c", i32 735, i32 2}
!266 = !{ptr @.str.142, !267, !"<string literal>", i1 false, i1 false}
!267 = !{!"../drivers/gpu/drm/radeon/radeon_display.c", i32 736, i32 2}
!268 = !{ptr @.str.143, !269, !"<string literal>", i1 false, i1 false}
!269 = !{!"../drivers/gpu/drm/radeon/radeon_display.c", i32 737, i32 2}
!270 = !{ptr @.str.144, !271, !"<string literal>", i1 false, i1 false}
!271 = !{!"../drivers/gpu/drm/radeon/radeon_display.c", i32 738, i32 2}
!272 = !{ptr @.str.145, !273, !"<string literal>", i1 false, i1 false}
!273 = !{!"../drivers/gpu/drm/radeon/radeon_display.c", i32 739, i32 2}
!274 = !{ptr @.str.146, !275, !"<string literal>", i1 false, i1 false}
!275 = !{!"../drivers/gpu/drm/radeon/radeon_display.c", i32 740, i32 2}
!276 = !{ptr @.str.147, !277, !"<string literal>", i1 false, i1 false}
!277 = !{!"../drivers/gpu/drm/radeon/radeon_display.c", i32 741, i32 2}
!278 = !{ptr @.str.148, !279, !"<string literal>", i1 false, i1 false}
!279 = !{!"../drivers/gpu/drm/radeon/radeon_display.c", i32 742, i32 2}
!280 = !{ptr @.str.149, !281, !"<string literal>", i1 false, i1 false}
!281 = !{!"../drivers/gpu/drm/radeon/radeon_display.c", i32 743, i32 2}
!282 = !{ptr @.str.150, !283, !"<string literal>", i1 false, i1 false}
!283 = !{!"../drivers/gpu/drm/radeon/radeon_display.c", i32 744, i32 2}
!284 = !{ptr @.str.151, !285, !"<string literal>", i1 false, i1 false}
!285 = !{!"../drivers/gpu/drm/radeon/radeon_display.c", i32 745, i32 2}
!286 = !{ptr @.str.152, !287, !"<string literal>", i1 false, i1 false}
!287 = !{!"../drivers/gpu/drm/radeon/radeon_display.c", i32 746, i32 2}
!288 = !{ptr @.str.153, !289, !"<string literal>", i1 false, i1 false}
!289 = !{!"../drivers/gpu/drm/radeon/radeon_display.c", i32 747, i32 2}
!290 = !{ptr @.str.154, !291, !"<string literal>", i1 false, i1 false}
!291 = !{!"../drivers/gpu/drm/radeon/radeon_display.c", i32 748, i32 2}
!292 = !{ptr @.str.155, !293, !"<string literal>", i1 false, i1 false}
!293 = !{!"../drivers/gpu/drm/radeon/radeon_display.c", i32 749, i32 2}
!294 = !{ptr @.str.156, !295, !"<string literal>", i1 false, i1 false}
!295 = !{!"../drivers/gpu/drm/radeon/radeon_display.c", i32 750, i32 2}
!296 = !{ptr @.str.157, !297, !"<string literal>", i1 false, i1 false}
!297 = !{!"../drivers/gpu/drm/radeon/radeon_display.c", i32 751, i32 2}
!298 = !{ptr @encoder_names, !299, !"encoder_names", i1 false, i1 false}
!299 = !{!"../drivers/gpu/drm/radeon/radeon_display.c", i32 713, i32 20}
!300 = !{ptr @radeon_afmt_init.eg_offsets, !301, !"eg_offsets", i1 false, i1 false}
!301 = !{!"../drivers/gpu/drm/radeon/radeon_display.c", i32 1498, i32 19}
!302 = !{i32 1, !"wchar_size", i32 2}
!303 = !{i32 1, !"min_enum_size", i32 4}
!304 = !{i32 8, !"branch-target-enforcement", i32 0}
!305 = !{i32 8, !"sign-return-address", i32 0}
!306 = !{i32 8, !"sign-return-address-all", i32 0}
!307 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!308 = !{i32 7, !"uwtable", i32 1}
!309 = !{i32 7, !"frame-pointer", i32 2}
!310 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!311 = !{i8 0, i8 2}
!312 = !{i64 2158501008}
!313 = !{i64 5039817}
!314 = !{i64 2158614910}
!315 = !{i64 5039620}
!316 = !{i64 5040235}
!317 = !{i64 2158500601}
!318 = !{i64 2158623236}
!319 = !{!"auto-init"}
!320 = !{!"branch_weights", i32 2000, i32 1}
!321 = !{i64 2148570407, i64 2148570687, i64 2148571021, i64 2148571355}
!322 = !{i64 2148810960}
!323 = !{i64 2148725400, i64 2148725432, i64 2148725461, i64 2148725495, i64 2148725526, i64 2148725549}
!324 = !{i64 2150113801}
!325 = !{ptr @dma_fence_release, ptr @drm_gem_object_free}
!326 = !{i64 2148722935, i64 2148722967, i64 2148722996, i64 2148723030, i64 2148723061, i64 2148723084}
!327 = !{!"branch_weights", i32 1, i32 2000}
!328 = !{!"branch_weights", i32 1, i32 4000, i32 1}
