; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/radeon/radeon_legacy_crtc.c_pt.bc'
source_filename = "../drivers/gpu/drm/radeon/radeon_legacy_crtc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.drm_crtc_helper_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.anon.110 = type { i32, i32 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
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
%struct.drm_crtc = type { ptr, ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, ptr, ptr, i32, i32, i32, i8, %struct.drm_display_mode, %struct.drm_display_mode, i32, i32, ptr, i32, ptr, ptr, %struct.drm_object_properties, ptr, ptr, %struct.list_head, %struct.spinlock, ptr, %struct.drm_crtc_crc, i32, %struct.spinlock, i32, [32 x i8], ptr }
%struct.drm_mode_object = type { i32, i32, ptr, %struct.kref, ptr }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }
%struct.drm_object_properties = type { i32, [24 x ptr], [24 x i64] }
%struct.drm_crtc_crc = type { %struct.spinlock, ptr, i8, i8, ptr, i32, i32, i32, %struct.wait_queue_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.drm_plane = type { ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, i32, ptr, i32, i8, ptr, i32, ptr, ptr, ptr, ptr, %struct.drm_object_properties, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_framebuffer = type { ptr, %struct.list_head, %struct.drm_mode_object, [16 x i8], ptr, ptr, [4 x i32], [4 x i32], i64, i32, i32, i32, i32, i32, %struct.list_head, [4 x ptr] }
%struct.drm_format_info = type { i32, i8, i8, %union.anon.83, [4 x i8], [4 x i8], i8, i8, i8, i8 }
%union.anon.83 = type { [4 x i8] }
%struct.ttm_device = type { %struct.list_head, ptr, %struct.ttm_resource_manager, [8 x ptr], ptr, %struct.ttm_pool, %struct.spinlock, %struct.list_head, %struct.list_head, ptr, %struct.delayed_work }
%struct.ttm_resource_manager = type { i8, i8, i64, ptr, %struct.spinlock, [4 x %struct.list_head], ptr }
%struct.ttm_pool = type { ptr, i8, i8, [3 x %struct.anon.92] }
%struct.anon.92 = type { [12 x %struct.ttm_pool_type] }
%struct.ttm_pool_type = type { ptr, i32, i32, %struct.list_head, %struct.spinlock, %struct.list_head }
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
%struct.radeon_encoder_lvds = type { i16, i8, i8, i8, i16, i8, i16, i8, i32, %struct.drm_display_mode, ptr, i32, i8 }

@.str = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\00", [30 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"No FB bound\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"trying to scanout microtiled buffer\0A\00", [59 x i8] zeroinitializer }, align 32
@legacy_helper_funcs = internal constant { %struct.drm_crtc_helper_funcs, [32 x i8] } { %struct.drm_crtc_helper_funcs { ptr @radeon_crtc_dpms, ptr @radeon_crtc_prepare, ptr @radeon_crtc_commit, ptr null, ptr @radeon_crtc_mode_fixup, ptr @radeon_crtc_mode_set, ptr null, ptr @radeon_crtc_set_base, ptr @radeon_crtc_set_base_atomic, ptr @radeon_crtc_disable, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @radeon_get_crtc_scanout_position }, [32 x i8] zeroinitializer }, align 32
@radeon_bo_reserve._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 71, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"%p reserve failed\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"radeon_bo_reserve\00", [46 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"drivers/gpu/drm/radeon/radeon_object.h\00", [57 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@radeon_bo_reserve._entry_ptr = internal global ptr @radeon_bo_reserve._entry, section ".printk_index", align 4
@.str.9 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"Mode need scaling but only first crtc can do that.\0A\00", [44 x i8] zeroinitializer }, align 32
@radeon_set_crtc_timing._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.12, i32 596, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\016[drm] crtc %d is connected to a TV\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"radeon_set_crtc_timing\00", [41 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"drivers/gpu/drm/radeon/radeon_legacy_crtc.c\00", [52 x i8] zeroinitializer }, align 32
@radeon_set_crtc_timing._entry_ptr = internal global ptr @radeon_set_crtc_timing._entry, section ".printk_index", align 4
@__const.radeon_set_pll.post_divs = private unnamed_addr constant [9 x %struct.anon.110] [%struct.anon.110 { i32 1, i32 0 }, %struct.anon.110 { i32 2, i32 1 }, %struct.anon.110 { i32 4, i32 2 }, %struct.anon.110 { i32 8, i32 3 }, %struct.anon.110 { i32 3, i32 4 }, %struct.anon.110 { i32 16, i32 5 }, %struct.anon.110 { i32 6, i32 6 }, %struct.anon.110 { i32 12, i32 7 }, %struct.anon.110 zeroinitializer], align 4
@.str.13 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"dc=%u, fd=%d, rd=%d, pd=%d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Wrote2: 0x%08x 0x%08x 0x%08x (0x%08x)\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Wrote2: rd=%u, fd=%u, pd=%u\0A\00", [35 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.16 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Wrote: 0x%08x 0x%08x 0x%08x (0x%08x)\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Wrote: rd=%d, fd=%d, pd=%d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"failed to reserve rbo before unpin\0A\00", [60 x i8] zeroinitializer }, align 32
@switch.table.radeon_crtc_do_set_base = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 512, i32 1024, i32 1280, i32 1536], [16 x i8] zeroinitializer }, align 32
@switch.table.radeon_crtc_mode_set = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 512, i32 1024, i32 1280, i32 1536], [16 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294966784]
@__sancov_gen_cov_switch_values.19 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.20 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294966784]
@__sancov_gen_cov_switch_values.21 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294966784]
@__sancov_gen_cov_switch_values.22 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.23 = internal global [12 x i64] [i64 10, i64 32, i64 7, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15, i64 16, i64 17]
@__sancov_gen_cov_switch_values.24 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.25 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294966784]
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 391, i32 2 }
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 394, i32 3 }
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 467, i32 3 }
@___asan_gen_.35 = private unnamed_addr constant [20 x i8] c"legacy_helper_funcs\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 1106, i32 43 }
@___asan_gen_.54 = private unnamed_addr constant [42 x i8] c"../drivers/gpu/drm/radeon/radeon_object.h\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 71, i32 4 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 1054, i32 4 }
@___asan_gen_.59 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 596, i32 5 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 830, i32 3 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 899, i32 3 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 904, i32 3 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 1005, i32 3 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 1010, i32 3 }
@___asan_gen_.86 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.87 = private constant [47 x i8] c"../drivers/gpu/drm/radeon/radeon_legacy_crtc.c\00", align 1
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 1098, i32 4 }
@___asan_gen_.89 = private unnamed_addr constant [37 x i8] c"switch.table.radeon_crtc_do_set_base\00", align 1
@___asan_gen_.90 = private unnamed_addr constant [34 x i8] c"switch.table.radeon_crtc_mode_set\00", align 1
@llvm.compiler.used = appending global [25 x ptr] [ptr @radeon_bo_reserve._entry, ptr @radeon_bo_reserve._entry_ptr, ptr @radeon_set_crtc_timing._entry, ptr @radeon_set_crtc_timing._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @legacy_helper_funcs, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @switch.table.radeon_crtc_do_set_base, ptr @switch.table.radeon_crtc_mode_set], section "llvm.metadata"
@0 = internal global [23 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @legacy_helper_funcs to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radeon_bo_reserve._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radeon_set_crtc_timing._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.radeon_crtc_do_set_base to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.radeon_crtc_mode_set to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @radeon_crtc_set_base(ptr nocapture noundef %crtc, i32 noundef %x, i32 noundef %y, ptr noundef %old_fb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @radeon_crtc_do_set_base(ptr noundef %crtc, ptr noundef %old_fb, i32 noundef %x, i32 noundef %y, i32 noundef 0)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @radeon_crtc_do_set_base(ptr nocapture noundef %crtc, ptr noundef readonly %fb, i32 noundef %x, i32 noundef %y, i32 noundef %atomic) local_unnamed_addr #0 align 64 {
entry:
  %base = alloca i64, align 8
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
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %base) #7
  %4 = ptrtoint ptr %base to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 -1, ptr %base, align 8, !annotation !47
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tiling_flags) #7
  %5 = ptrtoint ptr %tiling_flags to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %tiling_flags, align 4, !annotation !47
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str) #7
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
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.1) #7
  br label %cleanup347

if.end8:                                          ; preds = %land.lhs.true.if.end8_crit_edge, %entry.if.end8_crit_edge
  %target_fb.0 = phi ptr [ %fb, %entry.if.end8_crit_edge ], [ %9, %land.lhs.true.if.end8_crit_edge ]
  %format9 = getelementptr inbounds %struct.drm_framebuffer, ptr %target_fb.0, i32 0, i32 4
  %10 = ptrtoint ptr %format9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %format9, align 8
  %12 = getelementptr inbounds %struct.drm_format_info, ptr %11, i32 0, i32 3
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %12, align 2
  %conv = zext i8 %14 to i32
  %15 = add nuw nsw i32 %conv, 536870911
  %16 = and i32 %15, 536870911
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %16)
  %17 = icmp ult i32 %16, 4
  br i1 %17, label %switch.lookup, label %if.end8.cleanup347_crit_edge

if.end8.cleanup347_crit_edge:                     ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup347

switch.lookup:                                    ; preds = %if.end8
  %switch.gep = getelementptr inbounds [4 x i32], ptr @switch.table.radeon_crtc_do_set_base, i32 0, i32 %16
  %18 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %18)
  %switch.load = load i32, ptr %switch.gep, align 4
  %obj14 = getelementptr inbounds %struct.drm_framebuffer, ptr %target_fb.0, i32 0, i32 15
  %19 = ptrtoint ptr %obj14 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %obj14, align 4
  %add.ptr18 = getelementptr i8, ptr %20, i32 -96
  %resv32.i.i = getelementptr i8, ptr %20, i32 200
  %primary38 = getelementptr inbounds %struct.drm_crtc, ptr %crtc, i32 0, i32 6
  %size.i493 = getelementptr i8, ptr %20, i32 184
  br label %retry

retry:                                            ; preds = %cleanup, %switch.lookup
  %fb.addr.0 = phi ptr [ %fb, %switch.lookup ], [ null, %cleanup ]
  %21 = ptrtoint ptr %resv32.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %resv32.i.i, align 8
  %call.i.i.i = call i32 @ww_mutex_lock_interruptible(ptr noundef %22, ptr noundef null) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -4, i32 %call.i.i.i)
  %cmp.i.i = icmp eq i32 %call.i.i.i, -4
  %retval.1.i.i = select i1 %cmp.i.i, i32 -512, i32 %call.i.i.i
  %23 = zext i32 %retval.1.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %23, ptr @__sancov_gen_cov_switch_values)
  switch i32 %retval.1.i.i, label %do.end.i [
    i32 0, label %if.end23
    i32 -512, label %retry.cleanup347_crit_edge
  ], !prof !48

retry.cleanup347_crit_edge:                       ; preds = %retry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup347

do.end.i:                                         ; preds = %retry
  call void @__sanitizer_cov_trace_pc() #9
  %rdev.i = getelementptr i8, ptr %20, i32 464
  %24 = ptrtoint ptr %rdev.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %rdev.i, align 8
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %25, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %27, ptr noundef nonnull @.str.3, ptr noundef %add.ptr18) #10
  br label %cleanup347

if.end23:                                         ; preds = %retry
  %call24 = call i32 @radeon_bo_pin_restricted(ptr noundef %add.ptr18, i32 noundef 4, i64 noundef 134217728, ptr noundef nonnull %base) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %cmp25.not = icmp eq i32 %call24, 0
  br i1 %cmp25.not, label %if.end60, label %if.then33, !prof !49

if.then33:                                        ; preds = %if.end23
  call fastcc void @radeon_bo_unreserve(ptr noundef %add.ptr18)
  %tobool36.not = icmp ne ptr %fb.addr.0, null
  %28 = and i1 %tobool.not, %tobool36.not
  br i1 %28, label %land.lhs.true37, label %if.then33.cleanup347_crit_edge

if.then33.cleanup347_crit_edge:                   ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup347

land.lhs.true37:                                  ; preds = %if.then33
  %29 = ptrtoint ptr %primary38 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %primary38, align 4
  %fb39 = getelementptr inbounds %struct.drm_plane, ptr %30, i32 0, i32 12
  %31 = ptrtoint ptr %fb39 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %fb39, align 4
  %cmp40.not = icmp eq ptr %fb.addr.0, %32
  br i1 %cmp40.not, label %land.lhs.true37.cleanup347_crit_edge, label %if.then42

land.lhs.true37.cleanup347_crit_edge:             ; preds = %land.lhs.true37
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup347

if.then42:                                        ; preds = %land.lhs.true37
  %obj44 = getelementptr inbounds %struct.drm_framebuffer, ptr %fb.addr.0, i32 0, i32 15
  %33 = ptrtoint ptr %obj44 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %obj44, align 4
  %add.ptr47 = getelementptr i8, ptr %34, i32 -96
  %size.i = getelementptr i8, ptr %34, i32 184
  %35 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %size.i, align 8
  %37 = ptrtoint ptr %size.i493 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %size.i493, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %38, i32 %36)
  %cmp50.not = icmp ugt i32 %38, %36
  br i1 %cmp50.not, label %if.then42.cleanup347_crit_edge, label %land.lhs.true52

if.then42.cleanup347_crit_edge:                   ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup347

land.lhs.true52:                                  ; preds = %if.then42
  %call53 = call fastcc i32 @radeon_bo_reserve(ptr noundef %add.ptr47)
  %tobool54.not = icmp eq i32 %call53, 0
  br i1 %tobool54.not, label %cleanup, label %land.lhs.true52.cleanup347_crit_edge

land.lhs.true52.cleanup347_crit_edge:             ; preds = %land.lhs.true52
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup347

cleanup:                                          ; preds = %land.lhs.true52
  call void @__sanitizer_cov_trace_pc() #9
  call void @radeon_bo_unpin(ptr noundef %add.ptr47) #7
  call fastcc void @radeon_bo_unreserve(ptr noundef %add.ptr47)
  br label %retry

if.end60:                                         ; preds = %if.end23
  call void @radeon_bo_get_tiling_flags(ptr noundef %add.ptr18, ptr noundef nonnull %tiling_flags, ptr noundef null) #7
  %bdev.i.i.i = getelementptr i8, ptr %20, i32 352
  %39 = ptrtoint ptr %bdev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %bdev.i.i.i, align 8
  %lru_lock.i.i.i = getelementptr inbounds %struct.ttm_device, ptr %40, i32 0, i32 6
  call void @_raw_spin_lock(ptr noundef %lru_lock.i.i.i) #7
  %resource.i.i.i = getelementptr i8, ptr %20, i32 372
  %41 = ptrtoint ptr %resource.i.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %resource.i.i.i, align 4
  call void @ttm_bo_move_to_lru_tail(ptr noundef %20, ptr noundef %42, ptr noundef null) #7
  %43 = ptrtoint ptr %bdev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %bdev.i.i.i, align 8
  %lru_lock2.i.i.i = getelementptr inbounds %struct.ttm_device, ptr %44, i32 0, i32 6
  call void @_raw_spin_unlock(ptr noundef %lru_lock2.i.i.i) #7
  %45 = ptrtoint ptr %resv32.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %resv32.i.i, align 8
  call void @dma_resv_reset_shared_max(ptr noundef %46) #7
  call void @ww_mutex_unlock(ptr noundef %46) #7
  %47 = ptrtoint ptr %tiling_flags to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %tiling_flags, align 4
  %and = and i32 %48, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool61.not = icmp eq i32 %and, 0
  br i1 %tobool61.not, label %if.end60.if.end63_crit_edge, label %if.then62

if.end60.if.end63_crit_edge:                      ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end63

if.then62:                                        ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.2) #7
  br label %if.end63

if.end63:                                         ; preds = %if.then62, %if.end60.if.end63_crit_edge
  %vram_start = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 42, i32 8
  %49 = ptrtoint ptr %vram_start to i32
  call void @__asan_load8_noabort(i32 %49)
  %50 = load i64, ptr %vram_start, align 8
  %conv64 = trunc i64 %50 to i32
  %legacy_display_base_addr = getelementptr inbounds %struct.radeon_crtc, ptr %crtc, i32 0, i32 16
  %51 = ptrtoint ptr %legacy_display_base_addr to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %conv64, ptr %legacy_display_base_addr, align 8
  %conv66 = and i64 %50, 4294967295
  %52 = ptrtoint ptr %base to i32
  call void @__asan_load8_noabort(i32 %52)
  %53 = load i64, ptr %base, align 8
  %sub = sub i64 %53, %conv66
  store i64 %sub, ptr %base, align 8
  %pitches = getelementptr inbounds %struct.drm_framebuffer, ptr %target_fb.0, i32 0, i32 6
  %54 = ptrtoint ptr %pitches to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %pitches, align 8
  %56 = ptrtoint ptr %format9 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %format9, align 8
  %58 = getelementptr inbounds %struct.drm_format_info, ptr %57, i32 0, i32 3
  %59 = ptrtoint ptr %58 to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %58, align 2
  %conv70 = zext i8 %60 to i32
  %div = udiv i32 %55, %conv70
  %mul74 = shl nuw nsw i32 %conv70, 3
  %mul75 = mul i32 %mul74, %div
  %mul80 = shl nuw nsw i32 %conv70, 6
  %add = add nsw i32 %mul80, -1
  %sub81 = add i32 %add, %mul75
  %div87 = udiv i32 %sub81, %mul80
  %shl = shl i32 %div87, 16
  %or = or i32 %shl, %div87
  %61 = ptrtoint ptr %tiling_flags to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %tiling_flags, align 4
  %and89 = and i32 %62, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and89)
  %tobool90.not = icmp eq i32 %and89, 0
  br i1 %tobool90.not, label %if.else235, label %if.then174

if.then174:                                       ; preds = %if.end63
  %family = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 6
  %63 = ptrtoint ptr %family to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %family, align 4
  %.off = add i32 %64, -9
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %.off)
  %switch488 = icmp ult i32 %.off, 9
  br i1 %switch488, label %if.then210, label %if.else214

if.then210:                                       ; preds = %if.then174
  call void @__sanitizer_cov_trace_pc() #9
  %shl211 = shl i32 %y, 16
  %or212 = or i32 %shl211, %x
  %and213 = and i64 %sub, -2048
  %65 = ptrtoint ptr %base to i32
  call void @__asan_store8_noabort(i32 %65)
  store i64 %and213, ptr %base, align 8
  br label %if.end257

if.else214:                                       ; preds = %if.then174
  call void @__sanitizer_cov_trace_pc() #9
  %66 = lshr i8 %60, 1
  %67 = zext i8 %66 to i32
  %shr219 = ashr i32 %y, 3
  %mul220 = mul i32 %div, %shr219
  %add221 = add i32 %mul220, %x
  %sub222 = sub nsw i32 8, %67
  %shr223 = lshr i32 %add221, %sub222
  %shl224 = shl i32 %shr223, 11
  %shl225 = shl i32 %x, %67
  %rem = srem i32 %shl225, 256
  %rem227 = srem i32 %y, 8
  %shl228 = shl nsw i32 %rem227, 8
  %add226 = add nsw i32 %rem, %shl228
  %add229 = add i32 %add226, %shl224
  %conv230 = sext i32 %add229 to i64
  %add231 = add i64 %sub, %conv230
  %68 = ptrtoint ptr %base to i32
  call void @__asan_store8_noabort(i32 %68)
  store i64 %add231, ptr %base, align 8
  %rem232 = srem i32 %y, 16
  %or233 = or i32 %rem232, 268468224
  br label %if.end257

if.else235:                                       ; preds = %if.end63
  %mul236 = mul i32 %div, %y
  %add237 = add i32 %mul236, %x
  %69 = add nuw nsw i32 %conv70, 536870911
  %70 = and i32 %69, 536870911
  %71 = zext i32 %70 to i64
  call void @__sanitizer_cov_trace_switch(i64 %71, ptr @__sancov_gen_cov_switch_values.19)
  switch i32 %70, label %if.else235.cleanup347_crit_edge [
    i32 0, label %if.else235.sw.epilog251_crit_edge
    i32 3, label %sw.bb248
    i32 1, label %sw.bb244
    i32 2, label %sw.bb246
  ]

if.else235.sw.epilog251_crit_edge:                ; preds = %if.else235
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog251

if.else235.cleanup347_crit_edge:                  ; preds = %if.else235
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup347

sw.bb244:                                         ; preds = %if.else235
  call void @__sanitizer_cov_trace_pc() #9
  %mul245 = shl i32 %add237, 1
  br label %sw.epilog251

sw.bb246:                                         ; preds = %if.else235
  call void @__sanitizer_cov_trace_pc() #9
  %mul247 = mul i32 %add237, 3
  br label %sw.epilog251

sw.bb248:                                         ; preds = %if.else235
  call void @__sanitizer_cov_trace_pc() #9
  %mul249 = shl i32 %add237, 2
  br label %sw.epilog251

sw.epilog251:                                     ; preds = %sw.bb248, %sw.bb246, %sw.bb244, %if.else235.sw.epilog251_crit_edge
  %offset.0 = phi i32 [ %mul247, %sw.bb246 ], [ %mul245, %sw.bb244 ], [ %mul249, %sw.bb248 ], [ %add237, %if.else235.sw.epilog251_crit_edge ]
  %conv252 = sext i32 %offset.0 to i64
  %add253 = add i64 %sub, %conv252
  %72 = ptrtoint ptr %base to i32
  call void @__asan_store8_noabort(i32 %72)
  store i64 %add253, ptr %base, align 8
  br label %if.end257

if.end257:                                        ; preds = %sw.epilog251, %if.else214, %if.then210
  %crtc_tile_x0_y0.0 = phi i32 [ %or212, %if.then210 ], [ 0, %if.else214 ], [ 0, %sw.epilog251 ]
  %crtc_offset_cntl.1 = phi i32 [ 268471808, %if.then210 ], [ %or233, %if.else214 ], [ 268435456, %sw.epilog251 ]
  %73 = ptrtoint ptr %base to i32
  call void @__asan_load8_noabort(i32 %73)
  %74 = load i64, ptr %base, align 8
  %and258 = and i64 %74, -8
  store i64 %and258, ptr %base, align 8
  %crtc_id = getelementptr inbounds %struct.radeon_crtc, ptr %crtc, i32 0, i32 1
  %75 = ptrtoint ptr %crtc_id to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %crtc_id, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %76)
  %cmp259 = icmp eq i32 %76, 1
  %. = select i1 %cmp259, i32 1016, i32 80
  %rmmio.i = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 31
  %77 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %78, i32 %.
  %79 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !50
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !51
  %80 = and i32 %79, -984577
  %81 = call i32 @llvm.bswap.i32(i32 %80)
  %or267 = or i32 %81, %switch.load
  %rmmio_size.i = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 18
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !52
  call void @arm_heavy_mb() #7
  %82 = call i32 @llvm.bswap.i32(i32 %or267) #7
  %83 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i495 = getelementptr i8, ptr %84, i32 %.
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i495, i32 %82) #7, !srcloc !53
  %85 = ptrtoint ptr %base to i32
  call void @__asan_load8_noabort(i32 %85)
  %86 = load i64, ptr %base, align 8
  %conv269 = trunc i64 %86 to i32
  %crtc_offset270 = getelementptr inbounds %struct.radeon_crtc, ptr %crtc, i32 0, i32 5
  %87 = ptrtoint ptr %crtc_offset270 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %crtc_offset270, align 8
  %add271 = add i32 %88, 572
  %89 = ptrtoint ptr %legacy_display_base_addr to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %legacy_display_base_addr, align 8
  %91 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %92, i32 %add271)
  %cmp.i497 = icmp ugt i32 %92, %add271
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %add271)
  %cmp1.i = icmp ult i32 %add271, 65536
  %or.cond.i = or i1 %cmp1.i, %cmp.i497
  br i1 %or.cond.i, label %do.body.i, label %if.else.i

do.body.i:                                        ; preds = %if.end257
  call void @__sanitizer_cov_trace_pc() #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !52
  call void @arm_heavy_mb() #7
  %93 = call i32 @llvm.bswap.i32(i32 %90) #7
  %94 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i499 = getelementptr i8, ptr %95, i32 %add271
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i499, i32 %93) #7, !srcloc !53
  br label %r100_mm_wreg.exit

if.else.i:                                        ; preds = %if.end257
  call void @__sanitizer_cov_trace_pc() #9
  call void @r100_mm_wreg_slow(ptr noundef %3, i32 noundef %add271, i32 noundef %90) #7
  br label %r100_mm_wreg.exit

r100_mm_wreg.exit:                                ; preds = %if.else.i, %do.body.i
  %family273 = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 6
  %96 = ptrtoint ptr %family273 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %family273, align 4
  %.off491 = add i32 %97, -9
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %.off491)
  %switch492 = icmp ult i32 %.off491, 9
  br i1 %switch492, label %if.then308, label %r100_mm_wreg.exit.if.end314_crit_edge

r100_mm_wreg.exit.if.end314_crit_edge:            ; preds = %r100_mm_wreg.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end314

if.then308:                                       ; preds = %r100_mm_wreg.exit
  %98 = ptrtoint ptr %crtc_id to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %crtc_id, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %99)
  %tobool310.not = icmp eq i32 %99, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7
  call void @arm_heavy_mb() #7
  %100 = call i32 @llvm.bswap.i32(i32 %crtc_tile_x0_y0.0) #7
  %101 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %rmmio.i, align 4
  br i1 %tobool310.not, label %if.else312, label %if.then311

if.then311:                                       ; preds = %if.then308
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i503 = getelementptr i8, ptr %102, i32 856
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i503, i32 %100) #7, !srcloc !53
  br label %if.end314

if.else312:                                       ; preds = %if.then308
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i508 = getelementptr i8, ptr %102, i32 848
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i508, i32 %100) #7, !srcloc !53
  br label %if.end314

if.end314:                                        ; preds = %if.else312, %if.then311, %r100_mm_wreg.exit.if.end314_crit_edge
  %103 = ptrtoint ptr %crtc_offset270 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %crtc_offset270, align 8
  %add316 = add i32 %104, 552
  %105 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %106, i32 %add316)
  %cmp.i511 = icmp ugt i32 %106, %add316
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %add316)
  %cmp1.i512 = icmp ult i32 %add316, 65536
  %or.cond.i513 = or i1 %cmp1.i512, %cmp.i511
  br i1 %or.cond.i513, label %do.body.i516, label %if.else.i517

do.body.i516:                                     ; preds = %if.end314
  call void @__sanitizer_cov_trace_pc() #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !52
  call void @arm_heavy_mb() #7
  %107 = call i32 @llvm.bswap.i32(i32 %crtc_offset_cntl.1) #7
  %108 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i515 = getelementptr i8, ptr %109, i32 %add316
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i515, i32 %107) #7, !srcloc !53
  br label %r100_mm_wreg.exit518

if.else.i517:                                     ; preds = %if.end314
  call void @__sanitizer_cov_trace_pc() #9
  call void @r100_mm_wreg_slow(ptr noundef %3, i32 noundef %add316, i32 noundef %crtc_offset_cntl.1) #7
  br label %r100_mm_wreg.exit518

r100_mm_wreg.exit518:                             ; preds = %if.else.i517, %do.body.i516
  %110 = ptrtoint ptr %crtc_offset270 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %crtc_offset270, align 8
  %add318 = add i32 %111, 548
  %112 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %113, i32 %add318)
  %cmp.i520 = icmp ugt i32 %113, %add318
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %add318)
  %cmp1.i521 = icmp ult i32 %add318, 65536
  %or.cond.i522 = or i1 %cmp1.i521, %cmp.i520
  br i1 %or.cond.i522, label %do.body.i525, label %if.else.i526

do.body.i525:                                     ; preds = %r100_mm_wreg.exit518
  call void @__sanitizer_cov_trace_pc() #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !52
  call void @arm_heavy_mb() #7
  %114 = call i32 @llvm.bswap.i32(i32 %conv269) #7
  %115 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i524 = getelementptr i8, ptr %116, i32 %add318
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i524, i32 %114) #7, !srcloc !53
  br label %r100_mm_wreg.exit527

if.else.i526:                                     ; preds = %r100_mm_wreg.exit518
  call void @__sanitizer_cov_trace_pc() #9
  call void @r100_mm_wreg_slow(ptr noundef %3, i32 noundef %add318, i32 noundef %conv269) #7
  br label %r100_mm_wreg.exit527

r100_mm_wreg.exit527:                             ; preds = %if.else.i526, %do.body.i525
  %117 = ptrtoint ptr %crtc_offset270 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %crtc_offset270, align 8
  %add320 = add i32 %118, 556
  %119 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %120, i32 %add320)
  %cmp.i529 = icmp ugt i32 %120, %add320
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %add320)
  %cmp1.i530 = icmp ult i32 %add320, 65536
  %or.cond.i531 = or i1 %cmp1.i530, %cmp.i529
  br i1 %or.cond.i531, label %do.body.i534, label %if.else.i535

do.body.i534:                                     ; preds = %r100_mm_wreg.exit527
  call void @__sanitizer_cov_trace_pc() #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !52
  call void @arm_heavy_mb() #7
  %121 = call i32 @llvm.bswap.i32(i32 %or) #7
  %122 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i533 = getelementptr i8, ptr %123, i32 %add320
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i533, i32 %121) #7, !srcloc !53
  br label %r100_mm_wreg.exit536

if.else.i535:                                     ; preds = %r100_mm_wreg.exit527
  call void @__sanitizer_cov_trace_pc() #9
  call void @r100_mm_wreg_slow(ptr noundef %3, i32 noundef %add320, i32 noundef %or) #7
  br label %r100_mm_wreg.exit536

r100_mm_wreg.exit536:                             ; preds = %if.else.i535, %do.body.i534
  %tobool323.not = icmp ne ptr %fb.addr.0, null
  %124 = and i1 %tobool.not, %tobool323.not
  br i1 %124, label %land.lhs.true324, label %r100_mm_wreg.exit536.if.end346_crit_edge

r100_mm_wreg.exit536.if.end346_crit_edge:         ; preds = %r100_mm_wreg.exit536
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end346

land.lhs.true324:                                 ; preds = %r100_mm_wreg.exit536
  %125 = ptrtoint ptr %primary38 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %primary38, align 4
  %fb326 = getelementptr inbounds %struct.drm_plane, ptr %126, i32 0, i32 12
  %127 = ptrtoint ptr %fb326 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %fb326, align 4
  %cmp327.not = icmp eq ptr %fb.addr.0, %128
  br i1 %cmp327.not, label %land.lhs.true324.if.end346_crit_edge, label %if.then329

land.lhs.true324.if.end346_crit_edge:             ; preds = %land.lhs.true324
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end346

if.then329:                                       ; preds = %land.lhs.true324
  %obj331 = getelementptr inbounds %struct.drm_framebuffer, ptr %fb.addr.0, i32 0, i32 15
  %129 = ptrtoint ptr %obj331 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %obj331, align 4
  %add.ptr334 = getelementptr i8, ptr %130, i32 -96
  %resv32.i.i537 = getelementptr i8, ptr %130, i32 200
  %131 = ptrtoint ptr %resv32.i.i537 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %resv32.i.i537, align 8
  %call.i.i.i538 = call i32 @ww_mutex_lock_interruptible(ptr noundef %132, ptr noundef null) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -4, i32 %call.i.i.i538)
  %cmp.i.i539 = icmp eq i32 %call.i.i.i538, -4
  %retval.1.i.i540 = select i1 %cmp.i.i539, i32 -512, i32 %call.i.i.i538
  %133 = zext i32 %retval.1.i.i540 to i64
  call void @__sanitizer_cov_trace_switch(i64 %133, ptr @__sancov_gen_cov_switch_values.20)
  switch i32 %retval.1.i.i540, label %do.end.i542 [
    i32 0, label %if.end345
    i32 -512, label %if.then329.cleanup347_crit_edge
  ], !prof !48

if.then329.cleanup347_crit_edge:                  ; preds = %if.then329
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup347

do.end.i542:                                      ; preds = %if.then329
  call void @__sanitizer_cov_trace_pc() #9
  %rdev.i541 = getelementptr i8, ptr %130, i32 464
  %134 = ptrtoint ptr %rdev.i541 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %rdev.i541, align 8
  %136 = ptrtoint ptr %135 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %135, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %137, ptr noundef nonnull @.str.3, ptr noundef %add.ptr334) #10
  br label %cleanup347

if.end345:                                        ; preds = %if.then329
  call void @__sanitizer_cov_trace_pc() #9
  call void @radeon_bo_unpin(ptr noundef %add.ptr334) #7
  %bdev.i.i.i545 = getelementptr i8, ptr %130, i32 352
  %138 = ptrtoint ptr %bdev.i.i.i545 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %bdev.i.i.i545, align 8
  %lru_lock.i.i.i546 = getelementptr inbounds %struct.ttm_device, ptr %139, i32 0, i32 6
  call void @_raw_spin_lock(ptr noundef %lru_lock.i.i.i546) #7
  %resource.i.i.i547 = getelementptr i8, ptr %130, i32 372
  %140 = ptrtoint ptr %resource.i.i.i547 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %resource.i.i.i547, align 4
  call void @ttm_bo_move_to_lru_tail(ptr noundef %130, ptr noundef %141, ptr noundef null) #7
  %142 = ptrtoint ptr %bdev.i.i.i545 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %bdev.i.i.i545, align 8
  %lru_lock2.i.i.i548 = getelementptr inbounds %struct.ttm_device, ptr %143, i32 0, i32 6
  call void @_raw_spin_unlock(ptr noundef %lru_lock2.i.i.i548) #7
  %144 = ptrtoint ptr %resv32.i.i537 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %resv32.i.i537, align 8
  call void @dma_resv_reset_shared_max(ptr noundef %145) #7
  call void @ww_mutex_unlock(ptr noundef %145) #7
  br label %if.end346

if.end346:                                        ; preds = %if.end345, %land.lhs.true324.if.end346_crit_edge, %r100_mm_wreg.exit536.if.end346_crit_edge
  %asic = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 56
  %146 = ptrtoint ptr %asic to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %asic, align 8
  %display = getelementptr inbounds %struct.radeon_asic, ptr %147, i32 0, i32 16
  %148 = ptrtoint ptr %display to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %display, align 4
  call void %149(ptr noundef %3) #7
  br label %cleanup347

cleanup347:                                       ; preds = %if.end346, %do.end.i542, %if.then329.cleanup347_crit_edge, %if.else235.cleanup347_crit_edge, %land.lhs.true52.cleanup347_crit_edge, %if.then42.cleanup347_crit_edge, %land.lhs.true37.cleanup347_crit_edge, %if.then33.cleanup347_crit_edge, %do.end.i, %retry.cleanup347_crit_edge, %if.end8.cleanup347_crit_edge, %if.then
  %retval.1 = phi i32 [ 0, %if.end346 ], [ 0, %if.then ], [ 0, %if.end8.cleanup347_crit_edge ], [ %retval.1.i.i, %do.end.i ], [ 0, %if.else235.cleanup347_crit_edge ], [ %retval.1.i.i540, %do.end.i542 ], [ %retval.1.i.i540, %if.then329.cleanup347_crit_edge ], [ %retval.1.i.i, %retry.cleanup347_crit_edge ], [ -22, %if.then42.cleanup347_crit_edge ], [ -22, %land.lhs.true52.cleanup347_crit_edge ], [ -22, %if.then33.cleanup347_crit_edge ], [ -22, %land.lhs.true37.cleanup347_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tiling_flags) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %base) #7
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @radeon_crtc_set_base_atomic(ptr nocapture noundef %crtc, ptr noundef %fb, i32 noundef %x, i32 noundef %y, i32 %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @radeon_crtc_do_set_base(ptr noundef %crtc, ptr noundef %fb, i32 noundef %x, i32 noundef %y, i32 noundef 1)
  ret i32 %call
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @radeon_bo_reserve(ptr noundef %bo) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %resv32.i = getelementptr inbounds %struct.radeon_bo, ptr %bo, i32 0, i32 4, i32 0, i32 9
  %0 = ptrtoint ptr %resv32.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %resv32.i, align 8
  %call.i.i = tail call i32 @ww_mutex_lock_interruptible(ptr noundef %1, ptr noundef null) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -4, i32 %call.i.i)
  %cmp.i = icmp eq i32 %call.i.i, -4
  %retval.1.i = select i1 %cmp.i, i32 -512, i32 %call.i.i
  %2 = zext i32 %retval.1.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.21)
  switch i32 %retval.1.i, label %do.end [
    i32 0, label %entry.cleanup_crit_edge
    i32 -512, label %entry.cleanup_crit_edge1
  ], !prof !48

entry.cleanup_crit_edge1:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %rdev = getelementptr inbounds %struct.radeon_bo, ptr %bo, i32 0, i32 13
  %3 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %rdev, align 8
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.3, ptr noundef %bo) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end, %entry.cleanup_crit_edge, %entry.cleanup_crit_edge1
  ret i32 %retval.1.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @radeon_bo_pin_restricted(ptr noundef, i32 noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @radeon_bo_unreserve(ptr noundef %bo) unnamed_addr #3 align 64 {
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
declare dso_local void @radeon_bo_unpin(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @radeon_bo_get_tiling_flags(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_err(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @radeon_legacy_init_crtc(ptr nocapture noundef readnone %dev, ptr nocapture noundef %radeon_crtc) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %crtc_id = getelementptr inbounds %struct.radeon_crtc, ptr %radeon_crtc, i32 0, i32 1
  %0 = ptrtoint ptr %crtc_id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %crtc_id, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp = icmp eq i32 %1, 1
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %crtc_offset = getelementptr inbounds %struct.radeon_crtc, ptr %radeon_crtc, i32 0, i32 5
  %2 = ptrtoint ptr %crtc_offset to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 256, ptr %crtc_offset, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %helper_private.i = getelementptr inbounds %struct.drm_crtc, ptr %radeon_crtc, i32 0, i32 19
  %3 = ptrtoint ptr %helper_private.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @legacy_helper_funcs, ptr %helper_private.i, align 8
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

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

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @r100_mm_wreg_slow(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @radeon_crtc_dpms(ptr noundef %crtc, i32 noundef %mode) #0 align 64 {
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
  %crtc_id = getelementptr inbounds %struct.radeon_crtc, ptr %crtc, i32 0, i32 1
  %4 = ptrtoint ptr %crtc_id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %crtc_id, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  %. = select i1 %tobool.not, i32 1792, i32 880803840
  %flags = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 7
  %6 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %flags, align 8
  %and = lshr i32 %7, 3
  %8 = and i32 %and, 32768
  %9 = zext i32 %mode to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.22)
  switch i32 %mode, label %entry.sw.epilog_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %entry.sw.bb39_crit_edge
    i32 2, label %entry.sw.bb39_crit_edge167
    i32 3, label %entry.sw.bb39_crit_edge168
  ]

entry.sw.bb39_crit_edge168:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb39

entry.sw.bb39_crit_edge167:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb39

entry.sw.bb39_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb39

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  %enabled = getelementptr inbounds %struct.radeon_crtc, ptr %crtc, i32 0, i32 2
  %10 = ptrtoint ptr %enabled to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 1, ptr %enabled, align 4
  tail call void @radeon_pm_compute_clocks(ptr noundef %3) #7
  %11 = ptrtoint ptr %crtc_id to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %crtc_id, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool6.not = icmp eq i32 %12, 0
  %rmmio.i137 = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 31
  %13 = ptrtoint ptr %rmmio.i137 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %rmmio.i137, align 4
  br i1 %tobool6.not, label %do.body15, label %do.body

do.body:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i = getelementptr i8, ptr %14, i32 1016
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !50
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !51
  %16 = tail call i32 @llvm.bswap.i32(i32 %15) #7
  %neg = xor i32 %., -1
  %and8 = and i32 %16, %neg
  %or13 = or i32 %and8, 33554432
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !52
  tail call void @arm_heavy_mb() #7
  %17 = tail call i32 @llvm.bswap.i32(i32 %or13) #7
  %18 = ptrtoint ptr %rmmio.i137 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %rmmio.i137, align 4
  %add.ptr.i136 = getelementptr i8, ptr %19, i32 1016
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i136, i32 %17) #7, !srcloc !53
  br label %if.end35

do.body15:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i138 = getelementptr i8, ptr %14, i32 80
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i138) #7, !srcloc !50
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !51
  %21 = and i32 %20, -7
  %22 = or i32 %21, 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !52
  tail call void @arm_heavy_mb() #7
  %23 = ptrtoint ptr %rmmio.i137 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %rmmio.i137, align 4
  %add.ptr.i142 = getelementptr i8, ptr %24, i32 80
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i142, i32 %22) #7, !srcloc !53
  %25 = ptrtoint ptr %rmmio.i137 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %rmmio.i137, align 4
  %add.ptr.i144 = getelementptr i8, ptr %26, i32 84
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i144) #7, !srcloc !50
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !51
  %28 = tail call i32 @llvm.bswap.i32(i32 %27) #7
  %or25 = or i32 %8, %.
  %neg26 = xor i32 %or25, -1
  %and27 = and i32 %28, %neg26
  %or32 = or i32 %and27, %8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !52
  tail call void @arm_heavy_mb() #7
  %29 = tail call i32 @llvm.bswap.i32(i32 %or32) #7
  %30 = ptrtoint ptr %rmmio.i137 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %rmmio.i137, align 4
  %add.ptr.i148 = getelementptr i8, ptr %31, i32 84
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i148, i32 %29) #7, !srcloc !53
  br label %if.end35

if.end35:                                         ; preds = %do.body15, %do.body
  %num_crtcs = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 29
  %32 = ptrtoint ptr %num_crtcs to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %num_crtcs, align 4
  %34 = ptrtoint ptr %crtc_id to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %crtc_id, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %33, i32 %35)
  %cmp = icmp ugt i32 %33, %35
  br i1 %cmp, label %if.then37, label %if.end35.if.end38_crit_edge

if.end35.if.end38_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end38

if.then37:                                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @drm_crtc_vblank_on(ptr noundef %crtc) #7
  br label %if.end38

if.end38:                                         ; preds = %if.then37, %if.end35.if.end38_crit_edge
  tail call void @radeon_crtc_load_lut(ptr noundef %crtc) #7
  br label %sw.epilog

sw.bb39:                                          ; preds = %entry.sw.bb39_crit_edge, %entry.sw.bb39_crit_edge167, %entry.sw.bb39_crit_edge168
  %num_crtcs40 = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 29
  %36 = ptrtoint ptr %num_crtcs40 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %num_crtcs40, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %37, i32 %5)
  %cmp42 = icmp ugt i32 %37, %5
  br i1 %cmp42, label %if.then43, label %sw.bb39.if.end44_crit_edge

sw.bb39.if.end44_crit_edge:                       ; preds = %sw.bb39
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end44

if.then43:                                        ; preds = %sw.bb39
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @drm_crtc_vblank_off(ptr noundef %crtc) #7
  br label %if.end44

if.end44:                                         ; preds = %if.then43, %sw.bb39.if.end44_crit_edge
  %38 = ptrtoint ptr %crtc_id to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %crtc_id, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool46.not = icmp eq i32 %39, 0
  %rmmio.i155 = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 31
  %40 = ptrtoint ptr %rmmio.i155 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %rmmio.i155, align 4
  br i1 %tobool46.not, label %do.body62, label %do.body48

do.body48:                                        ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i150 = getelementptr i8, ptr %41, i32 1016
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i150) #7, !srcloc !50
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !51
  %43 = tail call i32 @llvm.bswap.i32(i32 %42) #7
  %neg52 = xor i32 %., -33554433
  %and53 = and i32 %43, %neg52
  %or58 = or i32 %and53, %.
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !52
  tail call void @arm_heavy_mb() #7
  %44 = tail call i32 @llvm.bswap.i32(i32 %or58) #7
  %45 = ptrtoint ptr %rmmio.i155 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %rmmio.i155, align 4
  %add.ptr.i154 = getelementptr i8, ptr %46, i32 1016
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i154, i32 %44) #7, !srcloc !53
  br label %if.end82

do.body62:                                        ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i156 = getelementptr i8, ptr %41, i32 80
  %47 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i156) #7, !srcloc !50
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !51
  %48 = and i32 %47, -7
  %49 = or i32 %48, 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !52
  tail call void @arm_heavy_mb() #7
  %50 = ptrtoint ptr %rmmio.i155 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %rmmio.i155, align 4
  %add.ptr.i160 = getelementptr i8, ptr %51, i32 80
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i160, i32 %49) #7, !srcloc !53
  %52 = ptrtoint ptr %rmmio.i155 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %rmmio.i155, align 4
  %add.ptr.i162 = getelementptr i8, ptr %53, i32 84
  %54 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i162) #7, !srcloc !50
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !51
  %55 = tail call i32 @llvm.bswap.i32(i32 %54) #7
  %or72 = or i32 %8, %.
  %neg73 = xor i32 %or72, -1
  %and74 = and i32 %55, %neg73
  %or79 = or i32 %and74, %.
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !52
  tail call void @arm_heavy_mb() #7
  %56 = tail call i32 @llvm.bswap.i32(i32 %or79) #7
  %57 = ptrtoint ptr %rmmio.i155 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %rmmio.i155, align 4
  %add.ptr.i166 = getelementptr i8, ptr %58, i32 84
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i166, i32 %56) #7, !srcloc !53
  br label %if.end82

if.end82:                                         ; preds = %do.body62, %do.body48
  %enabled83 = getelementptr inbounds %struct.radeon_crtc, ptr %crtc, i32 0, i32 2
  %59 = ptrtoint ptr %enabled83 to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 0, ptr %enabled83, align 4
  tail call void @radeon_pm_compute_clocks(ptr noundef %3) #7
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end82, %if.end38, %entry.sw.epilog_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @radeon_crtc_prepare(ptr nocapture noundef readonly %crtc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %crtc, align 8
  %crtc_list = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 30, i32 20
  %2 = ptrtoint ptr %crtc_list to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn12 = load ptr, ptr %crtc_list, align 4
  %cmp.not13 = icmp eq ptr %.pn12, %crtc_list
  br i1 %cmp.not13, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn14 = phi ptr [ %.pn, %for.body.for.body_crit_edge ], [ %.pn12, %entry.for.body_crit_edge ]
  %crtci.0 = getelementptr i8, ptr %.pn14, i32 -8
  tail call void @radeon_crtc_dpms(ptr noundef %crtci.0, i32 noundef 3)
  %3 = ptrtoint ptr %.pn14 to i32
  call void @__asan_load4_noabort(i32 %3)
  %.pn = load ptr, ptr %.pn14, align 4
  %cmp.not = icmp eq ptr %.pn, %crtc_list
  br i1 %cmp.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @radeon_crtc_commit(ptr nocapture noundef readonly %crtc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %crtc, align 8
  %crtc_list = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 30, i32 20
  %2 = ptrtoint ptr %crtc_list to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn13 = load ptr, ptr %crtc_list, align 4
  %cmp.not15 = icmp eq ptr %.pn13, %crtc_list
  br i1 %cmp.not15, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn16 = phi ptr [ %.pn, %for.inc.for.body_crit_edge ], [ %.pn13, %entry.for.body_crit_edge ]
  %enabled = getelementptr i8, ptr %.pn16, i32 160
  %3 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %enabled, align 8, !range !54
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.then

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %crtci.017 = getelementptr i8, ptr %.pn16, i32 -8
  tail call void @radeon_crtc_dpms(ptr noundef %crtci.017, i32 noundef 0)
  br label %for.inc

for.inc:                                          ; preds = %if.then, %for.body.for.inc_crit_edge
  %5 = ptrtoint ptr %.pn16 to i32
  call void @__asan_load4_noabort(i32 %5)
  %.pn = load ptr, ptr %.pn16, align 4
  %cmp.not = icmp eq ptr %.pn, %crtc_list
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @radeon_crtc_mode_fixup(ptr noundef %crtc, ptr noundef %mode, ptr noundef %adjusted_mode) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i1 @radeon_crtc_scaling_mode_fixup(ptr noundef %crtc, ptr noundef %mode, ptr noundef %adjusted_mode) #7
  ret i1 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @radeon_crtc_mode_set(ptr noundef %crtc, ptr nocapture noundef readnone %mode, ptr noundef readonly %adjusted_mode, i32 noundef %x, i32 noundef %y, ptr noundef %old_fb) #0 align 64 {
entry:
  %feedback_div.i = alloca i32, align 4
  %frac_fb_div.i = alloca i32, align 4
  %reference_div.i = alloca i32, align 4
  %post_divider.i = alloca i32, align 4
  %freq.i = alloca i32, align 4
  %pll_ref_div.i = alloca i32, align 4
  %pll_fb_post_div.i = alloca i32, align 4
  %htotal_cntl.i = alloca i32, align 4
  %post_divs.i = alloca [9 x %struct.anon.110], align 4
  %pixclks_cntl.i = alloca i32, align 4
  %pixclks_cntl170.i = alloca i32, align 4
  %crtc_h_total_disp.i = alloca i32, align 4
  %crtc_h_sync_strt_wid.i = alloca i32, align 4
  %crtc_v_total_disp.i = alloca i32, align 4
  %crtc_v_sync_strt_wid.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i32 @radeon_crtc_do_set_base(ptr noundef %crtc, ptr noundef %old_fb, i32 noundef %x, i32 noundef %y, i32 noundef 0) #7
  %0 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %crtc, align 8
  %dev_private.i = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_private.i, align 4
  %primary.i = getelementptr inbounds %struct.drm_crtc, ptr %crtc, i32 0, i32 6
  %4 = ptrtoint ptr %primary.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %primary.i, align 4
  %fb2.i = getelementptr inbounds %struct.drm_plane, ptr %5, i32 0, i32 12
  %6 = ptrtoint ptr %fb2.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %fb2.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %crtc_h_total_disp.i) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %crtc_h_sync_strt_wid.i) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %crtc_v_total_disp.i) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %crtc_v_sync_strt_wid.i) #7
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str) #7
  %encoder_list.i = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 30, i32 16
  %8 = ptrtoint ptr %encoder_list.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %.pn85.i = load ptr, ptr %encoder_list.i, align 4
  %cmp.not86.i = icmp eq ptr %.pn85.i, %encoder_list.i
  br i1 %cmp.not86.i, label %entry.for.end.i_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.for.end.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %.pn87.i = phi ptr [ %.pn.i, %for.inc.i.for.body.i_crit_edge ], [ %.pn85.i, %entry.for.body.i_crit_edge ]
  %crtc8.i = getelementptr i8, ptr %.pn87.i, i32 48
  %9 = ptrtoint ptr %crtc8.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %crtc8.i, align 4
  %cmp9.i = icmp eq ptr %10, %crtc
  br i1 %cmp9.i, label %if.then.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

if.then.i:                                        ; preds = %for.body.i
  %active_device.i = getelementptr i8, ptr %.pn87.i, i32 80
  %11 = ptrtoint ptr %active_device.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %active_device.i, align 4
  %and.i = and i32 %12, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.then.i.for.inc.i_crit_edge, label %cleanup.i

if.then.i.for.inc.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

cleanup.i:                                        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  %crtc_id.i = getelementptr inbounds %struct.radeon_crtc, ptr %crtc, i32 0, i32 1
  %13 = ptrtoint ptr %crtc_id.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %crtc_id.i, align 8
  %call.i15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i32 noundef %14) #10
  br label %for.end.i

for.inc.i:                                        ; preds = %if.then.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %15 = ptrtoint ptr %.pn87.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %.pn.i = load ptr, ptr %.pn87.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %encoder_list.i
  br i1 %cmp.not.i, label %for.inc.i.for.end.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %cleanup.i, %entry.for.end.i_crit_edge
  %.pn.lcssa84.pn.i = phi ptr [ %.pn87.i, %cleanup.i ], [ %encoder_list.i, %entry.for.end.i_crit_edge ], [ %encoder_list.i, %for.inc.i.for.end.i_crit_edge ]
  %cmp.not80.i = phi i1 [ false, %cleanup.i ], [ true, %entry.for.end.i_crit_edge ], [ true, %for.inc.i.for.end.i_crit_edge ]
  %encoder.082.i = getelementptr i8, ptr %.pn.lcssa84.pn.i, i32 -4
  %format21.i = getelementptr inbounds %struct.drm_framebuffer, ptr %7, i32 0, i32 4
  %16 = ptrtoint ptr %format21.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %format21.i, align 8
  %18 = getelementptr inbounds %struct.drm_format_info, ptr %17, i32 0, i32 3
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %18, align 2
  %conv.i = zext i8 %20 to i32
  %21 = add nuw nsw i32 %conv.i, 536870911
  %22 = and i32 %21, 536870911
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %22)
  %23 = icmp ult i32 %22, 4
  br i1 %23, label %switch.lookup, label %for.end.i.radeon_set_crtc_timing.exit_crit_edge

for.end.i.radeon_set_crtc_timing.exit_crit_edge:  ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %radeon_set_crtc_timing.exit

switch.lookup:                                    ; preds = %for.end.i
  %switch.gep = getelementptr inbounds [4 x i32], ptr @switch.table.radeon_crtc_mode_set, i32 0, i32 %22
  %24 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %24)
  %switch.load = load i32, ptr %switch.gep, align 4
  %crtc_htotal.i = getelementptr inbounds %struct.drm_display_mode, ptr %adjusted_mode, i32 0, i32 18
  %25 = ptrtoint ptr %crtc_htotal.i to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %crtc_htotal.i, align 2
  %27 = lshr i16 %26, 3
  %narrow.i = add nuw nsw i16 %27, 1023
  %28 = and i16 %narrow.i, 1023
  %and27.i = zext i16 %28 to i32
  %crtc_hdisplay.i = getelementptr inbounds %struct.drm_display_mode, ptr %adjusted_mode, i32 0, i32 13
  %29 = ptrtoint ptr %crtc_hdisplay.i to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %crtc_hdisplay.i, align 4
  %31 = lshr i16 %30, 3
  %narrow6.i = add nuw nsw i16 %31, 511
  %32 = and i16 %narrow6.i, 511
  %and31.i = zext i16 %32 to i32
  %shl.i = shl nuw nsw i32 %and31.i, 16
  %or.i = or i32 %shl.i, %and27.i
  %33 = ptrtoint ptr %crtc_h_total_disp.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %or.i, ptr %crtc_h_total_disp.i, align 4
  %crtc_hsync_end.i = getelementptr inbounds %struct.drm_display_mode, ptr %adjusted_mode, i32 0, i32 17
  %34 = ptrtoint ptr %crtc_hsync_end.i to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %crtc_hsync_end.i, align 4
  %conv32.i = zext i16 %35 to i32
  %crtc_hsync_start.i = getelementptr inbounds %struct.drm_display_mode, ptr %adjusted_mode, i32 0, i32 16
  %36 = ptrtoint ptr %crtc_hsync_start.i to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %crtc_hsync_start.i, align 2
  %conv33.i = zext i16 %37 to i32
  %sub34.i = sub nsw i32 %conv32.i, %conv33.i
  %div35.i = sdiv i32 %sub34.i, 8
  %sub34.off.i = add nsw i32 %sub34.i, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %sub34.off.i)
  %38 = icmp ult i32 %sub34.off.i, 15
  %sub41.i = add nuw nsw i32 %conv33.i, 8184
  %and42.i = and i32 %sub41.i, 8191
  %div35.op.i = shl nsw i32 %div35.i, 16
  %div35.op.op.i = and i32 %div35.op.i, 4128768
  %shl44.i = select i1 %38, i32 65536, i32 %div35.op.op.i
  %flags.i = getelementptr inbounds %struct.drm_display_mode, ptr %adjusted_mode, i32 0, i32 11
  %39 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %flags.i, align 4
  %and46.i = shl i32 %40, 22
  %41 = and i32 %and46.i, 8388608
  %or45.i = or i32 %41, %and42.i
  %or48.i = or i32 %or45.i, %shl44.i
  %42 = ptrtoint ptr %crtc_h_sync_strt_wid.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %or48.i, ptr %crtc_h_sync_strt_wid.i, align 4
  %crtc_vtotal.i = getelementptr inbounds %struct.drm_display_mode, ptr %adjusted_mode, i32 0, i32 25
  %43 = ptrtoint ptr %crtc_vtotal.i to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %crtc_vtotal.i, align 4
  %45 = add i16 %44, -1
  %and51.i = zext i16 %45 to i32
  %crtc_vdisplay.i = getelementptr inbounds %struct.drm_display_mode, ptr %adjusted_mode, i32 0, i32 20
  %46 = ptrtoint ptr %crtc_vdisplay.i to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %crtc_vdisplay.i, align 2
  %conv52.i = zext i16 %47 to i32
  %sub53.i = shl nuw i32 %conv52.i, 16
  %shl54.i = add i32 %sub53.i, -65536
  %or55.i = or i32 %shl54.i, %and51.i
  %48 = ptrtoint ptr %crtc_v_total_disp.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %or55.i, ptr %crtc_v_total_disp.i, align 4
  %crtc_vsync_end.i = getelementptr inbounds %struct.drm_display_mode, ptr %adjusted_mode, i32 0, i32 24
  %49 = ptrtoint ptr %crtc_vsync_end.i to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %crtc_vsync_end.i, align 2
  %conv56.i = zext i16 %50 to i32
  %crtc_vsync_start.i = getelementptr inbounds %struct.drm_display_mode, ptr %adjusted_mode, i32 0, i32 23
  %51 = ptrtoint ptr %crtc_vsync_start.i to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %crtc_vsync_start.i, align 4
  %conv57.i = zext i16 %52 to i32
  %sub58.i = sub nsw i32 %conv56.i, %conv57.i
  call void @__sanitizer_cov_trace_cmp2(i16 %50, i16 %52)
  %tobool59.not.i = icmp eq i16 %50, %52
  %sub64.i = add nuw nsw i32 %conv57.i, 4095
  %and65.i = and i32 %sub64.i, 4095
  %sub58.op.i = shl i32 %sub58.i, 16
  %sub58.op.op.i = and i32 %sub58.op.i, 2031616
  %shl67.i = select i1 %tobool59.not.i, i32 65536, i32 %sub58.op.op.i
  %and70.i = shl i32 %40, 20
  %53 = and i32 %and70.i, 8388608
  %or68.i = or i32 %and65.i, %53
  %or73.i = or i32 %or68.i, %shl67.i
  %54 = ptrtoint ptr %crtc_v_sync_strt_wid.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %or73.i, ptr %crtc_v_sync_strt_wid.i, align 4
  %crtc_id74.i = getelementptr inbounds %struct.radeon_crtc, ptr %crtc, i32 0, i32 1
  %55 = ptrtoint ptr %crtc_id74.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %crtc_id74.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %tobool75.not.i = icmp eq i32 %56, 0
  %rmmio.i27.i = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 31
  %57 = ptrtoint ptr %rmmio.i27.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %rmmio.i27.i, align 4
  br i1 %tobool75.not.i, label %if.else.i, label %if.then76.i

if.then76.i:                                      ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i.i = getelementptr i8, ptr %58, i32 1016
  %59 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #7, !srcloc !50
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !51
  %60 = and i32 %59, -2139066112
  %61 = tail call i32 @llvm.bswap.i32(i32 %60) #7
  %62 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %flags.i, align 4
  %and85.i = lshr i32 %63, 5
  %and85.lobit.i = and i32 %and85.i, 1
  %and90.i = shl i32 %63, 21
  %64 = and i32 %and90.i, 134217728
  %and95.i = lshr i32 %63, 3
  %65 = and i32 %and95.i, 2
  %or83.i = or i32 %61, %switch.load
  %or88.i = or i32 %or83.i, %and85.lobit.i
  %or93.i = or i32 %or88.i, %64
  %or98.i = or i32 %or93.i, %65
  %family.i = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 6
  %66 = ptrtoint ptr %family.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %family.i, align 4
  %68 = and i32 %67, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %68)
  %switch7.i = icmp eq i32 %68, 16
  %spec.select.v.i = select i1 %switch7.i, i32 914358272, i32 880803840
  %spec.select.i = or i32 %or98.i, %spec.select.v.i
  %69 = ptrtoint ptr %rmmio.i27.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %rmmio.i27.i, align 4
  %add.ptr.i12.i = getelementptr i8, ptr %70, i32 3432
  %71 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i12.i) #7, !srcloc !50
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !51
  %72 = and i32 %71, -65537
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !52
  tail call void @arm_heavy_mb() #7
  %73 = ptrtoint ptr %rmmio.i27.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %rmmio.i27.i, align 4
  %add.ptr.i14.i = getelementptr i8, ptr %74, i32 3432
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i14.i, i32 %72) #7, !srcloc !53
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !52
  tail call void @arm_heavy_mb() #7
  %75 = tail call i32 @llvm.bswap.i32(i32 %spec.select.i) #7
  %76 = ptrtoint ptr %rmmio.i27.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %rmmio.i27.i, align 4
  %add.ptr.i18.i = getelementptr i8, ptr %77, i32 1016
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i18.i, i32 %75) #7, !srcloc !53
  %78 = ptrtoint ptr %crtc_h_sync_strt_wid.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %crtc_h_sync_strt_wid.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !52
  tail call void @arm_heavy_mb() #7
  %80 = tail call i32 @llvm.bswap.i32(i32 %79) #7
  %81 = ptrtoint ptr %rmmio.i27.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %rmmio.i27.i, align 4
  %add.ptr.i22.i = getelementptr i8, ptr %82, i32 964
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i22.i, i32 %80) #7, !srcloc !53
  %83 = ptrtoint ptr %crtc_v_sync_strt_wid.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %crtc_v_sync_strt_wid.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !52
  tail call void @arm_heavy_mb() #7
  %85 = tail call i32 @llvm.bswap.i32(i32 %84) #7
  %86 = ptrtoint ptr %rmmio.i27.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %rmmio.i27.i, align 4
  %add.ptr.i26.i = getelementptr i8, ptr %87, i32 968
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i26.i, i32 %85) #7, !srcloc !53
  br label %if.end145.i

if.else.i:                                        ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i28.i = getelementptr i8, ptr %58, i32 80
  %88 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i28.i) #7, !srcloc !50
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !51
  %89 = and i32 %88, 8417536
  %90 = tail call i32 @llvm.bswap.i32(i32 %89) #7
  %91 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %flags.i, align 4
  %and116.i = lshr i32 %92, 5
  %and116.lobit.i = and i32 %and116.i, 1
  %and121.i = lshr i32 %92, 2
  %93 = and i32 %and121.i, 16
  %and126.i = lshr i32 %92, 3
  %94 = and i32 %and126.i, 2
  %or114.i = or i32 %90, %switch.load
  %or119.i = or i32 %or114.i, %and116.lobit.i
  %or124.i = or i32 %or119.i, %93
  %or129.i = or i32 %or124.i, %94
  %family131.i = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 6
  %95 = ptrtoint ptr %family131.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %family131.i, align 4
  %97 = and i32 %96, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %97)
  %switch9.i = icmp eq i32 %97, 16
  %spec.select10.v.i = select i1 %switch9.i, i32 117440512, i32 83886080
  %spec.select10.i = or i32 %or129.i, %spec.select10.v.i
  %98 = ptrtoint ptr %rmmio.i27.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %rmmio.i27.i, align 4
  %add.ptr.i30.i = getelementptr i8, ptr %99, i32 84
  %100 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i30.i) #7, !srcloc !50
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !51
  %101 = or i32 %100, 1074200576
  %102 = ptrtoint ptr %rmmio.i27.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %rmmio.i27.i, align 4
  %add.ptr.i32.i = getelementptr i8, ptr %103, i32 3424
  %104 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i32.i) #7, !srcloc !50
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !51
  %105 = and i32 %104, -65537
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !52
  tail call void @arm_heavy_mb() #7
  %106 = ptrtoint ptr %rmmio.i27.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %rmmio.i27.i, align 4
  %add.ptr.i36.i = getelementptr i8, ptr %107, i32 3424
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i36.i, i32 %105) #7, !srcloc !53
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !52
  tail call void @arm_heavy_mb() #7
  %108 = tail call i32 @llvm.bswap.i32(i32 %spec.select10.i) #7
  %109 = ptrtoint ptr %rmmio.i27.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %rmmio.i27.i, align 4
  %add.ptr.i40.i = getelementptr i8, ptr %110, i32 80
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i40.i, i32 %108) #7, !srcloc !53
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !52
  tail call void @arm_heavy_mb() #7
  %111 = ptrtoint ptr %rmmio.i27.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %rmmio.i27.i, align 4
  %add.ptr.i44.i = getelementptr i8, ptr %112, i32 84
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i44.i, i32 %101) #7, !srcloc !53
  br label %if.end145.i

if.end145.i:                                      ; preds = %if.else.i, %if.then76.i
  br i1 %cmp.not80.i, label %if.end145.i.if.end148.i_crit_edge, label %if.then147.i

if.end145.i.if.end148.i_crit_edge:                ; preds = %if.end145.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end148.i

if.then147.i:                                     ; preds = %if.end145.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @radeon_legacy_tv_adjust_crtc_reg(ptr noundef %encoder.082.i, ptr noundef nonnull %crtc_h_total_disp.i, ptr noundef nonnull %crtc_h_sync_strt_wid.i, ptr noundef nonnull %crtc_v_total_disp.i, ptr noundef nonnull %crtc_v_sync_strt_wid.i) #7
  br label %if.end148.i

if.end148.i:                                      ; preds = %if.then147.i, %if.end145.i.if.end148.i_crit_edge
  %crtc_offset.i = getelementptr inbounds %struct.radeon_crtc, ptr %crtc, i32 0, i32 5
  %113 = ptrtoint ptr %crtc_offset.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %crtc_offset.i, align 8
  %add.i = add i32 %114, 512
  %115 = ptrtoint ptr %crtc_h_total_disp.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %crtc_h_total_disp.i, align 4
  %rmmio_size.i45.i = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 18
  %117 = ptrtoint ptr %rmmio_size.i45.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %rmmio_size.i45.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %118, i32 %add.i)
  %cmp.i46.i = icmp ugt i32 %118, %add.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %add.i)
  %cmp1.i.i = icmp ult i32 %add.i, 65536
  %or.cond.i.i = or i1 %cmp1.i.i, %cmp.i46.i
  br i1 %or.cond.i.i, label %do.body.i.i, label %if.else.i.i

do.body.i.i:                                      ; preds = %if.end148.i
  call void @__sanitizer_cov_trace_pc() #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !52
  call void @arm_heavy_mb() #7
  %119 = call i32 @llvm.bswap.i32(i32 %116) #7
  %120 = ptrtoint ptr %rmmio.i27.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %rmmio.i27.i, align 4
  %add.ptr.i48.i = getelementptr i8, ptr %121, i32 %add.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i48.i, i32 %119) #7, !srcloc !53
  br label %r100_mm_wreg.exit.i

if.else.i.i:                                      ; preds = %if.end148.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @r100_mm_wreg_slow(ptr noundef %3, i32 noundef %add.i, i32 noundef %116) #7
  br label %r100_mm_wreg.exit.i

r100_mm_wreg.exit.i:                              ; preds = %if.else.i.i, %do.body.i.i
  %122 = ptrtoint ptr %crtc_offset.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %crtc_offset.i, align 8
  %add150.i = add i32 %123, 516
  %124 = ptrtoint ptr %crtc_h_sync_strt_wid.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %crtc_h_sync_strt_wid.i, align 4
  %126 = ptrtoint ptr %rmmio_size.i45.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %rmmio_size.i45.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %127, i32 %add150.i)
  %cmp.i50.i = icmp ugt i32 %127, %add150.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %add150.i)
  %cmp1.i51.i = icmp ult i32 %add150.i, 65536
  %or.cond.i52.i = or i1 %cmp1.i51.i, %cmp.i50.i
  br i1 %or.cond.i52.i, label %do.body.i55.i, label %if.else.i56.i

do.body.i55.i:                                    ; preds = %r100_mm_wreg.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !52
  call void @arm_heavy_mb() #7
  %128 = call i32 @llvm.bswap.i32(i32 %125) #7
  %129 = ptrtoint ptr %rmmio.i27.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %rmmio.i27.i, align 4
  %add.ptr.i54.i = getelementptr i8, ptr %130, i32 %add150.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i54.i, i32 %128) #7, !srcloc !53
  br label %r100_mm_wreg.exit57.i

if.else.i56.i:                                    ; preds = %r100_mm_wreg.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @r100_mm_wreg_slow(ptr noundef %3, i32 noundef %add150.i, i32 noundef %125) #7
  br label %r100_mm_wreg.exit57.i

r100_mm_wreg.exit57.i:                            ; preds = %if.else.i56.i, %do.body.i55.i
  %131 = ptrtoint ptr %crtc_offset.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %crtc_offset.i, align 8
  %add152.i = add i32 %132, 520
  %133 = ptrtoint ptr %crtc_v_total_disp.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %crtc_v_total_disp.i, align 4
  %135 = ptrtoint ptr %rmmio_size.i45.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %rmmio_size.i45.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %136, i32 %add152.i)
  %cmp.i59.i = icmp ugt i32 %136, %add152.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %add152.i)
  %cmp1.i60.i = icmp ult i32 %add152.i, 65536
  %or.cond.i61.i = or i1 %cmp1.i60.i, %cmp.i59.i
  br i1 %or.cond.i61.i, label %do.body.i64.i, label %if.else.i65.i

do.body.i64.i:                                    ; preds = %r100_mm_wreg.exit57.i
  call void @__sanitizer_cov_trace_pc() #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !52
  call void @arm_heavy_mb() #7
  %137 = call i32 @llvm.bswap.i32(i32 %134) #7
  %138 = ptrtoint ptr %rmmio.i27.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %rmmio.i27.i, align 4
  %add.ptr.i63.i = getelementptr i8, ptr %139, i32 %add152.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i63.i, i32 %137) #7, !srcloc !53
  br label %r100_mm_wreg.exit66.i

if.else.i65.i:                                    ; preds = %r100_mm_wreg.exit57.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @r100_mm_wreg_slow(ptr noundef %3, i32 noundef %add152.i, i32 noundef %134) #7
  br label %r100_mm_wreg.exit66.i

r100_mm_wreg.exit66.i:                            ; preds = %if.else.i65.i, %do.body.i64.i
  %140 = ptrtoint ptr %crtc_offset.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %crtc_offset.i, align 8
  %add154.i = add i32 %141, 524
  %142 = ptrtoint ptr %crtc_v_sync_strt_wid.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %crtc_v_sync_strt_wid.i, align 4
  %144 = ptrtoint ptr %rmmio_size.i45.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %rmmio_size.i45.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %145, i32 %add154.i)
  %cmp.i68.i = icmp ugt i32 %145, %add154.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %add154.i)
  %cmp1.i69.i = icmp ult i32 %add154.i, 65536
  %or.cond.i70.i = or i1 %cmp1.i69.i, %cmp.i68.i
  br i1 %or.cond.i70.i, label %do.body.i73.i, label %if.else.i74.i

do.body.i73.i:                                    ; preds = %r100_mm_wreg.exit66.i
  call void @__sanitizer_cov_trace_pc() #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !52
  call void @arm_heavy_mb() #7
  %146 = call i32 @llvm.bswap.i32(i32 %143) #7
  %147 = ptrtoint ptr %rmmio.i27.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %rmmio.i27.i, align 4
  %add.ptr.i72.i = getelementptr i8, ptr %148, i32 %add154.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i72.i, i32 %146) #7, !srcloc !53
  br label %radeon_set_crtc_timing.exit

if.else.i74.i:                                    ; preds = %r100_mm_wreg.exit66.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @r100_mm_wreg_slow(ptr noundef %3, i32 noundef %add154.i, i32 noundef %143) #7
  br label %radeon_set_crtc_timing.exit

radeon_set_crtc_timing.exit:                      ; preds = %if.else.i74.i, %do.body.i73.i, %for.end.i.radeon_set_crtc_timing.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %crtc_v_sync_strt_wid.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %crtc_v_total_disp.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %crtc_h_sync_strt_wid.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %crtc_h_total_disp.i) #7
  %149 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %crtc, align 8
  %dev_private.i16 = getelementptr inbounds %struct.drm_device, ptr %150, i32 0, i32 5
  %151 = ptrtoint ptr %dev_private.i16 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %dev_private.i16, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %feedback_div.i) #7
  %153 = ptrtoint ptr %feedback_div.i to i32
  call void @__asan_store4_noabort(i32 %153)
  store i32 0, ptr %feedback_div.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %frac_fb_div.i) #7
  %154 = ptrtoint ptr %frac_fb_div.i to i32
  call void @__asan_store4_noabort(i32 %154)
  store i32 0, ptr %frac_fb_div.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reference_div.i) #7
  %155 = ptrtoint ptr %reference_div.i to i32
  call void @__asan_store4_noabort(i32 %155)
  store i32 0, ptr %reference_div.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %post_divider.i) #7
  %156 = ptrtoint ptr %post_divider.i to i32
  call void @__asan_store4_noabort(i32 %156)
  store i32 0, ptr %post_divider.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %freq.i) #7
  %157 = ptrtoint ptr %freq.i to i32
  call void @__asan_store4_noabort(i32 %157)
  store i32 0, ptr %freq.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pll_ref_div.i) #7
  %158 = ptrtoint ptr %pll_ref_div.i to i32
  call void @__asan_store4_noabort(i32 %158)
  store i32 0, ptr %pll_ref_div.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pll_fb_post_div.i) #7
  %159 = ptrtoint ptr %pll_fb_post_div.i to i32
  call void @__asan_store4_noabort(i32 %159)
  store i32 0, ptr %pll_fb_post_div.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %htotal_cntl.i) #7
  %160 = ptrtoint ptr %htotal_cntl.i to i32
  call void @__asan_store4_noabort(i32 %160)
  store i32 0, ptr %htotal_cntl.i, align 4
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %post_divs.i) #7
  %161 = call ptr @memcpy(ptr %post_divs.i, ptr @__const.radeon_set_pll.post_divs, i32 72)
  %crtc_id.i17 = getelementptr inbounds %struct.radeon_crtc, ptr %crtc, i32 0, i32 1
  %162 = ptrtoint ptr %crtc_id.i17 to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %crtc_id.i17, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %163)
  %tobool.not.i18 = icmp eq i32 %163, 0
  %p2pll.i = getelementptr inbounds %struct.radeon_device, ptr %152, i32 0, i32 41, i32 1
  %clock2.i = getelementptr inbounds %struct.radeon_device, ptr %152, i32 0, i32 41
  %pll.0.i = select i1 %tobool.not.i18, ptr %clock2.i, ptr %p2pll.i
  %flags.i19 = getelementptr inbounds %struct.radeon_pll, ptr %pll.0.i, i32 0, i32 18
  %164 = ptrtoint ptr %flags.i19 to i32
  call void @__asan_store4_noabort(i32 %164)
  store i32 8, ptr %flags.i19, align 4
  %165 = ptrtoint ptr %adjusted_mode to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %adjusted_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 200000, i32 %166)
  %cmp.i = icmp sgt i32 %166, 200000
  %storemerge.i = select i1 %cmp.i, i32 136, i32 24
  %167 = ptrtoint ptr %flags.i19 to i32
  call void @__asan_store4_noabort(i32 %167)
  store i32 %storemerge.i, ptr %flags.i19, align 4
  %encoder_list.i20 = getelementptr inbounds %struct.drm_device, ptr %150, i32 0, i32 30, i32 16
  %168 = ptrtoint ptr %encoder_list.i20 to i32
  call void @__asan_load4_noabort(i32 %168)
  %.pn630.i = load ptr, ptr %encoder_list.i20, align 4
  %cmp15.not631.i = icmp eq ptr %.pn630.i, %encoder_list.i20
  br i1 %cmp15.not631.i, label %for.end.thread.i, label %for.body.lr.ph.i

for.end.thread.i:                                 ; preds = %radeon_set_crtc_timing.exit
  call void @__sanitizer_cov_trace_pc() #9
  %encoder.0.le652.i = getelementptr %struct.drm_device, ptr %150, i32 0, i32 30, i32 15
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str) #7
  br label %if.then59.i

for.body.lr.ph.i:                                 ; preds = %radeon_set_crtc_timing.exit
  %is_atom_bios.i = getelementptr inbounds %struct.radeon_device, ptr %152, i32 0, i32 14
  br label %for.body.i21

for.body.i21:                                     ; preds = %for.inc.i28.for.body.i21_crit_edge, %for.body.lr.ph.i
  %.pn633.i = phi ptr [ %.pn630.i, %for.body.lr.ph.i ], [ %.pn.i27, %for.inc.i28.for.body.i21_crit_edge ]
  %use_bios_divs.0.off0632.i = phi i1 [ false, %for.body.lr.ph.i ], [ %use_bios_divs.5.off0.i, %for.inc.i28.for.body.i21_crit_edge ]
  %crtc16.i = getelementptr i8, ptr %.pn633.i, i32 48
  %169 = ptrtoint ptr %crtc16.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %crtc16.i, align 4
  %cmp17.i = icmp eq ptr %170, %crtc
  br i1 %cmp17.i, label %if.then18.i, label %for.body.i21.for.inc.i28_crit_edge

for.body.i21.for.inc.i28_crit_edge:               ; preds = %for.body.i21
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i28

if.then18.i:                                      ; preds = %for.body.i21
  %active_device.i22 = getelementptr i8, ptr %.pn633.i, i32 80
  %171 = ptrtoint ptr %active_device.i22 to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load i32, ptr %active_device.i22, align 4
  %and.i23 = and i32 %172, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i23)
  %tobool22.not.i = icmp eq i32 %and.i23, 0
  br i1 %tobool22.not.i, label %if.end24.i, label %if.then18.i.for.end.i29_crit_edge

if.then18.i.for.end.i29_crit_edge:                ; preds = %if.then18.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i29

if.end24.i:                                       ; preds = %if.then18.i
  %encoder_type.i = getelementptr i8, ptr %.pn633.i, i32 32
  %173 = ptrtoint ptr %encoder_type.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load i32, ptr %encoder_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %174)
  %cmp25.not.i = icmp eq i32 %174, 1
  br i1 %cmp25.not.i, label %if.end24.i.for.inc.i28_crit_edge, label %if.end29.i

if.end24.i.for.inc.i28_crit_edge:                 ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i28

if.end29.i:                                       ; preds = %if.end24.i
  %175 = ptrtoint ptr %flags.i19 to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load i32, ptr %flags.i19, align 4
  %or28.i = or i32 %176, 2
  store i32 %or28.i, ptr %flags.i19, align 4
  %177 = ptrtoint ptr %encoder_type.i to i32
  call void @__asan_load4_noabort(i32 %177)
  %.pr.i = load i32, ptr %encoder_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.pr.i)
  %cmp31.i = icmp eq i32 %.pr.i, 3
  br i1 %cmp31.i, label %if.then32.i, label %if.end29.i.for.inc.i28_crit_edge

if.end29.i.for.inc.i28_crit_edge:                 ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i28

if.then32.i:                                      ; preds = %if.end29.i
  %178 = ptrtoint ptr %is_atom_bios.i to i32
  call void @__asan_load1_noabort(i32 %178)
  %179 = load i8, ptr %is_atom_bios.i, align 4, !range !54
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %179)
  %tobool33.not.i = icmp eq i8 %179, 0
  br i1 %tobool33.not.i, label %if.then34.i, label %if.then32.i.if.end48.i_crit_edge

if.then32.i.if.end48.i_crit_edge:                 ; preds = %if.then32.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end48.i

if.then34.i:                                      ; preds = %if.then32.i
  %enc_priv.i = getelementptr i8, ptr %.pn633.i, i32 220
  %180 = ptrtoint ptr %enc_priv.i to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %enc_priv.i, align 4
  %tobool39.not.i = icmp eq ptr %181, null
  br i1 %tobool39.not.i, label %if.then34.i.if.end48.i_crit_edge, label %if.then40.i

if.then34.i.if.end48.i_crit_edge:                 ; preds = %if.then34.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end48.i

if.then40.i:                                      ; preds = %if.then34.i
  %use_bios_dividers.i = getelementptr inbounds %struct.radeon_encoder_lvds, ptr %181, i32 0, i32 7
  %182 = ptrtoint ptr %use_bios_dividers.i to i32
  call void @__asan_load1_noabort(i32 %182)
  %183 = load i8, ptr %use_bios_dividers.i, align 4, !range !54
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %183)
  %tobool41.not.i = icmp eq i8 %183, 0
  br i1 %tobool41.not.i, label %if.then40.i.if.end48.i_crit_edge, label %if.then42.i

if.then40.i.if.end48.i_crit_edge:                 ; preds = %if.then40.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end48.i

if.then42.i:                                      ; preds = %if.then40.i
  call void @__sanitizer_cov_trace_pc() #9
  %panel_ref_divider.i = getelementptr inbounds %struct.radeon_encoder_lvds, ptr %181, i32 0, i32 4
  %184 = ptrtoint ptr %panel_ref_divider.i to i32
  call void @__asan_load2_noabort(i32 %184)
  %185 = load i16, ptr %panel_ref_divider.i, align 2
  %conv.i24 = zext i16 %185 to i32
  %186 = ptrtoint ptr %pll_ref_div.i to i32
  call void @__asan_store4_noabort(i32 %186)
  store i32 %conv.i24, ptr %pll_ref_div.i, align 4
  %panel_fb_divider.i = getelementptr inbounds %struct.radeon_encoder_lvds, ptr %181, i32 0, i32 6
  %187 = ptrtoint ptr %panel_fb_divider.i to i32
  call void @__asan_load2_noabort(i32 %187)
  %188 = load i16, ptr %panel_fb_divider.i, align 2
  %conv43.i = zext i16 %188 to i32
  %panel_post_divider.i = getelementptr inbounds %struct.radeon_encoder_lvds, ptr %181, i32 0, i32 5
  %189 = ptrtoint ptr %panel_post_divider.i to i32
  call void @__asan_load1_noabort(i32 %189)
  %190 = load i8, ptr %panel_post_divider.i, align 4
  %conv44.i = zext i8 %190 to i32
  %shl.i25 = shl nuw nsw i32 %conv44.i, 16
  %or45.i26 = or i32 %shl.i25, %conv43.i
  %191 = ptrtoint ptr %pll_fb_post_div.i to i32
  call void @__asan_store4_noabort(i32 %191)
  store i32 %or45.i26, ptr %pll_fb_post_div.i, align 4
  %192 = ptrtoint ptr %htotal_cntl.i to i32
  call void @__asan_store4_noabort(i32 %192)
  store i32 0, ptr %htotal_cntl.i, align 4
  br label %if.end48.i

if.end48.i:                                       ; preds = %if.then42.i, %if.then40.i.if.end48.i_crit_edge, %if.then34.i.if.end48.i_crit_edge, %if.then32.i.if.end48.i_crit_edge
  %use_bios_divs.2.off0.i = phi i1 [ %use_bios_divs.0.off0632.i, %if.then32.i.if.end48.i_crit_edge ], [ true, %if.then42.i ], [ %use_bios_divs.0.off0632.i, %if.then40.i.if.end48.i_crit_edge ], [ %use_bios_divs.0.off0632.i, %if.then34.i.if.end48.i_crit_edge ]
  %193 = ptrtoint ptr %flags.i19 to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load i32, ptr %flags.i19, align 4
  %or50.i = or i32 %194, 4
  store i32 %or50.i, ptr %flags.i19, align 4
  br label %for.inc.i28

for.inc.i28:                                      ; preds = %if.end48.i, %if.end29.i.for.inc.i28_crit_edge, %if.end24.i.for.inc.i28_crit_edge, %for.body.i21.for.inc.i28_crit_edge
  %use_bios_divs.5.off0.i = phi i1 [ %use_bios_divs.0.off0632.i, %for.body.i21.for.inc.i28_crit_edge ], [ %use_bios_divs.0.off0632.i, %if.end29.i.for.inc.i28_crit_edge ], [ %use_bios_divs.2.off0.i, %if.end48.i ], [ %use_bios_divs.0.off0632.i, %if.end24.i.for.inc.i28_crit_edge ]
  %195 = ptrtoint ptr %.pn633.i to i32
  call void @__asan_load4_noabort(i32 %195)
  %.pn.i27 = load ptr, ptr %.pn633.i, align 4
  %cmp15.not.i = icmp eq ptr %.pn.i27, %encoder_list.i20
  br i1 %cmp15.not.i, label %for.inc.i28.for.end.i29_crit_edge, label %for.inc.i28.for.body.i21_crit_edge

for.inc.i28.for.body.i21_crit_edge:               ; preds = %for.inc.i28
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i21

for.inc.i28.for.end.i29_crit_edge:                ; preds = %for.inc.i28
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i29

for.end.i29:                                      ; preds = %for.inc.i28.for.end.i29_crit_edge, %if.then18.i.for.end.i29_crit_edge
  %.pn.lcssa.i = phi ptr [ %encoder_list.i20, %for.inc.i28.for.end.i29_crit_edge ], [ %.pn633.i, %if.then18.i.for.end.i29_crit_edge ]
  %use_bios_divs.0.off0.lcssa.i = phi i1 [ %use_bios_divs.5.off0.i, %for.inc.i28.for.end.i29_crit_edge ], [ %use_bios_divs.0.off0632.i, %if.then18.i.for.end.i29_crit_edge ]
  %cmp15.not.lcssa.i = phi i1 [ true, %for.inc.i28.for.end.i29_crit_edge ], [ false, %if.then18.i.for.end.i29_crit_edge ]
  %encoder.0.le.i = getelementptr i8, ptr %.pn.lcssa.i, i32 -4
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str) #7
  br i1 %use_bios_divs.0.off0.lcssa.i, label %for.end.i29.if.end81.i_crit_edge, label %for.end.i29.if.then59.i_crit_edge

for.end.i29.if.then59.i_crit_edge:                ; preds = %for.end.i29
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then59.i

for.end.i29.if.end81.i_crit_edge:                 ; preds = %for.end.i29
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end81.i

if.then59.i:                                      ; preds = %for.end.i29.if.then59.i_crit_edge, %for.end.thread.i
  %encoder.0.le655.i = phi ptr [ %encoder.0.le652.i, %for.end.thread.i ], [ %encoder.0.le.i, %for.end.i29.if.then59.i_crit_edge ]
  %cmp15.not.lcssa653.i = phi i1 [ true, %for.end.thread.i ], [ %cmp15.not.lcssa.i, %for.end.i29.if.then59.i_crit_edge ]
  %196 = ptrtoint ptr %adjusted_mode to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load i32, ptr %adjusted_mode, align 4
  %conv61.i = sext i32 %197 to i64
  call void @radeon_compute_pll_legacy(ptr noundef %pll.0.i, i64 noundef %conv61.i, ptr noundef nonnull %freq.i, ptr noundef nonnull %feedback_div.i, ptr noundef nonnull %frac_fb_div.i, ptr noundef nonnull %reference_div.i, ptr noundef nonnull %post_divider.i) #7
  %198 = ptrtoint ptr %post_divs.i to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load i32, ptr %post_divs.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %199)
  %tobool63.not640.i = icmp eq i32 %199, 0
  br i1 %tobool63.not640.i, label %if.then59.i.for.end71.i_crit_edge, label %for.body64.lr.ph.i

if.then59.i.for.end71.i_crit_edge:                ; preds = %if.then59.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end71.i

for.body64.lr.ph.i:                               ; preds = %if.then59.i
  %200 = ptrtoint ptr %post_divider.i to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load i32, ptr %post_divider.i, align 4
  br label %for.body64.i

for.body64.i:                                     ; preds = %for.inc70.i.for.body64.i_crit_edge, %for.body64.lr.ph.i
  %202 = phi i32 [ %199, %for.body64.lr.ph.i ], [ %204, %for.inc70.i.for.body64.i_crit_edge ]
  %post_div.0641.i = phi ptr [ %post_divs.i, %for.body64.lr.ph.i ], [ %incdec.ptr.i, %for.inc70.i.for.body64.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %202, i32 %201)
  %cmp66.i = icmp eq i32 %202, %201
  br i1 %cmp66.i, label %for.body64.i.for.end71.loopexit.i_crit_edge, label %for.inc70.i

for.body64.i.for.end71.loopexit.i_crit_edge:      ; preds = %for.body64.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end71.loopexit.i

for.inc70.i:                                      ; preds = %for.body64.i
  %incdec.ptr.i = getelementptr %struct.anon.110, ptr %post_div.0641.i, i32 1
  %203 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load i32, ptr %incdec.ptr.i, align 4
  %tobool63.not.i = icmp eq i32 %204, 0
  br i1 %tobool63.not.i, label %for.inc70.i.for.end71.loopexit.i_crit_edge, label %for.inc70.i.for.body64.i_crit_edge

for.inc70.i.for.body64.i_crit_edge:               ; preds = %for.inc70.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body64.i

for.inc70.i.for.end71.loopexit.i_crit_edge:       ; preds = %for.inc70.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end71.loopexit.i

for.end71.loopexit.i:                             ; preds = %for.inc70.i.for.end71.loopexit.i_crit_edge, %for.body64.i.for.end71.loopexit.i_crit_edge
  %post_div.0.lcssa.ph.i = phi ptr [ %incdec.ptr.i, %for.inc70.i.for.end71.loopexit.i_crit_edge ], [ %post_div.0641.i, %for.body64.i.for.end71.loopexit.i_crit_edge ]
  %205 = xor i1 %cmp66.i, true
  br label %for.end71.i

for.end71.i:                                      ; preds = %for.end71.loopexit.i, %if.then59.i.for.end71.i_crit_edge
  %post_div.0.lcssa.i = phi ptr [ %post_divs.i, %if.then59.i.for.end71.i_crit_edge ], [ %post_div.0.lcssa.ph.i, %for.end71.loopexit.i ]
  %tobool63.not.lcssa.i = phi i1 [ true, %if.then59.i.for.end71.i_crit_edge ], [ %205, %for.end71.loopexit.i ]
  %206 = ptrtoint ptr %freq.i to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load i32, ptr %freq.i, align 4
  %208 = ptrtoint ptr %feedback_div.i to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load i32, ptr %feedback_div.i, align 4
  %210 = ptrtoint ptr %reference_div.i to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load i32, ptr %reference_div.i, align 4
  %212 = ptrtoint ptr %post_divider.i to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load i32, ptr %post_divider.i, align 4
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.13, i32 noundef %207, i32 noundef %209, i32 noundef %211, i32 noundef %213) #7
  %214 = ptrtoint ptr %reference_div.i to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load i32, ptr %reference_div.i, align 4
  %216 = ptrtoint ptr %pll_ref_div.i to i32
  call void @__asan_store4_noabort(i32 %216)
  store i32 %215, ptr %pll_ref_div.i, align 4
  %217 = ptrtoint ptr %feedback_div.i to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load i32, ptr %feedback_div.i, align 4
  %post_divs.sroa.gep.i = getelementptr inbounds %struct.anon.110, ptr %post_divs.i, i32 0, i32 1
  %post_div.0.sroa.gep.i = getelementptr inbounds %struct.anon.110, ptr %post_div.0.lcssa.i, i32 0, i32 1
  %spec.select = select i1 %tobool63.not.lcssa.i, ptr %post_divs.sroa.gep.i, ptr %post_div.0.sroa.gep.i
  %219 = ptrtoint ptr %spec.select to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load i32, ptr %spec.select, align 4
  %shl77.i = shl i32 %220, 16
  %or78.i = or i32 %shl77.i, %218
  %221 = ptrtoint ptr %pll_fb_post_div.i to i32
  call void @__asan_store4_noabort(i32 %221)
  store i32 %or78.i, ptr %pll_fb_post_div.i, align 4
  %htotal.i = getelementptr inbounds %struct.drm_display_mode, ptr %adjusted_mode, i32 0, i32 4
  %222 = ptrtoint ptr %htotal.i to i32
  call void @__asan_load2_noabort(i32 %222)
  %223 = load i16, ptr %htotal.i, align 2
  %224 = and i16 %223, 7
  %and80.i = zext i16 %224 to i32
  %225 = ptrtoint ptr %htotal_cntl.i to i32
  call void @__asan_store4_noabort(i32 %225)
  store i32 %and80.i, ptr %htotal_cntl.i, align 4
  br label %if.end81.i

if.end81.i:                                       ; preds = %for.end71.i, %for.end.i29.if.end81.i_crit_edge
  %encoder.0.le656.i = phi ptr [ %encoder.0.le655.i, %for.end71.i ], [ %encoder.0.le.i, %for.end.i29.if.end81.i_crit_edge ]
  %cmp15.not.lcssa654.i = phi i1 [ %cmp15.not.lcssa653.i, %for.end71.i ], [ %cmp15.not.lcssa.i, %for.end.i29.if.end81.i_crit_edge ]
  %226 = ptrtoint ptr %pll_ref_div.i to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load i32, ptr %pll_ref_div.i, align 4
  %228 = trunc i32 %227 to i16
  %conv84.i = and i16 %228, 1023
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %conv84.i)
  %tobool.not.i.i = icmp eq i16 %conv84.i, 0
  br i1 %tobool.not.i.i, label %if.end81.i.radeon_compute_pll_gain.exit.i_crit_edge, label %if.end.i.i

if.end81.i.radeon_compute_pll_gain.exit.i_crit_edge: ; preds = %if.end81.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %radeon_compute_pll_gain.exit.i

if.end.i.i:                                       ; preds = %if.end81.i
  %229 = ptrtoint ptr %pll_fb_post_div.i to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load i32, ptr %pll_fb_post_div.i, align 4
  %conv86.i = and i32 %230, 2047
  %231 = ptrtoint ptr %pll.0.i to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load i32, ptr %pll.0.i, align 4
  %conv.i.i = and i32 %232, 65535
  %mul.i.i = mul nuw nsw i32 %conv.i.i, %conv86.i
  %conv2.i.i = zext i16 %conv84.i to i32
  %div.i.i = udiv i32 %mul.i.i, %conv2.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 29999, i32 %div.i.i)
  %cmp.i.i = icmp ugt i32 %div.i.i, 29999
  br i1 %cmp.i.i, label %if.end.i.i.radeon_compute_pll_gain.exit.i_crit_edge, label %if.else.i.i31

if.end.i.i.radeon_compute_pll_gain.exit.i_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %radeon_compute_pll_gain.exit.i

if.else.i.i31:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 17999, i32 %div.i.i)
  %cmp5.i.i = icmp ugt i32 %div.i.i, 17999
  %phi.cast.i = select i1 %cmp5.i.i, i32 8192, i32 2048
  br label %radeon_compute_pll_gain.exit.i

radeon_compute_pll_gain.exit.i:                   ; preds = %if.else.i.i31, %if.end.i.i.radeon_compute_pll_gain.exit.i_crit_edge, %if.end81.i.radeon_compute_pll_gain.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ 2048, %if.end81.i.radeon_compute_pll_gain.exit.i_crit_edge ], [ 14336, %if.end.i.i.radeon_compute_pll_gain.exit.i_crit_edge ], [ %phi.cast.i, %if.else.i.i31 ]
  %233 = ptrtoint ptr %crtc_id.i17 to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load i32, ptr %crtc_id.i17, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %234)
  %tobool88.not.i = icmp eq i32 %234, 0
  br i1 %tobool88.not.i, label %if.else169.i, label %if.then89.i

if.then89.i:                                      ; preds = %radeon_compute_pll_gain.exit.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pixclks_cntl.i) #7
  %pll_rreg.i = getelementptr inbounds %struct.radeon_device, ptr %152, i32 0, i32 34
  %235 = ptrtoint ptr %pll_rreg.i to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load ptr, ptr %pll_rreg.i, align 8
  %call90.i = call i32 %236(ptr noundef %152, i32 noundef 45) #7
  %or92.i = or i32 %call90.i, 3
  %237 = ptrtoint ptr %pixclks_cntl.i to i32
  call void @__asan_store4_noabort(i32 %237)
  store i32 %or92.i, ptr %pixclks_cntl.i, align 4
  br i1 %cmp15.not.lcssa654.i, label %if.then89.i.do.body.i_crit_edge, label %if.then94.i

if.then89.i.do.body.i_crit_edge:                  ; preds = %if.then89.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i

if.then94.i:                                      ; preds = %if.then89.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @radeon_legacy_tv_adjust_pll2(ptr noundef %encoder.0.le656.i, ptr noundef nonnull %htotal_cntl.i, ptr noundef nonnull %pll_ref_div.i, ptr noundef nonnull %pll_fb_post_div.i, ptr noundef nonnull %pixclks_cntl.i) #7
  br label %do.body.i

do.body.i:                                        ; preds = %if.then94.i, %if.then89.i.do.body.i_crit_edge
  %238 = ptrtoint ptr %pll_rreg.i to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load ptr, ptr %pll_rreg.i, align 8
  %call97.i = call i32 %239(ptr noundef %152, i32 noundef 45) #7
  %and98.i = and i32 %call97.i, -4
  %pll_wreg.i = getelementptr inbounds %struct.radeon_device, ptr %152, i32 0, i32 35
  %240 = ptrtoint ptr %pll_wreg.i to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load ptr, ptr %pll_wreg.i, align 4
  call void %241(ptr noundef %152, i32 noundef 45, i32 noundef %and98.i) #7
  %242 = ptrtoint ptr %pll_rreg.i to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load ptr, ptr %pll_rreg.i, align 8
  %call103.i = call i32 %243(ptr noundef %152, i32 noundef 42) #7
  %and104.i = and i32 %call103.i, -79874
  %and108.i = or i32 %retval.0.i.i, %and104.i
  %or109.i = or i32 %and108.i, 65537
  %244 = ptrtoint ptr %pll_wreg.i to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load ptr, ptr %pll_wreg.i, align 4
  call void %245(ptr noundef %152, i32 noundef 42, i32 noundef %or109.i) #7
  %246 = ptrtoint ptr %pll_rreg.i to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load ptr, ptr %pll_rreg.i, align 8
  %call116.i = call i32 %247(ptr noundef %152, i32 noundef 43) #7
  %and117.i = and i32 %call116.i, -1024
  %248 = ptrtoint ptr %pll_ref_div.i to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load i32, ptr %pll_ref_div.i, align 4
  %and118.i = and i32 %249, 1023
  %or119.i32 = or i32 %and118.i, %and117.i
  %250 = ptrtoint ptr %pll_wreg.i to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load ptr, ptr %pll_wreg.i, align 4
  call void %251(ptr noundef %152, i32 noundef 43, i32 noundef %or119.i32) #7
  %252 = ptrtoint ptr %pll_rreg.i to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load ptr, ptr %pll_rreg.i, align 8
  %call126.i = call i32 %253(ptr noundef %152, i32 noundef 44) #7
  %and127.i = and i32 %call126.i, -2048
  %254 = ptrtoint ptr %pll_fb_post_div.i to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load i32, ptr %pll_fb_post_div.i, align 4
  %and128.i = and i32 %255, 2047
  %or129.i33 = or i32 %and128.i, %and127.i
  %256 = ptrtoint ptr %pll_wreg.i to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load ptr, ptr %pll_wreg.i, align 4
  call void %257(ptr noundef %152, i32 noundef 44, i32 noundef %or129.i33) #7
  %258 = ptrtoint ptr %pll_rreg.i to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load ptr, ptr %pll_rreg.i, align 8
  %call136.i = call i32 %259(ptr noundef %152, i32 noundef 44) #7
  %and137.i = and i32 %call136.i, -458753
  %260 = ptrtoint ptr %pll_fb_post_div.i to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load i32, ptr %pll_fb_post_div.i, align 4
  %and138.i = and i32 %261, 458752
  %or139.i = or i32 %and138.i, %and137.i
  %262 = ptrtoint ptr %pll_wreg.i to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load ptr, ptr %pll_wreg.i, align 4
  call void %263(ptr noundef %152, i32 noundef 44, i32 noundef %or139.i) #7
  %264 = ptrtoint ptr %dev_private.i16 to i32
  call void @__asan_load4_noabort(i32 %264)
  %265 = load ptr, ptr %dev_private.i16, align 4
  %pll_rreg.i.i = getelementptr inbounds %struct.radeon_device, ptr %265, i32 0, i32 34
  br label %while.cond.i.i

while.cond.i.i:                                   ; preds = %while.cond.i.i.while.cond.i.i_crit_edge, %do.body.i
  %266 = ptrtoint ptr %pll_rreg.i.i to i32
  call void @__asan_load4_noabort(i32 %266)
  %267 = load ptr, ptr %pll_rreg.i.i, align 8
  %call.i.i = call i32 %267(ptr noundef %265, i32 noundef 43) #7
  %and.i.i = and i32 %call.i.i, 32768
  %tobool.not.i589.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i589.i, label %radeon_pll2_write_update.exit.i, label %while.cond.i.i.while.cond.i.i_crit_edge

while.cond.i.i.while.cond.i.i_crit_edge:          ; preds = %while.cond.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond.i.i

radeon_pll2_write_update.exit.i:                  ; preds = %while.cond.i.i
  %268 = ptrtoint ptr %pll_rreg.i.i to i32
  call void @__asan_load4_noabort(i32 %268)
  %269 = load ptr, ptr %pll_rreg.i.i, align 8
  %call2.i.i = call i32 %269(ptr noundef %265, i32 noundef 43) #7
  %or.i.i = or i32 %call2.i.i, 32768
  %pll_wreg.i.i = getelementptr inbounds %struct.radeon_device, ptr %265, i32 0, i32 35
  %270 = ptrtoint ptr %pll_wreg.i.i to i32
  call void @__asan_load4_noabort(i32 %270)
  %271 = load ptr, ptr %pll_wreg.i.i, align 4
  call void %271(ptr noundef %265, i32 noundef 43, i32 noundef %or.i.i) #7
  %272 = ptrtoint ptr %dev_private.i16 to i32
  call void @__asan_load4_noabort(i32 %272)
  %273 = load ptr, ptr %dev_private.i16, align 4
  %pll_rreg.i591.i = getelementptr inbounds %struct.radeon_device, ptr %273, i32 0, i32 34
  br label %land.rhs.i.i

land.rhs.i.i:                                     ; preds = %land.rhs.i.i.land.rhs.i.i_crit_edge, %radeon_pll2_write_update.exit.i
  %i.03.i.i = phi i32 [ 0, %radeon_pll2_write_update.exit.i ], [ %inc.i.i, %land.rhs.i.i.land.rhs.i.i_crit_edge ]
  %274 = ptrtoint ptr %pll_rreg.i591.i to i32
  call void @__asan_load4_noabort(i32 %274)
  %275 = load ptr, ptr %pll_rreg.i591.i, align 8
  %call.i592.i = call i32 %275(ptr noundef %273, i32 noundef 43) #7
  %and.i593.i = and i32 %call.i592.i, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i593.i)
  %tobool.not.i594.i = icmp eq i32 %and.i593.i, 0
  %inc.i.i = add nuw nsw i32 %i.03.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 10000, i32 %inc.i.i)
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, 10000
  %or.cond.i.i34 = select i1 %tobool.not.i594.i, i1 true, i1 %exitcond.not.i.i
  br i1 %or.cond.i.i34, label %radeon_pll2_wait_for_read_update_complete.exit.i, label %land.rhs.i.i.land.rhs.i.i_crit_edge

land.rhs.i.i.land.rhs.i.i_crit_edge:              ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.rhs.i.i

radeon_pll2_wait_for_read_update_complete.exit.i: ; preds = %land.rhs.i.i
  %276 = ptrtoint ptr %pll_wreg.i to i32
  call void @__asan_load4_noabort(i32 %276)
  %277 = load ptr, ptr %pll_wreg.i, align 4
  %278 = ptrtoint ptr %htotal_cntl.i to i32
  call void @__asan_load4_noabort(i32 %278)
  %279 = load i32, ptr %htotal_cntl.i, align 4
  call void %277(ptr noundef %152, i32 noundef 46, i32 noundef %279) #7
  %280 = ptrtoint ptr %pll_rreg.i to i32
  call void @__asan_load4_noabort(i32 %280)
  %281 = load ptr, ptr %pll_rreg.i, align 8
  %call147.i = call i32 %281(ptr noundef %152, i32 noundef 42) #7
  %and148.i = and i32 %call147.i, -65540
  %282 = ptrtoint ptr %pll_wreg.i to i32
  call void @__asan_load4_noabort(i32 %282)
  %283 = load ptr, ptr %pll_wreg.i, align 4
  call void %283(ptr noundef %152, i32 noundef 42, i32 noundef %and148.i) #7
  %284 = ptrtoint ptr %pll_ref_div.i to i32
  call void @__asan_load4_noabort(i32 %284)
  %285 = load i32, ptr %pll_ref_div.i, align 4
  %286 = ptrtoint ptr %pll_fb_post_div.i to i32
  call void @__asan_load4_noabort(i32 %286)
  %287 = load i32, ptr %pll_fb_post_div.i, align 4
  %288 = ptrtoint ptr %htotal_cntl.i to i32
  call void @__asan_load4_noabort(i32 %288)
  %289 = load i32, ptr %htotal_cntl.i, align 4
  %290 = ptrtoint ptr %pll_rreg.i to i32
  call void @__asan_load4_noabort(i32 %290)
  %291 = load ptr, ptr %pll_rreg.i, align 8
  %call154.i = call i32 %291(ptr noundef %152, i32 noundef 42) #7
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.14, i32 noundef %285, i32 noundef %287, i32 noundef %289, i32 noundef %call154.i) #7
  %292 = ptrtoint ptr %pll_ref_div.i to i32
  call void @__asan_load4_noabort(i32 %292)
  %293 = load i32, ptr %pll_ref_div.i, align 4
  %and155.i = and i32 %293, 1023
  %294 = ptrtoint ptr %pll_fb_post_div.i to i32
  call void @__asan_load4_noabort(i32 %294)
  %295 = load i32, ptr %pll_fb_post_div.i, align 4
  %and156.i = and i32 %295, 2047
  %and157.i = lshr i32 %295, 16
  %shr.i = and i32 %and157.i, 7
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.15, i32 noundef %and155.i, i32 noundef %and156.i, i32 noundef %shr.i) #7
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %radeon_pll2_wait_for_read_update_complete.exit.i
  %__ms.0647.i = phi i32 [ 50, %radeon_pll2_wait_for_read_update_complete.exit.i ], [ %dec.i, %while.body.i.while.body.i_crit_edge ]
  %dec.i = add nsw i32 %__ms.0647.i, -1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %296 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %296(i32 noundef 214748000) #7
  %tobool158.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool158.not.i, label %while.end.i, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i

while.end.i:                                      ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %297 = ptrtoint ptr %pll_rreg.i to i32
  call void @__asan_load4_noabort(i32 %297)
  %298 = load ptr, ptr %pll_rreg.i, align 8
  %call162.i = call i32 %298(ptr noundef %152, i32 noundef 45) #7
  %or164.i = or i32 %call162.i, 3
  %299 = ptrtoint ptr %pll_wreg.i to i32
  call void @__asan_load4_noabort(i32 %299)
  %300 = load ptr, ptr %pll_wreg.i, align 4
  call void %300(ptr noundef %152, i32 noundef 45, i32 noundef %or164.i) #7
  %301 = ptrtoint ptr %pll_wreg.i to i32
  call void @__asan_load4_noabort(i32 %301)
  %302 = load ptr, ptr %pll_wreg.i, align 4
  %303 = ptrtoint ptr %pixclks_cntl.i to i32
  call void @__asan_load4_noabort(i32 %303)
  %304 = load i32, ptr %pixclks_cntl.i, align 4
  call void %302(ptr noundef %152, i32 noundef 45, i32 noundef %304) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pixclks_cntl.i) #7
  br label %radeon_set_pll.exit

if.else169.i:                                     ; preds = %radeon_compute_pll_gain.exit.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pixclks_cntl170.i) #7
  %305 = ptrtoint ptr %pixclks_cntl170.i to i32
  call void @__asan_store4_noabort(i32 %305)
  store i32 -1, ptr %pixclks_cntl170.i, align 4, !annotation !47
  br i1 %cmp15.not.lcssa654.i, label %if.else169.i.if.end175.i_crit_edge, label %if.then172.i

if.else169.i.if.end175.i_crit_edge:               ; preds = %if.else169.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end175.i

if.then172.i:                                     ; preds = %if.else169.i
  call void @__sanitizer_cov_trace_pc() #9
  %pll_rreg173.i = getelementptr inbounds %struct.radeon_device, ptr %152, i32 0, i32 34
  %306 = ptrtoint ptr %pll_rreg173.i to i32
  call void @__asan_load4_noabort(i32 %306)
  %307 = load ptr, ptr %pll_rreg173.i, align 8
  %call174.i = call i32 %307(ptr noundef %152, i32 noundef 45) #7
  %308 = ptrtoint ptr %pixclks_cntl170.i to i32
  call void @__asan_store4_noabort(i32 %308)
  store i32 %call174.i, ptr %pixclks_cntl170.i, align 4
  call void @radeon_legacy_tv_adjust_pll1(ptr noundef %encoder.0.le656.i, ptr noundef nonnull %htotal_cntl.i, ptr noundef nonnull %pll_ref_div.i, ptr noundef nonnull %pll_fb_post_div.i, ptr noundef nonnull %pixclks_cntl170.i) #7
  br label %if.end175.i

if.end175.i:                                      ; preds = %if.then172.i, %if.else169.i.if.end175.i_crit_edge
  %flags176.i = getelementptr inbounds %struct.radeon_device, ptr %152, i32 0, i32 7
  %309 = ptrtoint ptr %flags176.i to i32
  call void @__asan_load4_noabort(i32 %309)
  %310 = load i32, ptr %flags176.i, align 8
  %and177.i = and i32 %310, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and177.i)
  %tobool178.not.i = icmp eq i32 %and177.i, 0
  br i1 %tobool178.not.i, label %if.end175.i.do.body200.i_crit_edge, label %if.then179.i

if.end175.i.do.body200.i_crit_edge:               ; preds = %if.end175.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body200.i

if.then179.i:                                     ; preds = %if.end175.i
  %311 = ptrtoint ptr %pll_ref_div.i to i32
  call void @__asan_load4_noabort(i32 %311)
  %312 = load i32, ptr %pll_ref_div.i, align 4
  %pll_rreg180.i = getelementptr inbounds %struct.radeon_device, ptr %152, i32 0, i32 34
  %313 = ptrtoint ptr %pll_rreg180.i to i32
  call void @__asan_load4_noabort(i32 %313)
  %314 = load ptr, ptr %pll_rreg180.i, align 8
  %call181.i = call i32 %314(ptr noundef %152, i32 noundef 3) #7
  %and182.i = and i32 %call181.i, 1023
  call void @__sanitizer_cov_trace_cmp4(i32 %312, i32 %and182.i)
  %cmp183.i = icmp eq i32 %312, %and182.i
  br i1 %cmp183.i, label %land.lhs.true.i, label %if.then179.i.do.body200.i_crit_edge

if.then179.i.do.body200.i_crit_edge:              ; preds = %if.then179.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body200.i

land.lhs.true.i:                                  ; preds = %if.then179.i
  %315 = ptrtoint ptr %pll_fb_post_div.i to i32
  call void @__asan_load4_noabort(i32 %315)
  %316 = load i32, ptr %pll_fb_post_div.i, align 4
  %317 = ptrtoint ptr %pll_rreg180.i to i32
  call void @__asan_load4_noabort(i32 %317)
  %318 = load ptr, ptr %pll_rreg180.i, align 8
  %call186.i = call i32 %318(ptr noundef %152, i32 noundef 7) #7
  %and187.i = and i32 %call186.i, 460799
  call void @__sanitizer_cov_trace_cmp4(i32 %316, i32 %and187.i)
  %cmp188.i = icmp eq i32 %316, %and187.i
  br i1 %cmp188.i, label %do.body191.i, label %land.lhs.true.i.do.body200.i_crit_edge

land.lhs.true.i.do.body200.i_crit_edge:           ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body200.i

do.body191.i:                                     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  %rmmio.i.i = getelementptr inbounds %struct.radeon_device, ptr %152, i32 0, i32 31
  %319 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %319)
  %320 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i.i35 = getelementptr i8, ptr %320, i32 8
  %321 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i35) #7, !srcloc !50
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !51
  %322 = or i32 %321, 196608
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !52
  call void @arm_heavy_mb() #7
  %323 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %323)
  %324 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i597.i = getelementptr i8, ptr %324, i32 8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i597.i, i32 %322) #7, !srcloc !53
  call void @r100_pll_errata_after_index(ptr noundef %152) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pixclks_cntl170.i) #7
  br label %radeon_set_pll.exit

do.body200.i:                                     ; preds = %land.lhs.true.i.do.body200.i_crit_edge, %if.then179.i.do.body200.i_crit_edge, %if.end175.i.do.body200.i_crit_edge
  %pll_rreg202.i = getelementptr inbounds %struct.radeon_device, ptr %152, i32 0, i32 34
  %325 = ptrtoint ptr %pll_rreg202.i to i32
  call void @__asan_load4_noabort(i32 %325)
  %326 = load ptr, ptr %pll_rreg202.i, align 8
  %call203.i = call i32 %326(ptr noundef %152, i32 noundef 8) #7
  %and204.i = and i32 %call203.i, -4
  %pll_wreg206.i = getelementptr inbounds %struct.radeon_device, ptr %152, i32 0, i32 35
  %327 = ptrtoint ptr %pll_wreg206.i to i32
  call void @__asan_load4_noabort(i32 %327)
  %328 = load ptr, ptr %pll_wreg206.i, align 4
  call void %328(ptr noundef %152, i32 noundef 8, i32 noundef %and204.i) #7
  %329 = ptrtoint ptr %pll_rreg202.i to i32
  call void @__asan_load4_noabort(i32 %329)
  %330 = load ptr, ptr %pll_rreg202.i, align 8
  %call212.i = call i32 %330(ptr noundef %152, i32 noundef 2) #7
  %and213.i = and i32 %call212.i, -210946
  %and217.i = or i32 %retval.0.i.i, %and213.i
  %or218.i = or i32 %and217.i, 196609
  %331 = ptrtoint ptr %pll_wreg206.i to i32
  call void @__asan_load4_noabort(i32 %331)
  %332 = load ptr, ptr %pll_wreg206.i, align 4
  call void %332(ptr noundef %152, i32 noundef 2, i32 noundef %or218.i) #7
  %rmmio.i599.i = getelementptr inbounds %struct.radeon_device, ptr %152, i32 0, i32 31
  %333 = ptrtoint ptr %rmmio.i599.i to i32
  call void @__asan_load4_noabort(i32 %333)
  %334 = load ptr, ptr %rmmio.i599.i, align 4
  %add.ptr.i600.i = getelementptr i8, ptr %334, i32 8
  %335 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i600.i) #7, !srcloc !50
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !51
  %336 = or i32 %335, 196608
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !52
  call void @arm_heavy_mb() #7
  %337 = ptrtoint ptr %rmmio.i599.i to i32
  call void @__asan_load4_noabort(i32 %337)
  %338 = load ptr, ptr %rmmio.i599.i, align 4
  %add.ptr.i604.i = getelementptr i8, ptr %338, i32 8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i604.i, i32 %336) #7, !srcloc !53
  call void @r100_pll_errata_after_index(ptr noundef %152) #7
  %family.i36 = getelementptr inbounds %struct.radeon_device, ptr %152, i32 0, i32 6
  %339 = ptrtoint ptr %family.i36 to i32
  call void @__asan_load4_noabort(i32 %339)
  %340 = load i32, ptr %family.i36, align 4
  %341 = zext i32 %340 to i64
  call void @__sanitizer_cov_trace_switch(i64 %341, ptr @__sancov_gen_cov_switch_values.23)
  switch i32 %340, label %do.body302.i [
    i32 9, label %do.body200.i.if.then274.i_crit_edge
    i32 11, label %do.body200.i.if.then274.i_crit_edge76
    i32 10, label %do.body200.i.if.then274.i_crit_edge77
    i32 12, label %do.body200.i.if.then274.i_crit_edge78
    i32 13, label %do.body200.i.if.then274.i_crit_edge79
    i32 14, label %do.body200.i.if.then274.i_crit_edge80
    i32 15, label %do.body200.i.if.then274.i_crit_edge81
    i32 16, label %do.body200.i.if.then274.i_crit_edge82
    i32 17, label %do.body200.i.if.then274.i_crit_edge83
    i32 7, label %do.body200.i.if.then274.i_crit_edge84
  ]

do.body200.i.if.then274.i_crit_edge84:            ; preds = %do.body200.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then274.i

do.body200.i.if.then274.i_crit_edge83:            ; preds = %do.body200.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then274.i

do.body200.i.if.then274.i_crit_edge82:            ; preds = %do.body200.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then274.i

do.body200.i.if.then274.i_crit_edge81:            ; preds = %do.body200.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then274.i

do.body200.i.if.then274.i_crit_edge80:            ; preds = %do.body200.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then274.i

do.body200.i.if.then274.i_crit_edge79:            ; preds = %do.body200.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then274.i

do.body200.i.if.then274.i_crit_edge78:            ; preds = %do.body200.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then274.i

do.body200.i.if.then274.i_crit_edge77:            ; preds = %do.body200.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then274.i

do.body200.i.if.then274.i_crit_edge76:            ; preds = %do.body200.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then274.i

do.body200.i.if.then274.i_crit_edge:              ; preds = %do.body200.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then274.i

if.then274.i:                                     ; preds = %do.body200.i.if.then274.i_crit_edge, %do.body200.i.if.then274.i_crit_edge76, %do.body200.i.if.then274.i_crit_edge77, %do.body200.i.if.then274.i_crit_edge78, %do.body200.i.if.then274.i_crit_edge79, %do.body200.i.if.then274.i_crit_edge80, %do.body200.i.if.then274.i_crit_edge81, %do.body200.i.if.then274.i_crit_edge82, %do.body200.i.if.then274.i_crit_edge83, %do.body200.i.if.then274.i_crit_edge84
  %342 = ptrtoint ptr %pll_ref_div.i to i32
  call void @__asan_load4_noabort(i32 %342)
  %343 = load i32, ptr %pll_ref_div.i, align 4
  %and275.i = and i32 %343, 268173312
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and275.i)
  %tobool276.not.i = icmp eq i32 %and275.i, 0
  %344 = ptrtoint ptr %pll_rreg202.i to i32
  call void @__asan_load4_noabort(i32 %344)
  %345 = load ptr, ptr %pll_rreg202.i, align 8
  %call292.i = call i32 %345(ptr noundef %152, i32 noundef 3) #7
  br i1 %tobool276.not.i, label %do.body289.i, label %do.body278.i

do.body278.i:                                     ; preds = %if.then274.i
  call void @__sanitizer_cov_trace_pc() #9
  %346 = ptrtoint ptr %pll_ref_div.i to i32
  call void @__asan_load4_noabort(i32 %346)
  %347 = load i32, ptr %pll_ref_div.i, align 4
  br label %do.body313.i

do.body289.i:                                     ; preds = %if.then274.i
  call void @__sanitizer_cov_trace_pc() #9
  %and293.i = and i32 %call292.i, -268173313
  %348 = ptrtoint ptr %pll_ref_div.i to i32
  call void @__asan_load4_noabort(i32 %348)
  %349 = load i32, ptr %pll_ref_div.i, align 4
  %shl294.i = shl i32 %349, 18
  %and295.i = and i32 %shl294.i, 268173312
  %or296.i = or i32 %and295.i, %and293.i
  br label %do.body313.i

do.body302.i:                                     ; preds = %do.body200.i
  call void @__sanitizer_cov_trace_pc() #9
  %350 = ptrtoint ptr %pll_rreg202.i to i32
  call void @__asan_load4_noabort(i32 %350)
  %351 = load ptr, ptr %pll_rreg202.i, align 8
  %call305.i = call i32 %351(ptr noundef %152, i32 noundef 3) #7
  %and306.i = and i32 %call305.i, -1024
  %352 = ptrtoint ptr %pll_ref_div.i to i32
  call void @__asan_load4_noabort(i32 %352)
  %353 = load i32, ptr %pll_ref_div.i, align 4
  %and307.i = and i32 %353, 1023
  %or308.i = or i32 %and307.i, %and306.i
  br label %do.body313.i

do.body313.i:                                     ; preds = %do.body302.i, %do.body289.i, %do.body278.i
  %or308.sink.i = phi i32 [ %or308.i, %do.body302.i ], [ %or296.i, %do.body289.i ], [ %347, %do.body278.i ]
  %354 = ptrtoint ptr %pll_wreg206.i to i32
  call void @__asan_load4_noabort(i32 %354)
  %355 = load ptr, ptr %pll_wreg206.i, align 4
  call void %355(ptr noundef %152, i32 noundef 3, i32 noundef %or308.sink.i) #7
  %356 = ptrtoint ptr %pll_rreg202.i to i32
  call void @__asan_load4_noabort(i32 %356)
  %357 = load ptr, ptr %pll_rreg202.i, align 8
  %call316.i = call i32 %357(ptr noundef %152, i32 noundef 7) #7
  %and317.i = and i32 %call316.i, -2048
  %358 = ptrtoint ptr %pll_fb_post_div.i to i32
  call void @__asan_load4_noabort(i32 %358)
  %359 = load i32, ptr %pll_fb_post_div.i, align 4
  %and318.i = and i32 %359, 2047
  %or319.i = or i32 %and318.i, %and317.i
  %360 = ptrtoint ptr %pll_wreg206.i to i32
  call void @__asan_load4_noabort(i32 %360)
  %361 = load ptr, ptr %pll_wreg206.i, align 4
  call void %361(ptr noundef %152, i32 noundef 7, i32 noundef %or319.i) #7
  %362 = ptrtoint ptr %pll_rreg202.i to i32
  call void @__asan_load4_noabort(i32 %362)
  %363 = load ptr, ptr %pll_rreg202.i, align 8
  %call326.i = call i32 %363(ptr noundef %152, i32 noundef 7) #7
  %and327.i = and i32 %call326.i, -458753
  %364 = ptrtoint ptr %pll_fb_post_div.i to i32
  call void @__asan_load4_noabort(i32 %364)
  %365 = load i32, ptr %pll_fb_post_div.i, align 4
  %and328.i = and i32 %365, 458752
  %or329.i = or i32 %and328.i, %and327.i
  %366 = ptrtoint ptr %pll_wreg206.i to i32
  call void @__asan_load4_noabort(i32 %366)
  %367 = load ptr, ptr %pll_wreg206.i, align 4
  call void %367(ptr noundef %152, i32 noundef 7, i32 noundef %or329.i) #7
  %368 = ptrtoint ptr %dev_private.i16 to i32
  call void @__asan_load4_noabort(i32 %368)
  %369 = load ptr, ptr %dev_private.i16, align 4
  %pll_rreg.i607.i = getelementptr inbounds %struct.radeon_device, ptr %369, i32 0, i32 34
  br label %while.cond.i611.i

while.cond.i611.i:                                ; preds = %while.cond.i611.i.while.cond.i611.i_crit_edge, %do.body313.i
  %370 = ptrtoint ptr %pll_rreg.i607.i to i32
  call void @__asan_load4_noabort(i32 %370)
  %371 = load ptr, ptr %pll_rreg.i607.i, align 8
  %call.i608.i = call i32 %371(ptr noundef %369, i32 noundef 3) #7
  %and.i609.i = and i32 %call.i608.i, 32768
  %tobool.not.i610.i = icmp eq i32 %and.i609.i, 0
  br i1 %tobool.not.i610.i, label %radeon_pll_write_update.exit.i, label %while.cond.i611.i.while.cond.i611.i_crit_edge

while.cond.i611.i.while.cond.i611.i_crit_edge:    ; preds = %while.cond.i611.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond.i611.i

radeon_pll_write_update.exit.i:                   ; preds = %while.cond.i611.i
  %372 = ptrtoint ptr %pll_rreg.i607.i to i32
  call void @__asan_load4_noabort(i32 %372)
  %373 = load ptr, ptr %pll_rreg.i607.i, align 8
  %call2.i612.i = call i32 %373(ptr noundef %369, i32 noundef 3) #7
  %or.i613.i = or i32 %call2.i612.i, 32768
  %pll_wreg.i614.i = getelementptr inbounds %struct.radeon_device, ptr %369, i32 0, i32 35
  %374 = ptrtoint ptr %pll_wreg.i614.i to i32
  call void @__asan_load4_noabort(i32 %374)
  %375 = load ptr, ptr %pll_wreg.i614.i, align 4
  call void %375(ptr noundef %369, i32 noundef 3, i32 noundef %or.i613.i) #7
  %376 = ptrtoint ptr %dev_private.i16 to i32
  call void @__asan_load4_noabort(i32 %376)
  %377 = load ptr, ptr %dev_private.i16, align 4
  %pll_rreg.i616.i = getelementptr inbounds %struct.radeon_device, ptr %377, i32 0, i32 34
  br label %land.rhs.i624.i

land.rhs.i624.i:                                  ; preds = %land.rhs.i624.i.land.rhs.i624.i_crit_edge, %radeon_pll_write_update.exit.i
  %i.03.i617.i = phi i32 [ 0, %radeon_pll_write_update.exit.i ], [ %inc.i621.i, %land.rhs.i624.i.land.rhs.i624.i_crit_edge ]
  %378 = ptrtoint ptr %pll_rreg.i616.i to i32
  call void @__asan_load4_noabort(i32 %378)
  %379 = load ptr, ptr %pll_rreg.i616.i, align 8
  %call.i618.i = call i32 %379(ptr noundef %377, i32 noundef 3) #7
  %and.i619.i = and i32 %call.i618.i, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i619.i)
  %tobool.not.i620.i = icmp eq i32 %and.i619.i, 0
  %inc.i621.i = add nuw nsw i32 %i.03.i617.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 10000, i32 %inc.i621.i)
  %exitcond.not.i622.i = icmp eq i32 %inc.i621.i, 10000
  %or.cond.i623.i = select i1 %tobool.not.i620.i, i1 true, i1 %exitcond.not.i622.i
  br i1 %or.cond.i623.i, label %radeon_pll_wait_for_read_update_complete.exit.i, label %land.rhs.i624.i.land.rhs.i624.i_crit_edge

land.rhs.i624.i.land.rhs.i624.i_crit_edge:        ; preds = %land.rhs.i624.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.rhs.i624.i

radeon_pll_wait_for_read_update_complete.exit.i:  ; preds = %land.rhs.i624.i
  %380 = ptrtoint ptr %pll_wreg206.i to i32
  call void @__asan_load4_noabort(i32 %380)
  %381 = load ptr, ptr %pll_wreg206.i, align 4
  %382 = ptrtoint ptr %htotal_cntl.i to i32
  call void @__asan_load4_noabort(i32 %382)
  %383 = load i32, ptr %htotal_cntl.i, align 4
  call void %381(ptr noundef %152, i32 noundef 9, i32 noundef %383) #7
  %384 = ptrtoint ptr %pll_rreg202.i to i32
  call void @__asan_load4_noabort(i32 %384)
  %385 = load ptr, ptr %pll_rreg202.i, align 8
  %call337.i = call i32 %385(ptr noundef %152, i32 noundef 2) #7
  %and338.i = and i32 %call337.i, -196612
  %386 = ptrtoint ptr %pll_wreg206.i to i32
  call void @__asan_load4_noabort(i32 %386)
  %387 = load ptr, ptr %pll_wreg206.i, align 4
  call void %387(ptr noundef %152, i32 noundef 2, i32 noundef %and338.i) #7
  %388 = ptrtoint ptr %pll_ref_div.i to i32
  call void @__asan_load4_noabort(i32 %388)
  %389 = load i32, ptr %pll_ref_div.i, align 4
  %390 = ptrtoint ptr %pll_fb_post_div.i to i32
  call void @__asan_load4_noabort(i32 %390)
  %391 = load i32, ptr %pll_fb_post_div.i, align 4
  %392 = ptrtoint ptr %htotal_cntl.i to i32
  call void @__asan_load4_noabort(i32 %392)
  %393 = load i32, ptr %htotal_cntl.i, align 4
  %394 = ptrtoint ptr %pll_rreg202.i to i32
  call void @__asan_load4_noabort(i32 %394)
  %395 = load ptr, ptr %pll_rreg202.i, align 8
  %call344.i = call i32 %395(ptr noundef %152, i32 noundef 2) #7
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.16, i32 noundef %389, i32 noundef %391, i32 noundef %393, i32 noundef %call344.i) #7
  %396 = ptrtoint ptr %pll_ref_div.i to i32
  call void @__asan_load4_noabort(i32 %396)
  %397 = load i32, ptr %pll_ref_div.i, align 4
  %and345.i = and i32 %397, 1023
  %398 = ptrtoint ptr %pll_fb_post_div.i to i32
  call void @__asan_load4_noabort(i32 %398)
  %399 = load i32, ptr %pll_fb_post_div.i, align 4
  %and346.i = and i32 %399, 2047
  %and347.i = lshr i32 %399, 16
  %shr348.i = and i32 %and347.i, 7
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.17, i32 noundef %and345.i, i32 noundef %and346.i, i32 noundef %shr348.i) #7
  br label %while.body353.i

while.body353.i:                                  ; preds = %while.body353.i.while.body353.i_crit_edge, %radeon_pll_wait_for_read_update_complete.exit.i
  %__ms349.0648.i = phi i32 [ 50, %radeon_pll_wait_for_read_update_complete.exit.i ], [ %dec351.i, %while.body353.i.while.body353.i_crit_edge ]
  %dec351.i = add nsw i32 %__ms349.0648.i, -1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %400 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %400(i32 noundef 214748000) #7
  %tobool352.not.i = icmp eq i32 %dec351.i, 0
  br i1 %tobool352.not.i, label %while.end354.i, label %while.body353.i.while.body353.i_crit_edge

while.body353.i.while.body353.i_crit_edge:        ; preds = %while.body353.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body353.i

while.end354.i:                                   ; preds = %while.body353.i
  %401 = ptrtoint ptr %pll_rreg202.i to i32
  call void @__asan_load4_noabort(i32 %401)
  %402 = load ptr, ptr %pll_rreg202.i, align 8
  %call358.i = call i32 %402(ptr noundef %152, i32 noundef 8) #7
  %or360.i = or i32 %call358.i, 3
  %403 = ptrtoint ptr %pll_wreg206.i to i32
  call void @__asan_load4_noabort(i32 %403)
  %404 = load ptr, ptr %pll_wreg206.i, align 4
  call void %404(ptr noundef %152, i32 noundef 8, i32 noundef %or360.i) #7
  br i1 %cmp15.not.lcssa654.i, label %while.end354.i.cleanup368.i_crit_edge, label %if.then365.i

while.end354.i.cleanup368.i_crit_edge:            ; preds = %while.end354.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup368.i

if.then365.i:                                     ; preds = %while.end354.i
  call void @__sanitizer_cov_trace_pc() #9
  %405 = ptrtoint ptr %pll_wreg206.i to i32
  call void @__asan_load4_noabort(i32 %405)
  %406 = load ptr, ptr %pll_wreg206.i, align 4
  %407 = ptrtoint ptr %pixclks_cntl170.i to i32
  call void @__asan_load4_noabort(i32 %407)
  %408 = load i32, ptr %pixclks_cntl170.i, align 4
  call void %406(ptr noundef %152, i32 noundef 45, i32 noundef %408) #7
  br label %cleanup368.i

cleanup368.i:                                     ; preds = %if.then365.i, %while.end354.i.cleanup368.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pixclks_cntl170.i) #7
  br label %radeon_set_pll.exit

radeon_set_pll.exit:                              ; preds = %cleanup368.i, %do.body191.i, %while.end.i
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %post_divs.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %htotal_cntl.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pll_fb_post_div.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pll_ref_div.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %freq.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %post_divider.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reference_div.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %frac_fb_div.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %feedback_div.i) #7
  %409 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %409)
  %410 = load ptr, ptr %crtc, align 8
  %dev_private.i37 = getelementptr inbounds %struct.drm_device, ptr %410, i32 0, i32 5
  %411 = ptrtoint ptr %dev_private.i37 to i32
  call void @__asan_load4_noabort(i32 %411)
  %412 = load ptr, ptr %dev_private.i37, align 4
  %crtc_offset.i38 = getelementptr inbounds %struct.radeon_crtc, ptr %crtc, i32 0, i32 5
  %413 = ptrtoint ptr %crtc_offset.i38 to i32
  call void @__asan_load4_noabort(i32 %413)
  %414 = load i32, ptr %crtc_offset.i38, align 8
  %add.i39 = add i32 %414, 560
  %rmmio_size.i.i = getelementptr inbounds %struct.radeon_device, ptr %412, i32 0, i32 18
  %415 = ptrtoint ptr %rmmio_size.i.i to i32
  call void @__asan_load4_noabort(i32 %415)
  %416 = load i32, ptr %rmmio_size.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %416, i32 %add.i39)
  %cmp.i.i40 = icmp ugt i32 %416, %add.i39
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %add.i39)
  %cmp1.i.i41 = icmp ult i32 %add.i39, 65536
  %or.cond.i.i42 = or i1 %cmp1.i.i41, %cmp.i.i40
  br i1 %or.cond.i.i42, label %do.body.i.i45, label %if.else.i.i46

do.body.i.i45:                                    ; preds = %radeon_set_pll.exit
  call void @__sanitizer_cov_trace_pc() #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !52
  call void @arm_heavy_mb() #7
  %rmmio.i.i43 = getelementptr inbounds %struct.radeon_device, ptr %412, i32 0, i32 31
  %417 = ptrtoint ptr %rmmio.i.i43 to i32
  call void @__asan_load4_noabort(i32 %417)
  %418 = load ptr, ptr %rmmio.i.i43, align 4
  %add.ptr.i.i44 = getelementptr i8, ptr %418, i32 %add.i39
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i44, i32 0) #7, !srcloc !53
  br label %r100_mm_wreg.exit.i47

if.else.i.i46:                                    ; preds = %radeon_set_pll.exit
  call void @__sanitizer_cov_trace_pc() #9
  call void @r100_mm_wreg_slow(ptr noundef %412, i32 noundef %add.i39, i32 noundef 0) #7
  br label %r100_mm_wreg.exit.i47

r100_mm_wreg.exit.i47:                            ; preds = %if.else.i.i46, %do.body.i.i45
  %419 = ptrtoint ptr %crtc_offset.i38 to i32
  call void @__asan_load4_noabort(i32 %419)
  %420 = load i32, ptr %crtc_offset.i38, align 8
  %add3.i = add i32 %420, 564
  %421 = ptrtoint ptr %rmmio_size.i.i to i32
  call void @__asan_load4_noabort(i32 %421)
  %422 = load i32, ptr %rmmio_size.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %422, i32 %add3.i)
  %cmp.i2.i = icmp ugt i32 %422, %add3.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %add3.i)
  %cmp1.i3.i = icmp ult i32 %add3.i, 65536
  %or.cond.i4.i = or i1 %cmp1.i3.i, %cmp.i2.i
  br i1 %or.cond.i4.i, label %do.body.i7.i, label %if.else.i8.i

do.body.i7.i:                                     ; preds = %r100_mm_wreg.exit.i47
  call void @__sanitizer_cov_trace_pc() #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !52
  call void @arm_heavy_mb() #7
  %rmmio.i5.i = getelementptr inbounds %struct.radeon_device, ptr %412, i32 0, i32 31
  %423 = ptrtoint ptr %rmmio.i5.i to i32
  call void @__asan_load4_noabort(i32 %423)
  %424 = load ptr, ptr %rmmio.i5.i, align 4
  %add.ptr.i6.i = getelementptr i8, ptr %424, i32 %add3.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i6.i, i32 0) #7, !srcloc !53
  br label %r100_mm_wreg.exit9.i

if.else.i8.i:                                     ; preds = %r100_mm_wreg.exit.i47
  call void @__sanitizer_cov_trace_pc() #9
  call void @r100_mm_wreg_slow(ptr noundef %412, i32 noundef %add3.i, i32 noundef 0) #7
  br label %r100_mm_wreg.exit9.i

r100_mm_wreg.exit9.i:                             ; preds = %if.else.i8.i, %do.body.i7.i
  %425 = ptrtoint ptr %crtc_offset.i38 to i32
  call void @__asan_load4_noabort(i32 %425)
  %426 = load i32, ptr %crtc_offset.i38, align 8
  %add5.i = add i32 %426, 568
  %427 = ptrtoint ptr %rmmio_size.i.i to i32
  call void @__asan_load4_noabort(i32 %427)
  %428 = load i32, ptr %rmmio_size.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %428, i32 %add5.i)
  %cmp.i11.i = icmp ugt i32 %428, %add5.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %add5.i)
  %cmp1.i12.i = icmp ult i32 %add5.i, 65536
  %or.cond.i13.i = or i1 %cmp1.i12.i, %cmp.i11.i
  br i1 %or.cond.i13.i, label %do.body.i16.i, label %if.else.i17.i

do.body.i16.i:                                    ; preds = %r100_mm_wreg.exit9.i
  call void @__sanitizer_cov_trace_pc() #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !52
  call void @arm_heavy_mb() #7
  %rmmio.i14.i = getelementptr inbounds %struct.radeon_device, ptr %412, i32 0, i32 31
  %429 = ptrtoint ptr %rmmio.i14.i to i32
  call void @__asan_load4_noabort(i32 %429)
  %430 = load ptr, ptr %rmmio.i14.i, align 4
  %add.ptr.i15.i = getelementptr i8, ptr %430, i32 %add5.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i15.i, i32 0) #7, !srcloc !53
  br label %radeon_overscan_setup.exit

if.else.i17.i:                                    ; preds = %r100_mm_wreg.exit9.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @r100_mm_wreg_slow(ptr noundef %412, i32 noundef %add5.i, i32 noundef 0) #7
  br label %radeon_overscan_setup.exit

radeon_overscan_setup.exit:                       ; preds = %if.else.i17.i, %do.body.i16.i
  %431 = ptrtoint ptr %crtc_id.i17 to i32
  call void @__asan_load4_noabort(i32 %431)
  %432 = load i32, ptr %crtc_id.i17, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %432)
  %cmp = icmp eq i32 %432, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %radeon_overscan_setup.exit
  %433 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %433)
  %434 = load ptr, ptr %crtc, align 8
  %dev_private.i48 = getelementptr inbounds %struct.drm_device, ptr %434, i32 0, i32 5
  %435 = ptrtoint ptr %dev_private.i48 to i32
  call void @__asan_load4_noabort(i32 %435)
  %436 = load ptr, ptr %dev_private.i48, align 4
  %hdisplay.i = getelementptr inbounds %struct.drm_display_mode, ptr %adjusted_mode, i32 0, i32 1
  %437 = ptrtoint ptr %hdisplay.i to i32
  call void @__asan_load2_noabort(i32 %437)
  %438 = load i16, ptr %hdisplay.i, align 4
  %vdisplay.i = getelementptr inbounds %struct.drm_display_mode, ptr %adjusted_mode, i32 0, i32 6
  %439 = ptrtoint ptr %vdisplay.i to i32
  call void @__asan_load2_noabort(i32 %439)
  %440 = load i16, ptr %vdisplay.i, align 2
  %rmmio.i.i49 = getelementptr inbounds %struct.radeon_device, ptr %436, i32 0, i32 31
  %441 = ptrtoint ptr %rmmio.i.i49 to i32
  call void @__asan_load4_noabort(i32 %441)
  %442 = load ptr, ptr %rmmio.i.i49, align 4
  %add.ptr.i.i50 = getelementptr i8, ptr %442, i32 656
  %443 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i50) #7, !srcloc !50
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !51
  %444 = call i32 @llvm.bswap.i32(i32 %443) #7
  %445 = ptrtoint ptr %rmmio.i.i49 to i32
  call void @__asan_load4_noabort(i32 %445)
  %446 = load ptr, ptr %rmmio.i.i49, align 4
  %add.ptr.i340.i = getelementptr i8, ptr %446, i32 652
  %447 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i340.i) #7, !srcloc !50
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !51
  %448 = call i32 @llvm.bswap.i32(i32 %447) #7
  %family.i51 = getelementptr inbounds %struct.radeon_device, ptr %436, i32 0, i32 6
  %449 = ptrtoint ptr %family.i51 to i32
  call void @__asan_load4_noabort(i32 %449)
  %450 = load i32, ptr %family.i51, align 4
  %451 = add i32 %450, -2
  %switch.and.i = and i32 %451, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %switch.and.i)
  %switch.selectcmp.i = icmp eq i32 %switch.and.i, 0
  %452 = select i1 %switch.selectcmp.i, i32 16, i32 0
  %crtc_htotal.i52 = getelementptr inbounds %struct.drm_display_mode, ptr %adjusted_mode, i32 0, i32 18
  %453 = ptrtoint ptr %crtc_htotal.i52 to i32
  call void @__asan_load2_noabort(i32 %453)
  %454 = load i16, ptr %crtc_htotal.i52, align 2
  %455 = lshr i16 %454, 3
  %narrow.i53 = add nuw nsw i16 %455, 1023
  %456 = and i16 %narrow.i53, 1023
  %and11.i = zext i16 %456 to i32
  %crtc_hdisplay.i54 = getelementptr inbounds %struct.drm_display_mode, ptr %adjusted_mode, i32 0, i32 13
  %457 = ptrtoint ptr %crtc_hdisplay.i54 to i32
  call void @__asan_load2_noabort(i32 %457)
  %458 = load i16, ptr %crtc_hdisplay.i54, align 4
  %459 = lshr i16 %458, 3
  %narrow334.i = add nuw nsw i16 %459, 511
  %460 = and i16 %narrow334.i, 511
  %and15.i = zext i16 %460 to i32
  %shl.i55 = shl nuw nsw i32 %and15.i, 16
  %or16.i = or i32 %shl.i55, %and11.i
  %crtc_hsync_end.i56 = getelementptr inbounds %struct.drm_display_mode, ptr %adjusted_mode, i32 0, i32 17
  %461 = ptrtoint ptr %crtc_hsync_end.i56 to i32
  call void @__asan_load2_noabort(i32 %461)
  %462 = load i16, ptr %crtc_hsync_end.i56, align 4
  %crtc_hsync_start.i57 = getelementptr inbounds %struct.drm_display_mode, ptr %adjusted_mode, i32 0, i32 16
  %463 = ptrtoint ptr %crtc_hsync_start.i57 to i32
  call void @__asan_load2_noabort(i32 %463)
  %464 = load i16, ptr %crtc_hsync_start.i57, align 2
  %conv18.i = zext i16 %464 to i32
  %sub25.i = add nuw nsw i32 %conv18.i, 8184
  %flags.i58 = getelementptr inbounds %struct.drm_display_mode, ptr %adjusted_mode, i32 0, i32 11
  %465 = ptrtoint ptr %flags.i58 to i32
  call void @__asan_load4_noabort(i32 %465)
  %466 = load i32, ptr %flags.i58, align 4
  %crtc_vtotal.i59 = getelementptr inbounds %struct.drm_display_mode, ptr %adjusted_mode, i32 0, i32 25
  %467 = ptrtoint ptr %crtc_vtotal.i59 to i32
  call void @__asan_load2_noabort(i32 %467)
  %468 = load i16, ptr %crtc_vtotal.i59, align 4
  %469 = add i16 %468, -1
  %and35.i = zext i16 %469 to i32
  %crtc_vdisplay.i60 = getelementptr inbounds %struct.drm_display_mode, ptr %adjusted_mode, i32 0, i32 20
  %470 = ptrtoint ptr %crtc_vdisplay.i60 to i32
  call void @__asan_load2_noabort(i32 %470)
  %471 = load i16, ptr %crtc_vdisplay.i60, align 2
  %conv36.i = zext i16 %471 to i32
  %sub37.i = shl nuw i32 %conv36.i, 16
  %shl38.i = add i32 %sub37.i, -65536
  %or39.i = or i32 %shl38.i, %and35.i
  %crtc_vsync_end.i61 = getelementptr inbounds %struct.drm_display_mode, ptr %adjusted_mode, i32 0, i32 24
  %472 = ptrtoint ptr %crtc_vsync_end.i61 to i32
  call void @__asan_load2_noabort(i32 %472)
  %473 = load i16, ptr %crtc_vsync_end.i61, align 2
  %crtc_vsync_start.i62 = getelementptr inbounds %struct.drm_display_mode, ptr %adjusted_mode, i32 0, i32 23
  %474 = ptrtoint ptr %crtc_vsync_start.i62 to i32
  call void @__asan_load2_noabort(i32 %474)
  %475 = load i16, ptr %crtc_vsync_start.i62, align 4
  %conv41.i = zext i16 %475 to i32
  %sub48.i = add nuw nsw i32 %conv41.i, 4095
  %hdisplay58.i = getelementptr inbounds %struct.radeon_crtc, ptr %crtc, i32 0, i32 22, i32 1
  %476 = ptrtoint ptr %hdisplay58.i to i32
  call void @__asan_load2_noabort(i32 %476)
  %477 = load i16, ptr %hdisplay58.i, align 4
  %conv59.i = zext i16 %477 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %477)
  %cmp60.i = icmp eq i16 %477, 0
  br i1 %cmp60.i, label %if.then.if.end96.i_crit_edge, label %lor.lhs.false62.i

if.then.if.end96.i_crit_edge:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end96.i

lor.lhs.false62.i:                                ; preds = %if.then
  %vdisplay63.i = getelementptr inbounds %struct.radeon_crtc, ptr %crtc, i32 0, i32 22, i32 6
  %478 = ptrtoint ptr %vdisplay63.i to i32
  call void @__asan_load2_noabort(i32 %478)
  %479 = load i16, ptr %vdisplay63.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %479)
  %cmp65.i = icmp eq i16 %479, 0
  br i1 %cmp65.i, label %lor.lhs.false62.i.if.end96.i_crit_edge, label %if.else.i63

lor.lhs.false62.i.if.end96.i_crit_edge:           ; preds = %lor.lhs.false62.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end96.i

if.else.i63:                                      ; preds = %lor.lhs.false62.i
  call void @__sanitizer_cov_trace_pc() #9
  %480 = call i16 @llvm.umin.i16(i16 %438, i16 %477) #7
  %481 = call i16 @llvm.umin.i16(i16 %440, i16 %479) #7
  call void @__sanitizer_cov_trace_cmp2(i16 %477, i16 %438)
  %cmp86.not.i = icmp ugt i16 %477, %438
  call void @__sanitizer_cov_trace_cmp2(i16 %479, i16 %440)
  %cmp92.not.i = icmp ugt i16 %479, %440
  br label %if.end96.i

if.end96.i:                                       ; preds = %if.else.i63, %lor.lhs.false62.i.if.end96.i_crit_edge, %if.then.if.end96.i_crit_edge
  %xres.1.in.i = phi i16 [ %438, %lor.lhs.false62.i.if.end96.i_crit_edge ], [ %438, %if.then.if.end96.i_crit_edge ], [ %480, %if.else.i63 ]
  %yres.1.in.i = phi i16 [ %440, %lor.lhs.false62.i.if.end96.i_crit_edge ], [ %440, %if.then.if.end96.i_crit_edge ], [ %481, %if.else.i63 ]
  %hscale.1.off0.i = phi i1 [ false, %lor.lhs.false62.i.if.end96.i_crit_edge ], [ false, %if.then.if.end96.i_crit_edge ], [ %cmp86.not.i, %if.else.i63 ]
  %vscale.0.off0.i = phi i1 [ false, %lor.lhs.false62.i.if.end96.i_crit_edge ], [ false, %if.then.if.end96.i_crit_edge ], [ %cmp92.not.i, %if.else.i63 ]
  %yres.1.i = zext i16 %yres.1.in.i to i32
  %xres.1.i = zext i16 %xres.1.in.i to i32
  %rmx_type.i = getelementptr inbounds %struct.radeon_crtc, ptr %crtc, i32 0, i32 17
  %482 = ptrtoint ptr %rmx_type.i to i32
  call void @__asan_load4_noabort(i32 %482)
  %483 = load i32, ptr %rmx_type.i, align 4
  %484 = zext i32 %483 to i64
  call void @__sanitizer_cov_trace_switch(i64 %484, ptr @__sancov_gen_cov_switch_values.24)
  switch i32 %483, label %sw.default.i [
    i32 1, label %if.end96.i.sw.bb.i_crit_edge
    i32 3, label %if.end96.i.sw.bb.i_crit_edge85
    i32 2, label %sw.bb147.i
  ]

if.end96.i.sw.bb.i_crit_edge85:                   ; preds = %if.end96.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb.i

if.end96.i.sw.bb.i_crit_edge:                     ; preds = %if.end96.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb.i

sw.bb.i:                                          ; preds = %if.end96.i.sw.bb.i_crit_edge, %if.end96.i.sw.bb.i_crit_edge85
  br i1 %hscale.1.off0.i, label %if.else103.i, label %if.then98.i

if.then98.i:                                      ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #9
  %div99373374380.i = lshr i16 %xres.1.in.i, 3
  %div99373.zext.i = zext i16 %div99373374380.i to i32
  %sub100.i = shl nuw nsw i32 %div99373.zext.i, 16
  %shl101.i = add nsw i32 %sub100.i, -65536
  br label %if.end121.i

if.else103.i:                                     ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #9
  %call4.lobit.i = lshr i32 %448, 31
  %add.i64 = add nuw nsw i32 %call4.lobit.i, %xres.1.i
  %mul.i = shl nuw nsw i32 %add.i64, 12
  %div109.i = udiv i32 %mul.i, %conv59.i
  %add110.i = add nuw nsw i32 %div109.i, 1
  %and111.i = and i32 %add110.i, 65535
  %485 = shl nuw nsw i32 %conv59.i, 13
  %sub117.i = and i32 %485, 536805376
  %shl118.i = add nsw i32 %sub117.i, -65536
  %or113.i = or i32 %and111.i, %shl118.i
  %or119.i65 = or i32 %or113.i, 100663296
  br label %if.end121.i

if.end121.i:                                      ; preds = %if.else103.i, %if.then98.i
  %or119.pn.i = phi i32 [ %or119.i65, %if.else103.i ], [ %shl101.i, %if.then98.i ]
  br i1 %vscale.0.off0.i, label %if.else127.i, label %if.then123.i

if.then123.i:                                     ; preds = %if.end121.i
  call void @__sanitizer_cov_trace_pc() #9
  %sub124.i = shl nuw nsw i32 %yres.1.i, 12
  %shl125.i = add nsw i32 %sub124.i, -4096
  br label %radeon_legacy_rmx_mode_set.exit

if.else127.i:                                     ; preds = %if.end121.i
  call void @__sanitizer_cov_trace_pc() #9
  %call.lobit.i = lshr i32 %444, 31
  %add131.i = add nuw nsw i32 %call.lobit.i, %yres.1.i
  %mul132.i = shl nuw nsw i32 %add131.i, 12
  %vdisplay133.i = getelementptr inbounds %struct.radeon_crtc, ptr %crtc, i32 0, i32 22, i32 6
  %486 = ptrtoint ptr %vdisplay133.i to i32
  call void @__asan_load2_noabort(i32 %486)
  %487 = load i16, ptr %vdisplay133.i, align 2
  %conv134.i = zext i16 %487 to i32
  %div135.i = udiv i32 %mul132.i, %conv134.i
  %add136.i = add nuw nsw i32 %div135.i, 1
  %and137.i66 = and i32 %add136.i, 4095
  %sub142.i = shl nuw nsw i32 %conv134.i, 12
  %shl143.i = add nsw i32 %sub142.i, -4096
  %or139.i67 = or i32 %and137.i66, %shl143.i
  %or144.i = or i32 %or139.i67, 100663296
  br label %radeon_legacy_rmx_mode_set.exit

sw.bb147.i:                                       ; preds = %if.end96.i
  call void @__sanitizer_cov_trace_pc() #9
  %div148375376379.i = lshr i16 %xres.1.in.i, 3
  %div148375.zext.i = zext i16 %div148375376379.i to i32
  %sub149.i = shl nuw nsw i32 %div148375.zext.i, 16
  %shl150.i = add nsw i32 %sub149.i, -65536
  %sub152.i = shl nuw nsw i32 %yres.1.i, 12
  %shl153.i = add nsw i32 %sub152.i, -4096
  %or155.i = or i32 %452, 12
  %crtc_hblank_end.i = getelementptr inbounds %struct.drm_display_mode, ptr %adjusted_mode, i32 0, i32 15
  %488 = ptrtoint ptr %crtc_hblank_end.i to i32
  call void @__asan_load2_noabort(i32 %488)
  %489 = load i16, ptr %crtc_hblank_end.i, align 4
  %conv156.i = zext i16 %489 to i32
  %crtc_hblank_start.i = getelementptr inbounds %struct.drm_display_mode, ptr %adjusted_mode, i32 0, i32 14
  %490 = ptrtoint ptr %crtc_hblank_start.i to i32
  call void @__asan_load2_noabort(i32 %490)
  %491 = load i16, ptr %crtc_hblank_start.i, align 2
  %conv157.i = zext i16 %491 to i32
  %sub158.i = sub nsw i32 %conv156.i, %conv157.i
  %div159.i = sdiv i32 %sub158.i, 8
  %492 = call i32 @llvm.smin.i32(i32 %div159.i, i32 110) #7
  %and164.i = and i32 %492, 1023
  %or171.i = or i32 %and164.i, %shl.i55
  %sub185.i = sub nsw i32 %conv18.i, %conv157.i
  %div186.i = sdiv i32 %sub185.i, 8
  %crtc_vblank_end.i = getelementptr inbounds %struct.drm_display_mode, ptr %adjusted_mode, i32 0, i32 22
  %493 = ptrtoint ptr %crtc_vblank_end.i to i32
  call void @__asan_load2_noabort(i32 %493)
  %494 = load i16, ptr %crtc_vblank_end.i, align 2
  %conv196.i = zext i16 %494 to i32
  %crtc_vblank_start.i = getelementptr inbounds %struct.drm_display_mode, ptr %adjusted_mode, i32 0, i32 21
  %495 = ptrtoint ptr %crtc_vblank_start.i to i32
  call void @__asan_load2_noabort(i32 %495)
  %496 = load i16, ptr %crtc_vblank_start.i, align 4
  %conv197.i = zext i16 %496 to i32
  %sub198.i = sub nsw i32 %conv196.i, %conv197.i
  %and199.i = and i32 %sub198.i, 65535
  %or204.i = or i32 %and199.i, %shl38.i
  %sub217.i = sub nsw i32 %conv41.i, %conv197.i
  %vdisplay227.i = getelementptr inbounds %struct.radeon_crtc, ptr %crtc, i32 0, i32 22, i32 6
  %497 = ptrtoint ptr %vdisplay227.i to i32
  call void @__asan_load2_noabort(i32 %497)
  %498 = load i16, ptr %vdisplay227.i, align 2
  %499 = and i16 %498, 4095
  %and229.i = zext i16 %499 to i32
  %500 = lshr i16 %477, 3
  %501 = and i16 %500, 511
  %and233.i = zext i16 %501 to i32
  %shl234.i = shl nuw nsw i32 %and233.i, 16
  %or235.i = or i32 %shl234.i, %and229.i
  br label %radeon_legacy_rmx_mode_set.exit

sw.default.i:                                     ; preds = %if.end96.i
  call void @__sanitizer_cov_trace_pc() #9
  %div237371372381.i = lshr i16 %xres.1.in.i, 3
  %div237371.zext.i = zext i16 %div237371372381.i to i32
  %sub238.i = shl nuw nsw i32 %div237371.zext.i, 16
  %shl239.i = add nsw i32 %sub238.i, -65536
  %sub241.i = shl nuw nsw i32 %yres.1.i, 12
  %shl242.i = add nsw i32 %sub241.i, -4096
  br label %radeon_legacy_rmx_mode_set.exit

radeon_legacy_rmx_mode_set.exit:                  ; preds = %sw.default.i, %sw.bb147.i, %if.else127.i, %if.then123.i
  %crtc_more_cntl.1.i = phi i32 [ %452, %sw.default.i ], [ %or155.i, %sw.bb147.i ], [ %452, %if.else127.i ], [ %452, %if.then123.i ]
  %shl239.pn.i = phi i32 [ %shl239.i, %sw.default.i ], [ %shl150.i, %sw.bb147.i ], [ %or119.pn.i, %if.else127.i ], [ %or119.pn.i, %if.then123.i ]
  %shl242.pn.i = phi i32 [ %shl242.i, %sw.default.i ], [ %shl153.i, %sw.bb147.i ], [ %or144.i, %if.else127.i ], [ %shl125.i, %if.then123.i ]
  %fp_horz_vert_active.0.i = phi i32 [ 0, %sw.default.i ], [ %or235.i, %sw.bb147.i ], [ 0, %if.else127.i ], [ 0, %if.then123.i ]
  %and26.pn.in.i = phi i32 [ %sub25.i, %sw.default.i ], [ %div186.i, %sw.bb147.i ], [ %sub25.i, %if.else127.i ], [ %sub25.i, %if.then123.i ]
  %fp_crtc_h_total_disp.0.i = phi i32 [ %or16.i, %sw.default.i ], [ %or171.i, %sw.bb147.i ], [ %or16.i, %if.else127.i ], [ %or16.i, %if.then123.i ]
  %and49.pn.in.i = phi i32 [ %sub48.i, %sw.default.i ], [ %sub217.i, %sw.bb147.i ], [ %sub48.i, %if.else127.i ], [ %sub48.i, %if.then123.i ]
  %fp_crtc_v_total_disp.0.i = phi i32 [ %or39.i, %sw.default.i ], [ %or204.i, %sw.bb147.i ], [ %or39.i, %if.else127.i ], [ %or39.i, %if.then123.i ]
  %and54.i = shl i32 %466, 20
  %502 = and i32 %and54.i, 8388608
  call void @__sanitizer_cov_trace_cmp2(i16 %473, i16 %475)
  %tobool43.not.i = icmp eq i16 %473, %475
  %conv40.i = zext i16 %473 to i32
  %sub42.i = sub nsw i32 %conv40.i, %conv41.i
  %sub42.op.i = shl i32 %sub42.i, 16
  %sub42.op.op.i = and i32 %sub42.op.i, 2031616
  %shl51.i = select i1 %tobool43.not.i, i32 65536, i32 %sub42.op.op.i
  %and49.pn.i = and i32 %and49.pn.in.i, 4095
  %or52.pn.i = or i32 %shl51.i, %502
  %fp_v_sync_strt_wid.0.i = or i32 %or52.pn.i, %and49.pn.i
  %and30.i = shl i32 %466, 22
  %503 = and i32 %and30.i, 8388608
  %conv17.i = zext i16 %462 to i32
  %sub19.i = sub nsw i32 %conv17.i, %conv18.i
  %sub19.off.i = add nsw i32 %sub19.i, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %sub19.off.i)
  %504 = icmp ult i32 %sub19.off.i, 15
  %div20.i = sdiv i32 %sub19.i, 8
  %div20.op.i = shl nsw i32 %div20.i, 16
  %div20.op.op.i = and i32 %div20.op.i, 4128768
  %shl28.i = select i1 %504, i32 65536, i32 %div20.op.op.i
  %and26.pn.i = and i32 %and26.pn.in.i, 8191
  %or29.pn.i = or i32 %shl28.i, %503
  %fp_h_sync_strt_wid.0.i = or i32 %or29.pn.i, %and26.pn.i
  %and5.i = and i32 %448, -268435456
  %and.i68 = and i32 %444, -251658240
  %fp_horz_stretch.1.i = or i32 %shl239.pn.i, %and5.i
  %fp_vert_stretch.0.i = or i32 %shl242.pn.i, %and.i68
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !52
  call void @arm_heavy_mb() #7
  %505 = call i32 @llvm.bswap.i32(i32 %fp_horz_stretch.1.i) #7
  %506 = ptrtoint ptr %rmmio.i.i49 to i32
  call void @__asan_load4_noabort(i32 %506)
  %507 = load ptr, ptr %rmmio.i.i49, align 4
  %add.ptr.i342.i = getelementptr i8, ptr %507, i32 652
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i342.i, i32 %505) #7, !srcloc !53
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !52
  call void @arm_heavy_mb() #7
  %508 = call i32 @llvm.bswap.i32(i32 %fp_vert_stretch.0.i) #7
  %509 = ptrtoint ptr %rmmio.i.i49 to i32
  call void @__asan_load4_noabort(i32 %509)
  %510 = load ptr, ptr %rmmio.i.i49, align 4
  %add.ptr.i346.i = getelementptr i8, ptr %510, i32 656
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i346.i, i32 %508) #7, !srcloc !53
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !52
  call void @arm_heavy_mb() #7
  %511 = call i32 @llvm.bswap.i32(i32 %crtc_more_cntl.1.i) #7
  %512 = ptrtoint ptr %rmmio.i.i49 to i32
  call void @__asan_load4_noabort(i32 %512)
  %513 = load ptr, ptr %rmmio.i.i49, align 4
  %add.ptr.i350.i = getelementptr i8, ptr %513, i32 636
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i350.i, i32 %511) #7, !srcloc !53
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !52
  call void @arm_heavy_mb() #7
  %514 = call i32 @llvm.bswap.i32(i32 %fp_horz_vert_active.0.i) #7
  %515 = ptrtoint ptr %rmmio.i.i49 to i32
  call void @__asan_load4_noabort(i32 %515)
  %516 = load ptr, ptr %rmmio.i.i49, align 4
  %add.ptr.i354.i = getelementptr i8, ptr %516, i32 632
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i354.i, i32 %514) #7, !srcloc !53
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !52
  call void @arm_heavy_mb() #7
  %517 = call i32 @llvm.bswap.i32(i32 %fp_h_sync_strt_wid.0.i) #7
  %518 = ptrtoint ptr %rmmio.i.i49 to i32
  call void @__asan_load4_noabort(i32 %518)
  %519 = load ptr, ptr %rmmio.i.i49, align 4
  %add.ptr.i358.i = getelementptr i8, ptr %519, i32 708
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i358.i, i32 %517) #7, !srcloc !53
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !52
  call void @arm_heavy_mb() #7
  %520 = call i32 @llvm.bswap.i32(i32 %fp_v_sync_strt_wid.0.i) #7
  %521 = ptrtoint ptr %rmmio.i.i49 to i32
  call void @__asan_load4_noabort(i32 %521)
  %522 = load ptr, ptr %rmmio.i.i49, align 4
  %add.ptr.i362.i = getelementptr i8, ptr %522, i32 712
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i362.i, i32 %520) #7, !srcloc !53
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !52
  call void @arm_heavy_mb() #7
  %523 = call i32 @llvm.bswap.i32(i32 %fp_crtc_h_total_disp.0.i) #7
  %524 = ptrtoint ptr %rmmio.i.i49 to i32
  call void @__asan_load4_noabort(i32 %524)
  %525 = load ptr, ptr %rmmio.i.i49, align 4
  %add.ptr.i366.i = getelementptr i8, ptr %525, i32 592
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i366.i, i32 %523) #7, !srcloc !53
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !52
  call void @arm_heavy_mb() #7
  %526 = call i32 @llvm.bswap.i32(i32 %fp_crtc_v_total_disp.0.i) #7
  %527 = ptrtoint ptr %rmmio.i.i49 to i32
  call void @__asan_load4_noabort(i32 %527)
  %528 = load ptr, ptr %rmmio.i.i49, align 4
  %add.ptr.i370.i = getelementptr i8, ptr %528, i32 596
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i370.i, i32 %526) #7, !srcloc !53
  br label %if.end4

if.else:                                          ; preds = %radeon_overscan_setup.exit
  %rmx_type = getelementptr inbounds %struct.radeon_crtc, ptr %crtc, i32 0, i32 17
  %529 = ptrtoint ptr %rmx_type to i32
  call void @__asan_load4_noabort(i32 %529)
  %530 = load i32, ptr %rmx_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %530)
  %cmp2.not = icmp eq i32 %530, 0
  br i1 %cmp2.not, label %if.else.if.end4_crit_edge, label %if.then3

if.else.if.end4_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4

if.then3:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.9) #7
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %if.else.if.end4_crit_edge, %radeon_legacy_rmx_mode_set.exit
  call void @radeon_cursor_reset(ptr noundef %crtc) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @radeon_crtc_disable(ptr noundef %crtc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @radeon_crtc_dpms(ptr noundef %crtc, i32 noundef 3)
  %primary = getelementptr inbounds %struct.drm_crtc, ptr %crtc, i32 0, i32 6
  %0 = ptrtoint ptr %primary to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %primary, align 4
  %fb = getelementptr inbounds %struct.drm_plane, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %fb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fb, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end7_crit_edge, label %if.then

entry.if.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7

if.then:                                          ; preds = %entry
  %obj = getelementptr inbounds %struct.drm_framebuffer, ptr %3, i32 0, i32 15
  %4 = ptrtoint ptr %obj to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %obj, align 4
  %add.ptr = getelementptr i8, ptr %5, i32 -96
  %resv32.i.i = getelementptr i8, ptr %5, i32 200
  %6 = ptrtoint ptr %resv32.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %resv32.i.i, align 8
  %call.i.i.i = tail call i32 @ww_mutex_lock_interruptible(ptr noundef %7, ptr noundef null) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -4, i32 %call.i.i.i)
  %cmp.i.i = icmp eq i32 %call.i.i.i, -4
  %retval.1.i.i = select i1 %cmp.i.i, i32 -512, i32 %call.i.i.i
  %8 = zext i32 %retval.1.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.25)
  switch i32 %retval.1.i.i, label %do.end.i [
    i32 0, label %if.else
    i32 -512, label %if.then.if.then6_crit_edge
  ], !prof !48

if.then.if.then6_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then6

do.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %rdev.i = getelementptr i8, ptr %5, i32 464
  %9 = ptrtoint ptr %rdev.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %rdev.i, align 8
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %10, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.3, ptr noundef %add.ptr) #10
  br label %if.then6

if.then6:                                         ; preds = %do.end.i, %if.then.if.then6_crit_edge
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.18) #7
  br label %if.end7

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @radeon_bo_unpin(ptr noundef %add.ptr) #7
  %bdev.i.i.i = getelementptr i8, ptr %5, i32 352
  %13 = ptrtoint ptr %bdev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %bdev.i.i.i, align 8
  %lru_lock.i.i.i = getelementptr inbounds %struct.ttm_device, ptr %14, i32 0, i32 6
  tail call void @_raw_spin_lock(ptr noundef %lru_lock.i.i.i) #7
  %resource.i.i.i = getelementptr i8, ptr %5, i32 372
  %15 = ptrtoint ptr %resource.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %resource.i.i.i, align 4
  tail call void @ttm_bo_move_to_lru_tail(ptr noundef %5, ptr noundef %16, ptr noundef null) #7
  %17 = ptrtoint ptr %bdev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %bdev.i.i.i, align 8
  %lru_lock2.i.i.i = getelementptr inbounds %struct.ttm_device, ptr %18, i32 0, i32 6
  tail call void @_raw_spin_unlock(ptr noundef %lru_lock2.i.i.i) #7
  %19 = ptrtoint ptr %resv32.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %resv32.i.i, align 8
  tail call void @dma_resv_reset_shared_max(ptr noundef %20) #7
  tail call void @ww_mutex_unlock(ptr noundef %20) #7
  br label %if.end7

if.end7:                                          ; preds = %if.else, %if.then6, %entry.if.end7_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @radeon_get_crtc_scanout_position(ptr noundef, i1 noundef zeroext, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @radeon_pm_compute_clocks(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_crtc_vblank_on(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @radeon_crtc_load_lut(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_crtc_vblank_off(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @radeon_crtc_scaling_mode_fixup(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @radeon_cursor_reset(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @radeon_legacy_tv_adjust_crtc_reg(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @radeon_compute_pll_legacy(ptr noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @radeon_legacy_tv_adjust_pll2(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @radeon_legacy_tv_adjust_pll1(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @r100_pll_errata_after_index(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.umin.i16(i16, i16) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

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

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 23)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 23)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !10, !11, !12, !13, !14, !16, !18, !20, !22, !23, !24, !25, !26, !28, !30, !32, !34, !36}
!llvm.module.flags = !{!38, !39, !40, !41, !42, !43, !44, !45}
!llvm.ident = !{!46}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/radeon/radeon_legacy_crtc.c", i32 391, i32 2}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/radeon/radeon_legacy_crtc.c", i32 394, i32 3}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/radeon/radeon_legacy_crtc.c", i32 467, i32 3}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/radeon/radeon_object.h", i32 71, i32 4}
!8 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.5, !7, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.6, !7, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.7, !7, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @radeon_bo_reserve._entry, !7, !"_entry", i1 false, i1 false}
!13 = !{ptr @radeon_bo_reserve._entry_ptr, !7, !"_entry_ptr", i1 false, i1 false}
!14 = distinct !{null, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../include/drm/ttm/ttm_bo_driver.h", i32 140, i32 7}
!16 = !{ptr @legacy_helper_funcs, !17, !"legacy_helper_funcs", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/radeon/radeon_legacy_crtc.c", i32 1106, i32 43}
!18 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/gpu/drm/radeon/radeon_legacy_crtc.c", i32 1054, i32 4}
!20 = !{ptr @.str.10, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/gpu/drm/radeon/radeon_legacy_crtc.c", i32 596, i32 5}
!22 = !{ptr @.str.11, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.12, !21, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @radeon_set_crtc_timing._entry, !21, !"_entry", i1 false, i1 false}
!25 = !{ptr @radeon_set_crtc_timing._entry_ptr, !21, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.13, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/gpu/drm/radeon/radeon_legacy_crtc.c", i32 830, i32 3}
!28 = !{ptr @.str.14, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/gpu/drm/radeon/radeon_legacy_crtc.c", i32 899, i32 3}
!30 = !{ptr @.str.15, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/gpu/drm/radeon/radeon_legacy_crtc.c", i32 904, i32 3}
!32 = !{ptr @.str.16, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/gpu/drm/radeon/radeon_legacy_crtc.c", i32 1005, i32 3}
!34 = !{ptr @.str.17, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/gpu/drm/radeon/radeon_legacy_crtc.c", i32 1010, i32 3}
!36 = !{ptr @.str.18, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/gpu/drm/radeon/radeon_legacy_crtc.c", i32 1098, i32 4}
!38 = !{i32 1, !"wchar_size", i32 2}
!39 = !{i32 1, !"min_enum_size", i32 4}
!40 = !{i32 8, !"branch-target-enforcement", i32 0}
!41 = !{i32 8, !"sign-return-address", i32 0}
!42 = !{i32 8, !"sign-return-address-all", i32 0}
!43 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!44 = !{i32 7, !"uwtable", i32 1}
!45 = !{i32 7, !"frame-pointer", i32 2}
!46 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!47 = !{!"auto-init"}
!48 = !{!"branch_weights", i32 1, i32 4000, i32 1}
!49 = !{!"branch_weights", i32 2000, i32 1}
!50 = !{i64 4518697}
!51 = !{i64 2158051472}
!52 = !{i64 2158051879}
!53 = !{i64 4518279}
!54 = !{i8 0, i8 2}
