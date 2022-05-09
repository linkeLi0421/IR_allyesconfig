; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/radeon/radeon_kms.c_pt.bc'
source_filename = "../drivers/gpu/drm/radeon/radeon_kms.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
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
%struct.radeon_agp_head = type { %struct.agp_kern_info, %struct.list_head, i32, ptr, i32, i32, i32, i32, i32, i32 }
%struct.agp_kern_info = type { %struct.agp_version, ptr, i32, i32, i32, i32, i32, i32, i8, i32, ptr }
%struct.agp_version = type { i16, i16 }
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
%struct.drm_radeon_info = type { i32, i32, i64 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.drm_crtc = type { ptr, ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, ptr, ptr, i32, i32, i32, i8, %struct.drm_display_mode, %struct.drm_display_mode, i32, i32, ptr, i32, ptr, ptr, %struct.drm_object_properties, ptr, ptr, %struct.list_head, %struct.spinlock, ptr, %struct.drm_crtc_crc, i32, %struct.spinlock, i32, [32 x i8], ptr }
%struct.drm_mode_object = type { i32, i32, ptr, %struct.kref, ptr }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }
%struct.drm_object_properties = type { i32, [24 x ptr], [24 x i64] }
%struct.drm_crtc_crc = type { %struct.spinlock, ptr, i8, i8, ptr, i32, i32, i32, %struct.wait_queue_head }
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
%struct.drm_file = type { i8, i8, i8, i8, i8, i8, i8, i8, ptr, %struct.spinlock, ptr, i32, %struct.list_head, ptr, %struct.idr, %struct.spinlock, %struct.idr, %struct.spinlock, ptr, ptr, %struct.list_head, %struct.mutex, %struct.list_head, %struct.wait_queue_head, %struct.list_head, %struct.list_head, i32, %struct.mutex, %struct.drm_prime_file_private, i32 }
%struct.drm_prime_file_private = type { %struct.mutex, %struct.rb_root, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.radeon_bo = type { %struct.list_head, i32, [4 x %struct.ttm_place], %struct.ttm_placement, %struct.ttm_buffer_object, %struct.ttm_bo_kmap_obj, i32, ptr, i32, i32, i32, i32, %struct.list_head, ptr, i32, %struct.mmu_interval_notifier }
%struct.ttm_place = type { i32, i32, i32, i32 }
%struct.ttm_placement = type { i32, ptr, i32, ptr }
%struct.ttm_buffer_object = type { %struct.drm_gem_object, ptr, i32, i32, ptr, %struct.kref, ptr, ptr, i8, %struct.list_head, %struct.list_head, ptr, i32, i32, ptr }
%struct.drm_gem_object = type { %struct.kref, i32, ptr, ptr, %struct.drm_vma_offset_node, i32, i32, ptr, ptr, ptr, %struct.dma_resv, ptr }
%struct.drm_vma_offset_node = type { %struct.rwlock_t, %struct.drm_mm_node, %struct.rb_root, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.drm_mm_node = type { i32, i64, i64, ptr, %struct.list_head, %struct.list_head, %struct.rb_node, %struct.rb_node, %struct.rb_node, i64, i64, i64, i32, i32 }
%struct.dma_resv = type { %struct.ww_mutex, %struct.seqcount_ww_mutex, ptr, ptr }
%struct.seqcount_ww_mutex = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.ttm_bo_kmap_obj = type { ptr, ptr, i32, ptr }
%struct.mmu_interval_notifier = type { %struct.interval_tree_node, ptr, ptr, %struct.hlist_node, i32 }
%struct.interval_tree_node = type { %struct.rb_node, i32, i32, i32 }
%struct.radeon_vm = type { %struct.mutex, %struct.rb_root_cached, %struct.spinlock, %struct.list_head, %struct.list_head, %struct.list_head, ptr, i32, ptr, ptr, [8 x %struct.radeon_vm_id] }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.radeon_vm_id = type { i32, i64, ptr, ptr }

@radeon_driver_load_kms._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 153, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Fatal error during GPU init\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"radeon_driver_load_kms\00", [41 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"drivers/gpu/drm/radeon/radeon_kms.c\00", [60 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@radeon_driver_load_kms._entry_ptr = internal global ptr @radeon_driver_load_kms._entry, section ".printk_index", align 4
@radeon_driver_load_kms._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.1, ptr @.str.2, i32 163, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Fatal error during modeset init\0A\00", [63 x i8] zeroinitializer }, align 32
@radeon_driver_load_kms._entry_ptr.7 = internal global ptr @radeon_driver_load_kms._entry.5, section ".printk_index", align 4
@.str.10 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"copy_from_user %s:%u\0A\00", [42 x i8] zeroinitializer }, align 32
@__func__.radeon_info_ioctl = private unnamed_addr constant [18 x i8] c"radeon_info_ioctl\00", align 1
@.str.11 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"unknown crtc id %d\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"tiling config is r6xx+ only!\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"WANT_HYPERZ: invalid value %d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"WANT_CMASK: invalid value %d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"timestamp is r6xx+ only!\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"tile mode array is si+ only!\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"macrotile mode array is cik+ only!\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"BACKEND_ENABLED_MASK is si+ only!\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Invalid request %d\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"copy_to_user %s:%u\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Invalid crtc %u\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Query failed! stat %d\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"crtc %u: dist from vblank start %d\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"NULL mode info! Returned count may be wrong.\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Invalid crtc %d\0A\00", [47 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.26 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/thread_info.h\00", [36 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Buffer overflow detected (%d < %lu)!\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@radeon_bo_reserve._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.30, ptr @.str.31, i32 71, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"%p reserve failed\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"radeon_bo_reserve\00", [46 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"drivers/gpu/drm/radeon/radeon_object.h\00", [57 x i8] zeroinitializer }, align 32
@radeon_bo_reserve._entry_ptr = internal global ptr @radeon_bo_reserve._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [41 x i64] [i64 39, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15, i64 16, i64 17, i64 18, i64 19, i64 20, i64 21, i64 22, i64 23, i64 24, i64 25, i64 26, i64 27, i64 28, i64 29, i64 30, i64 31, i64 32, i64 33, i64 34, i64 35, i64 36, i64 37, i64 38]
@__sancov_gen_cov_switch_values.33 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.34 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.35 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294966784]
@__sancov_gen_cov_switch_values.36 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294966784]
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 153, i32 3 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 163, i32 3 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 271, i32 4 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 284, i32 4 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 316, i32 4 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 332, i32 4 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 344, i32 4 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 444, i32 4 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 506, i32 4 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 515, i32 4 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 528, i32 4 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 612, i32 3 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 616, i32 3 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 785, i32 3 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 815, i32 4 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 818, i32 4 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 832, i32 6 }
@___asan_gen_.107 = private constant [39 x i8] c"../drivers/gpu/drm/radeon/radeon_kms.c\00", align 1
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 855, i32 3 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 230, i32 6 }
@___asan_gen_.113 = private unnamed_addr constant [31 x i8] c"../include/linux/thread_info.h\00", align 1
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 214, i32 2 }
@___asan_gen_.116 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 156, i32 2 }
@___asan_gen_.118 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.127 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.128 = private unnamed_addr constant [42 x i8] c"../drivers/gpu/drm/radeon/radeon_object.h\00", align 1
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 71, i32 4 }
@llvm.compiler.used = appending global [34 x ptr] [ptr @radeon_bo_reserve._entry, ptr @radeon_bo_reserve._entry_ptr, ptr @radeon_driver_load_kms._entry, ptr @radeon_driver_load_kms._entry.5, ptr @radeon_driver_load_kms._entry_ptr, ptr @radeon_driver_load_kms._entry_ptr.7, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31], section "llvm.metadata"
@0 = internal global [31 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radeon_driver_load_kms._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radeon_driver_load_kms._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radeon_bo_reserve._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @radeon_driver_unload_kms(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_private, align 4
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %rmmio = getelementptr inbounds %struct.radeon_device, ptr %1, i32 0, i32 31
  %2 = ptrtoint ptr %rmmio to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rmmio, align 4
  %cmp1 = icmp eq ptr %3, null
  br i1 %cmp1, label %if.end.done_free_crit_edge, label %if.end3

if.end.done_free_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %done_free

if.end3:                                          ; preds = %if.end
  %call = tail call zeroext i1 @radeon_is_px(ptr noundef %dev) #7
  br i1 %call, label %if.then4, label %if.end3.if.end8_crit_edge

if.end3.if.end8_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8

if.then4:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #9
  %dev5 = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 2
  %4 = ptrtoint ptr %dev5 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev5, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %5, i32 noundef 4) #7
  %6 = ptrtoint ptr %dev5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev5, align 4
  tail call void @pm_runtime_forbid(ptr noundef %7) #7
  br label %if.end8

if.end8:                                          ; preds = %if.then4, %if.end3.if.end8_crit_edge
  tail call void @radeon_modeset_fini(ptr noundef nonnull %1) #7
  tail call void @radeon_device_fini(ptr noundef nonnull %1) #7
  %agp = getelementptr inbounds %struct.radeon_device, ptr %1, i32 0, i32 3
  %8 = ptrtoint ptr %agp to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %agp, align 4
  tail call void @kfree(ptr noundef %9) #7
  %10 = ptrtoint ptr %agp to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %agp, align 4
  br label %done_free

done_free:                                        ; preds = %if.end8, %if.end.done_free_crit_edge
  tail call void @kfree(ptr noundef nonnull %1) #7
  %11 = ptrtoint ptr %dev_private to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %dev_private, align 4
  br label %cleanup

cleanup:                                          ; preds = %done_free, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @radeon_is_px(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_forbid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @radeon_modeset_fini(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @radeon_device_fini(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @radeon_driver_load_kms(ptr noundef %dev, i32 noundef %flags) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 2
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 -136
  %call1.i.i.i = tail call noalias align 4096 ptr @kmalloc_order_trace(i32 noundef 11736, i32 noundef 3520, i32 noundef 2) #10
  %cmp = icmp eq ptr %call1.i.i.i, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 5
  %2 = ptrtoint ptr %dev_private to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call1.i.i.i, ptr %dev_private, align 4
  %call2 = tail call zeroext i8 @pci_find_capability(ptr noundef %add.ptr, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call2)
  %tobool.not = icmp eq i8 %call2, 0
  br i1 %tobool.not, label %if.end.if.end5_crit_edge, label %if.then3

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end5

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %agp = getelementptr inbounds %struct.radeon_device, ptr %call1.i.i.i, i32 0, i32 3
  %3 = ptrtoint ptr %agp to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %agp, align 4
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %if.end.if.end5_crit_edge
  %agp6 = getelementptr inbounds %struct.radeon_device, ptr %call1.i.i.i, i32 0, i32 3
  %4 = ptrtoint ptr %agp6 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %agp6, align 4
  %tobool7.not = icmp eq ptr %5, null
  br i1 %tobool7.not, label %if.end5.if.end15_crit_edge, label %if.then8

if.end5.if.end15_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15

if.then8:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  %agp_mtrr = getelementptr inbounds %struct.radeon_agp_head, ptr %5, i32 0, i32 7
  %6 = ptrtoint ptr %agp_mtrr to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %agp_mtrr, align 4
  br label %if.end15

if.end15:                                         ; preds = %if.then8, %if.end5.if.end15_crit_edge
  %call16 = tail call zeroext i8 @pci_find_capability(ptr noundef %add.ptr, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call16)
  %tobool17.not = icmp eq i8 %call16, 0
  br i1 %tobool17.not, label %if.else, label %if.end15.if.end34_crit_edge

if.end15.if.end34_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end34

if.else:                                          ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  %pcie_cap.i.i = getelementptr i8, ptr %1, i32 -72
  %7 = ptrtoint ptr %pcie_cap.i.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %pcie_cap.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.i.not = icmp eq i8 %8, 0
  %. = select i1 %tobool.i.not, i32 8388608, i32 2097152
  br label %if.end34

if.end34:                                         ; preds = %if.else, %if.end15.if.end34_crit_edge
  %.sink = phi i32 [ 524288, %if.end15.if.end34_crit_edge ], [ %., %if.else ]
  %or = or i32 %.sink, %flags
  %call35 = tail call i32 @radeon_device_init(ptr noundef nonnull %call1.i.i.i, ptr noundef %dev, ptr noundef %add.ptr, i32 noundef %or) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %if.end39, label %out.thread

out.thread:                                       ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #9
  %9 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str) #11
  br label %if.then79

if.end39:                                         ; preds = %if.end34
  %call40 = tail call i32 @radeon_modeset_init(ptr noundef nonnull %call1.i.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40)
  %tobool41.not = icmp eq i32 %call40, 0
  br i1 %tobool41.not, label %if.end39.if.end65_crit_edge, label %do.end45

if.end39.if.end65_crit_edge:                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end65

do.end45:                                         ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #9
  %11 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.6) #11
  br label %if.end65

if.end65:                                         ; preds = %do.end45, %if.end39.if.end65_crit_edge
  %call66 = tail call zeroext i1 @radeon_is_px(ptr noundef %dev) #7
  br i1 %call66, label %if.then67, label %if.end65.out_crit_edge

if.end65.out_crit_edge:                           ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.then67:                                        ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #9
  %13 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev1, align 4
  %driver_flags.i = getelementptr inbounds %struct.device, ptr %14, i32 0, i32 12, i32 2
  %15 = ptrtoint ptr %driver_flags.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 1, ptr %driver_flags.i, align 8
  %16 = load ptr, ptr %dev1, align 4
  tail call void @__pm_runtime_use_autosuspend(ptr noundef %16, i1 noundef zeroext true) #7
  %17 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev1, align 4
  tail call void @pm_runtime_set_autosuspend_delay(ptr noundef %18, i32 noundef 5000) #7
  %19 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev1, align 4
  %call.i = tail call i32 @__pm_runtime_set_status(ptr noundef %20, i32 noundef 0) #7
  %21 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev1, align 4
  tail call void @pm_runtime_allow(ptr noundef %22) #7
  %23 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev1, align 4
  %call.i121 = tail call i64 @ktime_get_mono_fast_ns() #7
  %last_busy.i = getelementptr inbounds %struct.device, ptr %24, i32 0, i32 12, i32 22
  %25 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %25)
  store volatile i64 %call.i121, ptr %last_busy.i, align 8
  %26 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev1, align 4
  %call.i122 = tail call i32 @__pm_runtime_suspend(ptr noundef %27, i32 noundef 13) #7
  br label %out

out:                                              ; preds = %if.then67, %if.end65.out_crit_edge
  br i1 %tobool41.not, label %out.cleanup_crit_edge, label %out.if.then79_crit_edge

out.if.then79_crit_edge:                          ; preds = %out
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then79

out.cleanup_crit_edge:                            ; preds = %out
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then79:                                        ; preds = %out.if.then79_crit_edge, %out.thread
  %r.0125 = phi i32 [ %call35, %out.thread ], [ %call40, %out.if.then79_crit_edge ]
  tail call void @radeon_driver_unload_kms(ptr noundef %dev)
  br label %cleanup

cleanup:                                          ; preds = %if.then79, %out.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ %r.0125, %if.then79 ], [ 0, %out.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @pci_find_capability(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @radeon_device_init(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @radeon_modeset_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_set_autosuspend_delay(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_allow(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @radeon_info_ioctl(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %data, ptr noundef %filp) local_unnamed_addr #0 align 64 {
entry:
  %value_tmp = alloca i32, align 4
  %value64 = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_private, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value_tmp) #7
  %2 = ptrtoint ptr %value_tmp to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %value_tmp, align 4, !annotation !74
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %value64) #7
  %3 = ptrtoint ptr %value64 to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 -1, ptr %value64, align 8, !annotation !74
  %value1 = getelementptr inbounds %struct.drm_radeon_info, ptr %data, i32 0, i32 2
  %4 = ptrtoint ptr %value1 to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %value1, align 8
  %conv = trunc i64 %5 to i32
  %6 = inttoptr i32 %conv to ptr
  %7 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %data, align 8
  %9 = zext i32 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values)
  switch i32 %8, label %sw.default586 [
    i32 0, label %sw.bb
    i32 1, label %sw.bb4
    i32 2, label %sw.bb5
    i32 3, label %sw.bb6
    i32 4, label %if.then.i
    i32 5, label %sw.bb30
    i32 6, label %sw.bb49
    i32 7, label %if.then.i880
    i32 8, label %if.then.i901
    i32 9, label %sw.bb114
    i32 10, label %sw.bb123
    i32 11, label %sw.bb178
    i32 12, label %sw.bb226
    i32 13, label %sw.bb227
    i32 14, label %sw.bb275
    i32 15, label %sw.bb281
    i32 16, label %sw.bb287
    i32 17, label %sw.bb333
    i32 18, label %sw.bb341
    i32 19, label %sw.bb373
    i32 20, label %sw.bb389
    i32 21, label %if.then.i922
    i32 22, label %sw.bb424
    i32 24, label %sw.bb441
    i32 23, label %sw.bb450
    i32 25, label %sw.bb451
    i32 26, label %sw.bb467
    i32 27, label %sw.bb481
    i32 28, label %sw.bb482
    i32 29, label %sw.bb484
    i32 30, label %sw.bb486
    i32 31, label %sw.bb488
    i32 32, label %sw.bb490
    i32 33, label %sw.bb537
    i32 34, label %sw.bb548
    i32 35, label %sw.bb560
    i32 36, label %if.then.i948
    i32 37, label %sw.bb583
    i32 38, label %sw.bb584
  ]

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dev2 = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 2
  %10 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev2, align 4
  %device = getelementptr i8, ptr %11, i32 -102
  %12 = ptrtoint ptr %device to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %device, align 2
  %conv3 = zext i16 %13 to i32
  %14 = ptrtoint ptr %value_tmp to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %conv3, ptr %value_tmp, align 4
  br label %if.then.i.i.i

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %num_gb_pipes = getelementptr inbounds %struct.radeon_device, ptr %1, i32 0, i32 10
  %15 = ptrtoint ptr %num_gb_pipes to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %num_gb_pipes, align 4
  %17 = ptrtoint ptr %value_tmp to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %value_tmp, align 4
  br label %if.then.i.i.i

sw.bb5:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %num_z_pipes = getelementptr inbounds %struct.radeon_device, ptr %1, i32 0, i32 11
  %18 = ptrtoint ptr %num_z_pipes to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %num_z_pipes, align 8
  %20 = ptrtoint ptr %value_tmp to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %value_tmp, align 4
  br label %if.then.i.i.i

sw.bb6:                                           ; preds = %entry
  %family = getelementptr inbounds %struct.radeon_device, ptr %1, i32 0, i32 6
  %21 = ptrtoint ptr %family to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %family, align 4
  %23 = add i32 %22, -39
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %23)
  %24 = icmp ult i32 %23, 5
  br i1 %24, label %if.then, label %if.else

if.then:                                          ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #9
  %25 = ptrtoint ptr %value_tmp to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %value_tmp, align 4
  br label %if.then.i.i.i

if.else:                                          ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #9
  %accel_working = getelementptr inbounds %struct.radeon_device, ptr %1, i32 0, i32 66
  %26 = ptrtoint ptr %accel_working to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %accel_working, align 2, !range !75
  %28 = zext i8 %27 to i32
  %29 = ptrtoint ptr %value_tmp to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %value_tmp, align 4
  br label %if.then.i.i.i

if.then.i:                                        ; preds = %entry
  tail call void @__might_fault(ptr noundef nonnull @.str.28, i32 noundef 156) #7
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #7
  br i1 %call.i.i, label %if.then.i.if.then11.i.i_crit_edge, label %land.lhs.true.i.i

if.then.i.if.then11.i.i_crit_edge:                ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then11.i.i

land.lhs.true.i.i:                                ; preds = %if.then.i
  %30 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %6, i32 4, i32 -1226833920) #12, !srcloc !76
  %asmresult.i.i = extractvalue { i32, i32 } %30, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i1.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i1.i, label %if.end.i.i, label %land.lhs.true.i.i.if.then11.i.i_crit_edge, !prof !77

land.lhs.true.i.i.if.then11.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then11.i.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %value_tmp, i32 noundef 4) #7
  %31 = call i32 @llvm.read_register.i32(metadata !64) #7
  %and.i.i.i.i.i.i = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 4
  %33 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #6, !srcloc !78
  %and.i.i.i.i = and i32 %33, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #7, !srcloc !79
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !80
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %value_tmp, ptr noundef %6, i32 noundef 4) #7
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %33) #7, !srcloc !79
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !80
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool4.not.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool4.not.i.i, label %for.cond.preheader, label %if.end.i.i.if.then11.i.i_crit_edge, !prof !77

if.end.i.i.if.then11.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then11.i.i

for.cond.preheader:                               ; preds = %if.end.i.i
  %num_crtc = getelementptr inbounds %struct.radeon_device, ptr %1, i32 0, i32 91
  %34 = ptrtoint ptr %num_crtc to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %num_crtc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %cmp16986 = icmp sgt i32 %35, 0
  br i1 %cmp16986, label %for.cond.preheader.for.body_crit_edge, label %for.cond.preheader.if.then28.critedge_crit_edge

for.cond.preheader.if.then28.critedge_crit_edge:  ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then28.critedge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

if.then11.i.i:                                    ; preds = %if.end.i.i.if.then11.i.i_crit_edge, %land.lhs.true.i.i.if.then11.i.i_crit_edge, %if.then.i.if.then11.i.i_crit_edge
  %res.03.i.i = phi i32 [ %call1.i.i.i, %if.end.i.i.if.then11.i.i_crit_edge ], [ 4, %if.then.i.if.then11.i.i_crit_edge ], [ 4, %land.lhs.true.i.i.if.then11.i.i_crit_edge ]
  %sub.i.i = sub i32 4, %res.03.i.i
  %add.ptr.i.i = getelementptr i8, ptr %value_tmp, i32 %sub.i.i
  %36 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.03.i.i)
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.10, ptr noundef nonnull @__func__.radeon_info_ioctl, i32 noundef 271) #7
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.0987 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.radeon_device, ptr %1, i32 0, i32 44, i32 4, i32 %i.0987
  %37 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %arrayidx, align 4
  %tobool18.not = icmp eq ptr %38, null
  br i1 %tobool18.not, label %for.body.for.inc_crit_edge, label %land.lhs.true19

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

land.lhs.true19:                                  ; preds = %for.body
  %base = getelementptr inbounds %struct.drm_crtc, ptr %38, i32 0, i32 5
  %39 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %base, align 8
  %41 = ptrtoint ptr %value_tmp to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %value_tmp, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %40, i32 %42)
  %cmp20 = icmp eq i32 %40, %42
  br i1 %cmp20, label %if.then22, label %land.lhs.true19.for.inc_crit_edge

land.lhs.true19.for.inc_crit_edge:                ; preds = %land.lhs.true19
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.then22:                                        ; preds = %land.lhs.true19
  call void @__sanitizer_cov_trace_pc() #9
  %crtc_id = getelementptr inbounds %struct.radeon_crtc, ptr %38, i32 0, i32 1
  %43 = ptrtoint ptr %crtc_id to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %crtc_id, align 8
  %45 = ptrtoint ptr %value_tmp to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %44, ptr %value_tmp, align 4
  br label %if.then.i.i.i

for.inc:                                          ; preds = %land.lhs.true19.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.0987, 1
  %exitcond.not = icmp eq i32 %inc, %35
  br i1 %exitcond.not, label %for.inc.if.then28.critedge_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc.if.then28.critedge_crit_edge:             ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then28.critedge

if.then28.critedge:                               ; preds = %for.inc.if.then28.critedge_crit_edge, %for.cond.preheader.if.then28.critedge_crit_edge
  %46 = ptrtoint ptr %value_tmp to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %value_tmp, align 4
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.11, i32 noundef %47) #7
  br label %cleanup

sw.bb30:                                          ; preds = %entry
  %family31 = getelementptr inbounds %struct.radeon_device, ptr %1, i32 0, i32 6
  %48 = ptrtoint ptr %family31 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %family31, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 60, i32 %49)
  %cmp32 = icmp eq i32 %49, 60
  %accel_working35 = getelementptr inbounds %struct.radeon_device, ptr %1, i32 0, i32 66
  %50 = ptrtoint ptr %accel_working35 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %accel_working35, align 2, !range !75
  br i1 %cmp32, label %if.then34, label %if.else44

if.then34:                                        ; preds = %sw.bb30
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %51)
  %tobool36.not = icmp eq i8 %51, 0
  br i1 %tobool36.not, label %if.else42, label %if.then37

if.then37:                                        ; preds = %if.then34
  %new_fw = getelementptr inbounds %struct.radeon_device, ptr %1, i32 0, i32 82
  %52 = ptrtoint ptr %new_fw to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %new_fw, align 4, !range !75
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %53)
  %tobool38.not = icmp eq i8 %53, 0
  br i1 %tobool38.not, label %if.else40, label %if.then39

if.then39:                                        ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #9
  %54 = ptrtoint ptr %value_tmp to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 3, ptr %value_tmp, align 4
  br label %if.then.i.i.i

if.else40:                                        ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #9
  %55 = ptrtoint ptr %value_tmp to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 2, ptr %value_tmp, align 4
  br label %if.then.i.i.i

if.else42:                                        ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #9
  %56 = ptrtoint ptr %value_tmp to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 0, ptr %value_tmp, align 4
  br label %if.then.i.i.i

if.else44:                                        ; preds = %sw.bb30
  call void @__sanitizer_cov_trace_pc() #9
  %57 = zext i8 %51 to i32
  %58 = ptrtoint ptr %value_tmp to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %57, ptr %value_tmp, align 4
  br label %if.then.i.i.i

sw.bb49:                                          ; preds = %entry
  %family50 = getelementptr inbounds %struct.radeon_device, ptr %1, i32 0, i32 6
  %59 = ptrtoint ptr %family50 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %family50, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 56, i32 %60)
  %cmp51 = icmp ugt i32 %60, 56
  br i1 %cmp51, label %if.then53, label %if.else54

if.then53:                                        ; preds = %sw.bb49
  call void @__sanitizer_cov_trace_pc() #9
  %tile_config = getelementptr inbounds %struct.radeon_device, ptr %1, i32 0, i32 5, i32 0, i32 23
  %61 = ptrtoint ptr %tile_config to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %tile_config, align 4
  %63 = ptrtoint ptr %value_tmp to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %62, ptr %value_tmp, align 4
  br label %if.then.i.i.i

if.else54:                                        ; preds = %sw.bb49
  call void @__sanitizer_cov_trace_const_cmp4(i32 51, i32 %60)
  %cmp56 = icmp ugt i32 %60, 51
  br i1 %cmp56, label %if.then58, label %if.else61

if.then58:                                        ; preds = %if.else54
  call void @__sanitizer_cov_trace_pc() #9
  %tile_config60 = getelementptr inbounds %struct.radeon_device, ptr %1, i32 0, i32 5, i32 0, i32 23
  %64 = ptrtoint ptr %tile_config60 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %tile_config60, align 4
  %66 = ptrtoint ptr %value_tmp to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %65, ptr %value_tmp, align 4
  br label %if.then.i.i.i

if.else61:                                        ; preds = %if.else54
  call void @__sanitizer_cov_trace_const_cmp4(i32 49, i32 %60)
  %cmp63 = icmp ugt i32 %60, 49
  br i1 %cmp63, label %if.then65, label %if.else68

if.then65:                                        ; preds = %if.else61
  call void @__sanitizer_cov_trace_pc() #9
  %tile_config67 = getelementptr inbounds %struct.radeon_device, ptr %1, i32 0, i32 5, i32 0, i32 24, i32 8
  %67 = ptrtoint ptr %tile_config67 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %tile_config67, align 8
  %69 = ptrtoint ptr %value_tmp to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %68, ptr %value_tmp, align 4
  br label %if.then.i.i.i

if.else68:                                        ; preds = %if.else61
  call void @__sanitizer_cov_trace_const_cmp4(i32 38, i32 %60)
  %cmp70 = icmp ugt i32 %60, 38
  br i1 %cmp70, label %if.then72, label %if.else75

if.then72:                                        ; preds = %if.else68
  call void @__sanitizer_cov_trace_pc() #9
  %tile_config74 = getelementptr inbounds %struct.radeon_device, ptr %1, i32 0, i32 5, i32 0, i32 21
  %70 = ptrtoint ptr %tile_config74 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %tile_config74, align 4
  %72 = ptrtoint ptr %value_tmp to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %71, ptr %value_tmp, align 4
  br label %if.then.i.i.i

if.else75:                                        ; preds = %if.else68
  call void @__sanitizer_cov_trace_const_cmp4(i32 34, i32 %60)
  %cmp77 = icmp ugt i32 %60, 34
  br i1 %cmp77, label %if.then79, label %if.else82

if.then79:                                        ; preds = %if.else75
  call void @__sanitizer_cov_trace_pc() #9
  %tile_config81 = getelementptr inbounds %struct.radeon_device, ptr %1, i32 0, i32 5, i32 0, i32 20
  %73 = ptrtoint ptr %tile_config81 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %tile_config81, align 8
  %75 = ptrtoint ptr %value_tmp to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %74, ptr %value_tmp, align 4
  br label %if.then.i.i.i

if.else82:                                        ; preds = %if.else75
  call void @__sanitizer_cov_trace_const_cmp4(i32 26, i32 %60)
  %cmp84 = icmp ugt i32 %60, 26
  br i1 %cmp84, label %if.then86, label %if.else89

if.then86:                                        ; preds = %if.else82
  call void @__sanitizer_cov_trace_pc() #9
  %tile_config88 = getelementptr inbounds %struct.radeon_device, ptr %1, i32 0, i32 5, i32 0, i32 16
  %76 = ptrtoint ptr %tile_config88 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %tile_config88, align 8
  %78 = ptrtoint ptr %value_tmp to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %77, ptr %value_tmp, align 4
  br label %if.then.i.i.i

if.else89:                                        ; preds = %if.else82
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.12) #7
  br label %cleanup

if.then.i880:                                     ; preds = %entry
  tail call void @__might_fault(ptr noundef nonnull @.str.28, i32 noundef 156) #7
  %call.i.i879 = tail call zeroext i1 @should_fail_usercopy() #7
  br i1 %call.i.i879, label %if.then.i880.if.then11.i.i895_crit_edge, label %land.lhs.true.i.i883

if.then.i880.if.then11.i.i895_crit_edge:          ; preds = %if.then.i880
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then11.i.i895

land.lhs.true.i.i883:                             ; preds = %if.then.i880
  %79 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %6, i32 4, i32 -1226833920) #12, !srcloc !76
  %asmresult.i.i881 = extractvalue { i32, i32 } %79, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i881)
  %cmp.i1.i882 = icmp eq i32 %asmresult.i.i881, 0
  br i1 %cmp.i1.i882, label %if.end.i.i891, label %land.lhs.true.i.i883.if.then11.i.i895_crit_edge, !prof !77

land.lhs.true.i.i883.if.then11.i.i895_crit_edge:  ; preds = %land.lhs.true.i.i883
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then11.i.i895

if.end.i.i891:                                    ; preds = %land.lhs.true.i.i883
  %call.i.i.i884 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %value_tmp, i32 noundef 4) #7
  %80 = call i32 @llvm.read_register.i32(metadata !64) #7
  %and.i.i.i.i.i.i885 = and i32 %80, -16384
  %81 = inttoptr i32 %and.i.i.i.i.i.i885 to ptr
  %cpu_domain.i.i.i.i.i886 = getelementptr inbounds %struct.thread_info, ptr %81, i32 0, i32 4
  %82 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i886) #6, !srcloc !78
  %and.i.i.i.i887 = and i32 %82, -13
  %or.i.i.i.i888 = or i32 %and.i.i.i.i887, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i888) #7, !srcloc !79
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !80
  %call1.i.i.i889 = call i32 @arm_copy_from_user(ptr noundef nonnull %value_tmp, ptr noundef %6, i32 noundef 4) #7
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %82) #7, !srcloc !79
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !80
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i889)
  %tobool4.not.i.i890 = icmp eq i32 %call1.i.i.i889, 0
  br i1 %tobool4.not.i.i890, label %if.end100, label %if.end.i.i891.if.then11.i.i895_crit_edge, !prof !77

if.end.i.i891.if.then11.i.i895_crit_edge:         ; preds = %if.end.i.i891
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then11.i.i895

if.then11.i.i895:                                 ; preds = %if.end.i.i891.if.then11.i.i895_crit_edge, %land.lhs.true.i.i883.if.then11.i.i895_crit_edge, %if.then.i880.if.then11.i.i895_crit_edge
  %res.03.i.i892 = phi i32 [ %call1.i.i.i889, %if.end.i.i891.if.then11.i.i895_crit_edge ], [ 4, %if.then.i880.if.then11.i.i895_crit_edge ], [ 4, %land.lhs.true.i.i883.if.then11.i.i895_crit_edge ]
  %sub.i.i893 = sub i32 4, %res.03.i.i892
  %add.ptr.i.i894 = getelementptr i8, ptr %value_tmp, i32 %sub.i.i893
  %83 = call ptr @memset(ptr %add.ptr.i.i894, i32 0, i32 %res.03.i.i892)
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.10, ptr noundef nonnull @__func__.radeon_info_ioctl, i32 noundef 328) #7
  br label %cleanup

if.end100:                                        ; preds = %if.end.i.i891
  %84 = ptrtoint ptr %value_tmp to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %value_tmp, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %85)
  %cmp101 = icmp ugt i32 %85, 1
  br i1 %cmp101, label %if.then103, label %if.end104

if.then103:                                       ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #9
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.13, i32 noundef %85) #7
  br label %cleanup

if.end104:                                        ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #9
  %hyperz_filp = getelementptr inbounds %struct.radeon_device, ptr %1, i32 0, i32 97
  call fastcc void @radeon_set_filp_rights(ptr noundef %dev, ptr noundef %hyperz_filp, ptr noundef %filp, ptr noundef nonnull %value_tmp)
  br label %if.then.i.i.i

if.then.i901:                                     ; preds = %entry
  tail call void @__might_fault(ptr noundef nonnull @.str.28, i32 noundef 156) #7
  %call.i.i900 = tail call zeroext i1 @should_fail_usercopy() #7
  br i1 %call.i.i900, label %if.then.i901.if.then11.i.i916_crit_edge, label %land.lhs.true.i.i904

if.then.i901.if.then11.i.i916_crit_edge:          ; preds = %if.then.i901
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then11.i.i916

land.lhs.true.i.i904:                             ; preds = %if.then.i901
  %86 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %6, i32 4, i32 -1226833920) #12, !srcloc !76
  %asmresult.i.i902 = extractvalue { i32, i32 } %86, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i902)
  %cmp.i1.i903 = icmp eq i32 %asmresult.i.i902, 0
  br i1 %cmp.i1.i903, label %if.end.i.i912, label %land.lhs.true.i.i904.if.then11.i.i916_crit_edge, !prof !77

land.lhs.true.i.i904.if.then11.i.i916_crit_edge:  ; preds = %land.lhs.true.i.i904
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then11.i.i916

if.end.i.i912:                                    ; preds = %land.lhs.true.i.i904
  %call.i.i.i905 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %value_tmp, i32 noundef 4) #7
  %87 = call i32 @llvm.read_register.i32(metadata !64) #7
  %and.i.i.i.i.i.i906 = and i32 %87, -16384
  %88 = inttoptr i32 %and.i.i.i.i.i.i906 to ptr
  %cpu_domain.i.i.i.i.i907 = getelementptr inbounds %struct.thread_info, ptr %88, i32 0, i32 4
  %89 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i907) #6, !srcloc !78
  %and.i.i.i.i908 = and i32 %89, -13
  %or.i.i.i.i909 = or i32 %and.i.i.i.i908, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i909) #7, !srcloc !79
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !80
  %call1.i.i.i910 = call i32 @arm_copy_from_user(ptr noundef nonnull %value_tmp, ptr noundef %6, i32 noundef 4) #7
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %89) #7, !srcloc !79
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !80
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i910)
  %tobool4.not.i.i911 = icmp eq i32 %call1.i.i.i910, 0
  br i1 %tobool4.not.i.i911, label %if.end109, label %if.end.i.i912.if.then11.i.i916_crit_edge, !prof !77

if.end.i.i912.if.then11.i.i916_crit_edge:         ; preds = %if.end.i.i912
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then11.i.i916

if.then11.i.i916:                                 ; preds = %if.end.i.i912.if.then11.i.i916_crit_edge, %land.lhs.true.i.i904.if.then11.i.i916_crit_edge, %if.then.i901.if.then11.i.i916_crit_edge
  %res.03.i.i913 = phi i32 [ %call1.i.i.i910, %if.end.i.i912.if.then11.i.i916_crit_edge ], [ 4, %if.then.i901.if.then11.i.i916_crit_edge ], [ 4, %land.lhs.true.i.i904.if.then11.i.i916_crit_edge ]
  %sub.i.i914 = sub i32 4, %res.03.i.i913
  %add.ptr.i.i915 = getelementptr i8, ptr %value_tmp, i32 %sub.i.i914
  %90 = call ptr @memset(ptr %add.ptr.i.i915, i32 0, i32 %res.03.i.i913)
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.10, ptr noundef nonnull @__func__.radeon_info_ioctl, i32 noundef 340) #7
  br label %cleanup

if.end109:                                        ; preds = %if.end.i.i912
  %91 = ptrtoint ptr %value_tmp to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %value_tmp, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %92)
  %cmp110 = icmp ugt i32 %92, 1
  br i1 %cmp110, label %if.then112, label %if.end113

if.then112:                                       ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #9
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.14, i32 noundef %92) #7
  br label %cleanup

if.end113:                                        ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #9
  %cmask_filp = getelementptr inbounds %struct.radeon_device, ptr %1, i32 0, i32 98
  call fastcc void @radeon_set_filp_rights(ptr noundef %dev, ptr noundef %cmask_filp, ptr noundef %filp, ptr noundef nonnull %value_tmp)
  br label %if.then.i.i.i

sw.bb114:                                         ; preds = %entry
  %asic = getelementptr inbounds %struct.radeon_device, ptr %1, i32 0, i32 56
  %93 = ptrtoint ptr %asic to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %asic, align 8
  %get_xclk = getelementptr inbounds %struct.radeon_asic, ptr %94, i32 0, i32 9
  %95 = ptrtoint ptr %get_xclk to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %get_xclk, align 4
  %tobool115.not = icmp eq ptr %96, null
  br i1 %tobool115.not, label %if.else120, label %if.then116

if.then116:                                       ; preds = %sw.bb114
  call void @__sanitizer_cov_trace_pc() #9
  %call119 = tail call i32 %96(ptr noundef %1) #7
  %mul = mul i32 %call119, 10
  %97 = ptrtoint ptr %value_tmp to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 %mul, ptr %value_tmp, align 4
  br label %if.then.i.i.i

if.else120:                                       ; preds = %sw.bb114
  call void @__sanitizer_cov_trace_pc() #9
  %spll = getelementptr inbounds %struct.radeon_device, ptr %1, i32 0, i32 41, i32 3
  %98 = ptrtoint ptr %spll to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %spll, align 4
  %mul121 = mul i32 %99, 10
  %100 = ptrtoint ptr %value_tmp to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 %mul121, ptr %value_tmp, align 4
  br label %if.then.i.i.i

sw.bb123:                                         ; preds = %entry
  %family124 = getelementptr inbounds %struct.radeon_device, ptr %1, i32 0, i32 6
  %101 = ptrtoint ptr %family124 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %family124, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 56, i32 %102)
  %cmp125 = icmp ugt i32 %102, 56
  br i1 %cmp125, label %if.then127, label %if.else131

if.then127:                                       ; preds = %sw.bb123
  call void @__sanitizer_cov_trace_pc() #9
  %config128 = getelementptr inbounds %struct.radeon_device, ptr %1, i32 0, i32 5
  %max_backends_per_se = getelementptr inbounds %struct.radeon_device, ptr %1, i32 0, i32 5, i32 0, i32 4
  %103 = ptrtoint ptr %max_backends_per_se to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %max_backends_per_se, align 8
  %105 = ptrtoint ptr %config128 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %config128, align 8
  %mul130 = mul i32 %106, %104
  %107 = ptrtoint ptr %value_tmp to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 %mul130, ptr %value_tmp, align 4
  br label %if.then.i.i.i

if.else131:                                       ; preds = %sw.bb123
  call void @__sanitizer_cov_trace_const_cmp4(i32 51, i32 %102)
  %cmp133 = icmp ugt i32 %102, 51
  br i1 %cmp133, label %if.then135, label %if.else141

if.then135:                                       ; preds = %if.else131
  call void @__sanitizer_cov_trace_pc() #9
  %config136 = getelementptr inbounds %struct.radeon_device, ptr %1, i32 0, i32 5
  %max_backends_per_se137 = getelementptr inbounds %struct.radeon_device, ptr %1, i32 0, i32 5, i32 0, i32 4
  %108 = ptrtoint ptr %max_backends_per_se137 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %max_backends_per_se137, align 8
  %110 = ptrtoint ptr %config136 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %config136, align 8
  %mul140 = mul i32 %111, %109
  %112 = ptrtoint ptr %value_tmp to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 %mul140, ptr %value_tmp, align 4
  br label %if.then.i.i.i

if.else141:                                       ; preds = %if.else131
  call void @__sanitizer_cov_trace_const_cmp4(i32 49, i32 %102)
  %cmp143 = icmp ugt i32 %102, 49
  br i1 %cmp143, label %if.then145, label %if.else151

if.then145:                                       ; preds = %if.else141
  call void @__sanitizer_cov_trace_pc() #9
  %config146 = getelementptr inbounds %struct.radeon_device, ptr %1, i32 0, i32 5
  %max_backends_per_se147 = getelementptr inbounds %struct.radeon_device, ptr %1, i32 0, i32 5, i32 0, i32 4
  %113 = ptrtoint ptr %max_backends_per_se147 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %max_backends_per_se147, align 8
  %115 = ptrtoint ptr %config146 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %config146, align 8
  %mul150 = mul i32 %116, %114
  %117 = ptrtoint ptr %value_tmp to i32
  call void @__asan_store4_noabort(i32 %117)
  store i32 %mul150, ptr %value_tmp, align 4
  br label %if.then.i.i.i

if.else151:                                       ; preds = %if.else141
  call void @__sanitizer_cov_trace_const_cmp4(i32 38, i32 %102)
  %cmp153 = icmp ugt i32 %102, 38
  br i1 %cmp153, label %if.then155, label %if.else157

if.then155:                                       ; preds = %if.else151
  call void @__sanitizer_cov_trace_pc() #9
  %max_backends = getelementptr inbounds %struct.radeon_device, ptr %1, i32 0, i32 5, i32 0, i32 4
  %118 = ptrtoint ptr %max_backends to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %max_backends, align 8
  %120 = ptrtoint ptr %value_tmp to i32
  call void @__asan_store4_noabort(i32 %120)
  store i32 %119, ptr %value_tmp, align 4
  br label %if.then.i.i.i

if.else157:                                       ; preds = %if.else151
  call void @__sanitizer_cov_trace_const_cmp4(i32 34, i32 %102)
  %cmp159 = icmp ugt i32 %102, 34
  br i1 %cmp159, label %if.then161, label %if.else164

if.then161:                                       ; preds = %if.else157
  call void @__sanitizer_cov_trace_pc() #9
  %max_backends163 = getelementptr inbounds %struct.radeon_device, ptr %1, i32 0, i32 5, i32 0, i32 3
  %121 = ptrtoint ptr %max_backends163 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %max_backends163, align 4
  %123 = ptrtoint ptr %value_tmp to i32
  call void @__asan_store4_noabort(i32 %123)
  store i32 %122, ptr %value_tmp, align 4
  br label %if.then.i.i.i

if.else164:                                       ; preds = %if.else157
  call void @__sanitizer_cov_trace_const_cmp4(i32 26, i32 %102)
  %cmp166 = icmp ugt i32 %102, 26
  br i1 %cmp166, label %if.then168, label %if.else164.cleanup_crit_edge

if.else164.cleanup_crit_edge:                     ; preds = %if.else164
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then168:                                       ; preds = %if.else164
  call void @__sanitizer_cov_trace_pc() #9
  %max_backends170 = getelementptr inbounds %struct.radeon_device, ptr %1, i32 0, i32 5, i32 0, i32 3
  %124 = ptrtoint ptr %max_backends170 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %max_backends170, align 4
  %126 = ptrtoint ptr %value_tmp to i32
  call void @__asan_store4_noabort(i32 %126)
  store i32 %125, ptr %value_tmp, align 4
  br label %if.then.i.i.i

sw.bb178:                                         ; preds = %entry
  %family179 = getelementptr inbounds %struct.radeon_device, ptr %1, i32 0, i32 6
  %127 = ptrtoint ptr %family179 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %family179, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 56, i32 %128)
  %cmp180 = icmp ugt i32 %128, 56
  br i1 %cmp180, label %if.then182, label %if.else184

if.then182:                                       ; preds = %sw.bb178
  call void @__sanitizer_cov_trace_pc() #9
  %max_tile_pipes = getelementptr inbounds %struct.radeon_device, ptr %1, i32 0, i32 5, i32 0, i32 1
  %129 = ptrtoint ptr %max_tile_pipes to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %max_tile_pipes, align 4
  %131 = ptrtoint ptr %value_tmp to i32
  call void @__asan_store4_noabort(i32 %131)
  store i32 %130, ptr %value_tmp, align 4
  br label %if.then.i.i.i

if.else184:                                       ; preds = %sw.bb178
  call void @__sanitizer_cov_trace_const_cmp4(i32 51, i32 %128)
  %cmp186 = icmp ugt i32 %128, 51
  br i1 %cmp186, label %if.then188, label %if.else191

if.then188:                                       ; preds = %if.else184
  call void @__sanitizer_cov_trace_pc() #9
  %max_tile_pipes190 = getelementptr inbounds %struct.radeon_device, ptr %1, i32 0, i32 5, i32 0, i32 1
  %132 = ptrtoint ptr %max_tile_pipes190 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %max_tile_pipes190, align 4
  %134 = ptrtoint ptr %value_tmp to i32
  call void @__asan_store4_noabort(i32 %134)
  store i32 %133, ptr %value_tmp, align 4
  br label %if.then.i.i.i

if.else191:                                       ; preds = %if.else184
  call void @__sanitizer_cov_trace_const_cmp4(i32 49, i32 %128)
  %cmp193 = icmp ugt i32 %128, 49
  br i1 %cmp193, label %if.then195, label %if.else198

if.then195:                                       ; preds = %if.else191
  call void @__sanitizer_cov_trace_pc() #9
  %max_tile_pipes197 = getelementptr inbounds %struct.radeon_device, ptr %1, i32 0, i32 5, i32 0, i32 2
  %135 = ptrtoint ptr %max_tile_pipes197 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %max_tile_pipes197, align 8
  %137 = ptrtoint ptr %value_tmp to i32
  call void @__asan_store4_noabort(i32 %137)
  store i32 %136, ptr %value_tmp, align 4
  br label %if.then.i.i.i

if.else198:                                       ; preds = %if.else191
  call void @__sanitizer_cov_trace_const_cmp4(i32 38, i32 %128)
  %cmp200 = icmp ugt i32 %128, 38
  br i1 %cmp200, label %if.then202, label %if.else205

if.then202:                                       ; preds = %if.else198
  call void @__sanitizer_cov_trace_pc() #9
  %max_tile_pipes204 = getelementptr inbounds %struct.radeon_device, ptr %1, i32 0, i32 5, i32 0, i32 2
  %138 = ptrtoint ptr %max_tile_pipes204 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %max_tile_pipes204, align 8
  %140 = ptrtoint ptr %value_tmp to i32
  call void @__asan_store4_noabort(i32 %140)
  store i32 %139, ptr %value_tmp, align 4
  br label %if.then.i.i.i

if.else205:                                       ; preds = %if.else198
  call void @__sanitizer_cov_trace_const_cmp4(i32 34, i32 %128)
  %cmp207 = icmp ugt i32 %128, 34
  br i1 %cmp207, label %if.then209, label %if.else212

if.then209:                                       ; preds = %if.else205
  call void @__sanitizer_cov_trace_pc() #9
  %max_tile_pipes211 = getelementptr inbounds %struct.radeon_device, ptr %1, i32 0, i32 5, i32 0, i32 1
  %141 = ptrtoint ptr %max_tile_pipes211 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %max_tile_pipes211, align 4
  %143 = ptrtoint ptr %value_tmp to i32
  call void @__asan_store4_noabort(i32 %143)
  store i32 %142, ptr %value_tmp, align 4
  br label %if.then.i.i.i

if.else212:                                       ; preds = %if.else205
  call void @__sanitizer_cov_trace_const_cmp4(i32 26, i32 %128)
  %cmp214 = icmp ugt i32 %128, 26
  br i1 %cmp214, label %if.then216, label %if.else212.cleanup_crit_edge

if.else212.cleanup_crit_edge:                     ; preds = %if.else212
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then216:                                       ; preds = %if.else212
  call void @__sanitizer_cov_trace_pc() #9
  %max_tile_pipes218 = getelementptr inbounds %struct.radeon_device, ptr %1, i32 0, i32 5, i32 0, i32 1
  %144 = ptrtoint ptr %max_tile_pipes218 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %max_tile_pipes218, align 4
  %146 = ptrtoint ptr %value_tmp to i32
  call void @__asan_store4_noabort(i32 %146)
  store i32 %145, ptr %value_tmp, align 4
  br label %if.then.i.i.i

sw.bb226:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %147 = ptrtoint ptr %value_tmp to i32
  call void @__asan_store4_noabort(i32 %147)
  store i32 1, ptr %value_tmp, align 4
  br label %if.then.i.i.i

sw.bb227:                                         ; preds = %entry
  %family228 = getelementptr inbounds %struct.radeon_device, ptr %1, i32 0, i32 6
  %148 = ptrtoint ptr %family228 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %family228, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 56, i32 %149)
  %cmp229 = icmp ugt i32 %149, 56
  br i1 %cmp229, label %if.then231, label %if.else233

if.then231:                                       ; preds = %sw.bb227
  call void @__sanitizer_cov_trace_pc() #9
  %backend_map = getelementptr inbounds %struct.radeon_device, ptr %1, i32 0, i32 5, i32 0, i32 16
  %150 = ptrtoint ptr %backend_map to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %backend_map, align 8
  %152 = ptrtoint ptr %value_tmp to i32
  call void @__asan_store4_noabort(i32 %152)
  store i32 %151, ptr %value_tmp, align 4
  br label %if.then.i.i.i

if.else233:                                       ; preds = %sw.bb227
  call void @__sanitizer_cov_trace_const_cmp4(i32 51, i32 %149)
  %cmp235 = icmp ugt i32 %149, 51
  br i1 %cmp235, label %if.then237, label %if.else240

if.then237:                                       ; preds = %if.else233
  call void @__sanitizer_cov_trace_pc() #9
  %backend_map239 = getelementptr inbounds %struct.radeon_device, ptr %1, i32 0, i32 5, i32 0, i32 16
  %153 = ptrtoint ptr %backend_map239 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %backend_map239, align 8
  %155 = ptrtoint ptr %value_tmp to i32
  call void @__asan_store4_noabort(i32 %155)
  store i32 %154, ptr %value_tmp, align 4
  br label %if.then.i.i.i

if.else240:                                       ; preds = %if.else233
  call void @__sanitizer_cov_trace_const_cmp4(i32 49, i32 %149)
  %cmp242 = icmp ugt i32 %149, 49
  br i1 %cmp242, label %if.then244, label %if.else247

if.then244:                                       ; preds = %if.else240
  call void @__sanitizer_cov_trace_pc() #9
  %backend_map246 = getelementptr inbounds %struct.radeon_device, ptr %1, i32 0, i32 5, i32 0, i32 24, i32 1
  %156 = ptrtoint ptr %backend_map246 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %backend_map246, align 4
  %158 = ptrtoint ptr %value_tmp to i32
  call void @__asan_store4_noabort(i32 %158)
  store i32 %157, ptr %value_tmp, align 4
  br label %if.then.i.i.i

if.else247:                                       ; preds = %if.else240
  call void @__sanitizer_cov_trace_const_cmp4(i32 38, i32 %149)
  %cmp249 = icmp ugt i32 %149, 38
  br i1 %cmp249, label %if.then251, label %if.else254

if.then251:                                       ; preds = %if.else247
  call void @__sanitizer_cov_trace_pc() #9
  %backend_map253 = getelementptr inbounds %struct.radeon_device, ptr %1, i32 0, i32 5, i32 0, i32 22
  %159 = ptrtoint ptr %backend_map253 to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %backend_map253, align 8
  %161 = ptrtoint ptr %value_tmp to i32
  call void @__asan_store4_noabort(i32 %161)
  store i32 %160, ptr %value_tmp, align 4
  br label %if.then.i.i.i

if.else254:                                       ; preds = %if.else247
  call void @__sanitizer_cov_trace_const_cmp4(i32 34, i32 %149)
  %cmp256 = icmp ugt i32 %149, 34
  br i1 %cmp256, label %if.then258, label %if.else261

if.then258:                                       ; preds = %if.else254
  call void @__sanitizer_cov_trace_pc() #9
  %backend_map260 = getelementptr inbounds %struct.radeon_device, ptr %1, i32 0, i32 5, i32 0, i32 21
  %162 = ptrtoint ptr %backend_map260 to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %backend_map260, align 4
  %164 = ptrtoint ptr %value_tmp to i32
  call void @__asan_store4_noabort(i32 %164)
  store i32 %163, ptr %value_tmp, align 4
  br label %if.then.i.i.i

if.else261:                                       ; preds = %if.else254
  call void @__sanitizer_cov_trace_const_cmp4(i32 26, i32 %149)
  %cmp263 = icmp ugt i32 %149, 26
  br i1 %cmp263, label %if.then265, label %if.else261.cleanup_crit_edge

if.else261.cleanup_crit_edge:                     ; preds = %if.else261
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then265:                                       ; preds = %if.else261
  call void @__sanitizer_cov_trace_pc() #9
  %backend_map267 = getelementptr inbounds %struct.radeon_device, ptr %1, i32 0, i32 5, i32 0, i32 17
  %165 = ptrtoint ptr %backend_map267 to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %backend_map267, align 4
  %167 = ptrtoint ptr %value_tmp to i32
  call void @__asan_store4_noabort(i32 %167)
  store i32 %166, ptr %value_tmp, align 4
  br label %if.then.i.i.i

sw.bb275:                                         ; preds = %entry
  %family276 = getelementptr inbounds %struct.radeon_device, ptr %1, i32 0, i32 6
  %168 = ptrtoint ptr %family276 to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load i32, ptr %family276, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 50, i32 %169)
  %cmp277 = icmp ult i32 %169, 50
  br i1 %cmp277, label %sw.bb275.cleanup_crit_edge, label %if.end280

sw.bb275.cleanup_crit_edge:                       ; preds = %sw.bb275
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end280:                                        ; preds = %sw.bb275
  call void @__sanitizer_cov_trace_pc() #9
  %170 = ptrtoint ptr %value_tmp to i32
  call void @__asan_store4_noabort(i32 %170)
  store i32 8388608, ptr %value_tmp, align 4
  br label %if.then.i.i.i

sw.bb281:                                         ; preds = %entry
  %family282 = getelementptr inbounds %struct.radeon_device, ptr %1, i32 0, i32 6
  %171 = ptrtoint ptr %family282 to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load i32, ptr %family282, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 50, i32 %172)
  %cmp283 = icmp ult i32 %172, 50
  br i1 %cmp283, label %sw.bb281.cleanup_crit_edge, label %if.end286

sw.bb281.cleanup_crit_edge:                       ; preds = %sw.bb281
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end286:                                        ; preds = %sw.bb281
  call void @__sanitizer_cov_trace_pc() #9
  %173 = ptrtoint ptr %value_tmp to i32
  call void @__asan_store4_noabort(i32 %173)
  store i32 65536, ptr %value_tmp, align 4
  br label %if.then.i.i.i

sw.bb287:                                         ; preds = %entry
  %family288 = getelementptr inbounds %struct.radeon_device, ptr %1, i32 0, i32 6
  %174 = ptrtoint ptr %family288 to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load i32, ptr %family288, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 56, i32 %175)
  %cmp289 = icmp ugt i32 %175, 56
  br i1 %cmp289, label %if.then291, label %if.else293

if.then291:                                       ; preds = %sw.bb287
  call void @__sanitizer_cov_trace_pc() #9
  %max_cu_per_sh = getelementptr inbounds %struct.radeon_device, ptr %1, i32 0, i32 5, i32 0, i32 2
  %176 = ptrtoint ptr %max_cu_per_sh to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load i32, ptr %max_cu_per_sh, align 8
  %178 = ptrtoint ptr %value_tmp to i32
  call void @__asan_store4_noabort(i32 %178)
  store i32 %177, ptr %value_tmp, align 4
  br label %if.then.i.i.i

if.else293:                                       ; preds = %sw.bb287
  call void @__sanitizer_cov_trace_const_cmp4(i32 51, i32 %175)
  %cmp295 = icmp ugt i32 %175, 51
  br i1 %cmp295, label %if.then297, label %if.else300

if.then297:                                       ; preds = %if.else293
  call void @__sanitizer_cov_trace_pc() #9
  %max_cu_per_sh299 = getelementptr inbounds %struct.radeon_device, ptr %1, i32 0, i32 5, i32 0, i32 2
  %179 = ptrtoint ptr %max_cu_per_sh299 to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load i32, ptr %max_cu_per_sh299, align 8
  %181 = ptrtoint ptr %value_tmp to i32
  call void @__asan_store4_noabort(i32 %181)
  store i32 %180, ptr %value_tmp, align 4
  br label %if.then.i.i.i

if.else300:                                       ; preds = %if.else293
  call void @__sanitizer_cov_trace_const_cmp4(i32 49, i32 %175)
  %cmp302 = icmp ugt i32 %175, 49
  br i1 %cmp302, label %if.then304, label %if.else306

if.then304:                                       ; preds = %if.else300
  call void @__sanitizer_cov_trace_pc() #9
  %max_pipes_per_simd = getelementptr inbounds %struct.radeon_device, ptr %1, i32 0, i32 5, i32 0, i32 1
  %182 = ptrtoint ptr %max_pipes_per_simd to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load i32, ptr %max_pipes_per_simd, align 4
  %184 = ptrtoint ptr %value_tmp to i32
  call void @__asan_store4_noabort(i32 %184)
  store i32 %183, ptr %value_tmp, align 4
  br label %if.then.i.i.i

if.else306:                                       ; preds = %if.else300
  call void @__sanitizer_cov_trace_const_cmp4(i32 38, i32 %175)
  %cmp308 = icmp ugt i32 %175, 38
  br i1 %cmp308, label %if.then310, label %if.else312

if.then310:                                       ; preds = %if.else306
  call void @__sanitizer_cov_trace_pc() #9
  %max_pipes = getelementptr inbounds %struct.radeon_device, ptr %1, i32 0, i32 5, i32 0, i32 1
  %185 = ptrtoint ptr %max_pipes to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load i32, ptr %max_pipes, align 4
  %187 = ptrtoint ptr %value_tmp to i32
  call void @__asan_store4_noabort(i32 %187)
  store i32 %186, ptr %value_tmp, align 4
  br label %if.then.i.i.i

if.else312:                                       ; preds = %if.else306
  call void @__sanitizer_cov_trace_const_cmp4(i32 34, i32 %175)
  %cmp314 = icmp ugt i32 %175, 34
  br i1 %cmp314, label %if.then316, label %if.else319

if.then316:                                       ; preds = %if.else312
  call void @__sanitizer_cov_trace_pc() #9
  %config317 = getelementptr inbounds %struct.radeon_device, ptr %1, i32 0, i32 5
  %188 = ptrtoint ptr %config317 to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load i32, ptr %config317, align 8
  %190 = ptrtoint ptr %value_tmp to i32
  call void @__asan_store4_noabort(i32 %190)
  store i32 %189, ptr %value_tmp, align 4
  br label %if.then.i.i.i

if.else319:                                       ; preds = %if.else312
  call void @__sanitizer_cov_trace_const_cmp4(i32 26, i32 %175)
  %cmp321 = icmp ugt i32 %175, 26
  br i1 %cmp321, label %if.then323, label %if.else319.cleanup_crit_edge

if.else319.cleanup_crit_edge:                     ; preds = %if.else319
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then323:                                       ; preds = %if.else319
  call void @__sanitizer_cov_trace_pc() #9
  %config324 = getelementptr inbounds %struct.radeon_device, ptr %1, i32 0, i32 5
  %191 = ptrtoint ptr %config324 to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load i32, ptr %config324, align 8
  %193 = ptrtoint ptr %value_tmp to i32
  call void @__asan_store4_noabort(i32 %193)
  store i32 %192, ptr %value_tmp, align 4
  br label %if.then.i.i.i

sw.bb333:                                         ; preds = %entry
  %family334 = getelementptr inbounds %struct.radeon_device, ptr %1, i32 0, i32 6
  %194 = ptrtoint ptr %family334 to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load i32, ptr %family334, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 27, i32 %195)
  %cmp335 = icmp ult i32 %195, 27
  br i1 %cmp335, label %if.then337, label %if.end338

if.then337:                                       ; preds = %sw.bb333
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.15) #7
  br label %cleanup

if.end338:                                        ; preds = %sw.bb333
  call void @__sanitizer_cov_trace_pc() #9
  %asic339 = getelementptr inbounds %struct.radeon_device, ptr %1, i32 0, i32 56
  %196 = ptrtoint ptr %asic339 to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %asic339, align 8
  %get_gpu_clock_counter = getelementptr inbounds %struct.radeon_asic, ptr %197, i32 0, i32 10
  %198 = ptrtoint ptr %get_gpu_clock_counter to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %get_gpu_clock_counter, align 4
  %call340 = tail call i64 %199(ptr noundef %1) #7
  %200 = ptrtoint ptr %value64 to i32
  call void @__asan_store8_noabort(i32 %200)
  store i64 %call340, ptr %value64, align 8
  br label %if.then.i.i.i

sw.bb341:                                         ; preds = %entry
  %family342 = getelementptr inbounds %struct.radeon_device, ptr %1, i32 0, i32 6
  %201 = ptrtoint ptr %family342 to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load i32, ptr %family342, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 56, i32 %202)
  %cmp343 = icmp ugt i32 %202, 56
  br i1 %cmp343, label %if.then345, label %if.else348

if.then345:                                       ; preds = %sw.bb341
  call void @__sanitizer_cov_trace_pc() #9
  %config346 = getelementptr inbounds %struct.radeon_device, ptr %1, i32 0, i32 5
  %203 = ptrtoint ptr %config346 to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load i32, ptr %config346, align 8
  %205 = ptrtoint ptr %value_tmp to i32
  call void @__asan_store4_noabort(i32 %205)
  store i32 %204, ptr %value_tmp, align 4
  br label %if.then.i.i.i

if.else348:                                       ; preds = %sw.bb341
  call void @__sanitizer_cov_trace_const_cmp4(i32 51, i32 %202)
  %cmp350 = icmp ugt i32 %202, 51
  br i1 %cmp350, label %if.then352, label %if.else355

if.then352:                                       ; preds = %if.else348
  call void @__sanitizer_cov_trace_pc() #9
  %config353 = getelementptr inbounds %struct.radeon_device, ptr %1, i32 0, i32 5
  %206 = ptrtoint ptr %config353 to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load i32, ptr %config353, align 8
  %208 = ptrtoint ptr %value_tmp to i32
  call void @__asan_store4_noabort(i32 %208)
  store i32 %207, ptr %value_tmp, align 4
  br label %if.then.i.i.i

if.else355:                                       ; preds = %if.else348
  call void @__sanitizer_cov_trace_const_cmp4(i32 49, i32 %202)
  %cmp357 = icmp ugt i32 %202, 49
  br i1 %cmp357, label %if.then359, label %if.else362

if.then359:                                       ; preds = %if.else355
  call void @__sanitizer_cov_trace_pc() #9
  %config360 = getelementptr inbounds %struct.radeon_device, ptr %1, i32 0, i32 5
  %209 = ptrtoint ptr %config360 to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load i32, ptr %config360, align 8
  %211 = ptrtoint ptr %value_tmp to i32
  call void @__asan_store4_noabort(i32 %211)
  store i32 %210, ptr %value_tmp, align 4
  br label %if.then.i.i.i

if.else362:                                       ; preds = %if.else355
  call void @__sanitizer_cov_trace_const_cmp4(i32 38, i32 %202)
  %cmp364 = icmp ugt i32 %202, 38
  br i1 %cmp364, label %if.then366, label %if.else368

if.then366:                                       ; preds = %if.else362
  call void @__sanitizer_cov_trace_pc() #9
  %config367 = getelementptr inbounds %struct.radeon_device, ptr %1, i32 0, i32 5
  %212 = ptrtoint ptr %config367 to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load i32, ptr %config367, align 8
  %214 = ptrtoint ptr %value_tmp to i32
  call void @__asan_store4_noabort(i32 %214)
  store i32 %213, ptr %value_tmp, align 4
  br label %if.then.i.i.i

if.else368:                                       ; preds = %if.else362
  call void @__sanitizer_cov_trace_pc() #9
  %215 = ptrtoint ptr %value_tmp to i32
  call void @__asan_store4_noabort(i32 %215)
  store i32 1, ptr %value_tmp, align 4
  br label %if.then.i.i.i

sw.bb373:                                         ; preds = %entry
  %family374 = getelementptr inbounds %struct.radeon_device, ptr %1, i32 0, i32 6
  %216 = ptrtoint ptr %family374 to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load i32, ptr %family374, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 56, i32 %217)
  %cmp375 = icmp ugt i32 %217, 56
  br i1 %cmp375, label %if.then377, label %if.else379

if.then377:                                       ; preds = %sw.bb373
  call void @__sanitizer_cov_trace_pc() #9
  %max_sh_per_se = getelementptr inbounds %struct.radeon_device, ptr %1, i32 0, i32 5, i32 0, i32 3
  %218 = ptrtoint ptr %max_sh_per_se to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load i32, ptr %max_sh_per_se, align 4
  %220 = ptrtoint ptr %value_tmp to i32
  call void @__asan_store4_noabort(i32 %220)
  store i32 %219, ptr %value_tmp, align 4
  br label %if.then.i.i.i

if.else379:                                       ; preds = %sw.bb373
  call void @__sanitizer_cov_trace_const_cmp4(i32 51, i32 %217)
  %cmp381 = icmp ugt i32 %217, 51
  br i1 %cmp381, label %if.then383, label %if.else379.cleanup_crit_edge

if.else379.cleanup_crit_edge:                     ; preds = %if.else379
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then383:                                       ; preds = %if.else379
  call void @__sanitizer_cov_trace_pc() #9
  %max_sh_per_se385 = getelementptr inbounds %struct.radeon_device, ptr %1, i32 0, i32 5, i32 0, i32 3
  %221 = ptrtoint ptr %max_sh_per_se385 to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load i32, ptr %max_sh_per_se385, align 4
  %223 = ptrtoint ptr %value_tmp to i32
  call void @__asan_store4_noabort(i32 %223)
  store i32 %222, ptr %value_tmp, align 4
  br label %if.then.i.i.i

sw.bb389:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %fastfb_working = getelementptr inbounds %struct.radeon_device, ptr %1, i32 0, i32 67
  %224 = ptrtoint ptr %fastfb_working to i32
  call void @__asan_load1_noabort(i32 %224)
  %225 = load i8, ptr %fastfb_working, align 1, !range !75
  %226 = zext i8 %225 to i32
  %227 = ptrtoint ptr %value_tmp to i32
  call void @__asan_store4_noabort(i32 %227)
  store i32 %226, ptr %value_tmp, align 4
  br label %if.then.i.i.i

if.then.i922:                                     ; preds = %entry
  tail call void @__might_fault(ptr noundef nonnull @.str.28, i32 noundef 156) #7
  %call.i.i921 = tail call zeroext i1 @should_fail_usercopy() #7
  br i1 %call.i.i921, label %if.then.i922.if.then11.i.i937_crit_edge, label %land.lhs.true.i.i925

if.then.i922.if.then11.i.i937_crit_edge:          ; preds = %if.then.i922
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then11.i.i937

land.lhs.true.i.i925:                             ; preds = %if.then.i922
  %228 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %6, i32 4, i32 -1226833920) #12, !srcloc !76
  %asmresult.i.i923 = extractvalue { i32, i32 } %228, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i923)
  %cmp.i1.i924 = icmp eq i32 %asmresult.i.i923, 0
  br i1 %cmp.i1.i924, label %if.end.i.i933, label %land.lhs.true.i.i925.if.then11.i.i937_crit_edge, !prof !77

land.lhs.true.i.i925.if.then11.i.i937_crit_edge:  ; preds = %land.lhs.true.i.i925
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then11.i.i937

if.end.i.i933:                                    ; preds = %land.lhs.true.i.i925
  %call.i.i.i926 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %value_tmp, i32 noundef 4) #7
  %229 = call i32 @llvm.read_register.i32(metadata !64) #7
  %and.i.i.i.i.i.i927 = and i32 %229, -16384
  %230 = inttoptr i32 %and.i.i.i.i.i.i927 to ptr
  %cpu_domain.i.i.i.i.i928 = getelementptr inbounds %struct.thread_info, ptr %230, i32 0, i32 4
  %231 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i928) #6, !srcloc !78
  %and.i.i.i.i929 = and i32 %231, -13
  %or.i.i.i.i930 = or i32 %and.i.i.i.i929, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i930) #7, !srcloc !79
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !80
  %call1.i.i.i931 = call i32 @arm_copy_from_user(ptr noundef nonnull %value_tmp, ptr noundef %6, i32 noundef 4) #7
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %231) #7, !srcloc !79
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !80
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i931)
  %tobool4.not.i.i932 = icmp eq i32 %call1.i.i.i931, 0
  br i1 %tobool4.not.i.i932, label %if.end396, label %if.end.i.i933.if.then11.i.i937_crit_edge, !prof !77

if.end.i.i933.if.then11.i.i937_crit_edge:         ; preds = %if.end.i.i933
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then11.i.i937

if.then11.i.i937:                                 ; preds = %if.end.i.i933.if.then11.i.i937_crit_edge, %land.lhs.true.i.i925.if.then11.i.i937_crit_edge, %if.then.i922.if.then11.i.i937_crit_edge
  %res.03.i.i934 = phi i32 [ %call1.i.i.i931, %if.end.i.i933.if.then11.i.i937_crit_edge ], [ 4, %if.then.i922.if.then11.i.i937_crit_edge ], [ 4, %land.lhs.true.i.i925.if.then11.i.i937_crit_edge ]
  %sub.i.i935 = sub i32 4, %res.03.i.i934
  %add.ptr.i.i936 = getelementptr i8, ptr %value_tmp, i32 %sub.i.i935
  %232 = call ptr @memset(ptr %add.ptr.i.i936, i32 0, i32 %res.03.i.i934)
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.10, ptr noundef nonnull @__func__.radeon_info_ioctl, i32 noundef 476) #7
  br label %cleanup

if.end396:                                        ; preds = %if.end.i.i933
  %233 = ptrtoint ptr %value_tmp to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load i32, ptr %value_tmp, align 4
  %235 = zext i32 %234 to i64
  call void @__sanitizer_cov_trace_switch(i64 %235, ptr @__sancov_gen_cov_switch_values.33)
  switch i32 %234, label %if.end396.cleanup_crit_edge [
    i32 0, label %if.end396.sw.bb397_crit_edge
    i32 1, label %if.end396.sw.bb397_crit_edge993
    i32 2, label %sw.bb401
    i32 3, label %sw.bb412
    i32 4, label %sw.bb418
  ]

if.end396.sw.bb397_crit_edge993:                  ; preds = %if.end396
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb397

if.end396.sw.bb397_crit_edge:                     ; preds = %if.end396
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb397

if.end396.cleanup_crit_edge:                      ; preds = %if.end396
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb397:                                         ; preds = %if.end396.sw.bb397_crit_edge, %if.end396.sw.bb397_crit_edge993
  %ready = getelementptr inbounds %struct.radeon_device, ptr %1, i32 0, i32 52, i32 0, i32 17
  %236 = ptrtoint ptr %ready to i32
  call void @__asan_load1_noabort(i32 %236)
  %237 = load i8, ptr %ready, align 8, !range !75
  %238 = zext i8 %237 to i32
  %239 = ptrtoint ptr %value_tmp to i32
  call void @__asan_store4_noabort(i32 %239)
  store i32 %238, ptr %value_tmp, align 4
  br label %if.then.i.i.i

sw.bb401:                                         ; preds = %if.end396
  call void @__sanitizer_cov_trace_pc() #9
  %ready404 = getelementptr %struct.radeon_device, ptr %1, i32 0, i32 52, i32 3, i32 17
  %240 = ptrtoint ptr %ready404 to i32
  call void @__asan_load1_noabort(i32 %240)
  %241 = load i8, ptr %ready404, align 8, !range !75
  %242 = zext i8 %241 to i32
  %243 = ptrtoint ptr %value_tmp to i32
  call void @__asan_store4_noabort(i32 %243)
  store i32 %242, ptr %value_tmp, align 4
  %ready409 = getelementptr %struct.radeon_device, ptr %1, i32 0, i32 52, i32 4, i32 17
  %244 = ptrtoint ptr %ready409 to i32
  call void @__asan_load1_noabort(i32 %244)
  %245 = load i8, ptr %ready409, align 8, !range !75
  %or876 = or i8 %245, %241
  %or = zext i8 %or876 to i32
  store i32 %or, ptr %value_tmp, align 4
  br label %if.then.i.i.i

sw.bb412:                                         ; preds = %if.end396
  call void @__sanitizer_cov_trace_pc() #9
  %ready415 = getelementptr %struct.radeon_device, ptr %1, i32 0, i32 52, i32 5, i32 17
  %246 = ptrtoint ptr %ready415 to i32
  call void @__asan_load1_noabort(i32 %246)
  %247 = load i8, ptr %ready415, align 8, !range !75
  %248 = zext i8 %247 to i32
  %249 = ptrtoint ptr %value_tmp to i32
  call void @__asan_store4_noabort(i32 %249)
  store i32 %248, ptr %value_tmp, align 4
  br label %if.then.i.i.i

sw.bb418:                                         ; preds = %if.end396
  call void @__sanitizer_cov_trace_pc() #9
  %ready421 = getelementptr %struct.radeon_device, ptr %1, i32 0, i32 52, i32 6, i32 17
  %250 = ptrtoint ptr %ready421 to i32
  call void @__asan_load1_noabort(i32 %250)
  %251 = load i8, ptr %ready421, align 8, !range !75
  %252 = zext i8 %251 to i32
  %253 = ptrtoint ptr %value_tmp to i32
  call void @__asan_store4_noabort(i32 %253)
  store i32 %252, ptr %value_tmp, align 4
  br label %if.then.i.i.i

sw.bb424:                                         ; preds = %entry
  %family425 = getelementptr inbounds %struct.radeon_device, ptr %1, i32 0, i32 6
  %254 = ptrtoint ptr %family425 to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load i32, ptr %family425, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 56, i32 %255)
  %cmp426 = icmp ugt i32 %255, 56
  br i1 %cmp426, label %if.then428, label %if.else430

if.then428:                                       ; preds = %sw.bb424
  call void @__sanitizer_cov_trace_pc() #9
  %tile_mode_array = getelementptr inbounds %struct.radeon_device, ptr %1, i32 0, i32 5, i32 0, i32 24
  br label %if.then.i.i.i

if.else430:                                       ; preds = %sw.bb424
  call void @__sanitizer_cov_trace_const_cmp4(i32 51, i32 %255)
  %cmp432 = icmp ugt i32 %255, 51
  br i1 %cmp432, label %if.then434, label %if.else438

if.then434:                                       ; preds = %if.else430
  call void @__sanitizer_cov_trace_pc() #9
  %tile_mode_array436 = getelementptr inbounds %struct.radeon_device, ptr %1, i32 0, i32 5, i32 0, i32 24
  br label %if.then.i.i.i

if.else438:                                       ; preds = %if.else430
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.16) #7
  br label %cleanup

sw.bb441:                                         ; preds = %entry
  %family442 = getelementptr inbounds %struct.radeon_device, ptr %1, i32 0, i32 6
  %256 = ptrtoint ptr %family442 to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load i32, ptr %family442, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 56, i32 %257)
  %cmp443 = icmp ugt i32 %257, 56
  br i1 %cmp443, label %if.then445, label %if.else448

if.then445:                                       ; preds = %sw.bb441
  call void @__sanitizer_cov_trace_pc() #9
  %macrotile_mode_array = getelementptr inbounds %struct.radeon_device, ptr %1, i32 0, i32 5, i32 0, i32 25
  br label %if.then.i.i.i

if.else448:                                       ; preds = %sw.bb441
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.17) #7
  br label %cleanup

sw.bb450:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %258 = ptrtoint ptr %value_tmp to i32
  call void @__asan_store4_noabort(i32 %258)
  store i32 1, ptr %value_tmp, align 4
  br label %if.then.i.i.i

sw.bb451:                                         ; preds = %entry
  %family452 = getelementptr inbounds %struct.radeon_device, ptr %1, i32 0, i32 6
  %259 = ptrtoint ptr %family452 to i32
  call void @__asan_load4_noabort(i32 %259)
  %260 = load i32, ptr %family452, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 56, i32 %260)
  %cmp453 = icmp ugt i32 %260, 56
  br i1 %cmp453, label %if.then455, label %if.else457

if.then455:                                       ; preds = %sw.bb451
  call void @__sanitizer_cov_trace_pc() #9
  %backend_enable_mask = getelementptr inbounds %struct.radeon_device, ptr %1, i32 0, i32 5, i32 0, i32 14
  %261 = ptrtoint ptr %backend_enable_mask to i32
  call void @__asan_load4_noabort(i32 %261)
  %262 = load i32, ptr %backend_enable_mask, align 8
  %263 = ptrtoint ptr %value_tmp to i32
  call void @__asan_store4_noabort(i32 %263)
  store i32 %262, ptr %value_tmp, align 4
  br label %if.then.i.i.i

if.else457:                                       ; preds = %sw.bb451
  call void @__sanitizer_cov_trace_const_cmp4(i32 51, i32 %260)
  %cmp459 = icmp ugt i32 %260, 51
  br i1 %cmp459, label %if.then461, label %if.else464

if.then461:                                       ; preds = %if.else457
  call void @__sanitizer_cov_trace_pc() #9
  %backend_enable_mask463 = getelementptr inbounds %struct.radeon_device, ptr %1, i32 0, i32 5, i32 0, i32 14
  %264 = ptrtoint ptr %backend_enable_mask463 to i32
  call void @__asan_load4_noabort(i32 %264)
  %265 = load i32, ptr %backend_enable_mask463, align 8
  %266 = ptrtoint ptr %value_tmp to i32
  call void @__asan_store4_noabort(i32 %266)
  store i32 %265, ptr %value_tmp, align 4
  br label %if.then.i.i.i

if.else464:                                       ; preds = %if.else457
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.18) #7
  br label %cleanup

sw.bb467:                                         ; preds = %entry
  %pm_method = getelementptr inbounds %struct.radeon_device, ptr %1, i32 0, i32 58, i32 34
  %267 = ptrtoint ptr %pm_method to i32
  call void @__asan_load4_noabort(i32 %267)
  %268 = load i32, ptr %pm_method, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %268)
  %cmp468 = icmp eq i32 %268, 2
  br i1 %cmp468, label %land.lhs.true470, label %sw.bb467.if.else477_crit_edge

sw.bb467.if.else477_crit_edge:                    ; preds = %sw.bb467
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else477

land.lhs.true470:                                 ; preds = %sw.bb467
  %dpm_enabled = getelementptr inbounds %struct.radeon_device, ptr %1, i32 0, i32 58, i32 50
  %269 = ptrtoint ptr %dpm_enabled to i32
  call void @__asan_load1_noabort(i32 %269)
  %270 = load i8, ptr %dpm_enabled, align 8, !range !75
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %270)
  %tobool472.not = icmp eq i8 %270, 0
  br i1 %tobool472.not, label %land.lhs.true470.if.else477_crit_edge, label %if.then474

land.lhs.true470.if.else477_crit_edge:            ; preds = %land.lhs.true470
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else477

if.then474:                                       ; preds = %land.lhs.true470
  call void @__sanitizer_cov_trace_pc() #9
  %max_clock_voltage_on_ac = getelementptr inbounds %struct.radeon_device, ptr %1, i32 0, i32 58, i32 52, i32 20, i32 12
  %271 = ptrtoint ptr %max_clock_voltage_on_ac to i32
  call void @__asan_load4_noabort(i32 %271)
  %272 = load i32, ptr %max_clock_voltage_on_ac, align 4
  %mul476 = mul i32 %272, 10
  %273 = ptrtoint ptr %value_tmp to i32
  call void @__asan_store4_noabort(i32 %273)
  store i32 %mul476, ptr %value_tmp, align 4
  br label %if.then.i.i.i

if.else477:                                       ; preds = %land.lhs.true470.if.else477_crit_edge, %sw.bb467.if.else477_crit_edge
  %default_sclk = getelementptr inbounds %struct.radeon_device, ptr %1, i32 0, i32 58, i32 29
  %274 = ptrtoint ptr %default_sclk to i32
  call void @__asan_load4_noabort(i32 %274)
  %275 = load i32, ptr %default_sclk, align 4
  %mul479 = mul i32 %275, 10
  %276 = ptrtoint ptr %value_tmp to i32
  call void @__asan_store4_noabort(i32 %276)
  store i32 %mul479, ptr %value_tmp, align 4
  br label %if.then.i.i.i

sw.bb481:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %fw_version = getelementptr inbounds %struct.radeon_device, ptr %1, i32 0, i32 60, i32 2
  %277 = ptrtoint ptr %fw_version to i32
  call void @__asan_load4_noabort(i32 %277)
  %278 = load i32, ptr %fw_version, align 8
  %279 = ptrtoint ptr %value_tmp to i32
  call void @__asan_store4_noabort(i32 %279)
  store i32 %278, ptr %value_tmp, align 4
  br label %if.then.i.i.i

sw.bb482:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %fb_version = getelementptr inbounds %struct.radeon_device, ptr %1, i32 0, i32 60, i32 3
  %280 = ptrtoint ptr %fb_version to i32
  call void @__asan_load4_noabort(i32 %280)
  %281 = load i32, ptr %fb_version, align 4
  %282 = ptrtoint ptr %value_tmp to i32
  call void @__asan_store4_noabort(i32 %282)
  store i32 %281, ptr %value_tmp, align 4
  br label %if.then.i.i.i

sw.bb484:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %num_bytes_moved = getelementptr inbounds %struct.radeon_device, ptr %1, i32 0, i32 104
  %call.i.i940 = tail call zeroext i1 @__kasan_check_read(ptr noundef %num_bytes_moved, i32 noundef 8) #7
  %call.i = tail call i64 @generic_atomic64_read(ptr noundef %num_bytes_moved) #7
  %283 = ptrtoint ptr %value64 to i32
  call void @__asan_store8_noabort(i32 %283)
  store i64 %call.i, ptr %value64, align 8
  br label %if.then.i.i.i

sw.bb486:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %vram_usage = getelementptr inbounds %struct.radeon_device, ptr %1, i32 0, i32 102
  %call.i.i941 = tail call zeroext i1 @__kasan_check_read(ptr noundef %vram_usage, i32 noundef 8) #7
  %call.i942 = tail call i64 @generic_atomic64_read(ptr noundef %vram_usage) #7
  %284 = ptrtoint ptr %value64 to i32
  call void @__asan_store8_noabort(i32 %284)
  store i64 %call.i942, ptr %value64, align 8
  br label %if.then.i.i.i

sw.bb488:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %gtt_usage = getelementptr inbounds %struct.radeon_device, ptr %1, i32 0, i32 103
  %call.i.i943 = tail call zeroext i1 @__kasan_check_read(ptr noundef %gtt_usage, i32 noundef 8) #7
  %call.i944 = tail call i64 @generic_atomic64_read(ptr noundef %gtt_usage) #7
  %285 = ptrtoint ptr %value64 to i32
  call void @__asan_store8_noabort(i32 %285)
  store i64 %call.i944, ptr %value64, align 8
  br label %if.then.i.i.i

sw.bb490:                                         ; preds = %entry
  %family491 = getelementptr inbounds %struct.radeon_device, ptr %1, i32 0, i32 6
  %286 = ptrtoint ptr %family491 to i32
  call void @__asan_load4_noabort(i32 %286)
  %287 = load i32, ptr %family491, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 56, i32 %287)
  %cmp492 = icmp ugt i32 %287, 56
  br i1 %cmp492, label %if.then494, label %if.else496

if.then494:                                       ; preds = %sw.bb490
  call void @__sanitizer_cov_trace_pc() #9
  %active_cus = getelementptr inbounds %struct.radeon_device, ptr %1, i32 0, i32 5, i32 0, i32 26
  %288 = ptrtoint ptr %active_cus to i32
  call void @__asan_load4_noabort(i32 %288)
  %289 = load i32, ptr %active_cus, align 8
  %290 = ptrtoint ptr %value_tmp to i32
  call void @__asan_store4_noabort(i32 %290)
  store i32 %289, ptr %value_tmp, align 4
  br label %if.then.i.i.i

if.else496:                                       ; preds = %sw.bb490
  call void @__sanitizer_cov_trace_const_cmp4(i32 51, i32 %287)
  %cmp498 = icmp ugt i32 %287, 51
  br i1 %cmp498, label %if.then500, label %if.else503

if.then500:                                       ; preds = %if.else496
  call void @__sanitizer_cov_trace_pc() #9
  %active_cus502 = getelementptr inbounds %struct.radeon_device, ptr %1, i32 0, i32 5, i32 0, i32 25
  %291 = ptrtoint ptr %active_cus502 to i32
  call void @__asan_load4_noabort(i32 %291)
  %292 = load i32, ptr %active_cus502, align 8
  %293 = ptrtoint ptr %value_tmp to i32
  call void @__asan_store4_noabort(i32 %293)
  store i32 %292, ptr %value_tmp, align 4
  br label %if.then.i.i.i

if.else503:                                       ; preds = %if.else496
  call void @__sanitizer_cov_trace_const_cmp4(i32 49, i32 %287)
  %cmp505 = icmp ugt i32 %287, 49
  br i1 %cmp505, label %if.then507, label %if.else509

if.then507:                                       ; preds = %if.else503
  call void @__sanitizer_cov_trace_pc() #9
  %active_simds = getelementptr inbounds %struct.radeon_device, ptr %1, i32 0, i32 5, i32 0, i32 24, i32 9
  %294 = ptrtoint ptr %active_simds to i32
  call void @__asan_load4_noabort(i32 %294)
  %295 = load i32, ptr %active_simds, align 4
  %296 = ptrtoint ptr %value_tmp to i32
  call void @__asan_store4_noabort(i32 %296)
  store i32 %295, ptr %value_tmp, align 4
  br label %if.then.i.i.i

if.else509:                                       ; preds = %if.else503
  call void @__sanitizer_cov_trace_const_cmp4(i32 38, i32 %287)
  %cmp511 = icmp ugt i32 %287, 38
  br i1 %cmp511, label %if.then513, label %if.else516

if.then513:                                       ; preds = %if.else509
  call void @__sanitizer_cov_trace_pc() #9
  %active_simds515 = getelementptr inbounds %struct.radeon_device, ptr %1, i32 0, i32 5, i32 0, i32 23
  %297 = ptrtoint ptr %active_simds515 to i32
  call void @__asan_load4_noabort(i32 %297)
  %298 = load i32, ptr %active_simds515, align 4
  %299 = ptrtoint ptr %value_tmp to i32
  call void @__asan_store4_noabort(i32 %299)
  store i32 %298, ptr %value_tmp, align 4
  br label %if.then.i.i.i

if.else516:                                       ; preds = %if.else509
  call void @__sanitizer_cov_trace_const_cmp4(i32 34, i32 %287)
  %cmp518 = icmp ugt i32 %287, 34
  br i1 %cmp518, label %if.then520, label %if.else523

if.then520:                                       ; preds = %if.else516
  call void @__sanitizer_cov_trace_pc() #9
  %active_simds522 = getelementptr inbounds %struct.radeon_device, ptr %1, i32 0, i32 5, i32 0, i32 22
  %300 = ptrtoint ptr %active_simds522 to i32
  call void @__asan_load4_noabort(i32 %300)
  %301 = load i32, ptr %active_simds522, align 8
  %302 = ptrtoint ptr %value_tmp to i32
  call void @__asan_store4_noabort(i32 %302)
  store i32 %301, ptr %value_tmp, align 4
  br label %if.then.i.i.i

if.else523:                                       ; preds = %if.else516
  call void @__sanitizer_cov_trace_const_cmp4(i32 26, i32 %287)
  %cmp525 = icmp ugt i32 %287, 26
  br i1 %cmp525, label %if.then527, label %if.else530

if.then527:                                       ; preds = %if.else523
  call void @__sanitizer_cov_trace_pc() #9
  %active_simds529 = getelementptr inbounds %struct.radeon_device, ptr %1, i32 0, i32 5, i32 0, i32 18
  %303 = ptrtoint ptr %active_simds529 to i32
  call void @__asan_load4_noabort(i32 %303)
  %304 = load i32, ptr %active_simds529, align 8
  %305 = ptrtoint ptr %value_tmp to i32
  call void @__asan_store4_noabort(i32 %305)
  store i32 %304, ptr %value_tmp, align 4
  br label %if.then.i.i.i

if.else530:                                       ; preds = %if.else523
  call void @__sanitizer_cov_trace_pc() #9
  %306 = ptrtoint ptr %value_tmp to i32
  call void @__asan_store4_noabort(i32 %306)
  store i32 1, ptr %value_tmp, align 4
  br label %if.then.i.i.i

sw.bb537:                                         ; preds = %entry
  %asic538 = getelementptr inbounds %struct.radeon_device, ptr %1, i32 0, i32 56
  %307 = ptrtoint ptr %asic538 to i32
  call void @__asan_load4_noabort(i32 %307)
  %308 = load ptr, ptr %asic538, align 8
  %get_temperature = getelementptr inbounds %struct.radeon_asic, ptr %308, i32 0, i32 20, i32 14
  %309 = ptrtoint ptr %get_temperature to i32
  call void @__asan_load4_noabort(i32 %309)
  %310 = load ptr, ptr %get_temperature, align 4
  %tobool540.not = icmp eq ptr %310, null
  br i1 %tobool540.not, label %if.else546, label %if.then541

if.then541:                                       ; preds = %sw.bb537
  call void @__sanitizer_cov_trace_pc() #9
  %call545 = tail call i32 %310(ptr noundef %1) #7
  %311 = ptrtoint ptr %value_tmp to i32
  call void @__asan_store4_noabort(i32 %311)
  store i32 %call545, ptr %value_tmp, align 4
  br label %if.then.i.i.i

if.else546:                                       ; preds = %sw.bb537
  call void @__sanitizer_cov_trace_pc() #9
  %312 = ptrtoint ptr %value_tmp to i32
  call void @__asan_store4_noabort(i32 %312)
  store i32 0, ptr %value_tmp, align 4
  br label %if.then.i.i.i

sw.bb548:                                         ; preds = %entry
  %dpm_enabled550 = getelementptr inbounds %struct.radeon_device, ptr %1, i32 0, i32 58, i32 50
  %313 = ptrtoint ptr %dpm_enabled550 to i32
  call void @__asan_load1_noabort(i32 %313)
  %314 = load i8, ptr %dpm_enabled550, align 8, !range !75
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %314)
  %tobool551.not = icmp eq i8 %314, 0
  br i1 %tobool551.not, label %if.else556, label %if.then552

if.then552:                                       ; preds = %sw.bb548
  call void @__sanitizer_cov_trace_pc() #9
  %asic553 = getelementptr inbounds %struct.radeon_device, ptr %1, i32 0, i32 56
  %315 = ptrtoint ptr %asic553 to i32
  call void @__asan_load4_noabort(i32 %315)
  %316 = load ptr, ptr %asic553, align 8
  %get_current_sclk = getelementptr inbounds %struct.radeon_asic, ptr %316, i32 0, i32 21, i32 22
  %317 = ptrtoint ptr %get_current_sclk to i32
  call void @__asan_load4_noabort(i32 %317)
  %318 = load ptr, ptr %get_current_sclk, align 4
  %call555 = tail call i32 %318(ptr noundef %1) #7
  %div = udiv i32 %call555, 100
  %319 = ptrtoint ptr %value_tmp to i32
  call void @__asan_store4_noabort(i32 %319)
  store i32 %div, ptr %value_tmp, align 4
  br label %if.then.i.i.i

if.else556:                                       ; preds = %sw.bb548
  call void @__sanitizer_cov_trace_pc() #9
  %current_sclk = getelementptr inbounds %struct.radeon_device, ptr %1, i32 0, i32 58, i32 25
  %320 = ptrtoint ptr %current_sclk to i32
  call void @__asan_load4_noabort(i32 %320)
  %321 = load i32, ptr %current_sclk, align 8
  %div558 = udiv i32 %321, 100
  %322 = ptrtoint ptr %value_tmp to i32
  call void @__asan_store4_noabort(i32 %322)
  store i32 %div558, ptr %value_tmp, align 4
  br label %if.then.i.i.i

sw.bb560:                                         ; preds = %entry
  %dpm_enabled562 = getelementptr inbounds %struct.radeon_device, ptr %1, i32 0, i32 58, i32 50
  %323 = ptrtoint ptr %dpm_enabled562 to i32
  call void @__asan_load1_noabort(i32 %323)
  %324 = load i8, ptr %dpm_enabled562, align 8, !range !75
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %324)
  %tobool563.not = icmp eq i8 %324, 0
  br i1 %tobool563.not, label %if.else569, label %if.then564

if.then564:                                       ; preds = %sw.bb560
  call void @__sanitizer_cov_trace_pc() #9
  %asic565 = getelementptr inbounds %struct.radeon_device, ptr %1, i32 0, i32 56
  %325 = ptrtoint ptr %asic565 to i32
  call void @__asan_load4_noabort(i32 %325)
  %326 = load ptr, ptr %asic565, align 8
  %get_current_mclk = getelementptr inbounds %struct.radeon_asic, ptr %326, i32 0, i32 21, i32 23
  %327 = ptrtoint ptr %get_current_mclk to i32
  call void @__asan_load4_noabort(i32 %327)
  %328 = load ptr, ptr %get_current_mclk, align 4
  %call567 = tail call i32 %328(ptr noundef %1) #7
  %div568 = udiv i32 %call567, 100
  %329 = ptrtoint ptr %value_tmp to i32
  call void @__asan_store4_noabort(i32 %329)
  store i32 %div568, ptr %value_tmp, align 4
  br label %if.then.i.i.i

if.else569:                                       ; preds = %sw.bb560
  call void @__sanitizer_cov_trace_pc() #9
  %current_mclk = getelementptr inbounds %struct.radeon_device, ptr %1, i32 0, i32 58, i32 26
  %330 = ptrtoint ptr %current_mclk to i32
  call void @__asan_load4_noabort(i32 %330)
  %331 = load i32, ptr %current_mclk, align 4
  %div571 = udiv i32 %331, 100
  %332 = ptrtoint ptr %value_tmp to i32
  call void @__asan_store4_noabort(i32 %332)
  store i32 %div571, ptr %value_tmp, align 4
  br label %if.then.i.i.i

if.then.i948:                                     ; preds = %entry
  tail call void @__might_fault(ptr noundef nonnull @.str.28, i32 noundef 156) #7
  %call.i.i947 = tail call zeroext i1 @should_fail_usercopy() #7
  br i1 %call.i.i947, label %if.then.i948.if.then11.i.i963_crit_edge, label %land.lhs.true.i.i951

if.then.i948.if.then11.i.i963_crit_edge:          ; preds = %if.then.i948
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then11.i.i963

land.lhs.true.i.i951:                             ; preds = %if.then.i948
  %333 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %6, i32 4, i32 -1226833920) #12, !srcloc !76
  %asmresult.i.i949 = extractvalue { i32, i32 } %333, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i949)
  %cmp.i1.i950 = icmp eq i32 %asmresult.i.i949, 0
  br i1 %cmp.i1.i950, label %if.end.i.i959, label %land.lhs.true.i.i951.if.then11.i.i963_crit_edge, !prof !77

land.lhs.true.i.i951.if.then11.i.i963_crit_edge:  ; preds = %land.lhs.true.i.i951
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then11.i.i963

if.end.i.i959:                                    ; preds = %land.lhs.true.i.i951
  %call.i.i.i952 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %value_tmp, i32 noundef 4) #7
  %334 = call i32 @llvm.read_register.i32(metadata !64) #7
  %and.i.i.i.i.i.i953 = and i32 %334, -16384
  %335 = inttoptr i32 %and.i.i.i.i.i.i953 to ptr
  %cpu_domain.i.i.i.i.i954 = getelementptr inbounds %struct.thread_info, ptr %335, i32 0, i32 4
  %336 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i954) #6, !srcloc !78
  %and.i.i.i.i955 = and i32 %336, -13
  %or.i.i.i.i956 = or i32 %and.i.i.i.i955, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i956) #7, !srcloc !79
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !80
  %call1.i.i.i957 = call i32 @arm_copy_from_user(ptr noundef nonnull %value_tmp, ptr noundef %6, i32 noundef 4) #7
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %336) #7, !srcloc !79
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !80
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i957)
  %tobool4.not.i.i958 = icmp eq i32 %call1.i.i.i957, 0
  br i1 %tobool4.not.i.i958, label %if.end577, label %if.end.i.i959.if.then11.i.i963_crit_edge, !prof !77

if.end.i.i959.if.then11.i.i963_crit_edge:         ; preds = %if.end.i.i959
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then11.i.i963

if.then11.i.i963:                                 ; preds = %if.end.i.i959.if.then11.i.i963_crit_edge, %land.lhs.true.i.i951.if.then11.i.i963_crit_edge, %if.then.i948.if.then11.i.i963_crit_edge
  %res.03.i.i960 = phi i32 [ %call1.i.i.i957, %if.end.i.i959.if.then11.i.i963_crit_edge ], [ 4, %if.then.i948.if.then11.i.i963_crit_edge ], [ 4, %land.lhs.true.i.i951.if.then11.i.i963_crit_edge ]
  %sub.i.i961 = sub i32 4, %res.03.i.i960
  %add.ptr.i.i962 = getelementptr i8, ptr %value_tmp, i32 %sub.i.i961
  %337 = call ptr @memset(ptr %add.ptr.i.i962, i32 0, i32 %res.03.i.i960)
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.10, ptr noundef nonnull @__func__.radeon_info_ioctl, i32 noundef 599) #7
  br label %cleanup

if.end577:                                        ; preds = %if.end.i.i959
  %asic578 = getelementptr inbounds %struct.radeon_device, ptr %1, i32 0, i32 56
  %338 = ptrtoint ptr %asic578 to i32
  call void @__asan_load4_noabort(i32 %338)
  %339 = load ptr, ptr %asic578, align 8
  %get_allowed_info_register = getelementptr inbounds %struct.radeon_asic, ptr %339, i32 0, i32 11
  %340 = ptrtoint ptr %get_allowed_info_register to i32
  call void @__asan_load4_noabort(i32 %340)
  %341 = load ptr, ptr %get_allowed_info_register, align 4
  %342 = ptrtoint ptr %value_tmp to i32
  call void @__asan_load4_noabort(i32 %342)
  %343 = load i32, ptr %value_tmp, align 4
  %call579 = call i32 %341(ptr noundef %1, i32 noundef %343, ptr noundef nonnull %value_tmp) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call579)
  %tobool580.not = icmp eq i32 %call579, 0
  br i1 %tobool580.not, label %if.end577.if.then.i.i.i_crit_edge, label %if.end577.cleanup_crit_edge

if.end577.cleanup_crit_edge:                      ; preds = %if.end577
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end577.if.then.i.i.i_crit_edge:                ; preds = %if.end577
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i.i.i

sw.bb583:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %344 = ptrtoint ptr %value_tmp to i32
  call void @__asan_store4_noabort(i32 %344)
  store i32 1, ptr %value_tmp, align 4
  br label %if.then.i.i.i

sw.bb584:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %gpu_reset_counter = getelementptr inbounds %struct.radeon_device, ptr %1, i32 0, i32 105
  %call.i.i966 = tail call zeroext i1 @__kasan_check_read(ptr noundef %gpu_reset_counter, i32 noundef 4) #7
  %345 = ptrtoint ptr %gpu_reset_counter to i32
  call void @__asan_load4_noabort(i32 %345)
  %346 = load volatile i32, ptr %gpu_reset_counter, align 4
  %347 = ptrtoint ptr %value_tmp to i32
  call void @__asan_store4_noabort(i32 %347)
  store i32 %346, ptr %value_tmp, align 4
  br label %if.then.i.i.i

sw.default586:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.19, i32 noundef %8) #7
  br label %cleanup

if.then.i.i.i:                                    ; preds = %sw.bb584, %sw.bb583, %if.end577.if.then.i.i.i_crit_edge, %if.else569, %if.then564, %if.else556, %if.then552, %if.else546, %if.then541, %if.else530, %if.then527, %if.then520, %if.then513, %if.then507, %if.then500, %if.then494, %sw.bb488, %sw.bb486, %sw.bb484, %sw.bb482, %sw.bb481, %if.else477, %if.then474, %if.then461, %if.then455, %sw.bb450, %if.then445, %if.then434, %if.then428, %sw.bb418, %sw.bb412, %sw.bb401, %sw.bb397, %sw.bb389, %if.then383, %if.then377, %if.else368, %if.then366, %if.then359, %if.then352, %if.then345, %if.end338, %if.then323, %if.then316, %if.then310, %if.then304, %if.then297, %if.then291, %if.end286, %if.end280, %if.then265, %if.then258, %if.then251, %if.then244, %if.then237, %if.then231, %sw.bb226, %if.then216, %if.then209, %if.then202, %if.then195, %if.then188, %if.then182, %if.then168, %if.then161, %if.then155, %if.then145, %if.then135, %if.then127, %if.else120, %if.then116, %if.end113, %if.end104, %if.then86, %if.then79, %if.then72, %if.then65, %if.then58, %if.then53, %if.else44, %if.else42, %if.else40, %if.then39, %if.then22, %if.else, %if.then, %sw.bb5, %sw.bb4, %sw.bb
  %value_size.0 = phi i32 [ 4, %sw.bb584 ], [ 4, %sw.bb583 ], [ 4, %if.end577.if.then.i.i.i_crit_edge ], [ 4, %if.then564 ], [ 4, %if.else569 ], [ 4, %if.then552 ], [ 4, %if.else556 ], [ 4, %if.then541 ], [ 4, %if.else546 ], [ 4, %if.then494 ], [ 4, %if.then500 ], [ 4, %if.then507 ], [ 4, %if.then513 ], [ 4, %if.then520 ], [ 4, %if.then527 ], [ 4, %if.else530 ], [ 8, %sw.bb488 ], [ 8, %sw.bb486 ], [ 8, %sw.bb484 ], [ 4, %sw.bb482 ], [ 4, %sw.bb481 ], [ 4, %if.then474 ], [ 4, %if.else477 ], [ 4, %if.then455 ], [ 4, %if.then461 ], [ 4, %sw.bb450 ], [ 64, %if.then445 ], [ 128, %if.then428 ], [ 128, %if.then434 ], [ 4, %sw.bb418 ], [ 4, %sw.bb412 ], [ 4, %sw.bb401 ], [ 4, %sw.bb397 ], [ 4, %sw.bb389 ], [ 4, %if.then377 ], [ 4, %if.then383 ], [ 4, %if.then345 ], [ 4, %if.then352 ], [ 4, %if.then359 ], [ 4, %if.then366 ], [ 4, %if.else368 ], [ 8, %if.end338 ], [ 4, %if.then291 ], [ 4, %if.then297 ], [ 4, %if.then304 ], [ 4, %if.then310 ], [ 4, %if.then316 ], [ 4, %if.then323 ], [ 4, %if.end286 ], [ 4, %if.end280 ], [ 4, %if.then231 ], [ 4, %if.then237 ], [ 4, %if.then244 ], [ 4, %if.then251 ], [ 4, %if.then258 ], [ 4, %if.then265 ], [ 4, %sw.bb226 ], [ 4, %if.then182 ], [ 4, %if.then188 ], [ 4, %if.then195 ], [ 4, %if.then202 ], [ 4, %if.then209 ], [ 4, %if.then216 ], [ 4, %if.then127 ], [ 4, %if.then135 ], [ 4, %if.then145 ], [ 4, %if.then155 ], [ 4, %if.then161 ], [ 4, %if.then168 ], [ 4, %if.then116 ], [ 4, %if.else120 ], [ 4, %if.end113 ], [ 4, %if.end104 ], [ 4, %if.then53 ], [ 4, %if.then58 ], [ 4, %if.then65 ], [ 4, %if.then72 ], [ 4, %if.then79 ], [ 4, %if.then86 ], [ 4, %if.then39 ], [ 4, %if.else40 ], [ 4, %if.else42 ], [ 4, %if.else44 ], [ 4, %if.then ], [ 4, %if.else ], [ 4, %sw.bb5 ], [ 4, %sw.bb4 ], [ 4, %sw.bb ], [ 4, %if.then22 ]
  %value.0 = phi ptr [ %value_tmp, %sw.bb584 ], [ %value_tmp, %sw.bb583 ], [ %value_tmp, %if.end577.if.then.i.i.i_crit_edge ], [ %value_tmp, %if.then564 ], [ %value_tmp, %if.else569 ], [ %value_tmp, %if.then552 ], [ %value_tmp, %if.else556 ], [ %value_tmp, %if.then541 ], [ %value_tmp, %if.else546 ], [ %value_tmp, %if.then494 ], [ %value_tmp, %if.then500 ], [ %value_tmp, %if.then507 ], [ %value_tmp, %if.then513 ], [ %value_tmp, %if.then520 ], [ %value_tmp, %if.then527 ], [ %value_tmp, %if.else530 ], [ %value64, %sw.bb488 ], [ %value64, %sw.bb486 ], [ %value64, %sw.bb484 ], [ %value_tmp, %sw.bb482 ], [ %value_tmp, %sw.bb481 ], [ %value_tmp, %if.then474 ], [ %value_tmp, %if.else477 ], [ %value_tmp, %if.then455 ], [ %value_tmp, %if.then461 ], [ %value_tmp, %sw.bb450 ], [ %macrotile_mode_array, %if.then445 ], [ %tile_mode_array, %if.then428 ], [ %tile_mode_array436, %if.then434 ], [ %value_tmp, %sw.bb418 ], [ %value_tmp, %sw.bb412 ], [ %value_tmp, %sw.bb401 ], [ %value_tmp, %sw.bb397 ], [ %value_tmp, %sw.bb389 ], [ %value_tmp, %if.then377 ], [ %value_tmp, %if.then383 ], [ %value_tmp, %if.then345 ], [ %value_tmp, %if.then352 ], [ %value_tmp, %if.then359 ], [ %value_tmp, %if.then366 ], [ %value_tmp, %if.else368 ], [ %value64, %if.end338 ], [ %value_tmp, %if.then291 ], [ %value_tmp, %if.then297 ], [ %value_tmp, %if.then304 ], [ %value_tmp, %if.then310 ], [ %value_tmp, %if.then316 ], [ %value_tmp, %if.then323 ], [ %value_tmp, %if.end286 ], [ %value_tmp, %if.end280 ], [ %value_tmp, %if.then231 ], [ %value_tmp, %if.then237 ], [ %value_tmp, %if.then244 ], [ %value_tmp, %if.then251 ], [ %value_tmp, %if.then258 ], [ %value_tmp, %if.then265 ], [ %value_tmp, %sw.bb226 ], [ %value_tmp, %if.then182 ], [ %value_tmp, %if.then188 ], [ %value_tmp, %if.then195 ], [ %value_tmp, %if.then202 ], [ %value_tmp, %if.then209 ], [ %value_tmp, %if.then216 ], [ %value_tmp, %if.then127 ], [ %value_tmp, %if.then135 ], [ %value_tmp, %if.then145 ], [ %value_tmp, %if.then155 ], [ %value_tmp, %if.then161 ], [ %value_tmp, %if.then168 ], [ %value_tmp, %if.then116 ], [ %value_tmp, %if.else120 ], [ %value_tmp, %if.end113 ], [ %value_tmp, %if.end104 ], [ %value_tmp, %if.then53 ], [ %value_tmp, %if.then58 ], [ %value_tmp, %if.then65 ], [ %value_tmp, %if.then72 ], [ %value_tmp, %if.then79 ], [ %value_tmp, %if.then86 ], [ %value_tmp, %if.then39 ], [ %value_tmp, %if.else40 ], [ %value_tmp, %if.else42 ], [ %value_tmp, %if.else44 ], [ %value_tmp, %if.then ], [ %value_tmp, %if.else ], [ %value_tmp, %sw.bb5 ], [ %value_tmp, %sw.bb4 ], [ %value_tmp, %sw.bb ], [ %value_tmp, %if.then22 ]
  call void @__check_object_size(ptr noundef %value.0, i32 noundef %value_size.0, i1 noundef zeroext true) #7
  call void @__might_fault(ptr noundef nonnull @.str.28, i32 noundef 174) #7
  %call.i.i968 = call zeroext i1 @should_fail_usercopy() #7
  br i1 %call.i.i968, label %if.then.i.i.i.if.then591_crit_edge, label %if.end.i.i971

if.then.i.i.i.if.then591_crit_edge:               ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then591

if.end.i.i971:                                    ; preds = %if.then.i.i.i
  %348 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %6, i32 %value_size.0, i32 -1226833920) #12, !srcloc !81
  %asmresult.i.i970 = extractvalue { i32, i32 } %348, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i970)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i970, 0
  br i1 %cmp.i6.i, label %copy_to_user.exit, label %if.end.i.i971.if.then591_crit_edge

if.end.i.i971.if.then591_crit_edge:               ; preds = %if.end.i.i971
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then591

copy_to_user.exit:                                ; preds = %if.end.i.i971
  %call.i.i.i972 = call zeroext i1 @__kasan_check_read(ptr noundef %value.0, i32 noundef %value_size.0) #7
  %call.i12.i.i = call i32 @arm_copy_to_user(ptr noundef %6, ptr noundef %value.0, i32 noundef %value_size.0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i)
  %tobool590.not = icmp eq i32 %call.i12.i.i, 0
  br i1 %tobool590.not, label %copy_to_user.exit.cleanup_crit_edge, label %copy_to_user.exit.if.then591_crit_edge

copy_to_user.exit.if.then591_crit_edge:           ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then591

copy_to_user.exit.cleanup_crit_edge:              ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then591:                                       ; preds = %copy_to_user.exit.if.then591_crit_edge, %if.end.i.i971.if.then591_crit_edge, %if.then.i.i.i.if.then591_crit_edge
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.20, ptr noundef nonnull @__func__.radeon_info_ioctl, i32 noundef 616) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then591, %copy_to_user.exit.cleanup_crit_edge, %sw.default586, %if.end577.cleanup_crit_edge, %if.then11.i.i963, %if.else464, %if.else448, %if.else438, %if.end396.cleanup_crit_edge, %if.then11.i.i937, %if.else379.cleanup_crit_edge, %if.then337, %if.else319.cleanup_crit_edge, %sw.bb281.cleanup_crit_edge, %sw.bb275.cleanup_crit_edge, %if.else261.cleanup_crit_edge, %if.else212.cleanup_crit_edge, %if.else164.cleanup_crit_edge, %if.then112, %if.then11.i.i916, %if.then103, %if.then11.i.i895, %if.else89, %if.then28.critedge, %if.then11.i.i
  %retval.0 = phi i32 [ -22, %sw.default586 ], [ -14, %if.then591 ], [ -14, %if.then11.i.i963 ], [ -22, %if.else464 ], [ -22, %if.else448 ], [ -22, %if.else438 ], [ -14, %if.then11.i.i937 ], [ -22, %if.then337 ], [ -14, %if.then11.i.i916 ], [ -22, %if.then112 ], [ -14, %if.then11.i.i895 ], [ -22, %if.then103 ], [ -22, %if.else89 ], [ -14, %if.then11.i.i ], [ -22, %if.then28.critedge ], [ -22, %if.else164.cleanup_crit_edge ], [ -22, %if.else212.cleanup_crit_edge ], [ -22, %if.else261.cleanup_crit_edge ], [ -22, %sw.bb275.cleanup_crit_edge ], [ -22, %sw.bb281.cleanup_crit_edge ], [ -22, %if.else319.cleanup_crit_edge ], [ -22, %if.else379.cleanup_crit_edge ], [ -22, %if.end396.cleanup_crit_edge ], [ -22, %if.end577.cleanup_crit_edge ], [ 0, %copy_to_user.exit.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %value64) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value_tmp) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_err(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @radeon_set_filp_rights(ptr nocapture noundef readonly %dev, ptr nocapture noundef %owner, ptr noundef %applier, ptr nocapture noundef %value) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_private, align 4
  %gem = getelementptr inbounds %struct.radeon_device, ptr %1, i32 0, i32 57
  tail call void @mutex_lock_nested(ptr noundef %gem, i32 noundef 0) #7
  %2 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %value, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.34)
  switch i32 %3, label %entry.if.end8_crit_edge [
    i32 1, label %if.then
    i32 0, label %if.then3
  ]

entry.if.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8

if.then:                                          ; preds = %entry
  %5 = ptrtoint ptr %owner to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %owner, align 4
  %tobool.not = icmp eq ptr %6, null
  br i1 %tobool.not, label %if.then.if.end8.sink.split_crit_edge, label %if.then.if.end8_crit_edge

if.then.if.end8_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8

if.then.if.end8.sink.split_crit_edge:             ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8.sink.split

if.then3:                                         ; preds = %entry
  %7 = ptrtoint ptr %owner to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %owner, align 4
  %cmp4 = icmp eq ptr %8, %applier
  br i1 %cmp4, label %if.then3.if.end8.sink.split_crit_edge, label %if.then3.if.end8_crit_edge

if.then3.if.end8_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8

if.then3.if.end8.sink.split_crit_edge:            ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8.sink.split

if.end8.sink.split:                               ; preds = %if.then3.if.end8.sink.split_crit_edge, %if.then.if.end8.sink.split_crit_edge
  %.sink = phi ptr [ %applier, %if.then.if.end8.sink.split_crit_edge ], [ null, %if.then3.if.end8.sink.split_crit_edge ]
  %9 = ptrtoint ptr %owner to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %.sink, ptr %owner, align 4
  br label %if.end8

if.end8:                                          ; preds = %if.end8.sink.split, %if.then3.if.end8_crit_edge, %if.then.if.end8_crit_edge, %entry.if.end8_crit_edge
  %10 = ptrtoint ptr %owner to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %owner, align 4
  %cmp9 = icmp eq ptr %11, %applier
  %cond = zext i1 %cmp9 to i32
  %12 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %cond, ptr %value, align 4
  tail call void @mutex_unlock(ptr noundef %gem) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @radeon_driver_lastclose_kms(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @drm_fb_helper_lastclose(ptr noundef %dev) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_fb_helper_lastclose(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @radeon_driver_open_kms(ptr nocapture noundef readonly %dev, ptr nocapture noundef writeonly %file_priv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_private, align 4
  %driver_priv = getelementptr inbounds %struct.drm_file, ptr %file_priv, i32 0, i32 19
  %2 = ptrtoint ptr %driver_priv to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %driver_priv, align 4
  %dev1 = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 2
  %3 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev1, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %4, i32 noundef 4) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %family = getelementptr inbounds %struct.radeon_device, ptr %1, i32 0, i32 6
  %5 = ptrtoint ptr %family to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %family, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 49, i32 %6)
  %cmp4 = icmp ugt i32 %6, 49
  br i1 %cmp4, label %if.then5, label %if.end.cleanup.sink.split_crit_edge

if.end.cleanup.sink.split_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

if.then5:                                         ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %7 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %7, i32 noundef 3520, i32 noundef 376) #13
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %if.then5.cleanup.sink.split_crit_edge, label %if.end11, !prof !82

if.then5.cleanup.sink.split_crit_edge:            ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

if.end11:                                         ; preds = %if.then5
  %accel_working = getelementptr inbounds %struct.radeon_device, ptr %1, i32 0, i32 66
  %8 = ptrtoint ptr %accel_working to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %accel_working, align 2, !range !75
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool12.not = icmp eq i8 %9, 0
  br i1 %tobool12.not, label %if.end11.if.end35_crit_edge, label %if.then13

if.end11.if.end35_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end35

if.then13:                                        ; preds = %if.end11
  %call15 = tail call i32 @radeon_vm_init(ptr noundef %1, ptr noundef nonnull %call7.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.end18, label %if.then13.err_fpriv_crit_edge

if.then13.err_fpriv_crit_edge:                    ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_fpriv

if.end18:                                         ; preds = %if.then13
  %bo = getelementptr inbounds %struct.radeon_device, ptr %1, i32 0, i32 54, i32 1
  %10 = ptrtoint ptr %bo to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %bo, align 4
  %resv32.i.i = getelementptr inbounds %struct.radeon_bo, ptr %11, i32 0, i32 4, i32 0, i32 9
  %12 = ptrtoint ptr %resv32.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %resv32.i.i, align 8
  %call.i.i.i = tail call i32 @ww_mutex_lock_interruptible(ptr noundef %13, ptr noundef null) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -4, i32 %call.i.i.i)
  %cmp.i.i = icmp eq i32 %call.i.i.i, -4
  %retval.1.i.i = select i1 %cmp.i.i, i32 -512, i32 %call.i.i.i
  %14 = zext i32 %retval.1.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.35)
  switch i32 %retval.1.i.i, label %do.end.i [
    i32 0, label %if.end22
    i32 -512, label %if.end18.err_vm_fini_crit_edge
  ], !prof !83

if.end18.err_vm_fini_crit_edge:                   ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_vm_fini

do.end.i:                                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #9
  %rdev.i = getelementptr inbounds %struct.radeon_bo, ptr %11, i32 0, i32 13
  %15 = ptrtoint ptr %rdev.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %rdev.i, align 8
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %16, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %18, ptr noundef nonnull @.str.29, ptr noundef %11) #11
  br label %err_vm_fini

if.end22:                                         ; preds = %if.end18
  %19 = ptrtoint ptr %bo to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %bo, align 4
  %call25 = tail call ptr @radeon_vm_bo_add(ptr noundef %1, ptr noundef nonnull %call7.i.i, ptr noundef %20) #7
  %ib_bo_va = getelementptr inbounds %struct.radeon_vm, ptr %call7.i.i, i32 0, i32 9
  %21 = ptrtoint ptr %ib_bo_va to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call25, ptr %ib_bo_va, align 4
  %tobool27.not = icmp eq ptr %call25, null
  br i1 %tobool27.not, label %if.end22.err_vm_fini_crit_edge, label %if.end29

if.end22.err_vm_fini_crit_edge:                   ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_vm_fini

if.end29:                                         ; preds = %if.end22
  %call31 = tail call i32 @radeon_vm_bo_set_addr(ptr noundef %1, ptr noundef nonnull %call25, i64 noundef 1048576, i32 noundef 18) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %if.end29.if.end35_crit_edge, label %if.end29.err_vm_fini_crit_edge

if.end29.err_vm_fini_crit_edge:                   ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_vm_fini

if.end29.if.end35_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end35

if.end35:                                         ; preds = %if.end29.if.end35_crit_edge, %if.end11.if.end35_crit_edge
  %22 = ptrtoint ptr %driver_priv to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call7.i.i, ptr %driver_priv, align 4
  br label %cleanup.sink.split

err_vm_fini:                                      ; preds = %if.end29.err_vm_fini_crit_edge, %if.end22.err_vm_fini_crit_edge, %do.end.i, %if.end18.err_vm_fini_crit_edge
  %r.0 = phi i32 [ %retval.1.i.i, %do.end.i ], [ %call31, %if.end29.err_vm_fini_crit_edge ], [ -12, %if.end22.err_vm_fini_crit_edge ], [ %retval.1.i.i, %if.end18.err_vm_fini_crit_edge ]
  tail call void @radeon_vm_fini(ptr noundef %1, ptr noundef nonnull %call7.i.i) #7
  br label %err_fpriv

err_fpriv:                                        ; preds = %err_vm_fini, %if.then13.err_fpriv_crit_edge
  %r.1 = phi i32 [ %call15, %if.then13.err_fpriv_crit_edge ], [ %r.0, %err_vm_fini ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #7
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %err_fpriv, %if.end35, %if.then5.cleanup.sink.split_crit_edge, %if.end.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ 0, %if.end35 ], [ 0, %if.end.cleanup.sink.split_crit_edge ], [ %r.1, %err_fpriv ], [ -12, %if.then5.cleanup.sink.split_crit_edge ]
  %23 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev1, align 4
  %call.i77 = tail call i64 @ktime_get_mono_fast_ns() #7
  %last_busy.i78 = getelementptr inbounds %struct.device, ptr %24, i32 0, i32 12, i32 22
  %25 = ptrtoint ptr %last_busy.i78 to i32
  call void @__asan_store8_noabort(i32 %25)
  store volatile i64 %call.i77, ptr %last_busy.i78, align 8
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %entry.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  %26 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev1, align 4
  %call.i79 = tail call i32 @__pm_runtime_suspend(ptr noundef %27, i32 noundef 13) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @radeon_vm_init(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @radeon_vm_bo_add(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @radeon_vm_bo_set_addr(ptr noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @radeon_vm_fini(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @radeon_driver_postclose_kms(ptr nocapture noundef readonly %dev, ptr noundef %file_priv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_private, align 4
  %dev1 = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 2
  %2 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev1, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %3, i32 noundef 4) #7
  %gem = getelementptr inbounds %struct.radeon_device, ptr %1, i32 0, i32 57
  tail call void @mutex_lock_nested(ptr noundef %gem, i32 noundef 0) #7
  %hyperz_filp = getelementptr inbounds %struct.radeon_device, ptr %1, i32 0, i32 97
  %4 = ptrtoint ptr %hyperz_filp to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hyperz_filp, align 4
  %cmp = icmp eq ptr %5, %file_priv
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %6 = ptrtoint ptr %hyperz_filp to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %hyperz_filp, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %cmask_filp = getelementptr inbounds %struct.radeon_device, ptr %1, i32 0, i32 98
  %7 = ptrtoint ptr %cmask_filp to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %cmask_filp, align 8
  %cmp3 = icmp eq ptr %8, %file_priv
  br i1 %cmp3, label %if.then4, label %if.end.if.end6_crit_edge

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %9 = ptrtoint ptr %cmask_filp to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %cmask_filp, align 8
  br label %if.end6

if.end6:                                          ; preds = %if.then4, %if.end.if.end6_crit_edge
  tail call void @mutex_unlock(ptr noundef %gem) #7
  tail call void @radeon_uvd_free_handles(ptr noundef %1, ptr noundef %file_priv) #7
  tail call void @radeon_vce_free_handles(ptr noundef %1, ptr noundef %file_priv) #7
  %family = getelementptr inbounds %struct.radeon_device, ptr %1, i32 0, i32 6
  %10 = ptrtoint ptr %family to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %family, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 49, i32 %11)
  %cmp9 = icmp ugt i32 %11, 49
  br i1 %cmp9, label %land.lhs.true, label %if.end6.if.end27_crit_edge

if.end6.if.end27_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end27

land.lhs.true:                                    ; preds = %if.end6
  %driver_priv = getelementptr inbounds %struct.drm_file, ptr %file_priv, i32 0, i32 19
  %12 = ptrtoint ptr %driver_priv to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %driver_priv, align 4
  %tobool.not = icmp eq ptr %13, null
  br i1 %tobool.not, label %land.lhs.true.if.end27_crit_edge, label %if.then10

land.lhs.true.if.end27_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end27

if.then10:                                        ; preds = %land.lhs.true
  %accel_working = getelementptr inbounds %struct.radeon_device, ptr %1, i32 0, i32 66
  %14 = ptrtoint ptr %accel_working to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %accel_working, align 2, !range !75
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool13.not = icmp eq i8 %15, 0
  br i1 %tobool13.not, label %if.then10.if.end25_crit_edge, label %if.then14

if.then10.if.end25_crit_edge:                     ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end25

if.then14:                                        ; preds = %if.then10
  %bo = getelementptr inbounds %struct.radeon_device, ptr %1, i32 0, i32 54, i32 1
  %16 = ptrtoint ptr %bo to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %bo, align 4
  %resv32.i.i = getelementptr inbounds %struct.radeon_bo, ptr %17, i32 0, i32 4, i32 0, i32 9
  %18 = ptrtoint ptr %resv32.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %resv32.i.i, align 8
  %call.i.i.i = tail call i32 @ww_mutex_lock_interruptible(ptr noundef %19, ptr noundef null) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -4, i32 %call.i.i.i)
  %cmp.i.i = icmp eq i32 %call.i.i.i, -4
  %retval.1.i.i = select i1 %cmp.i.i, i32 -512, i32 %call.i.i.i
  %20 = zext i32 %retval.1.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values.36)
  switch i32 %retval.1.i.i, label %do.end.i [
    i32 0, label %if.then17
    i32 -512, label %if.then14.if.end24_crit_edge
  ], !prof !83

if.then14.if.end24_crit_edge:                     ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end24

do.end.i:                                         ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #9
  %rdev.i = getelementptr inbounds %struct.radeon_bo, ptr %17, i32 0, i32 13
  %21 = ptrtoint ptr %rdev.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %rdev.i, align 8
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %22, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %24, ptr noundef nonnull @.str.29, ptr noundef %17) #11
  br label %if.end24

if.then17:                                        ; preds = %if.then14
  %ib_bo_va = getelementptr inbounds %struct.radeon_vm, ptr %13, i32 0, i32 9
  %25 = ptrtoint ptr %ib_bo_va to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %ib_bo_va, align 4
  %tobool18.not = icmp eq ptr %26, null
  br i1 %tobool18.not, label %if.then17.if.end21_crit_edge, label %if.then19

if.then17.if.end21_crit_edge:                     ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end21

if.then19:                                        ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @radeon_vm_bo_rmv(ptr noundef %1, ptr noundef nonnull %26) #7
  br label %if.end21

if.end21:                                         ; preds = %if.then19, %if.then17.if.end21_crit_edge
  %27 = ptrtoint ptr %bo to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %bo, align 4
  %tbo.i = getelementptr inbounds %struct.radeon_bo, ptr %28, i32 0, i32 4
  %bdev.i.i.i = getelementptr inbounds %struct.radeon_bo, ptr %28, i32 0, i32 4, i32 1
  %29 = ptrtoint ptr %bdev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %bdev.i.i.i, align 8
  %lru_lock.i.i.i = getelementptr inbounds %struct.ttm_device, ptr %30, i32 0, i32 6
  tail call void @_raw_spin_lock(ptr noundef %lru_lock.i.i.i) #7
  %resource.i.i.i = getelementptr inbounds %struct.radeon_bo, ptr %28, i32 0, i32 4, i32 6
  %31 = ptrtoint ptr %resource.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %resource.i.i.i, align 4
  tail call void @ttm_bo_move_to_lru_tail(ptr noundef %tbo.i, ptr noundef %32, ptr noundef null) #7
  %33 = ptrtoint ptr %bdev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %bdev.i.i.i, align 8
  %lru_lock2.i.i.i = getelementptr inbounds %struct.ttm_device, ptr %34, i32 0, i32 6
  tail call void @_raw_spin_unlock(ptr noundef %lru_lock2.i.i.i) #7
  %resv.i.i = getelementptr inbounds %struct.radeon_bo, ptr %28, i32 0, i32 4, i32 0, i32 9
  %35 = ptrtoint ptr %resv.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %resv.i.i, align 8
  tail call void @dma_resv_reset_shared_max(ptr noundef %36) #7
  tail call void @ww_mutex_unlock(ptr noundef %36) #7
  br label %if.end24

if.end24:                                         ; preds = %if.end21, %do.end.i, %if.then14.if.end24_crit_edge
  tail call void @radeon_vm_fini(ptr noundef %1, ptr noundef nonnull %13) #7
  br label %if.end25

if.end25:                                         ; preds = %if.end24, %if.then10.if.end25_crit_edge
  tail call void @kfree(ptr noundef nonnull %13) #7
  %37 = ptrtoint ptr %driver_priv to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr null, ptr %driver_priv, align 4
  br label %if.end27

if.end27:                                         ; preds = %if.end25, %land.lhs.true.if.end27_crit_edge, %if.end6.if.end27_crit_edge
  %38 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %dev1, align 4
  %call.i57 = tail call i64 @ktime_get_mono_fast_ns() #7
  %last_busy.i = getelementptr inbounds %struct.device, ptr %39, i32 0, i32 12, i32 22
  %40 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %40)
  store volatile i64 %call.i57, ptr %last_busy.i, align 8
  %41 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %dev1, align 4
  %call.i58 = tail call i32 @__pm_runtime_suspend(ptr noundef %42, i32 noundef 13) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @radeon_uvd_free_handles(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @radeon_vce_free_handles(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @radeon_vm_bo_rmv(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @radeon_get_vblank_counter_kms(ptr nocapture noundef readonly %crtc) local_unnamed_addr #0 align 64 {
entry:
  %vpos = alloca i32, align 4
  %hpos = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %crtc, align 8
  %index = getelementptr inbounds %struct.drm_crtc, ptr %crtc, i32 0, i32 8
  %2 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %index, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %vpos) #7
  %4 = ptrtoint ptr %vpos to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %vpos, align 4, !annotation !74
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %hpos) #7
  %5 = ptrtoint ptr %hpos to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %hpos, align 4, !annotation !74
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 5
  %6 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev_private, align 4
  %num_crtc = getelementptr inbounds %struct.radeon_device, ptr %7, i32 0, i32 91
  %8 = ptrtoint ptr %num_crtc to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %num_crtc, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %9)
  %cmp.not = icmp ult i32 %3, %9
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.21, i32 noundef %3) #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %arrayidx = getelementptr %struct.radeon_device, ptr %7, i32 0, i32 44, i32 4, i32 %3
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %11, null
  %asic19 = getelementptr inbounds %struct.radeon_device, ptr %7, i32 0, i32 56
  br i1 %tobool.not, label %if.else18, label %if.end.do.body_crit_edge

if.end.do.body_crit_edge:                         ; preds = %if.end
  br label %do.body

do.body:                                          ; preds = %do.body.do.body_crit_edge, %if.end.do.body_crit_edge
  %12 = ptrtoint ptr %asic19 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %asic19, align 8
  %get_vblank_counter = getelementptr inbounds %struct.radeon_asic, ptr %13, i32 0, i32 16, i32 1
  %14 = ptrtoint ptr %get_vblank_counter to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %get_vblank_counter, align 4
  %call = call i32 %15(ptr noundef %7, i32 noundef %3) #7
  %16 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx, align 4
  %hwmode = getelementptr inbounds %struct.drm_crtc, ptr %17, i32 0, i32 13
  %call6 = call i32 @radeon_get_crtc_scanoutpos(ptr noundef %1, i32 noundef %3, i32 noundef -2147483648, ptr noundef nonnull %vpos, ptr noundef nonnull %hpos, ptr noundef null, ptr noundef null, ptr noundef %hwmode) #7
  %18 = ptrtoint ptr %asic19 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %asic19, align 8
  %get_vblank_counter9 = getelementptr inbounds %struct.radeon_asic, ptr %19, i32 0, i32 16, i32 1
  %20 = ptrtoint ptr %get_vblank_counter9 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %get_vblank_counter9, align 4
  %call10 = call i32 %21(ptr noundef %7, i32 noundef %3) #7
  %cmp11.not = icmp eq i32 %call, %call10
  br i1 %cmp11.not, label %do.end, label %do.body.do.body_crit_edge

do.body.do.body_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

do.end:                                           ; preds = %do.body
  %and = and i32 %call6, 5
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %and)
  %cmp12.not = icmp eq i32 %and, 5
  br i1 %cmp12.not, label %if.else, label %if.then13

if.then13:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 32, ptr noundef nonnull @.str.22, i32 noundef %call6) #7
  br label %cleanup

if.else:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  %22 = ptrtoint ptr %vpos to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %vpos, align 4
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 32, ptr noundef nonnull @.str.23, i32 noundef %3, i32 noundef %23) #7
  %24 = ptrtoint ptr %vpos to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %vpos, align 4
  %26 = xor i32 %25, -1
  %.lobit.not = lshr i32 %26, 31
  %spec.select = add i32 %.lobit.not, %call
  br label %cleanup

if.else18:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %27 = ptrtoint ptr %asic19 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %asic19, align 8
  %get_vblank_counter21 = getelementptr inbounds %struct.radeon_asic, ptr %28, i32 0, i32 16, i32 1
  %29 = ptrtoint ptr %get_vblank_counter21 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %get_vblank_counter21, align 4
  %call22 = tail call i32 %30(ptr noundef %7, i32 noundef %3) #7
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 32, ptr noundef nonnull @.str.24) #7
  br label %cleanup

cleanup:                                          ; preds = %if.else18, %if.else, %if.then13, %if.then
  %retval.0 = phi i32 [ -22, %if.then ], [ %call, %if.then13 ], [ %call22, %if.else18 ], [ %spec.select, %if.else ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %hpos) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %vpos) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @radeon_get_crtc_scanoutpos(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @radeon_enable_vblank_kms(ptr nocapture noundef readonly %crtc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %crtc, align 8
  %index = getelementptr inbounds %struct.drm_crtc, ptr %crtc, i32 0, i32 8
  %2 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %index, align 4
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev_private, align 4
  %num_crtc = getelementptr inbounds %struct.radeon_device, ptr %5, i32 0, i32 91
  %6 = ptrtoint ptr %num_crtc to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num_crtc, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %7)
  %cmp.not = icmp ult i32 %3, %7
  br i1 %cmp.not, label %do.body2, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.25, i32 noundef %3) #7
  br label %cleanup

do.body2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %lock = getelementptr inbounds %struct.radeon_device, ptr %5, i32 0, i32 55, i32 1
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #7
  %arrayidx = getelementptr %struct.radeon_device, ptr %5, i32 0, i32 55, i32 3, i32 %3
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 1, ptr %arrayidx, align 1
  %asic = getelementptr inbounds %struct.radeon_device, ptr %5, i32 0, i32 56
  %9 = ptrtoint ptr %asic to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %asic, align 8
  %irq8 = getelementptr inbounds %struct.radeon_asic, ptr %10, i32 0, i32 15
  %11 = ptrtoint ptr %irq8 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %irq8, align 4
  %call9 = tail call i32 %12(ptr noundef %5) #7
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call4) #7
  br label %cleanup

cleanup:                                          ; preds = %do.body2, %if.then
  %retval.0 = phi i32 [ -22, %if.then ], [ %call9, %do.body2 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @radeon_disable_vblank_kms(ptr nocapture noundef readonly %crtc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %crtc, align 8
  %index = getelementptr inbounds %struct.drm_crtc, ptr %crtc, i32 0, i32 8
  %2 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %index, align 4
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev_private, align 4
  %num_crtc = getelementptr inbounds %struct.radeon_device, ptr %5, i32 0, i32 91
  %6 = ptrtoint ptr %num_crtc to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num_crtc, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %7)
  %cmp.not = icmp ult i32 %3, %7
  br i1 %cmp.not, label %do.body2, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.25, i32 noundef %3) #7
  br label %cleanup

do.body2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %lock = getelementptr inbounds %struct.radeon_device, ptr %5, i32 0, i32 55, i32 1
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #7
  %arrayidx = getelementptr %struct.radeon_device, ptr %5, i32 0, i32 55, i32 3, i32 %3
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %arrayidx, align 1
  %asic = getelementptr inbounds %struct.radeon_device, ptr %5, i32 0, i32 56
  %9 = ptrtoint ptr %asic to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %asic, align 8
  %irq8 = getelementptr inbounds %struct.radeon_asic, ptr %10, i32 0, i32 15
  %11 = ptrtoint ptr %irq8 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %irq8, align 4
  %call9 = tail call i32 %12(ptr noundef %5) #7
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call4) #7
  br label %cleanup

cleanup:                                          ; preds = %do.body2, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kmalloc_order_trace(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_use_autosuspend(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_set_status(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_mono_fast_ns() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_suspend(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__check_object_size(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @generic_atomic64_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

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
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

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

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 31)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 31)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind readonly }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nounwind allocsize(0) }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind readnone }
attributes #13 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !12, !14, !15, !16, !18, !19, !21, !23, !25, !27, !29, !31, !33, !35, !37, !39, !41, !43, !45, !47, !49, !51, !52, !54, !56, !58, !59, !60, !61, !62}
!llvm.named.register.sp = !{!64}
!llvm.module.flags = !{!65, !66, !67, !68, !69, !70, !71, !72}
!llvm.ident = !{!73}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/radeon/radeon_kms.c", i32 153, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @radeon_driver_load_kms._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @radeon_driver_load_kms._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/radeon/radeon_kms.c", i32 163, i32 3}
!10 = !{ptr @radeon_driver_load_kms._entry.5, !9, !"_entry", i1 false, i1 false}
!11 = !{ptr @radeon_driver_load_kms._entry_ptr.7, !9, !"_entry_ptr", i1 false, i1 false}
!12 = distinct !{null, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/radeon/radeon_kms.c", i32 171, i32 4}
!14 = distinct !{null, !13, !"<string literal>", i1 false, i1 false}
!15 = distinct !{null, !13, !"__UNIQUE_ID_ddebug325", i1 false, i1 false}
!16 = !{ptr @.str.10, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/radeon/radeon_kms.c", i32 271, i32 4}
!18 = !{ptr @__func__.radeon_info_ioctl, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.11, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/gpu/drm/radeon/radeon_kms.c", i32 284, i32 4}
!21 = !{ptr @.str.12, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/gpu/drm/radeon/radeon_kms.c", i32 316, i32 4}
!23 = !{ptr @.str.13, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/gpu/drm/radeon/radeon_kms.c", i32 332, i32 4}
!25 = !{ptr @.str.14, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/gpu/drm/radeon/radeon_kms.c", i32 344, i32 4}
!27 = !{ptr @.str.15, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/gpu/drm/radeon/radeon_kms.c", i32 444, i32 4}
!29 = !{ptr @.str.16, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/gpu/drm/radeon/radeon_kms.c", i32 506, i32 4}
!31 = !{ptr @.str.17, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/gpu/drm/radeon/radeon_kms.c", i32 515, i32 4}
!33 = !{ptr @.str.18, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/gpu/drm/radeon/radeon_kms.c", i32 528, i32 4}
!35 = !{ptr @.str.19, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/gpu/drm/radeon/radeon_kms.c", i32 612, i32 3}
!37 = !{ptr @.str.20, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/gpu/drm/radeon/radeon_kms.c", i32 616, i32 3}
!39 = !{ptr @.str.21, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/gpu/drm/radeon/radeon_kms.c", i32 785, i32 3}
!41 = !{ptr @.str.22, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/gpu/drm/radeon/radeon_kms.c", i32 815, i32 4}
!43 = !{ptr @.str.23, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/gpu/drm/radeon/radeon_kms.c", i32 818, i32 4}
!45 = !{ptr @.str.24, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/gpu/drm/radeon/radeon_kms.c", i32 832, i32 6}
!47 = !{ptr @.str.25, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/gpu/drm/radeon/radeon_kms.c", i32 855, i32 3}
!49 = distinct !{null, !50, !"__already_done", i1 false, i1 false}
!50 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!51 = !{ptr @.str.26, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @.str.27, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!54 = !{ptr @.str.28, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../include/linux/uaccess.h", i32 156, i32 2}
!56 = !{ptr @.str.29, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/gpu/drm/radeon/radeon_object.h", i32 71, i32 4}
!58 = !{ptr @.str.30, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @.str.31, !57, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @radeon_bo_reserve._entry, !57, !"_entry", i1 false, i1 false}
!61 = !{ptr @radeon_bo_reserve._entry_ptr, !57, !"_entry_ptr", i1 false, i1 false}
!62 = distinct !{null, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../include/drm/ttm/ttm_bo_driver.h", i32 140, i32 7}
!64 = !{!"sp"}
!65 = !{i32 1, !"wchar_size", i32 2}
!66 = !{i32 1, !"min_enum_size", i32 4}
!67 = !{i32 8, !"branch-target-enforcement", i32 0}
!68 = !{i32 8, !"sign-return-address", i32 0}
!69 = !{i32 8, !"sign-return-address-all", i32 0}
!70 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!71 = !{i32 7, !"uwtable", i32 1}
!72 = !{i32 7, !"frame-pointer", i32 2}
!73 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!74 = !{!"auto-init"}
!75 = !{i8 0, i8 2}
!76 = !{i64 2153899233, i64 2153899258}
!77 = !{!"branch_weights", i32 2000, i32 1}
!78 = !{i64 6394788}
!79 = !{i64 6394985}
!80 = !{i64 2153880218}
!81 = !{i64 2153899914, i64 2153899939}
!82 = !{!"branch_weights", i32 1, i32 2000}
!83 = !{!"branch_weights", i32 1, i32 4000, i32 1}
